# Columnar Region-Split vs DeltaMerge Large S0 Detailed Comparison

## Scope
- New columnar run after manual region split: [columnar-large-s0-region-split](/workspace/columnar-perf-test/results/columnar-large-s0-region-split)
- Previous columnar reference: [columnar-large-s0](/workspace/columnar-perf-test/results/columnar-large-s0)
- DeltaMerge reference: [deltamerge-large-s0](/workspace/columnar-perf-test/results/deltamerge-large-s0)
- Shared dataset: `bench_columnar_perf_large` with `fact_order_wide=20,000,000` and `user_game_day=10,000,006`
- Correctness: `12/12 hashes matched`
- Logical plan drift vs DeltaMerge: `none; all 12 logical plan skeletons are identical`

## Headline Findings
- Manual region split substantially narrowed the gap between columnar and DeltaMerge, but did not close it.
- End-to-end columnar wall time dropped from `309s` to `69s`, a `4.48x` improvement. DeltaMerge is still faster at `28s`, so the remaining end-to-end gap is `2.46x`.
- Query-level improvement vs the old columnar run ranges from `1.00x` (`08_or_lookup`) to `7.38x` (`12_late_materialization_wide_topn`), with average `4.68x`.
- Relative to DeltaMerge, the new columnar run is now between `1.06x` and `10.65x` slower, with average `2.54x` and median `1.70x`.

## Timing Summary
| Query | Hash | Old Columnar (s) | Region-Split Columnar (s) | DeltaMerge (s) | Old/New | New/Delta |
|---|---|---:|---:|---:|---:|---:|
| `01_scan_agg_distinct` | yes | 0.946 | 0.268 | 0.239 | 3.53x | 1.12x |
| `02_scan_agg_json` | yes | 0.933 | 0.283 | 0.232 | 3.30x | 1.22x |
| `03_large_in_group_by` | yes | 1.317 | 0.337 | 0.192 | 3.91x | 1.76x |
| `04_wide_topn` | yes | 2.907 | 0.570 | 0.348 | 5.10x | 1.64x |
| `05_row_number_paging` | yes | 1.351 | 0.346 | 0.277 | 3.90x | 1.25x |
| `06_hot_window_agg` | yes | 0.859 | 0.230 | 0.218 | 3.73x | 1.06x |
| `07_hot_window_topn` | yes | 2.691 | 0.553 | 0.336 | 4.87x | 1.65x |
| `08_or_lookup` | yes | 2.419 | 2.407 | 0.226 | 1.00x | 10.65x |
| `09_pushdown_filter_base` | yes | 3.009 | 0.445 | 0.207 | 6.76x | 2.15x |
| `10_pushdown_filter_derived` | yes | 3.107 | 0.464 | 0.222 | 6.70x | 2.09x |
| `11_late_materialization_narrow_topn` | yes | 2.332 | 0.387 | 0.211 | 6.03x | 1.83x |
| `12_late_materialization_wide_topn` | yes | 15.853 | 2.148 | 0.530 | 7.38x | 4.05x |


## Explain-Level Comparison
- The optimizer still chose the same logical operator trees for columnar and DeltaMerge. The remaining performance difference is therefore still a physical execution issue, not a logical-plan issue.
- Region split clearly helped the current columnar path on the queries that were bottlenecked by scan-side parallelism. This is visible in explain on `03`, `09`, `10`, `11`, and `12`, where the relevant leaf or near-leaf operators now show `2` to `32` threads instead of the previous `1` to `3`.
- The benefit is strongest on the queries that previously suffered most from wide scans, filtered range scans, or wide payload materialization. `12_late_materialization_wide_topn` improved from `15.853s` to `2.148s`, and `09/10` improved from around `3.0s` to about `0.45s`.
- The clear outlier is `08_or_lookup`: it stayed at `2.407s`, essentially unchanged from `2.419s`. That strongly suggests this case is not limited by raw region-level scan concurrency.

| Query | Root Op | Old Root ms | New Root ms | Delta Root ms | Scan Op | Old Scan ms | New Scan ms | Delta Scan ms | Old Threads | New Threads | Delta Threads |
|---|---|---:|---:|---:|---|---:|---:|---:|---:|---:|---:|
| `01_scan_agg_distinct` | `TableReader` | 851.6 | 184.2 | 153.6 | `TableRangeScan` | 804.2 | 135.5 | 127.1 | 1 | 1 | 72 |
| `02_scan_agg_json` | `TableReader` | 886.3 | 195.1 | 134.1 | `TableRangeScan` | 837.4 | 139.2 | 96.8 | 1 | 1 | 72 |
| `03_large_in_group_by` | `Sort` | 1130.0 | 263.7 | 107.3 | `TableFullScan` | 1060.0 | 227.6 | 78.5 | 3 | 32 | 72 |
| `04_wide_topn` | `Projection` | 2860.0 | 454.9 | 240.1 | `TableRangeScan` | 2840.0 | 450.9 | 231.9 | 1 | 1 | 72 |
| `05_row_number_paging` | `TableReader` | 1190.0 | 212.5 | 179.6 | `TableRangeScan` | 1170.0 | 190.9 | 155.5 | 1 | 1 | 72 |
| `06_hot_window_agg` | `TableReader` | 762.5 | 160.9 | 131.9 | `TableRangeScan` | 731.8 | 131.2 | 108.5 | 1 | 1 | 72 |
| `07_hot_window_topn` | `Projection` | 2900.0 | 479.4 | 248.0 | `TableRangeScan` | 2900.0 | 467.2 | 233.2 | 1 | 1 | 72 |
| `08_or_lookup` | `Sort` | 2380.0 | 2360.0 | 133.1 | `TableRangeScan` | 2380.0 | 2350.0 | 130.4 | 1 | 1 | 72 |
| `09_pushdown_filter_base` | `Sort` | 2880.0 | 404.0 | 136.3 | `TableRangeScan` | 2870.0 | 395.8 | 129.8 | 1 | 2 | 72 |
| `10_pushdown_filter_derived` | `Sort` | 2970.0 | 379.9 | 132.3 | `TableRangeScan` | 2960.0 | 369.6 | 120.7 | 1 | 2 | 72 |
| `11_late_materialization_narrow_topn` | `TopN` | 2270.0 | 292.0 | 122.8 | `TableRangeScan` | 2220.0 | 259.1 | 104.8 | 1 | 2 | 72 |
| `12_late_materialization_wide_topn` | `Projection` | 17200.0 | 2020.0 | 438.4 | `TableRangeScan` | 17000.0 | 1880.0 | 398.0 | 1 | 2 | 72 |


## Likely Reasons By Query Group
- `01/02/06` scan-and-aggregate group: region split reduced columnar latency from roughly `0.85-0.89s` down to `0.23-0.28s`, bringing it close to DeltaMerge. Even though the leaf `TableRangeScan` still reports `1` thread, the overall root and scan times both fell sharply. The most likely explanation is that region split reduced per-task scan granularity and improved upstream MPP scheduling, even without a visible jump in the leaf node's thread count.
- `03_large_in_group_by`: this is the cleanest proof that the split improved scan concurrency. Columnar `TableFullScan` moved from `3` threads and `1060ms` scan time to `32` threads and `227.6ms`, cutting total latency by `3.91x`. DeltaMerge is still faster, but the remaining gap is much smaller at `1.76x`.
- `04/05/07` TopN and paging group: columnar improved by about `3.9x` to `5.1x`, but still remains `1.25x` to `1.65x` slower than DeltaMerge. This suggests region split fixed much of the parallel scan underutilization, but not all of the physical read/materialization overhead.
- `08_or_lookup`: no meaningful gain from split, and the gap to DeltaMerge remains `10.65x`. DeltaMerge explain still shows a very sparse point-range read profile with `data_scanned_rows=6`, `data_skipped_rows=1000000`, and `tot_read=78ms`. The likely reason is that this case is dominated by sparse lookup efficiency rather than by large-region scan parallelism.
- `09/10` pushdown pair: split helped a lot. Columnar leaf-side threads rose from `1` to `2`, and scan time dropped from about `2.9s` to about `0.38-0.40s`. DeltaMerge still keeps an advantage at about `2.1x`, likely because its physical scan path still benefits from stronger skipping metrics like `data_skipped_rows=794624`, `mvcc_skipped_rows=1962309`, and `lm_filter_skipped_rows=1864005`.
- `11/12` late-materialization pair: split helped the most important wide-row cases. `11` improved `6.03x`, and `12` improved `7.38x`. The remaining gap to DeltaMerge is still `1.83x` on `11` and `4.05x` on `12`. This indicates that parallelism was a big part of the original problem, but wide payload materialization is still costlier on the columnar path than on DeltaMerge. DeltaMerge's `12` explain still shows a bounded physical read profile with `data_scanned_rows=163840` and `tot_read=230ms`, even while fetching a much wider payload.

## Conclusion
- Manual region split was effective. It materially improved the current columnar query path on almost every large-scan and wide-materialization case.
- The earlier columnar bottleneck was at least partly due to insufficient effective scan-side parallelism. The new explain outputs provide direct evidence for that on the most improved queries.
- DeltaMerge still wins on every query, so region split did not eliminate the underlying physical execution advantage of the DeltaMerge path.
- The remaining hardest case for columnar is not `03` or `09/10` anymore. It is still `08_or_lookup` and, to a lesser degree, the wide late-materialization query `12`.

## Artifacts
- New columnar report: [columnar-large-s0-region-split/report.md](/workspace/columnar-perf-test/results/columnar-large-s0-region-split/report.md)
- Summary compare: [columnar-region-split-vs-deltamerge-large-s0.md](/workspace/columnar-perf-test/results/columnar-region-split-vs-deltamerge-large-s0.md)
- Before/after split summary: [columnar-before-vs-after-region-split-large-s0.md](/workspace/columnar-perf-test/results/columnar-before-vs-after-region-split-large-s0.md)
- Detailed compare report: [columnar-region-split-vs-deltamerge-large-s0-detailed.md](/workspace/columnar-perf-test/results/columnar-region-split-vs-deltamerge-large-s0-detailed.md)
