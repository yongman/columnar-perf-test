# Columnar XLarge S0 Best-of-5 Test Report

## Scope
- Date: 2026-04-28
- Environment: `127.0.0.1:4000`, user `root`, TiDB version `8.0.11-TiDB-v8.5.3-serverless`
- Query path: columnar
- Benchmark schema: `bench_columnar_perf_xlarge`
- Dataset size: `fact_order_wide=200,000,000`, `user_game_day=100,000,006`
- Runner config: `WARMUP=0`, `REPEAT=5`
- Reporting rule: each query is executed `5` times and the final reported result is the fastest single execution (`Min`)
- This report is based on the full rerun after tuning on 2026-04-28, with `08_or_lookup` refreshed again by a same-day spot rerun at `2026-04-28T08:18:47Z`
- TiFlash path verification: `12/12` `EXPLAIN ANALYZE` outputs contain `mpp[tiflash]`

## Validation
- `fact_order_wide`: `200000000` rows, range `2026-03-01 00:00:00` to `2026-03-10 23:59:59`, hot-window rows `40000000`
- `user_game_day`: `100000006` rows, range `2026-03-01` to `2026-03-10`, hot-window rows `20000000`
- Result-set hashes were captured for all `12` queries for reproducibility

## Summary
- Underlying full-rerun wall time: `144` seconds (`2026-04-28T08:02:27Z` -> `2026-04-28T08:04:51Z`)
- Fastest best-of-5 query: `06_hot_window_agg` at `0.461s`
- Slowest best-of-5 query: `12_late_materialization_wide_topn` at `5.264s`
- Late materialization pair: `12_late_materialization_wide_topn` is `5.55x` slower than `11_late_materialization_narrow_topn` by best-of-5 latency
- Pushdown pair: `10_pushdown_filter_derived` is `1.03x` slower than `09_pushdown_filter_base` by best-of-5 latency
- Stability check: the most stable query is `08_or_lookup` with `Max/Min=1.01x`; the least stable query is `12_late_materialization_wide_topn` with `Max/Min=1.56x`

## Key Observation
- Under the current tuned xlarge setup, the columnar path is materially healthier than before. `11/12` queries now complete within `2` seconds on best-of-5 latency.
- The main remaining heavy cases are `12_late_materialization_wide_topn` and the pushdown-filter pair `09/10`; `08_or_lookup` is now below `1s` on best-of-5 latency.

| Query | Best-of-5 (s) | Median (s) | P95 (s) | Min (s) | Max (s) | Result Rows | SHA-256 Prefix |
|---|---:|---:|---:|---:|---:|---:|---|
| `01_scan_agg_distinct` | 0.637 | 0.657 | 0.678 | 0.637 | 0.678 | 1 | `a688a8419836` |
| `02_scan_agg_json` | 0.867 | 0.918 | 0.968 | 0.867 | 0.968 | 1 | `980d3620f968` |
| `03_large_in_group_by` | 1.475 | 1.736 | 1.902 | 1.475 | 1.902 | 32 | `5c3c58746630` |
| `04_wide_topn` | 1.306 | 1.322 | 1.476 | 1.306 | 1.476 | 100 | `ca6fc562fe82` |
| `05_row_number_paging` | 0.747 | 0.828 | 0.867 | 0.747 | 0.867 | 1000 | `c85714624fa0` |
| `06_hot_window_agg` | 0.461 | 0.508 | 0.621 | 0.461 | 0.621 | 1 | `b61d8a4d80d6` |
| `07_hot_window_topn` | 0.876 | 1.284 | 1.356 | 0.876 | 1.356 | 100 | `e4b04b330fad` |
| `08_or_lookup` | 0.963 | 0.971 | 0.976 | 0.963 | 0.976 | 6 | `712314876109` |
| `09_pushdown_filter_base` | 1.558 | 1.699 | 1.727 | 1.558 | 1.727 | 4 | `0da1ddd9cf87` |
| `10_pushdown_filter_derived` | 1.597 | 1.828 | 1.893 | 1.597 | 1.893 | 4 | `0da1ddd9cf87` |
| `11_late_materialization_narrow_topn` | 0.948 | 1.085 | 1.241 | 0.948 | 1.241 | 200 | `947d0209a3a4` |
| `12_late_materialization_wide_topn` | 5.264 | 7.413 | 8.209 | 5.264 | 8.209 | 200 | `bf74a6fbc4d3` |

## Artifacts
- Report: [report.md](report.md)
- Timings: [timings.tsv](timings.tsv)
- Result hashes: [hashes.tsv](hashes.tsv)
- Query result sets: [result_sets](result_sets)
- EXPLAIN ANALYZE outputs: [explain](explain)
- Table stats: [table_stats.tsv](table_stats.tsv)
