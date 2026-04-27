# Columnar Large S0 Second-Hit Report

## Scope
- Date: 2026-04-27
- Environment: `127.0.0.1:4000`, user `root`, TiDB version `8.0.11-TiDB-v8.5.3-serverless`
- Query path: columnar
- Benchmark schema: `bench_columnar_perf_large`
- Methodology: each query was measured twice with `WARMUP=0`, `REPEAT=2`; only `iteration=2` is used as the reported value
- Reference old columnar report: [columnar-large-s0/report.md](/workspace/columnar-perf-test/results/columnar-large-s0/report.md)

## Validation
- `fact_order_wide`: `20000000` rows, range `2026-03-01 00:00:00` to `2026-03-10 23:59:59`, hot-window rows `4000000`
- `user_game_day`: `10000006` rows, range `2026-03-01` to `2026-03-10`, hot-window rows `2000000`
- Result-set correctness against DeltaMerge run: `12/12 hash match`

## Cache-Miss Check
- Benchmark wall time: `168` seconds (`2026-04-27T10:17:59Z` -> `2026-04-27T10:20:47Z`)
- Average `iteration2 / iteration1`: `0.971`
- Median `iteration2 / iteration1`: `0.989`
- Best second-hit improvement: `03_large_in_group_by` at `0.719x` of first-hit
- Worst second-hit regression: `01_scan_agg_distinct` at `1.105x` of first-hit
- Fastest second-hit query: `06_hot_window_agg` at `0.862s`
- Slowest second-hit query: `12_late_materialization_wide_topn` at `16.296s`

## Interpretation
- This rerun does not show a strong cache-miss correction effect. The median second-hit is only about `1.1%` faster than the first-hit, and several queries are flat or slightly worse on the second execution.
- Relative to the previous columnar large report, most second-hit results stayed in the same band. The main outliers are `01_scan_agg_distinct` and `02_scan_agg_json`, which are materially slower than the earlier median-based report.

| Query | Iteration 1 (s) | Iteration 2 (s) | Iter2 / Iter1 | Iter2 / Old Columnar Median |
|---|---:|---:|---:|---:|
| `01_scan_agg_distinct` | 1.908 | 2.108 | 1.105 | 2.23x |
| `02_scan_agg_json` | 1.964 | 1.800 | 0.916 | 1.93x |
| `03_large_in_group_by` | 1.691 | 1.216 | 0.719 | 0.92x |
| `04_wide_topn` | 3.181 | 2.977 | 0.936 | 1.02x |
| `05_row_number_paging` | 1.383 | 1.378 | 0.996 | 1.02x |
| `06_hot_window_agg` | 0.856 | 0.862 | 1.007 | 1.00x |
| `07_hot_window_topn` | 2.983 | 3.093 | 1.037 | 1.15x |
| `08_or_lookup` | 2.410 | 2.437 | 1.011 | 1.01x |
| `09_pushdown_filter_base` | 3.033 | 2.975 | 0.981 | 0.99x |
| `10_pushdown_filter_derived` | 3.026 | 2.989 | 0.988 | 0.96x |
| `11_late_materialization_narrow_topn` | 2.378 | 2.356 | 0.991 | 1.01x |
| `12_late_materialization_wide_topn` | 16.841 | 16.296 | 0.968 | 1.03x |


## Artifacts
- Report: [report.md](/workspace/columnar-perf-test/results/columnar-large-s0-secondhit/report.md)
- Timings: [timings.tsv](/workspace/columnar-perf-test/results/columnar-large-s0-secondhit/timings.tsv)
- Result hashes: [hashes.tsv](/workspace/columnar-perf-test/results/columnar-large-s0-secondhit/hashes.tsv)
- EXPLAIN ANALYZE outputs: [explain](/workspace/columnar-perf-test/results/columnar-large-s0-secondhit/explain)
- Table stats: [table_stats.tsv](/workspace/columnar-perf-test/results/columnar-large-s0-secondhit/table_stats.tsv)
