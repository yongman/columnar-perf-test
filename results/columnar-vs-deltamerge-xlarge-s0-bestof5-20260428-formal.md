# Columnar vs DeltaMerge XLarge S0 Best-of-5 Formal Comparison Report

## Scope
- Columnar run: [columnar-xlarge-s0-bestof5-20260428](/workspace/columnar-perf-test/results/columnar-xlarge-s0-bestof5-20260428)
- DeltaMerge run: [deltamerge-xlarge-s0-bestof5-20260428](/workspace/columnar-perf-test/results/deltamerge-xlarge-s0-bestof5-20260428)
- Environment: `127.0.0.1:4000`, user `root`, TiDB version `8.0.11-TiDB-v8.5.3-serverless`
- Shared benchmark schema: `bench_columnar_perf_xlarge`
- Shared dataset size: `fact_order_wide=200,000,000`, `user_game_day=100,000,006`
- Methodology: both runs use `WARMUP=0`, `REPEAT=5`, and report the fastest single execution (`Min`)
- This report reflects a full columnar rerun after tuning on 2026-04-28 and replaces the earlier comparison based on older columnar measurements
- TiFlash path verification: both runs have `12/12` `EXPLAIN ANALYZE` outputs containing `mpp[tiflash]`
- Correctness: `12/12` result hashes matched between the two runs
- Logical plan consistency: `12/12` query plan skeletons are identical between the two runs

## Executive Summary
- On xlarge under the current best-of-5 methodology, DeltaMerge is faster on `10/12` queries, while columnar is faster on `01_scan_agg_distinct` and `03_large_in_group_by`.
- End-to-end benchmark wall time is `144s` for columnar versus `62s` for DeltaMerge, so the overall gap is `2.32x`.
- On best-of-5 latency, the query-level columnar/DeltaMerge ratio ranges from `0.66x` to `6.70x`, with arithmetic average `2.93x` and median `2.28x`.
- The largest DeltaMerge advantage is `08_or_lookup` at `6.70x`. The largest columnar advantage is `03_large_in_group_by`, where columnar is `1.52x` faster.

## Timing Summary
| Query | Hash | Columnar Best-of-5 (s) | DeltaMerge Best-of-5 (s) | Columnar / Delta | Columnar P95 (s) | DeltaMerge P95 (s) |
|---|---|---:|---:|---:|---:|---:|
| `01_scan_agg_distinct` | yes | 0.637 | 0.655 | 0.97x | 0.678 | 0.708 |
| `02_scan_agg_json` | yes | 0.867 | 0.599 | 1.45x | 0.968 | 0.708 |
| `03_large_in_group_by` | yes | 1.475 | 2.244 | 0.66x | 1.902 | 2.720 |
| `04_wide_topn` | yes | 1.306 | 0.482 | 2.71x | 1.476 | 0.639 |
| `05_row_number_paging` | yes | 0.747 | 0.402 | 1.86x | 0.867 | 0.496 |
| `06_hot_window_agg` | yes | 0.461 | 0.262 | 1.76x | 0.621 | 0.288 |
| `07_hot_window_topn` | yes | 0.876 | 0.494 | 1.77x | 1.356 | 0.562 |
| `08_or_lookup` | yes | 1.527 | 0.228 | 6.70x | 1.921 | 0.288 |
| `09_pushdown_filter_base` | yes | 1.558 | 0.303 | 5.14x | 1.727 | 0.371 |
| `10_pushdown_filter_derived` | yes | 1.597 | 0.309 | 5.17x | 1.893 | 0.343 |
| `11_late_materialization_narrow_topn` | yes | 0.948 | 0.337 | 2.81x | 1.241 | 0.406 |
| `12_late_materialization_wide_topn` | yes | 5.264 | 1.254 | 4.20x | 8.209 | 1.520 |

## Explain-Level Comparison
- The optimizer produced the same logical operator tree for every query on both paths. The observed difference is therefore still a physical execution difference rather than a logical-plan difference.
- The tuned columnar path narrows the gap substantially on many queries, and even flips `01_scan_agg_distinct` and `03_large_in_group_by` in its favor.
- DeltaMerge still keeps lower leaf-scan time on most cases, especially sparse lookup, pushdown-filter, and late-materialization workloads.

| Query | Root Op | Columnar Root ms | Delta Root ms | Scan Op | Columnar Scan ms | Delta Scan ms | Columnar Threads | Delta Threads |
|---|---|---:|---:|---|---:|---:|---:|---:|
| `01_scan_agg_distinct` | `TableReader` | 579.1 | 624.1 | `TableRangeScan` | 288.0 | 396.8 | 1 | 16 |
| `02_scan_agg_json` | `TableReader` | 743.9 | 502.8 | `TableRangeScan` | 314.6 | 352.8 | 1 | 16 |
| `03_large_in_group_by` | `Sort` | 1860.0 | 2310.0 | `TableFullScan` | 1690.0 | 2260.0 | 10 | 16 |
| `04_wide_topn` | `Projection` | 1230.0 | 1010.0 | `TableRangeScan` | 1170.0 | 950.8 | 1 | 1 |
| `05_row_number_paging` | `TableReader` | 685.6 | 303.9 | `TableRangeScan` | 501.1 | 213.1 | 1 | 16 |
| `06_hot_window_agg` | `TableReader` | 390.8 | 205.6 | `TableRangeScan` | 214.8 | 147.5 | 1 | 16 |
| `07_hot_window_topn` | `Projection` | 775.9 | 436.1 | `TableRangeScan` | 718.1 | 429.0 | 1 | 16 |
| `08_or_lookup` | `Sort` | 1720.0 | 153.9 | `TableRangeScan` | 1700.0 | 154.3 | 1 | 16 |
| `09_pushdown_filter_base` | `Sort` | 1580.0 | 237.3 | `TableRangeScan` | 1560.0 | 227.7 | 2 | 16 |
| `10_pushdown_filter_derived` | `Sort` | 1720.0 | 223.4 | `TableRangeScan` | 1690.0 | 212.4 | 2 | 16 |
| `11_late_materialization_narrow_topn` | `TopN` | 1200.0 | 289.7 | `TableRangeScan` | 1050.0 | 204.9 | 2 | 16 |
| `12_late_materialization_wide_topn` | `Projection` | 5720.0 | 1450.0 | `TableRangeScan` | 4780.0 | 902.7 | 2 | 16 |

## Observations By Query Group
- `01/02/05/06` scan-and-aggregate group: the tuned columnar path is much closer to DeltaMerge than before. `01_scan_agg_distinct` is now slightly faster on columnar, while `02/05/06` still leave DeltaMerge with about `1.45x` to `1.86x` advantage.
- `03_large_in_group_by`: this remains the clearest columnar win. Columnar best-of-5 is `1.475s` versus `2.244s` on DeltaMerge, and explain shows lower root and scan time even though DeltaMerge still uses more scan threads (`16` vs `10`).
- `04/07` TopN group: tuning helped columnar materially, but DeltaMerge still leads. The current gap is `2.71x` on `04` and `1.77x` on `07`.
- `08_or_lookup`: this is still the strongest DeltaMerge advantage. Columnar improved to `1.527s`, but DeltaMerge remains at `0.228s`, a `6.70x` gap. This still points to sparse-read efficiency as a major differentiator.
- `09/10` pushdown-filter pair: DeltaMerge remains about `5.14x` to `5.17x` faster on best-of-5 latency. Even after tuning, the columnar leaf scan on these two queries is still around `1.56s` to `1.69s`.
- `11/12` late materialization pair: the tuned columnar path narrowed these gaps significantly, but DeltaMerge still keeps a clear edge. The wide-row case `12` is still `4.20x` slower on columnar.

## Conclusion
- Under the current tuned xlarge setup and best-of-5 methodology, DeltaMerge still performs better overall, but the gap is substantially narrower than before.
- Columnar now wins `01_scan_agg_distinct` and `03_large_in_group_by`, and most remaining gaps are no longer in the earlier extreme band except for `08_or_lookup`, `09/10`, and `12`.
- The remaining differences are still best explained by physical execution behavior under the same logical plans: leaf-scan cost, sparse-read efficiency, and scan-side concurrency.

## Artifacts
- Columnar report: [columnar-xlarge-s0-bestof5-20260428/report.md](/workspace/columnar-perf-test/results/columnar-xlarge-s0-bestof5-20260428/report.md)
- DeltaMerge report: [deltamerge-xlarge-s0-bestof5-20260428/report.md](/workspace/columnar-perf-test/results/deltamerge-xlarge-s0-bestof5-20260428/report.md)
- Formal comparison report: [columnar-vs-deltamerge-xlarge-s0-bestof5-20260428-formal.md](/workspace/columnar-perf-test/results/columnar-vs-deltamerge-xlarge-s0-bestof5-20260428-formal.md)
