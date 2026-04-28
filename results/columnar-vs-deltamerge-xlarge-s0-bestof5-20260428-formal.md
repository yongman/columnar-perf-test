# Columnar vs DeltaMerge XLarge S0 Best-of-5 Formal Comparison Report

## Scope
- Columnar run: [columnar-xlarge-s0-bestof5-20260428](/workspace/columnar-perf-test/results/columnar-xlarge-s0-bestof5-20260428)
- DeltaMerge run: [deltamerge-xlarge-s0-bestof5-20260428](/workspace/columnar-perf-test/results/deltamerge-xlarge-s0-bestof5-20260428)
- Environment: `127.0.0.1:4000`, user `root`, TiDB version `8.0.11-TiDB-v8.5.3-serverless`
- Shared benchmark schema: `bench_columnar_perf_xlarge`
- Shared dataset size: `fact_order_wide=200,000,000`, `user_game_day=100,000,006`
- Methodology: both runs use `WARMUP=0`, `REPEAT=5`, and report the fastest single execution (`Min`)
- TiFlash path verification: both runs have `12/12` `EXPLAIN ANALYZE` outputs containing `mpp[tiflash]`
- Correctness: `12/12` result hashes matched between the two runs
- Logical plan consistency: `12/12` query plan skeletons are identical between the two runs

## Executive Summary
- On xlarge under the current best-of-5 methodology, DeltaMerge is faster on `11/12` queries, while columnar is faster only on `03_large_in_group_by`.
- End-to-end benchmark wall time is `242s` for columnar versus `62s` for DeltaMerge, so the overall gap is `3.90x`.
- On best-of-5 latency, the query-level columnar/DeltaMerge ratio ranges from `0.54x` to `20.27x`, with arithmetic average `5.90x` and median `4.45x`.
- The largest DeltaMerge advantage is `08_or_lookup` at `20.27x`. The only columnar advantage is `03_large_in_group_by`, where columnar is `1.85x` faster.

## Timing Summary
| Query | Hash | Columnar Best-of-5 (s) | DeltaMerge Best-of-5 (s) | Columnar / Delta | Columnar P95 (s) | DeltaMerge P95 (s) |
|---|---|---:|---:|---:|---:|---:|
| `01_scan_agg_distinct` | yes | 1.019 | 0.655 | 1.56x | 1.064 | 0.708 |
| `02_scan_agg_json` | yes | 1.173 | 0.599 | 1.96x | 1.284 | 0.708 |
| `03_large_in_group_by` | yes | 1.211 | 2.244 | 0.54x | 1.339 | 2.720 |
| `04_wide_topn` | yes | 2.283 | 0.482 | 4.74x | 2.367 | 0.639 |
| `05_row_number_paging` | yes | 1.250 | 0.402 | 3.11x | 1.279 | 0.496 |
| `06_hot_window_agg` | yes | 0.817 | 0.262 | 3.12x | 0.878 | 0.288 |
| `07_hot_window_topn` | yes | 2.058 | 0.494 | 4.17x | 2.234 | 0.562 |
| `08_or_lookup` | yes | 4.621 | 0.228 | 20.27x | 4.661 | 0.288 |
| `09_pushdown_filter_base` | yes | 2.226 | 0.303 | 7.35x | 2.275 | 0.371 |
| `10_pushdown_filter_derived` | yes | 2.412 | 0.309 | 7.81x | 2.470 | 0.343 |
| `11_late_materialization_narrow_topn` | yes | 2.067 | 0.337 | 6.13x | 2.128 | 0.406 |
| `12_late_materialization_wide_topn` | yes | 12.605 | 1.254 | 10.05x | 12.820 | 1.520 |

## Explain-Level Comparison
- The optimizer produced the same logical operator tree for every query on both paths. The observed difference is therefore a physical execution difference rather than a logical-plan difference.
- On most queries, DeltaMerge reduces both root-side and leaf-scan time substantially, usually while also using `16` scan threads where columnar only uses `1` or `2`.
- `03_large_in_group_by` is the clear exception. Both paths already run this case with `16` scan threads, yet DeltaMerge shows a higher leaf scan time (`2260ms` vs `1060ms`) and higher root time (`2310ms` vs `1190ms`).

| Query | Root Op | Columnar Root ms | Delta Root ms | Scan Op | Columnar Scan ms | Delta Scan ms | Columnar Threads | Delta Threads |
|---|---|---:|---:|---|---:|---:|---:|---:|
| `01_scan_agg_distinct` | `TableReader` | 962.8 | 624.1 | `TableRangeScan` | 699.9 | 396.8 | 1 | 16 |
| `02_scan_agg_json` | `TableReader` | 1150.0 | 502.8 | `TableRangeScan` | 683.9 | 352.8 | 1 | 16 |
| `03_large_in_group_by` | `Sort` | 1190.0 | 2310.0 | `TableFullScan` | 1060.0 | 2260.0 | 16 | 16 |
| `04_wide_topn` | `Projection` | 2210.0 | 524.4 | `TableRangeScan` | 2150.0 | 515.4 | 1 | 16 |
| `05_row_number_paging` | `TableReader` | 1200.0 | 303.9 | `TableRangeScan` | 1050.0 | 213.1 | 1 | 16 |
| `06_hot_window_agg` | `TableReader` | 755.8 | 205.6 | `TableRangeScan` | 579.0 | 147.5 | 1 | 16 |
| `07_hot_window_topn` | `Projection` | 2010.0 | 436.1 | `TableRangeScan` | 1980.0 | 429.0 | 1 | 16 |
| `08_or_lookup` | `Sort` | 4520.0 | 153.9 | `TableRangeScan` | 4510.0 | 154.3 | 1 | 16 |
| `09_pushdown_filter_base` | `Sort` | 2210.0 | 237.3 | `TableRangeScan` | 2180.0 | 227.7 | 1 | 16 |
| `10_pushdown_filter_derived` | `Sort` | 2340.0 | 223.4 | `TableRangeScan` | 2310.0 | 212.4 | 1 | 16 |
| `11_late_materialization_narrow_topn` | `TopN` | 1910.0 | 289.7 | `TableRangeScan` | 1670.0 | 204.9 | 1 | 16 |
| `12_late_materialization_wide_topn` | `Projection` | 12600.0 | 1450.0 | `TableRangeScan` | 11100.0 | 902.7 | 1 | 16 |

## Observations By Query Group
- `01/02/05/06` scan-and-aggregate group: DeltaMerge is consistently faster, with best-of-5 gains from `1.56x` to `3.12x`. The main difference is still lower leaf scan time plus higher scan-side concurrency.
- `03_large_in_group_by`: this is the only reversed case in the suite. Both paths already show `16` scan threads and the same logical plan, but DeltaMerge still spends more time at the leaf scan. From the explain output, the DeltaMerge scan reads a large `dtfile` working set with `data_scanned_rows:10132319`, `tot_read:1615ms`, and a total leaf time of `2260ms`. The most plausible inference is that this broad scan-plus-aggregation case is less favorable to the DeltaMerge physical scan path than to the current columnar path.
- `04/07` TopN group: DeltaMerge reduces latency by about `4.17x` to `4.74x`. Root and scan times both fall by a similar ratio, which indicates the win is primarily below the root operator.
- `08_or_lookup`: this remains the clearest sparse-read advantage. DeltaMerge best-of-5 is `0.228s` versus `4.621s` on columnar, a `20.27x` gap. Explain shows a very small physical read profile on DeltaMerge with `data_scanned_rows:8192`, `data_skipped_rows:991809`, and `tot_read:79ms`.
- `09/10` pushdown-filter pair: DeltaMerge is about `7.35x` to `7.81x` faster on best-of-5 latency. Explain shows strong skip metrics on the DeltaMerge side, including `data_skipped_rows:2550851`, `mvcc_skipped_rows:2550851`, and a leaf scan around `212ms` to `228ms`.
- `11/12` late materialization pair: DeltaMerge keeps a strong advantage on both cases, especially the wide-row query `12`, where the best-of-5 gap is `10.05x`. The leaf `TableRangeScan` drops from `11100ms` on columnar to `902.7ms` on DeltaMerge.

## Conclusion
- Under the current xlarge dataset and best-of-5 methodology, DeltaMerge clearly outperforms columnar overall, but the result is not uniformly one-sided across every single query.
- `03_large_in_group_by` is the only case where columnar is faster, and the explain output indicates that this exception comes from lower physical scan cost on the columnar side despite the same logical plan and the same visible scan-thread count.
- For the other `11` queries, especially sparse lookup, pushdown-filter, and late-materialization workloads, DeltaMerge shows a strong physical execution advantage through lower leaf scan time, stronger skipping effectiveness, and consistently higher scan-side concurrency.

## Artifacts
- Columnar report: [columnar-xlarge-s0-bestof5-20260428/report.md](/workspace/columnar-perf-test/results/columnar-xlarge-s0-bestof5-20260428/report.md)
- DeltaMerge report: [deltamerge-xlarge-s0-bestof5-20260428/report.md](/workspace/columnar-perf-test/results/deltamerge-xlarge-s0-bestof5-20260428/report.md)
- Formal comparison report: [columnar-vs-deltamerge-xlarge-s0-bestof5-20260428-formal.md](/workspace/columnar-perf-test/results/columnar-vs-deltamerge-xlarge-s0-bestof5-20260428-formal.md)
