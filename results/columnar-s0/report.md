# Columnar S0 Test Report

## Scope
- Date: 2026-04-27
- Environment: `127.0.0.1:4000`, user `root`, TiDB version `8.0.11-TiDB-v8.5.3-serverless`
- Dataset path: small-scale bootstrap dataset from the benchmark bundle
- Benchmark label: `columnar-s0`
- Runner config: `WARMUP=1`, `REPEAT=5`
- TiFlash path verification: `12/12` `EXPLAIN ANALYZE` outputs contain `mpp[tiflash]`

## Environment Notes
- The host does not provide a native `mysql` client or `/usr/bin/time`. Repo-local wrappers [bin/mysql](../../bin/mysql) and [bin/time](../../bin/time) were added so the existing benchmark scripts could run unchanged.
- This TiDB environment rejects `CREATE PROCEDURE`, so the 1B chunk-loader path in [sql/10_create_chunk_load_procedures.sql](../../sql/10_create_chunk_load_procedures.sql) was not used for execution. The actual data import used the small bootstrap path.
- The current TiDB parser does not accept the original `TIMESTAMP(...) + INTERVAL ... SECOND` expressions used by the data generator. Equivalent `DATE_ADD(...)` expressions were applied in [sql/03_load_fact_order_wide_base.sql](../../sql/03_load_fact_order_wide_base.sql), [sql/06_prepare_s1_append.sql](../../sql/06_prepare_s1_append.sql), and [sql/10_create_chunk_load_procedures.sql](../../sql/10_create_chunk_load_procedures.sql).

## Data Preparation
- Bootstrap executed in order: `00_create_database.sql` -> `01_create_tables.sql` -> `02_build_helper_sequences.sql` -> `03_load_fact_order_wide_base.sql` -> `04_load_user_game_day_base.sql`
- `prepare-s0` completed successfully through [scripts/run_mysql_benchmark.sh](../../scripts/run_mysql_benchmark.sh)
- Load timing logs:
| Step | Elapsed Seconds |
|---|---:|
| `00_create_database.sql` | 0.133 |
| `01_create_tables.sql` | 0.327 |
| `02_build_helper_sequences.sql` | 15.465 |
| `03_load_fact_order_wide_base.sql` | 237.137 |
| `04_load_user_game_day_base.sql` | 36.493 |


## Data Validation
- `fact_order_wide`: `5000000` rows, range `2026-03-01 00:00:00` to `2026-03-10 23:59:59`, hot-window rows `1000000`, merchants `200`, ads `5000`
- `user_game_day`: `2000006` rows, range `2026-03-01` to `2026-03-10`, hot-window rows `400000`, merchants `200`, games `100`

## Benchmark Summary
- Benchmark wall time from [meta.txt](meta.txt): `138` seconds (`2026-04-27T08:37:07Z` -> `2026-04-27T08:39:25Z`)
- Fastest median query: `06_hot_window_agg` at `0.414s`
- Slowest median query: `12_late_materialization_wide_topn` at `6.623s`
- Late materialization pair: `12_late_materialization_wide_topn` is `5.86x` slower than `11_late_materialization_narrow_topn` by median latency
- Pushdown pair: `09_pushdown_filter_base` and `10_pushdown_filter_derived` returned identical row counts and identical SHA-256 hashes, with derived-filter p95 `1.614s` vs base-filter p95 `1.470s`

| Query | Median (s) | P95 (s) | Min (s) | Max (s) | Result Rows | SHA-256 Prefix |
|---|---:|---:|---:|---:|---:|---|
| `01_scan_agg_distinct` | 0.469 | 0.485 | 0.466 | 0.485 | 1 | `67da6b22218c` |
| `02_scan_agg_json` | 0.457 | 0.478 | 0.451 | 0.478 | 1 | `1b7e090d90c0` |
| `03_large_in_group_by` | 0.685 | 0.701 | 0.651 | 0.701 | 32 | `cc5b791bd274` |
| `04_wide_topn` | 1.296 | 1.318 | 1.215 | 1.318 | 100 | `292ce09099cb` |
| `05_row_number_paging` | 0.645 | 0.655 | 0.631 | 0.655 | 1000 | `f7b857a0675b` |
| `06_hot_window_agg` | 0.414 | 0.433 | 0.411 | 0.433 | 1 | `9a432e4fe43b` |
| `07_hot_window_topn` | 1.259 | 1.300 | 1.215 | 1.300 | 100 | `1ad7937db37d` |
| `08_or_lookup` | 0.844 | 0.855 | 0.837 | 0.855 | 6 | `712314876109` |
| `09_pushdown_filter_base` | 1.453 | 1.470 | 1.405 | 1.470 | 4 | `2e8a38896e84` |
| `10_pushdown_filter_derived` | 1.426 | 1.614 | 1.397 | 1.614 | 4 | `2e8a38896e84` |
| `11_late_materialization_narrow_topn` | 1.130 | 1.163 | 1.124 | 1.163 | 200 | `2927025fec00` |
| `12_late_materialization_wide_topn` | 6.623 | 7.606 | 6.456 | 7.606 | 200 | `5ec825d16e36` |


## Artifacts
- Timings: [timings.tsv](timings.tsv)
- Result hashes: [hashes.tsv](hashes.tsv)
- Query result sets: [result_sets](result_sets)
- EXPLAIN ANALYZE outputs: [explain](explain)
- Table stats: [table_stats.tsv](table_stats.tsv)
- Data-load timing logs: [execution_logs](../execution_logs/2026-04-27-columnar-s0)
