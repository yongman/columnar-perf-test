# Columnar vs DeltaMerge Large S0 Detailed Comparison

## Scope
- Columnar run: [columnar-large-s0](/workspace/columnar-perf-test/results/columnar-large-s0)
- DeltaMerge run: [deltamerge-large-s0](/workspace/columnar-perf-test/results/deltamerge-large-s0)
- Schema for both runs: `bench_columnar_perf_large`
- Data remained unchanged between runs: `fact_order_wide=20,000,000`, `user_game_day=10,000,006`
- Correctness: `12/12 hashes matched`
- Optimizer shape drift: `none; all 12 logical plan skeletons are identical`

## Headline Findings
- Full benchmark wall time dropped from `309s` to `28s`, a `11.04x` end-to-end speedup.
- Query-level median speedup ranges from `3.94x` (`06_hot_window_agg`) to `29.91x` (`12_late_materialization_wide_topn`), with average `10.02x` and median `8.18x`.
- The dominant difference is not a different operator tree. It is the physical behavior of the same tree: DeltaMerge leaf scans consistently ran with `72` threads, while the columnar run used `1` thread on 11 queries and `3` threads on `03_large_in_group_by`.
- Root-node time closely tracks leaf-scan time in both runs, which indicates the performance gap is scan/filter/materialization dominated rather than root-side merge/sort dominated.

## Timing And Plan Summary
| Query | Hash | Columnar Median (s) | Delta Median (s) | Columnar/Delta | Root Op | Columnar Root ms | Delta Root ms | Scan Op | Columnar Scan ms | Delta Scan ms | Columnar Threads | Delta Threads |
|---|---|---:|---:|---:|---|---:|---:|---|---:|---:|---:|---:|
| `01_scan_agg_distinct` | yes | 0.946 | 0.239 | 3.96x | `TableReader` | 851.6 | 153.6 | `TableRangeScan` | 804.2 | 127.1 | 1 | 72 |
| `02_scan_agg_json` | yes | 0.933 | 0.232 | 4.02x | `TableReader` | 886.3 | 134.1 | `TableRangeScan` | 837.4 | 96.8 | 1 | 72 |
| `03_large_in_group_by` | yes | 1.317 | 0.192 | 6.86x | `Sort` | 1130.0 | 107.3 | `TableFullScan` | 1060.0 | 78.5 | 3 | 72 |
| `04_wide_topn` | yes | 2.907 | 0.348 | 8.35x | `Projection` | 2860.0 | 240.1 | `TableRangeScan` | 2840.0 | 231.9 | 1 | 72 |
| `05_row_number_paging` | yes | 1.351 | 0.277 | 4.88x | `TableReader` | 1190.0 | 179.6 | `TableRangeScan` | 1170.0 | 155.5 | 1 | 72 |
| `06_hot_window_agg` | yes | 0.859 | 0.218 | 3.94x | `TableReader` | 762.5 | 131.9 | `TableRangeScan` | 731.8 | 108.5 | 1 | 72 |
| `07_hot_window_topn` | yes | 2.691 | 0.336 | 8.01x | `Projection` | 2900.0 | 248.0 | `TableRangeScan` | 2900.0 | 233.2 | 1 | 72 |
| `08_or_lookup` | yes | 2.419 | 0.226 | 10.70x | `Sort` | 2380.0 | 133.1 | `TableRangeScan` | 2380.0 | 130.4 | 1 | 72 |
| `09_pushdown_filter_base` | yes | 3.009 | 0.207 | 14.54x | `Sort` | 2880.0 | 136.3 | `TableRangeScan` | 2870.0 | 129.8 | 1 | 72 |
| `10_pushdown_filter_derived` | yes | 3.107 | 0.222 | 14.00x | `Sort` | 2970.0 | 132.3 | `TableRangeScan` | 2960.0 | 120.7 | 1 | 72 |
| `11_late_materialization_narrow_topn` | yes | 2.332 | 0.211 | 11.05x | `TopN` | 2270.0 | 122.8 | `TableRangeScan` | 2220.0 | 104.8 | 1 | 72 |
| `12_late_materialization_wide_topn` | yes | 15.853 | 0.530 | 29.91x | `Projection` | 17200.0 | 438.4 | `TableRangeScan` | 17000.0 | 398.0 | 1 | 72 |


## Explain-Level Analysis
- `01/02/06` scan-and-aggregate cases: the plan skeleton stayed `TableReader -> Exchange -> HashAgg -> Projection -> TableRangeScan`, but leaf-scan time dropped from `804/837/732ms` to `127/97/109ms`. That alone explains the overall `3.94x` to `4.02x` speedup.
- `03_large_in_group_by`: both runs used `Sort -> TableReader -> HashAgg -> Selection -> TableFullScan`. The improvement came from the leaf full-scan stage: `1060ms` in columnar vs `78.5ms` in DeltaMerge, plus scan parallelism `3 -> 72`.
- `04/07` TopN cases: both runs kept the same `Projection -> TopN -> TableReader -> Exchange -> TopN -> TableRangeScan` shape. The wall-time drop matches the scan-time drop almost one-for-one: `2840/2900ms` vs `232/233ms`.
- `08_or_lookup`: plan shape stayed `Sort -> TableReader -> Exchange -> TableRangeScan`, but DeltaMerge executed the sparse range lookups much better. Its `dtfile` block shows `data_scanned_rows=6`, `data_skipped_rows=1000000`, `mvcc_skipped_rows=1000000`, and `tot_read=78ms`. That is consistent with a very cheap point-range read path and explains the `10.70x` speedup.
- `09/10` pushdown pair: the skeletons stayed the same and the result hashes matched. The derived-filter case remained slightly slower in both engines because its `Selection` expression is more complex, but the major gap is still physical scan cost: `2870/2960ms` in columnar vs `129.8/120.7ms` in DeltaMerge. DeltaMerge also exposed strong skipping metrics on both queries: `data_scanned_rows=163840`, `data_skipped_rows=794624`, `mvcc_skipped_rows=1962309`, `lm_filter_skipped_rows=1864005`.
- `11/12` late-materialization pair: the logical trees remained `TopN/Projection -> TableReader -> Exchange -> Selection -> TableRangeScan`, but the physical cost diverged sharply. Narrow TopN improved from `2220ms` scan time to `104.8ms`; wide TopN improved from `17000ms` to `398ms`. The wide query is where the path change mattered most: columnar paid a `6.80x` wide-vs-narrow penalty, while DeltaMerge paid only `2.51x`. DeltaMerge still read more payload for `12` than for `11`, visible in `disagg_cache_miss_bytes=75173597` vs `28154668`, but the absolute read cost stayed low enough that the query finished in `0.530s` instead of `15.853s`.

## Likely Reasons For The Gap
- The optimizer did not pick different logical plans. The gap therefore most likely comes from the physical scan implementation under the DeltaMerge tree query path.
- DeltaMerge leaf operators showed materially higher parallelism. `threads:72` appeared consistently at the scan stage, while the columnar run was effectively single-threaded at the leaf on almost every query.
- DeltaMerge explain output exposed aggressive skipping at the scan layer, especially on sparse range and filtered range cases. The `data_skipped_rows`, `mvcc_skipped_rows`, and `lm_filter_skipped_rows` counters support the view that much less effective work reached later operators.
- The biggest wins appeared on cases that are sensitive to payload materialization and selective range filtering: `08`, `09`, `10`, `11`, and especially `12`. That pattern suggests the current columnar path is spending disproportionate time in leaf-side row reconstruction or wide-column fetch, even though the logical operator tree is unchanged.
- Because both paths still run through `mpp[tiflash]`, this comparison does not show “TiFlash vs non-TiFlash”. It shows two different physical execution modes underneath the same high-level MPP plan shape.

## Key Artifacts
- Summary comparison: [columnar-vs-deltamerge-large-s0.md](/workspace/columnar-perf-test/results/columnar-vs-deltamerge-large-s0.md)
- Detailed Delta report: [deltamerge-large-s0/report.md](/workspace/columnar-perf-test/results/deltamerge-large-s0/report.md)
- Columnar report: [columnar-large-s0/report.md](/workspace/columnar-perf-test/results/columnar-large-s0/report.md)
- Columnar explain files: [columnar-large-s0/explain](/workspace/columnar-perf-test/results/columnar-large-s0/explain)
- DeltaMerge explain files: [deltamerge-large-s0/explain](/workspace/columnar-perf-test/results/deltamerge-large-s0/explain)
