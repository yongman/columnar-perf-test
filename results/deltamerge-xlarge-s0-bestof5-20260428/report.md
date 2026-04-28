# DeltaMerge XLarge S0 Best-of-5 Test Report

## Scope
- Date: 2026-04-28
- Environment: `127.0.0.1:4000`, user `root`, TiDB version `8.0.11-TiDB-v8.5.3-serverless`
- Query path: DeltaMerge tree
- Benchmark schema: `bench_columnar_perf_xlarge`
- Dataset size: `fact_order_wide=200,000,000`, `user_game_day=100,000,006`
- Runner config: `WARMUP=0`, `REPEAT=5`
- Reporting rule: each query is executed `5` times and the final reported result is the fastest single execution (`Min`)
- TiFlash path verification: `12/12` `EXPLAIN ANALYZE` outputs contain `mpp[tiflash]`

## Validation
- `fact_order_wide`: `200000000` rows, range `2026-03-01 00:00:00` to `2026-03-10 23:59:59`, hot-window rows `40000000`
- `user_game_day`: `100000006` rows, range `2026-03-01` to `2026-03-10`, hot-window rows `20000000`
- Result-set correctness against `columnar-xlarge-s0-bestof5-20260428`: `12/12 hash match`

## Summary
- Benchmark wall time: `62` seconds (`2026-04-28T06:09:53Z` -> `2026-04-28T06:10:55Z`)
- Fastest best-of-5 query: `08_or_lookup` at `0.228s`
- Slowest best-of-5 query: `03_large_in_group_by` at `2.244s`
- Late materialization pair: `12_late_materialization_wide_topn` is `3.72x` slower than `11_late_materialization_narrow_topn` by best-of-5 latency
- Pushdown pair: `10_pushdown_filter_derived` is `1.02x` slower than `09_pushdown_filter_base` by best-of-5 latency
- Stability check: the most stable query is `01_scan_agg_distinct` with `Max/Min=1.08x`; the least stable query is `04_wide_topn` with `Max/Min=1.33x`

## Key Observation
- Under the current xlarge dataset, DeltaMerge completed the full suite much faster than the earlier columnar xlarge run at the end-to-end level.
- Most queries fall into the sub-second to low-second range even on xlarge. The main exception is `03_large_in_group_by`, which becomes the slowest query in this run.

| Query | Best-of-5 (s) | Median (s) | P95 (s) | Min (s) | Max (s) | Result Rows | SHA-256 Prefix |
|---|---:|---:|---:|---:|---:|---:|---|
| `01_scan_agg_distinct` | 0.655 | 0.686 | 0.708 | 0.655 | 0.708 | 1 | `a688a8419836` |
| `02_scan_agg_json` | 0.599 | 0.639 | 0.708 | 0.599 | 0.708 | 1 | `980d3620f968` |
| `03_large_in_group_by` | 2.244 | 2.432 | 2.720 | 2.244 | 2.720 | 32 | `5c3c58746630` |
| `04_wide_topn` | 0.482 | 0.508 | 0.639 | 0.482 | 0.639 | 100 | `ca6fc562fe82` |
| `05_row_number_paging` | 0.402 | 0.422 | 0.496 | 0.402 | 0.496 | 1000 | `c85714624fa0` |
| `06_hot_window_agg` | 0.262 | 0.277 | 0.288 | 0.262 | 0.288 | 1 | `b61d8a4d80d6` |
| `07_hot_window_topn` | 0.494 | 0.530 | 0.562 | 0.494 | 0.562 | 100 | `e4b04b330fad` |
| `08_or_lookup` | 0.228 | 0.238 | 0.288 | 0.228 | 0.288 | 6 | `712314876109` |
| `09_pushdown_filter_base` | 0.303 | 0.361 | 0.371 | 0.303 | 0.371 | 4 | `0da1ddd9cf87` |
| `10_pushdown_filter_derived` | 0.309 | 0.324 | 0.343 | 0.309 | 0.343 | 4 | `0da1ddd9cf87` |
| `11_late_materialization_narrow_topn` | 0.337 | 0.367 | 0.406 | 0.337 | 0.406 | 200 | `947d0209a3a4` |
| `12_late_materialization_wide_topn` | 1.254 | 1.401 | 1.520 | 1.254 | 1.520 | 200 | `bf74a6fbc4d3` |

## Artifacts
- Report: [report.md](/workspace/columnar-perf-test/results/deltamerge-xlarge-s0-bestof5-20260428/report.md)
- Timings: [timings.tsv](/workspace/columnar-perf-test/results/deltamerge-xlarge-s0-bestof5-20260428/timings.tsv)
- Result hashes: [hashes.tsv](/workspace/columnar-perf-test/results/deltamerge-xlarge-s0-bestof5-20260428/hashes.tsv)
- Query result sets: [result_sets](/workspace/columnar-perf-test/results/deltamerge-xlarge-s0-bestof5-20260428/result_sets)
- EXPLAIN ANALYZE outputs: [explain](/workspace/columnar-perf-test/results/deltamerge-xlarge-s0-bestof5-20260428/explain)
- Table stats: [table_stats.tsv](/workspace/columnar-perf-test/results/deltamerge-xlarge-s0-bestof5-20260428/table_stats.tsv)

