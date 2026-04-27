# Columnar vs DeltaMerge Large S0 Second-Hit Detailed Comparison

## Scope
- New columnar rerun: [columnar-large-s0-secondhit](/workspace/columnar-perf-test/results/columnar-large-s0-secondhit)
- DeltaMerge reference run: [deltamerge-large-s0](/workspace/columnar-perf-test/results/deltamerge-large-s0)
- Previous comparison baseline: [columnar-vs-deltamerge-large-s0-detailed.md](/workspace/columnar-perf-test/results/columnar-vs-deltamerge-large-s0-detailed.md)
- Data set for both paths: `bench_columnar_perf_large` with `fact_order_wide=20,000,000` and `user_game_day=10,000,006`
- Comparison methodology: both sides are normalized to `iteration=2` only
- Correctness: `12/12 hashes matched`
- Logical plan drift: `none; all 12 logical plan skeletons are still identical`

## Headline Findings
- Re-testing columnar with a second-hit-only methodology did not materially close the gap to DeltaMerge.
- DeltaMerge remains faster on every query. The new columnar-over-delta gap ranges from `4.09x` (`06_hot_window_agg`) to `31.46x` (`12_late_materialization_wide_topn`).
- Compared with the previous detailed report, the revised gap is almost unchanged on most queries. The biggest methodology-induced changes are `01_scan_agg_distinct` and `02_scan_agg_json`, where the new columnar rerun is slower than the earlier columnar median.
- The root cause pattern remains the same as the previous report: identical logical plan trees, but much slower columnar leaf scans and much lower scan parallelism.

## Second-Hit Comparison Summary
| Query | Hash | Columnar Iter2 (s) | Delta Iter2 (s) | Columnar/Delta | Old Columnar/Delta | New vs Old Gap |
|---|---|---:|---:|---:|---:|---:|
| `01_scan_agg_distinct` | yes | 2.108 | 0.241 | 8.75x | 3.96x | 2.21x |
| `02_scan_agg_json` | yes | 1.800 | 0.212 | 8.49x | 4.02x | 2.11x |
| `03_large_in_group_by` | yes | 1.216 | 0.189 | 6.43x | 6.86x | 0.94x |
| `04_wide_topn` | yes | 2.977 | 0.355 | 8.39x | 8.35x | 1.00x |
| `05_row_number_paging` | yes | 1.378 | 0.288 | 4.78x | 4.88x | 0.98x |
| `06_hot_window_agg` | yes | 0.862 | 0.211 | 4.09x | 3.94x | 1.04x |
| `07_hot_window_topn` | yes | 3.093 | 0.317 | 9.76x | 8.01x | 1.22x |
| `08_or_lookup` | yes | 2.437 | 0.215 | 11.33x | 10.70x | 1.06x |
| `09_pushdown_filter_base` | yes | 2.975 | 0.207 | 14.37x | 14.54x | 0.99x |
| `10_pushdown_filter_derived` | yes | 2.989 | 0.217 | 13.77x | 14.00x | 0.98x |
| `11_late_materialization_narrow_topn` | yes | 2.356 | 0.214 | 11.01x | 11.05x | 1.00x |
| `12_late_materialization_wide_topn` | yes | 16.296 | 0.518 | 31.46x | 29.91x | 1.05x |


## What Changed Versus The Previous Detailed Report
- Previous report conclusion: DeltaMerge was faster on all 12 queries, with median speedups between about `3.94x` and `29.91x`.
- New second-hit-only conclusion: that result still holds, and the revised gap is between `4.09x` and `31.46x`.
- Cache-warming did not rescue columnar latency in a broad way. The rerun median `iteration2 / iteration1` is `0.989`, which is too small to explain the original gap.
- Only `03_large_in_group_by` shows a notable second-hit improvement inside the rerun (`0.719x` of first-hit). Most other queries moved by only a few percent, and `01_scan_agg_distinct` even regressed on the second execution.

## Explain And Physical-Plan Analysis
- The logical plan skeleton is unchanged for all 12 queries. The delta between engines still comes from physical execution under the same operator tree, not from a different optimizer choice.
- In the new columnar rerun, leaf scan parallelism is still low: `1` thread on 11 queries and `3` threads on `03_large_in_group_by`. DeltaMerge still shows `72` scan threads across the board.
- Root-node time continues to track leaf-scan time almost one-for-one. That means the bottleneck remains scan/filter/materialization, not root-side sort or merge.

| Query | Root Op | New Columnar Root ms | Delta Root ms | Scan Op | New Columnar Scan ms | Delta Scan ms | New Columnar Threads | Delta Threads |
|---|---|---:|---:|---|---:|---:|---:|---:|
| `01_scan_agg_distinct` | `TableReader` | 1580.0 | 153.6 | `TableRangeScan` | 1520.0 | 127.1 | 1 | 72 |
| `02_scan_agg_json` | `TableReader` | 1650.0 | 134.1 | `TableRangeScan` | 1560.0 | 96.8 | 1 | 72 |
| `03_large_in_group_by` | `Sort` | 1510.0 | 107.3 | `TableFullScan` | 1440.0 | 78.5 | 3 | 72 |
| `04_wide_topn` | `Projection` | 4120.0 | 240.1 | `TableRangeScan` | 4110.0 | 231.9 | 1 | 72 |
| `05_row_number_paging` | `TableReader` | 1310.0 | 179.6 | `TableRangeScan` | 1270.0 | 155.5 | 1 | 72 |
| `06_hot_window_agg` | `TableReader` | 764.9 | 131.9 | `TableRangeScan` | 744.1 | 108.5 | 1 | 72 |
| `07_hot_window_topn` | `Projection` | 2790.0 | 248.0 | `TableRangeScan` | 2770.0 | 233.2 | 1 | 72 |
| `08_or_lookup` | `Sort` | 2320.0 | 133.1 | `TableRangeScan` | 2320.0 | 130.4 | 1 | 72 |
| `09_pushdown_filter_base` | `Sort` | 2890.0 | 136.3 | `TableRangeScan` | 2880.0 | 129.8 | 1 | 72 |
| `10_pushdown_filter_derived` | `Sort` | 2890.0 | 132.3 | `TableRangeScan` | 2890.0 | 120.7 | 1 | 72 |
| `11_late_materialization_narrow_topn` | `TopN` | 2290.0 | 122.8 | `TableRangeScan` | 2240.0 | 104.8 | 1 | 72 |
| `12_late_materialization_wide_topn` | `Projection` | 16300.0 | 438.4 | `TableRangeScan` | 16100.0 | 398.0 | 1 | 72 |


## Interpretation By Query Group
- `01/02/06` scan-and-aggregate group: the rerun confirms the same pattern as before. The columnar second-hit path still spends most of its time at the leaf scan, and DeltaMerge still cuts that cost by roughly an order of magnitude only in the scan stage itself.
- `04/07` TopN group: second-hit timing did not change the conclusion. Columnar still pays about `8x` to `10x` more than DeltaMerge, and explain still points to the leaf scan as the dominant cost center.
- `08` sparse OR lookup: even after eliminating a first-hit statistic bias, columnar remains over `11x` slower. This strongly argues against cache miss being the main explanation for the previous gap.
- `09/10` pushdown pair: second-hit timing leaves the gap essentially unchanged at around `14x`. The derived-filter case remains only slightly slower than base-filter on both paths, so the main issue is still not expression evaluation cost at the root. It is the physical scan work below the `Selection`.
- `11/12` late-materialization pair: the wide query is still the largest gap. Columnar second-hit remains `31.46x` slower than DeltaMerge on `12`, which is even larger than in the previous detailed report. That points away from cache miss and toward payload materialization / wide-column fetch cost in the columnar path.

## Conclusion
- Re-running columnar and using only the second execution does not overturn the previous report.
- The original conclusion remains valid: DeltaMerge is materially faster than columnar on this large dataset under the current environment.
- The evidence still points to physical scan behavior as the main cause: same logical plans, much slower columnar leaf scans, and much lower scan parallelism.
- Cache miss may affect a small subset of queries at the margin, but it does not explain the observed multi-x gap between the two paths.

## Artifacts
- New columnar rerun report: [columnar-large-s0-secondhit/report.md](/workspace/columnar-perf-test/results/columnar-large-s0-secondhit/report.md)
- Previous detailed comparison: [columnar-vs-deltamerge-large-s0-detailed.md](/workspace/columnar-perf-test/results/columnar-vs-deltamerge-large-s0-detailed.md)
- New detailed comparison: [columnar-vs-deltamerge-large-s0-secondhit-detailed.md](/workspace/columnar-perf-test/results/columnar-vs-deltamerge-large-s0-secondhit-detailed.md)
