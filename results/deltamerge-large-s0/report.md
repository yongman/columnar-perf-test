# DeltaMerge Large S0 Test Report

## Scope
- Date: 2026-04-27
- Environment: `127.0.0.1:4000`, user `root`, TiDB version `8.0.11-TiDB-v8.5.3-serverless`
- Query path: DeltaMerge tree
- Benchmark schema: `bench_columnar_perf_large`
- Dataset size: `fact_order_wide=20,000,000`, `user_game_day=10,000,006`
- Runner config: `WARMUP=1`, `REPEAT=5`
- TiFlash path verification: `12/12` `EXPLAIN ANALYZE` outputs contain `mpp[tiflash]`

## Validation
- `fact_order_wide`: `20000000` rows, range `2026-03-01 00:00:00` to `2026-03-10 23:59:59`, hot-window rows `4000000`
- `user_game_day`: `10000006` rows, range `2026-03-01` to `2026-03-10`, hot-window rows `2000000`
- Result-set correctness against `columnar-large-s0`: `12/12 hash match`

## Summary
- Benchmark wall time: `28` seconds (`2026-04-27T09:48:12Z` -> `2026-04-27T09:48:40Z`)
- Fastest median query: `03_large_in_group_by` at `0.192s`
- Slowest median query: `12_late_materialization_wide_topn` at `0.530s`
- Late materialization pair: `12_late_materialization_wide_topn` is `2.51x` slower than `11_late_materialization_narrow_topn` by median latency
- Pushdown pair: `10_pushdown_filter_derived` is `1.07x` slower than `09_pushdown_filter_base` by median latency

| Query | Median (s) | P95 (s) | Min (s) | Max (s) | Result Rows | SHA-256 Prefix |
|---|---:|---:|---:|---:|---:|---|
| `01_scan_agg_distinct` | 0.239 | 0.249 | 0.230 | 0.249 | 1 | `ebf45df6c811` |
| `02_scan_agg_json` | 0.232 | 0.241 | 0.212 | 0.241 | 1 | `606207006bea` |
| `03_large_in_group_by` | 0.192 | 0.196 | 0.185 | 0.196 | 32 | `f27cbbe84705` |
| `04_wide_topn` | 0.348 | 0.358 | 0.327 | 0.358 | 100 | `2929f2886512` |
| `05_row_number_paging` | 0.277 | 0.299 | 0.274 | 0.299 | 1000 | `aac59737aaa6` |
| `06_hot_window_agg` | 0.218 | 0.222 | 0.211 | 0.222 | 1 | `18ea968906a0` |
| `07_hot_window_topn` | 0.336 | 0.364 | 0.317 | 0.364 | 100 | `4ba3152afab2` |
| `08_or_lookup` | 0.226 | 0.247 | 0.215 | 0.247 | 6 | `712314876109` |
| `09_pushdown_filter_base` | 0.207 | 0.217 | 0.199 | 0.217 | 4 | `aa0025de98bb` |
| `10_pushdown_filter_derived` | 0.222 | 0.230 | 0.208 | 0.230 | 4 | `aa0025de98bb` |
| `11_late_materialization_narrow_topn` | 0.211 | 0.229 | 0.194 | 0.229 | 200 | `b26747db2b20` |
| `12_late_materialization_wide_topn` | 0.530 | 0.541 | 0.518 | 0.541 | 200 | `de3fa58537c2` |


## Artifacts
- Report: [report.md](/workspace/columnar-perf-test/results/deltamerge-large-s0/report.md)
- Timings: [timings.tsv](/workspace/columnar-perf-test/results/deltamerge-large-s0/timings.tsv)
- Result hashes: [hashes.tsv](/workspace/columnar-perf-test/results/deltamerge-large-s0/hashes.tsv)
- Query result sets: [result_sets](/workspace/columnar-perf-test/results/deltamerge-large-s0/result_sets)
- EXPLAIN ANALYZE outputs: [explain](/workspace/columnar-perf-test/results/deltamerge-large-s0/explain)
- Table stats: [table_stats.tsv](/workspace/columnar-perf-test/results/deltamerge-large-s0/table_stats.tsv)
