# Columnar Large S0 Test Report

## Scope
- Date: 2026-04-28
- Environment: `127.0.0.1:4000`, user `root`, TiDB version `8.0.11-TiDB-v8.5.3-serverless`
- Query path: columnar
- Benchmark schema: `bench_columnar_perf_large`
- Dataset size: `fact_order_wide=20,000,000`, `user_game_day=10,000,006`
- Runner config: `WARMUP=1`, `REPEAT=5`
- TiFlash path verification: `12/12` `EXPLAIN ANALYZE` outputs contain `mpp[tiflash]`

## Validation
- `fact_order_wide`: `20000000` rows, range `2026-03-01 00:00:00` to `2026-03-10 23:59:59`, hot-window rows `4000000`
- `user_game_day`: `10000006` rows, range `2026-03-01` to `2026-03-10`, hot-window rows `2000000`
- Result-set correctness against `deltamerge-large-s0-16core`: `12/12 hash match`

## Summary
- Benchmark wall time: `63` seconds (`2026-04-28T02:00:06Z` -> `2026-04-28T02:01:09Z`)
- Fastest median query: `06_hot_window_agg` at `0.231s`
- Slowest median query: `12_late_materialization_wide_topn` at `2.600s`
- Late materialization pair: `12_late_materialization_wide_topn` is `4.36x` slower than `11_late_materialization_narrow_topn` by median latency
- Pushdown pair: `10_pushdown_filter_derived` is `1.05x` slower than `09_pushdown_filter_base` by median latency
- Relative to `deltamerge-large-s0-16core`, the per-query median gap ranges from `1.04x` to `5.06x`, with arithmetic average `2.07x`

## Key Observation
- The current columnar run completed all `12` benchmark queries successfully with stable result correctness.
- The closest cases to DeltaMerge are `01`, `02`, `05`, and `06`, while the largest remaining gaps are `12_late_materialization_wide_topn`, `11_late_materialization_narrow_topn`, and the sparse lookup case `08_or_lookup`.

| Query | Median (s) | P95 (s) | Min (s) | Max (s) | Result Rows | SHA-256 Prefix |
|---|---:|---:|---:|---:|---:|---|
| `01_scan_agg_distinct` | 0.250 | 0.257 | 0.247 | 0.257 | 1 | `ebf45df6c811` |
| `02_scan_agg_json` | 0.273 | 0.289 | 0.267 | 0.289 | 1 | `606207006bea` |
| `03_large_in_group_by` | 0.423 | 0.465 | 0.416 | 0.465 | 32 | `f27cbbe84705` |
| `04_wide_topn` | 0.613 | 0.647 | 0.564 | 0.647 | 100 | `2929f2886512` |
| `05_row_number_paging` | 0.343 | 0.367 | 0.327 | 0.367 | 1000 | `aac59737aaa6` |
| `06_hot_window_agg` | 0.231 | 0.238 | 0.212 | 0.238 | 1 | `18ea968906a0` |
| `07_hot_window_topn` | 0.569 | 0.676 | 0.542 | 0.676 | 100 | `4ba3152afab2` |
| `08_or_lookup` | 0.496 | 0.535 | 0.476 | 0.535 | 6 | `712314876109` |
| `09_pushdown_filter_base` | 0.457 | 0.577 | 0.455 | 0.577 | 4 | `aa0025de98bb` |
| `10_pushdown_filter_derived` | 0.478 | 0.551 | 0.455 | 0.551 | 4 | `aa0025de98bb` |
| `11_late_materialization_narrow_topn` | 0.597 | 0.629 | 0.509 | 0.629 | 200 | `b26747db2b20` |
| `12_late_materialization_wide_topn` | 2.600 | 2.860 | 2.196 | 2.860 | 200 | `de3fa58537c2` |

## Artifacts
- Report: [report.md](report.md)
- Timings: [timings.tsv](timings.tsv)
- Result hashes: [hashes.tsv](hashes.tsv)
- Query result sets: [result_sets](result_sets)
- EXPLAIN ANALYZE outputs: [explain](explain)
- Table stats: [table_stats.tsv](table_stats.tsv)

