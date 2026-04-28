# Columnar XLarge S0 Best-of-5 Test Report

## Scope
- Date: 2026-04-28
- Environment: `127.0.0.1:4000`, user `root`, TiDB version `8.0.11-TiDB-v8.5.3-serverless`
- Query path: columnar
- Benchmark schema: `bench_columnar_perf_xlarge`
- Dataset size: `fact_order_wide=200,000,000`, `user_game_day=100,000,006`
- Runner config: `WARMUP=0`, `REPEAT=5`
- Reporting rule: each query is executed `5` times and the final reported result is the fastest single execution (`Min`)
- TiFlash path verification: `12/12` `EXPLAIN ANALYZE` outputs contain `mpp[tiflash]`

## Validation
- `fact_order_wide`: `200000000` rows, range `2026-03-01 00:00:00` to `2026-03-10 23:59:59`, hot-window rows `40000000`
- `user_game_day`: `100000006` rows, range `2026-03-01` to `2026-03-10`, hot-window rows `20000000`
- Result-set hashes were captured for all `12` queries for reproducibility

## Summary
- Benchmark wall time: `242` seconds (`2026-04-28T06:00:03Z` -> `2026-04-28T06:04:05Z`)
- Fastest best-of-5 query: `06_hot_window_agg` at `0.817s`
- Slowest best-of-5 query: `12_late_materialization_wide_topn` at `12.605s`
- Late materialization pair: `12_late_materialization_wide_topn` is `6.10x` slower than `11_late_materialization_narrow_topn` by best-of-5 latency
- Pushdown pair: `10_pushdown_filter_derived` is `1.08x` slower than `09_pushdown_filter_base` by best-of-5 latency
- Stability check: the most stable query is `08_or_lookup` with `Max/Min=1.01x`; the least stable query is `03_large_in_group_by` with `Max/Min=1.11x`

## Key Observation
- Under the current xlarge dataset, the full suite still completed successfully without query failure, and the five-run spread stayed relatively tight across all `12` cases.
- The dominant cost centers are still the sparse lookup case `08_or_lookup` and the late materialization cases `11/12`, especially the wide-row query `12_late_materialization_wide_topn`.

| Query | Best-of-5 (s) | Median (s) | P95 (s) | Min (s) | Max (s) | Result Rows | SHA-256 Prefix |
|---|---:|---:|---:|---:|---:|---:|---|
| `01_scan_agg_distinct` | 1.019 | 1.055 | 1.064 | 1.019 | 1.064 | 1 | `a688a8419836` |
| `02_scan_agg_json` | 1.173 | 1.227 | 1.284 | 1.173 | 1.284 | 1 | `980d3620f968` |
| `03_large_in_group_by` | 1.211 | 1.235 | 1.339 | 1.211 | 1.339 | 32 | `5c3c58746630` |
| `04_wide_topn` | 2.283 | 2.352 | 2.367 | 2.283 | 2.367 | 100 | `ca6fc562fe82` |
| `05_row_number_paging` | 1.250 | 1.255 | 1.279 | 1.250 | 1.279 | 1000 | `c85714624fa0` |
| `06_hot_window_agg` | 0.817 | 0.821 | 0.878 | 0.817 | 0.878 | 1 | `b61d8a4d80d6` |
| `07_hot_window_topn` | 2.058 | 2.131 | 2.234 | 2.058 | 2.234 | 100 | `e4b04b330fad` |
| `08_or_lookup` | 4.621 | 4.649 | 4.661 | 4.621 | 4.661 | 6 | `712314876109` |
| `09_pushdown_filter_base` | 2.226 | 2.265 | 2.275 | 2.226 | 2.275 | 4 | `0da1ddd9cf87` |
| `10_pushdown_filter_derived` | 2.412 | 2.465 | 2.470 | 2.412 | 2.470 | 4 | `0da1ddd9cf87` |
| `11_late_materialization_narrow_topn` | 2.067 | 2.088 | 2.128 | 2.067 | 2.128 | 200 | `947d0209a3a4` |
| `12_late_materialization_wide_topn` | 12.605 | 12.714 | 12.820 | 12.605 | 12.820 | 200 | `bf74a6fbc4d3` |

## Artifacts
- Report: [report.md](/workspace/columnar-perf-test/results/columnar-xlarge-s0-bestof5-20260428/report.md)
- Timings: [timings.tsv](/workspace/columnar-perf-test/results/columnar-xlarge-s0-bestof5-20260428/timings.tsv)
- Result hashes: [hashes.tsv](/workspace/columnar-perf-test/results/columnar-xlarge-s0-bestof5-20260428/hashes.tsv)
- Query result sets: [result_sets](/workspace/columnar-perf-test/results/columnar-xlarge-s0-bestof5-20260428/result_sets)
- EXPLAIN ANALYZE outputs: [explain](/workspace/columnar-perf-test/results/columnar-xlarge-s0-bestof5-20260428/explain)
- Table stats: [table_stats.tsv](/workspace/columnar-perf-test/results/columnar-xlarge-s0-bestof5-20260428/table_stats.tsv)
