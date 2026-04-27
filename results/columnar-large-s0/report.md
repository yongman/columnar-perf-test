# Columnar Large S0 Test Report

## Scope
- Date: 2026-04-27
- Environment: `127.0.0.1:4000`, user `root`, TiDB version `8.0.11-TiDB-v8.5.3-serverless`
- Isolated benchmark schema: `bench_columnar_perf_large`
- Baseline schema preserved: `bench_columnar_perf`
- Large-case parameters: `fact_order_wide=20,000,000`, `user_game_day=10,000,000`, `10` logical days, `1,000,000` rows per chunk
- Load mode: `direct` client-side chunk generation, because this TiDB environment does not support `CREATE PROCEDURE`
- Benchmark label: `columnar-large-s0`
- Runner config: `WARMUP=1`, `REPEAT=5`
- TiFlash path verification: `12/12` `EXPLAIN ANALYZE` outputs contain `mpp[tiflash]`

## Isolation Notes
- The original small-data baseline in `bench_columnar_perf` remained unchanged after the large-case run: `fact_order_wide=5,000,000`, `user_game_day=2,000,006`.
- The large-case data was loaded into a separate schema with the same table names, so later delta merge tree path comparison can reuse the small baseline and the large baseline independently.
- `system.dt_tables` is not available in this serverless environment, so no `dt_tables.tsv` artifact could be collected.

## Data Preparation
- Large data load elapsed: `1135.647` seconds
- `prepare-s0` elapsed: `53.188` seconds
- Benchmark wall time from [meta.txt](/workspace/columnar-perf-test/results/columnar-large-s0/meta.txt): `309` seconds (`2026-04-27T09:17:15Z` -> `2026-04-27T09:22:24Z`)
- Load log: [load_large_dataset.log](/workspace/columnar-perf-test/results/execution_logs/2026-04-27-columnar-large-s0/load_large_dataset.log)
- Prepare log: [prepare_s0.log](/workspace/columnar-perf-test/results/execution_logs/2026-04-27-columnar-large-s0/prepare_s0.log)

## Data Validation
- `fact_order_wide`: `20000000` rows, range `2026-03-01 00:00:00` to `2026-03-10 23:59:59`, hot-window rows `4000000`, merchants `200`, ads `5000`
- `user_game_day`: `10000006` rows, range `2026-03-01` to `2026-03-10`, hot-window rows `2000000`, merchants `200`, games `100`

## Benchmark Summary
- Fastest median query: `06_hot_window_agg` at `0.859s`
- Slowest median query: `12_late_materialization_wide_topn` at `15.853s`
- Relative to the small baseline, median latency scaling stayed in the `1.92x` to `2.87x` range across the 12 queries.
- Late materialization pair: `12_late_materialization_wide_topn` is `6.80x` slower than `11_late_materialization_narrow_topn` by median latency on the large dataset.
- Pushdown pair: `09_pushdown_filter_base` and `10_pushdown_filter_derived` returned identical row counts and identical SHA-256 hashes, with derived-filter p95 `3.423s` vs base-filter p95 `3.117s`.

| Query | Median (s) | P95 (s) | Min (s) | Max (s) | Result Rows | Large/Small Median |
|---|---:|---:|---:|---:|---:|---:|
| `01_scan_agg_distinct` | 0.946 | 0.960 | 0.928 | 0.960 | 1 | 2.02x |
| `02_scan_agg_json` | 0.933 | 0.941 | 0.915 | 0.941 | 1 | 2.04x |
| `03_large_in_group_by` | 1.317 | 1.328 | 1.182 | 1.328 | 32 | 1.92x |
| `04_wide_topn` | 2.907 | 3.134 | 2.698 | 3.134 | 100 | 2.24x |
| `05_row_number_paging` | 1.351 | 1.395 | 1.331 | 1.395 | 1000 | 2.09x |
| `06_hot_window_agg` | 0.859 | 0.883 | 0.839 | 0.883 | 1 | 2.07x |
| `07_hot_window_topn` | 2.691 | 2.999 | 2.648 | 2.999 | 100 | 2.14x |
| `08_or_lookup` | 2.419 | 2.459 | 2.416 | 2.459 | 6 | 2.87x |
| `09_pushdown_filter_base` | 3.009 | 3.117 | 2.978 | 3.117 | 4 | 2.07x |
| `10_pushdown_filter_derived` | 3.107 | 3.423 | 3.024 | 3.423 | 4 | 2.18x |
| `11_late_materialization_narrow_topn` | 2.332 | 2.399 | 2.307 | 2.399 | 200 | 2.06x |
| `12_late_materialization_wide_topn` | 15.853 | 16.091 | 15.653 | 16.091 | 200 | 2.39x |


## Artifacts
- Large-case report: [report.md](/workspace/columnar-perf-test/results/columnar-large-s0/report.md)
- Timings: [timings.tsv](/workspace/columnar-perf-test/results/columnar-large-s0/timings.tsv)
- Result hashes: [hashes.tsv](/workspace/columnar-perf-test/results/columnar-large-s0/hashes.tsv)
- Query result sets: [result_sets](/workspace/columnar-perf-test/results/columnar-large-s0/result_sets)
- EXPLAIN ANALYZE outputs: [explain](/workspace/columnar-perf-test/results/columnar-large-s0/explain)
- Table stats: [table_stats.tsv](/workspace/columnar-perf-test/results/columnar-large-s0/table_stats.tsv)
- Execution logs: [execution_logs](/workspace/columnar-perf-test/results/execution_logs/2026-04-27-columnar-large-s0)
