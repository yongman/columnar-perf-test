# Columnar vs DeltaMerge Large S0 Formal Comparison Report

## Scope
- Columnar run: [columnar-large-s0-20260428](/workspace/columnar-perf-test/results/columnar-large-s0-20260428)
- DeltaMerge run: [deltamerge-large-s0-16core](/workspace/columnar-perf-test/results/deltamerge-large-s0-16core)
- Environment: `127.0.0.1:4000`, user `root`, TiDB version `8.0.11-TiDB-v8.5.3-serverless`
- Shared benchmark schema: `bench_columnar_perf_large`
- Shared dataset size: `fact_order_wide=20,000,000`, `user_game_day=10,000,006`
- Methodology: both runs use `WARMUP=1`, `REPEAT=5`
- TiFlash path verification: both runs have `12/12` `EXPLAIN ANALYZE` outputs containing `mpp[tiflash]`
- Correctness: `12/12` result hashes matched between the two runs
- Logical plan consistency: `12/12` query plan skeletons are identical between the two runs

## Executive Summary
- DeltaMerge is faster on all `12/12` benchmark queries in this comparison set.
- End-to-end benchmark wall time is `63s` for columnar versus `28s` for DeltaMerge, so the overall gap is `2.25x`.
- On median latency, the query-level columnar/DeltaMerge gap ranges from `1.04x` to `5.06x`, with arithmetic average `2.07x` and median `2.03x`.
- The smallest gap is `06_hot_window_agg` at `1.04x`; the largest gap is `12_late_materialization_wide_topn` at `5.06x`.

## Timing Summary
| Query | Hash | Columnar Median (s) | DeltaMerge Median (s) | Columnar / Delta | Columnar P95 (s) | DeltaMerge P95 (s) |
|---|---|---:|---:|---:|---:|---:|
| `01_scan_agg_distinct` | yes | 0.250 | 0.232 | 1.08x | 0.257 | 0.238 |
| `02_scan_agg_json` | yes | 0.273 | 0.220 | 1.24x | 0.289 | 0.233 |
| `03_large_in_group_by` | yes | 0.423 | 0.187 | 2.26x | 0.465 | 0.188 |
| `04_wide_topn` | yes | 0.613 | 0.330 | 1.86x | 0.647 | 0.343 |
| `05_row_number_paging` | yes | 0.343 | 0.276 | 1.24x | 0.367 | 0.283 |
| `06_hot_window_agg` | yes | 0.231 | 0.223 | 1.04x | 0.238 | 0.227 |
| `07_hot_window_topn` | yes | 0.569 | 0.333 | 1.71x | 0.676 | 0.352 |
| `08_or_lookup` | yes | 0.496 | 0.226 | 2.19x | 0.535 | 0.231 |
| `09_pushdown_filter_base` | yes | 0.457 | 0.207 | 2.21x | 0.577 | 0.229 |
| `10_pushdown_filter_derived` | yes | 0.478 | 0.216 | 2.21x | 0.551 | 0.220 |
| `11_late_materialization_narrow_topn` | yes | 0.597 | 0.215 | 2.78x | 0.629 | 0.222 |
| `12_late_materialization_wide_topn` | yes | 2.600 | 0.514 | 5.06x | 2.860 | 0.533 |

## Explain-Level Comparison
- The optimizer produced the same logical operator tree for every query on both paths. The measured difference is therefore a physical execution difference rather than a logical-plan difference.
- DeltaMerge consistently shows lower leaf scan time. That pattern is visible on all `12` cases and is strongest on the sparse lookup, pushdown-filter, and wide materialization queries.
- Scan-side concurrency is one major contributor, but not the only one. `03_large_in_group_by` already runs with `16` scan threads on both sides, yet DeltaMerge still cuts leaf scan time from `298.4ms` to `69.8ms`.

| Query | Root Op | Columnar Root ms | Delta Root ms | Scan Op | Columnar Scan ms | Delta Scan ms | Columnar Threads | Delta Threads |
|---|---|---:|---:|---|---:|---:|---:|---:|
| `01_scan_agg_distinct` | `TableReader` | 194.9 | 146.6 | `TableRangeScan` | 166.2 | 118.2 | 1 | 16 |
| `02_scan_agg_json` | `TableReader` | 184.0 | 136.7 | `TableRangeScan` | 135.3 | 98.4 | 1 | 16 |
| `03_large_in_group_by` | `Sort` | 329.8 | 96.8 | `TableFullScan` | 298.4 | 69.8 | 16 | 16 |
| `04_wide_topn` | `Projection` | 523.9 | 253.4 | `TableRangeScan` | 514.5 | 249.9 | 1 | 16 |
| `05_row_number_paging` | `TableReader` | 239.7 | 176.6 | `TableRangeScan` | 217.7 | 157.9 | 1 | 16 |
| `06_hot_window_agg` | `TableReader` | 132.0 | 131.0 | `TableRangeScan` | 114.9 | 111.3 | 1 | 16 |
| `07_hot_window_topn` | `Projection` | 537.4 | 238.5 | `TableRangeScan` | 530.6 | 230.6 | 1 | 16 |
| `08_or_lookup` | `Sort` | 431.1 | 137.0 | `TableRangeScan` | 429.7 | 132.9 | 1 | 16 |
| `09_pushdown_filter_base` | `Sort` | 374.5 | 114.2 | `TableRangeScan` | 371.0 | 106.6 | 2 | 16 |
| `10_pushdown_filter_derived` | `Sort` | 394.0 | 131.7 | `TableRangeScan` | 386.6 | 122.1 | 2 | 16 |
| `11_late_materialization_narrow_topn` | `TopN` | 405.2 | 130.7 | `TableRangeScan` | 394.2 | 108.9 | 2 | 16 |
| `12_late_materialization_wide_topn` | `Projection` | 2790.0 | 425.1 | `TableRangeScan` | 2660.0 | 384.1 | 2 | 16 |

## Observations By Query Group
- `01/02/05/06` scan-and-aggregate group: columnar is already close to DeltaMerge on these cases. The remaining gap is small and mostly tracks leaf scan time.
- `03_large_in_group_by`: both paths already show `16` scan threads, but DeltaMerge still has materially lower root and scan time. This indicates the advantage is not only higher concurrency; the physical scan path itself is cheaper.
- `04/07` TopN group: DeltaMerge cuts both root and leaf scan time by about half. The gap is moderate but consistent.
- `08_or_lookup`: this remains a sparse lookup case where DeltaMerge has a clear physical-read advantage. DeltaMerge explain shows `data_scanned_rows:6`, `data_skipped_rows:1000000`, and `tot_read:74ms`, while columnar still spends about `429.7ms` at the leaf scan with a single scan thread.
- `09/10` pushdown-filter pair: DeltaMerge remains about `2.21x` faster on median latency and about `3x` faster at the leaf scan. Explain also shows strong skip metrics on the DeltaMerge side, including `data_skipped_rows:794624`, `mvcc_skipped_rows:1962309`, and `lm_filter_skipped_rows:1864005`.
- `11/12` late materialization pair: the wide-row query is the largest remaining gap in the full suite. `12_late_materialization_wide_topn` is `5.06x` slower on columnar, and the leaf `TableRangeScan` is `2660ms` on columnar versus `384.1ms` on DeltaMerge.

## Conclusion
- Under the current environment and dataset, DeltaMerge provides lower latency than columnar on every benchmark case in this suite.
- The result is not caused by different logical plans, because the plan skeletons are identical across all `12` queries.
- The dominant source of the gap is physical execution behavior: lower DeltaMerge leaf scan time, stronger skipping effectiveness on selective workloads, and higher stable scan-side concurrency on most queries.

## Artifacts
- Columnar report: [columnar-large-s0-20260428/report.md](/workspace/columnar-perf-test/results/columnar-large-s0-20260428/report.md)
- DeltaMerge report: [deltamerge-large-s0-16core/report.md](/workspace/columnar-perf-test/results/deltamerge-large-s0-16core/report.md)
- Summary comparison: [columnar-large-s0-20260428-vs-deltamerge-large-s0-16core.md](/workspace/columnar-perf-test/results/columnar-large-s0-20260428-vs-deltamerge-large-s0-16core.md)
- Formal comparison report: [columnar-vs-deltamerge-large-s0-20260428-formal.md](/workspace/columnar-perf-test/results/columnar-vs-deltamerge-large-s0-20260428-formal.md)
