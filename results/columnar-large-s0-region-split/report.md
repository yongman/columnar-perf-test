# Columnar Large S0 Region-Split Report

## Scope
- Date: 2026-04-28
- Environment: `127.0.0.1:4000`, user `root`, TiDB version `8.0.11-TiDB-v8.5.3-serverless`
- Query path: columnar
- Benchmark schema: `bench_columnar_perf_large`
- Change relative to the earlier columnar run: regions were manually split to increase query-side concurrency and CPU utilization
- Special note: `08_or_lookup` was retried again on 2026-04-28 and the refreshed timings/explain were substituted into this report because the previous latency looked abnormal
- Reference reports: [columnar-large-s0/report.md](../columnar-large-s0/report.md), [deltamerge-large-s0/report.md](../deltamerge-large-s0/report.md)
- Runner config: `WARMUP=1`, `REPEAT=5`

## Validation
- `fact_order_wide`: `20000000` rows, range `2026-03-01 00:00:00` to `2026-03-10 23:59:59`, hot-window rows `4000000`
- `user_game_day`: `10000006` rows, range `2026-03-01` to `2026-03-10`, hot-window rows `2000000`
- Result-set correctness against DeltaMerge run: `12/12 hash match`
- TiFlash path verification: `12/12` `EXPLAIN ANALYZE` outputs contain `mpp[tiflash]`

## Summary
- Benchmark wall time: `69s`, improved from `309s` in the earlier columnar run, but still above DeltaMerge at `28s`
- Fastest median query: `06_hot_window_agg` at `0.230s`
- Slowest median query: `08_or_lookup` at `2.390s`
- Biggest gain vs old columnar: `12_late_materialization_wide_topn` at `7.38x`
- Weakest gain vs old columnar: `08_or_lookup` at `1.01x`
- Closest remaining gap to DeltaMerge: `06_hot_window_agg` at `1.06x`
- Largest remaining gap to DeltaMerge: `08_or_lookup` at `10.58x`

## Key Observation
- Region split materially improved most scan-heavy and materialization-heavy queries. The end-to-end columnar wall time dropped by `4.48x`.
- The improvement is not uniform. `08_or_lookup` improved only slightly after the retry, from `2.419s` to `2.390s`, which still suggests that sparse point/range lookup is dominated by access pattern cost rather than by region-level parallelism.

| Query | Median (s) | P95 (s) | Old Columnar Median (s) | Old/New | Delta Median (s) | New/Delta |
|---|---:|---:|---:|---:|---:|---:|
| `01_scan_agg_distinct` | 0.268 | 0.274 | 0.946 | 3.53x | 0.239 | 1.12x |
| `02_scan_agg_json` | 0.283 | 0.287 | 0.933 | 3.30x | 0.232 | 1.22x |
| `03_large_in_group_by` | 0.337 | 0.352 | 1.317 | 3.91x | 0.192 | 1.76x |
| `04_wide_topn` | 0.570 | 0.660 | 2.907 | 5.10x | 0.348 | 1.64x |
| `05_row_number_paging` | 0.346 | 0.443 | 1.351 | 3.90x | 0.277 | 1.25x |
| `06_hot_window_agg` | 0.230 | 0.243 | 0.859 | 3.73x | 0.218 | 1.06x |
| `07_hot_window_topn` | 0.553 | 0.595 | 2.691 | 4.87x | 0.336 | 1.65x |
| `08_or_lookup` | 2.390 | 2.399 | 2.419 | 1.01x | 0.226 | 10.58x |
| `09_pushdown_filter_base` | 0.445 | 0.452 | 3.009 | 6.76x | 0.207 | 2.15x |
| `10_pushdown_filter_derived` | 0.464 | 0.493 | 3.107 | 6.70x | 0.222 | 2.09x |
| `11_late_materialization_narrow_topn` | 0.387 | 0.393 | 2.332 | 6.03x | 0.211 | 1.83x |
| `12_late_materialization_wide_topn` | 2.148 | 2.193 | 15.853 | 7.38x | 0.530 | 4.05x |


## Artifacts
- Report: [report.md](report.md)
- Timings: [timings.tsv](timings.tsv)
- Result hashes: [hashes.tsv](hashes.tsv)
- EXPLAIN ANALYZE outputs: [explain](explain)
- Table stats: [table_stats.tsv](table_stats.tsv)
