# DeltaMerge Large S0 16-Core Test Report

## Scope
- Date: 2026-04-28
- Environment: `127.0.0.1:4000`, user `root`, TiDB version `8.0.11-TiDB-v8.5.3-serverless`
- Query path: DeltaMerge tree
- CPU limit: execution environment constrained to `16` cores
- Benchmark schema: `bench_columnar_perf_large`
- Dataset size: `fact_order_wide=20,000,000`, `user_game_day=10,000,006`
- Runner config: `WARMUP=1`, `REPEAT=5`
- TiFlash path verification: `12/12` `EXPLAIN ANALYZE` outputs contain `mpp[tiflash]`
- 16-core verification: `12/12` `EXPLAIN ANALYZE` outputs contain `threads:16`; `03_large_in_group_by` leaf `TableFullScan` shows `threads:16` and `local_regions:32`

## Validation
- `fact_order_wide`: `20000000` rows, range `2026-03-01 00:00:00` to `2026-03-10 23:59:59`, hot-window rows `4000000`
- `user_game_day`: `10000006` rows, range `2026-03-01` to `2026-03-10`, hot-window rows `2000000`
- Result-set correctness against `columnar-large-s0-region-split`: `12/12 hash match`

## Summary
- Benchmark wall time: `28` seconds (`2026-04-28T01:38:26Z` -> `2026-04-28T01:38:54Z`)
- Fastest median query: `03_large_in_group_by` at `0.187s`
- Slowest median query: `12_late_materialization_wide_topn` at `0.514s`
- Late materialization pair: `12_late_materialization_wide_topn` is `2.39x` slower than `11_late_materialization_narrow_topn` by median latency
- Pushdown pair: `10_pushdown_filter_derived` is `1.04x` slower than `09_pushdown_filter_base` by median latency
- Relative to the earlier DeltaMerge run, query medians changed only between `0.98x` and `1.05x`, so the 16-core cap did not materially regress this workload

## Key Observation
- DeltaMerge stayed in the same performance band after the CPU cap. End-to-end wall time remained `28s`, and every query still completed within `0.187s` to `0.514s`.
- The new explains show the cap is actually applied on the scan side rather than being ignored. Even so, the path still preserves high effective parallelism and good scan efficiency.

| Query | Median (s) | P95 (s) | Min (s) | Max (s) | Result Rows | SHA-256 Prefix |
|---|---:|---:|---:|---:|---:|---|
| `01_scan_agg_distinct` | 0.232 | 0.238 | 0.222 | 0.238 | 1 | `ebf45df6c811` |
| `02_scan_agg_json` | 0.220 | 0.233 | 0.209 | 0.233 | 1 | `606207006bea` |
| `03_large_in_group_by` | 0.187 | 0.188 | 0.172 | 0.188 | 32 | `f27cbbe84705` |
| `04_wide_topn` | 0.330 | 0.343 | 0.323 | 0.343 | 100 | `2929f2886512` |
| `05_row_number_paging` | 0.276 | 0.283 | 0.257 | 0.283 | 1000 | `aac59737aaa6` |
| `06_hot_window_agg` | 0.223 | 0.227 | 0.209 | 0.227 | 1 | `18ea968906a0` |
| `07_hot_window_topn` | 0.333 | 0.352 | 0.327 | 0.352 | 100 | `4ba3152afab2` |
| `08_or_lookup` | 0.226 | 0.231 | 0.219 | 0.231 | 6 | `712314876109` |
| `09_pushdown_filter_base` | 0.207 | 0.229 | 0.197 | 0.229 | 4 | `aa0025de98bb` |
| `10_pushdown_filter_derived` | 0.216 | 0.220 | 0.211 | 0.220 | 4 | `aa0025de98bb` |
| `11_late_materialization_narrow_topn` | 0.215 | 0.222 | 0.209 | 0.222 | 200 | `b26747db2b20` |
| `12_late_materialization_wide_topn` | 0.514 | 0.533 | 0.494 | 0.533 | 200 | `de3fa58537c2` |

## Artifacts
- Report: [report.md](/workspace/columnar-perf-test/results/deltamerge-large-s0-16core/report.md)
- Timings: [timings.tsv](/workspace/columnar-perf-test/results/deltamerge-large-s0-16core/timings.tsv)
- Result hashes: [hashes.tsv](/workspace/columnar-perf-test/results/deltamerge-large-s0-16core/hashes.tsv)
- Query result sets: [result_sets](/workspace/columnar-perf-test/results/deltamerge-large-s0-16core/result_sets)
- EXPLAIN ANALYZE outputs: [explain](/workspace/columnar-perf-test/results/deltamerge-large-s0-16core/explain)
- Table stats: [table_stats.tsv](/workspace/columnar-perf-test/results/deltamerge-large-s0-16core/table_stats.tsv)

