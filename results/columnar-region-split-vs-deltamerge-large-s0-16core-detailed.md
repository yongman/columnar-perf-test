# Columnar Region-Split vs DeltaMerge Large S0 16-Core Detailed Comparison

## Scope
- Columnar reference after manual region split: [columnar-large-s0-region-split](/workspace/columnar-perf-test/results/columnar-large-s0-region-split)
- New DeltaMerge reference with CPU capped at `16` cores: [deltamerge-large-s0-16core](/workspace/columnar-perf-test/results/deltamerge-large-s0-16core)
- Previous DeltaMerge comparison baseline: [columnar-region-split-vs-deltamerge-large-s0-detailed.md](/workspace/columnar-perf-test/results/columnar-region-split-vs-deltamerge-large-s0-detailed.md)
- Shared dataset: `bench_columnar_perf_large` with `fact_order_wide=20,000,000` and `user_game_day=10,000,006`
- Correctness: `12/12 hashes matched`
- Logical plan drift vs DeltaMerge: `none; all 12 logical plan skeletons are identical`

## Headline Findings
- Even after capping DeltaMerge to `16` cores, DeltaMerge is still faster than the latest region-split columnar run on all `12/12` queries.
- End-to-end wall time is still `69s` for columnar region-split versus `28s` for DeltaMerge 16-core, so the overall gap remains `2.46x`.
- Query-level columnar/DeltaMerge median gap ranges from `1.03x` (`06_hot_window_agg`) to `10.58x` (`08_or_lookup`), with arithmetic average `2.57x` and median `1.77x`.
- The 16-core cap did not materially slow DeltaMerge itself. Relative to the previous DeltaMerge run, medians moved only between `0.98x` and `1.05x`, and the full benchmark wall time stayed at `28s`.

## Timing Summary
| Query | Hash | Region-Split Columnar (s) | DeltaMerge 16-Core (s) | Columnar / Delta | Columnar P95 (s) | Delta P95 (s) |
|---|---|---:|---:|---:|---:|---:|
| `01_scan_agg_distinct` | yes | 0.268 | 0.232 | 1.16x | 0.274 | 0.238 |
| `02_scan_agg_json` | yes | 0.283 | 0.220 | 1.29x | 0.287 | 0.233 |
| `03_large_in_group_by` | yes | 0.337 | 0.187 | 1.80x | 0.352 | 0.188 |
| `04_wide_topn` | yes | 0.570 | 0.330 | 1.73x | 0.660 | 0.343 |
| `05_row_number_paging` | yes | 0.346 | 0.276 | 1.25x | 0.443 | 0.283 |
| `06_hot_window_agg` | yes | 0.230 | 0.223 | 1.03x | 0.243 | 0.227 |
| `07_hot_window_topn` | yes | 0.553 | 0.333 | 1.66x | 0.595 | 0.352 |
| `08_or_lookup` | yes | 2.390 | 0.226 | 10.58x | 2.399 | 0.231 |
| `09_pushdown_filter_base` | yes | 0.445 | 0.207 | 2.15x | 0.452 | 0.229 |
| `10_pushdown_filter_derived` | yes | 0.464 | 0.216 | 2.15x | 0.493 | 0.220 |
| `11_late_materialization_narrow_topn` | yes | 0.387 | 0.215 | 1.80x | 0.393 | 0.222 |
| `12_late_materialization_wide_topn` | yes | 2.148 | 0.514 | 4.18x | 2.193 | 0.533 |

## Effect Of The 16-Core Cap On DeltaMerge
- The cap is visible in explain: this run consistently shows `threads:16` on the TiFlash scan side.
- Despite that, the previous DeltaMerge run and the new 16-core run remain in the same latency band on every query.
- This means the remaining columnar-vs-DeltaMerge gap is not explained by the earlier DeltaMerge run simply having an unrealistic CPU envelope.

| Query | Previous DeltaMerge (s) | DeltaMerge 16-Core (s) | Previous / 16-Core |
|---|---:|---:|---:|
| `01_scan_agg_distinct` | 0.239 | 0.232 | 1.03x |
| `02_scan_agg_json` | 0.232 | 0.220 | 1.05x |
| `03_large_in_group_by` | 0.192 | 0.187 | 1.03x |
| `04_wide_topn` | 0.348 | 0.330 | 1.05x |
| `05_row_number_paging` | 0.277 | 0.276 | 1.00x |
| `06_hot_window_agg` | 0.218 | 0.223 | 0.98x |
| `07_hot_window_topn` | 0.336 | 0.333 | 1.01x |
| `08_or_lookup` | 0.226 | 0.226 | 1.00x |
| `09_pushdown_filter_base` | 0.207 | 0.207 | 1.00x |
| `10_pushdown_filter_derived` | 0.222 | 0.216 | 1.03x |
| `11_late_materialization_narrow_topn` | 0.211 | 0.215 | 0.98x |
| `12_late_materialization_wide_topn` | 0.530 | 0.514 | 1.03x |

## Explain-Level Comparison
- The optimizer still chose the same logical operator trees, so the remaining gap is still a physical execution issue, not a logical-plan issue.
- Region split helped columnar a lot relative to the older columnar run, but the current DeltaMerge 16-core path still has materially lower scan time on every case.
- The hardest outlier remains `08_or_lookup`. Columnar still spends about `2350ms` at the leaf scan with `1` thread, while DeltaMerge 16-core finishes the same leaf scan in about `133ms` with `16` threads.

| Query | Root Op | Columnar Root ms | Delta Root ms | Scan Op | Columnar Scan ms | Delta Scan ms | Columnar Threads | Delta Threads |
|---|---|---:|---:|---|---:|---:|---:|---:|
| `01_scan_agg_distinct` | `TableReader` | 184.2 | 146.6 | `TableRangeScan` | 135.5 | 118.2 | 1 | 16 |
| `02_scan_agg_json` | `TableReader` | 195.1 | 136.7 | `TableRangeScan` | 139.2 | 98.4 | 1 | 16 |
| `03_large_in_group_by` | `Sort` | 263.7 | 96.8 | `TableFullScan` | 227.6 | 69.8 | 32 | 16 |
| `04_wide_topn` | `Projection` | 454.9 | 253.4 | `TableRangeScan` | 450.9 | 249.9 | 1 | 16 |
| `05_row_number_paging` | `TableReader` | 212.5 | 176.6 | `TableRangeScan` | 190.9 | 157.9 | 1 | 16 |
| `06_hot_window_agg` | `TableReader` | 160.9 | 131.0 | `TableRangeScan` | 131.2 | 111.3 | 1 | 16 |
| `07_hot_window_topn` | `Projection` | 479.4 | 238.5 | `TableRangeScan` | 467.2 | 230.6 | 1 | 16 |
| `08_or_lookup` | `Sort` | 2350.0 | 137.0 | `TableRangeScan` | 2350.0 | 132.9 | 1 | 16 |
| `09_pushdown_filter_base` | `Sort` | 404.0 | 114.2 | `TableRangeScan` | 395.8 | 106.6 | 2 | 16 |
| `10_pushdown_filter_derived` | `Sort` | 379.9 | 131.7 | `TableRangeScan` | 369.6 | 122.1 | 2 | 16 |
| `11_late_materialization_narrow_topn` | `TopN` | 292.0 | 130.7 | `TableRangeScan` | 259.1 | 108.9 | 2 | 16 |
| `12_late_materialization_wide_topn` | `Projection` | 2020.0 | 425.1 | `TableRangeScan` | 1880.0 | 384.1 | 2 | 16 |

## Likely Reasons By Query Group
- `01/02/05/06` scan-and-aggregate group: after region split, columnar is already close to DeltaMerge, but the leaf scan is still consistently slower and still only runs with `1` scan thread. The remaining gap is modest and looks like residual physical scan overhead rather than a plan-shape issue.
- `03_large_in_group_by`: this query is important because columnar already has visible scan concurrency at `32` threads, yet DeltaMerge 16-core is still `1.80x` faster and cuts scan time from `227.6ms` to `69.8ms`. That suggests the advantage is not only thread count. The DeltaMerge physical scan itself is cheaper.
- `04/07` TopN group: region split removed most of the earlier columnar collapse, but DeltaMerge still halves the root and scan time. This points to lower scan-plus-materialization cost on the DeltaMerge side.
- `08_or_lookup`: the gap remains `10.58x`, and explain shows a very sparse DeltaMerge point/range read profile with `data_scanned_rows:6`, `data_skipped_rows:1000000`, and `tot_read:74ms`. The columnar rerun still has `threads:1` and `time:2.35s` on the same leaf scan. This case still looks dominated by sparse lookup efficiency and skipping behavior, not by raw CPU availability.
- `09/10` pushdown pair: columnar improved to `2` scan threads after the split, but DeltaMerge 16-core still finishes the leaf scan in about `106.6ms` to `122.1ms` versus `369.6ms` to `395.8ms` on columnar. The DeltaMerge scan also reports strong skipping metrics, including `data_skipped_rows:794624`, `mvcc_skipped_rows:1962309`, and `lm_filter_skipped_rows:1864005`.
- `11/12` late materialization pair: region split fixed the worst collapse, but the wide-row case is still far apart. On `12`, columnar still spends `1880ms` in `TableRangeScan` versus `384.1ms` on DeltaMerge 16-core, and DeltaMerge still preserves the same strong skipping profile while fetching the wider payload. This remains the clearest sign that wide payload materialization is still costlier on the columnar path.

## Conclusion
- Re-running DeltaMerge under a more reasonable `16`-core ceiling does not change the previous high-level conclusion.
- The latest region-split columnar run is much healthier than the earlier columnar runs, but DeltaMerge still wins on all queries and by a clear margin on the sparse lookup, pushdown-filter, and wide materialization cases.
- The evidence still points to physical execution differences under the same logical plan: lower DeltaMerge scan time, better skipping, and higher stable scan-side parallelism.

## Artifacts
- Columnar report: [columnar-large-s0-region-split/report.md](/workspace/columnar-perf-test/results/columnar-large-s0-region-split/report.md)
- DeltaMerge 16-core report: [deltamerge-large-s0-16core/report.md](/workspace/columnar-perf-test/results/deltamerge-large-s0-16core/report.md)
- Summary compare: [columnar-region-split-vs-deltamerge-large-s0-16core.md](/workspace/columnar-perf-test/results/columnar-region-split-vs-deltamerge-large-s0-16core.md)
- DeltaMerge cap-only compare: [deltamerge-before-vs-16core-large-s0.md](/workspace/columnar-perf-test/results/deltamerge-before-vs-16core-large-s0.md)
- Detailed compare report: [columnar-region-split-vs-deltamerge-large-s0-16core-detailed.md](/workspace/columnar-perf-test/results/columnar-region-split-vs-deltamerge-large-s0-16core-detailed.md)
