# Columnar vs Delta Benchmark Bundle

## Purpose

This bundle provides a runnable benchmark suite for comparing TiFlash query
performance between:

- a `columnar` environment, which means the compute / disaggregated path is
  configured with `flash.use_columnar = true`
- a `delta` baseline environment, which means the same workload runs on the
  normal DeltaMerge path

It also separates three physical table states so that the comparison is not
limited to a single storage layout:

- `S0 stable-heavy`: bulk-loaded and compacted into stable as much as possible
- `S1 append-heavy`: recent hot window receives additional inserts without
  compaction
- `S2 mixed-delta`: recent hot window receives updates and deletes on top of
  `S1`

## Important Assumption

`columnar` versus `delta` is not a SQL session switch. The recommended way to
compare them is:

1. Prepare the same logical dataset on both environments.
2. Run the same benchmark query set against both environments.
3. Compare results by state:
   - `columnar-S0` vs `delta-S0`
   - `columnar-S1` vs `delta-S1`
   - `columnar-S2` vs `delta-S2`

If only one environment is available, this bundle is still useful for measuring
how query latency changes across `S0`, `S1`, and `S2`.

## Directory Layout

```text
target/columnar-perf-test/
├── README.md
├── queries/
│   ├── 01_scan_agg_distinct.sql
│   ├── 02_scan_agg_json.sql
│   ├── 03_large_in_group_by.sql
│   ├── 04_wide_topn.sql
│   ├── 05_row_number_paging.sql
│   ├── 06_hot_window_agg.sql
│   ├── 07_hot_window_topn.sql
│   ├── 08_or_lookup.sql
│   ├── 09_pushdown_filter_base.sql
│   ├── 10_pushdown_filter_derived.sql
│   ├── 11_late_materialization_narrow_topn.sql
│   └── 12_late_materialization_wide_topn.sql
├── results/
├── scripts/
│   ├── collect_tiflash_dt_stats.sh
│   ├── compare_benchmark_results.py
│   └── run_mysql_benchmark.sh
└── sql/
    ├── 00_create_database.sql
    ├── 01_create_tables.sql
    ├── 02_build_helper_sequences.sql
    ├── 03_load_fact_order_wide_base.sql
    ├── 04_load_user_game_day_base.sql
    ├── 05_prepare_s0_stable.sql
    ├── 06_prepare_s1_append.sql
    ├── 07_prepare_s2_mixed_delta.sql
    ├── 08_collect_mysql_table_stats.sql
    └── 09_collect_tiflash_dt_tables.sql
```

## Data Model

The benchmark uses two tables:

- `fact_order_wide`
  - wide fact table
  - stresses scan, aggregation, `count(distinct)`, JSON extraction, and wide
    `TopN`
- `user_game_day`
  - narrower daily summary table
  - used for OR lookup style queries and as a lightweight second workload

The chosen column mix follows the online patterns extracted from
`/cache/word/tiflash-sql.docx`:

- time-range filtering
- `group by`
- `count(distinct)`
- large `IN` lists
- `order by ... limit`
- `row_number()`
- JSON extraction in aggregations
- base-column filters versus derived-filter variants
- narrow `TopN` versus wide projection `TopN`

## Default Small-Scale Data

The default `bootstrap` SQL files are intentionally sized to be runnable on a
normal test cluster, not just a production-scale environment.

- `fact_order_wide` base load:
  - 10 days
  - 500,000 rows per day
  - about 5,000,000 rows in total
- `user_game_day` base load:
  - 10 days
  - 200,000 rows per day
  - about 2,000,000 rows in total
- `S1` append load:
  - recent 2 hot days receive extra inserts
- `S2` mixed-delta:
  - recent 2 hot days receive updates and deletes

If the cluster is too small or too large, adjust the `WHERE seq < ...` filters
inside the small load scripts.

## Billion-Scale Data Path

If the target is real performance comparison, the default small dataset is not
enough. The bundle now includes a chunked large-data loader that is designed for
at least 1 billion rows per table.

The large-data path does not rely on one giant `INSERT ... SELECT`. Instead it
uses:

- `sql/10_create_chunk_load_procedures.sql`
  - defines `load_fact_order_wide_chunk(...)`
  - defines `load_user_game_day_chunk(...)`
- `scripts/load_large_dataset.sh`
  - calls the procedures in chunks
  - spreads rows across multiple logical days
  - avoids a single oversized transaction

Default large-load settings:

- `fact_order_wide`: 1,000,000,000 rows
- `user_game_day`: 1,000,000,000 rows
- `10` logical days
- `1,000,000` rows per chunk call

That means:

- `100,000,000` rows per day per table
- `100` chunk calls per day per table
- `1,000` chunk calls per table

This is large, but operationally much safer than a single 1B-row statement.

## Preconditions

- TiDB SQL endpoint reachable by `mysql`
- TiFlash replicas are available for both benchmark tables
- `mysql` client installed
- Optional: `clickhouse-client` installed if you want to collect
  `system.dt_tables`

Recommended MySQL session behavior for benchmark runs:

- `tidb_isolation_read_engines = 'tiflash'`
- `tidb_allow_mpp = 1`

The runner script sets both.

## Quick Start

### 1. Create schema and base dataset

```bash
cd /data/cse/tiflash-upstream/target/columnar-perf-test

MYSQL_HOST=127.0.0.1 \
MYSQL_PORT=4000 \
MYSQL_USER=root \
./scripts/run_mysql_benchmark.sh bootstrap
```

### 1B-scale schema bootstrap

```bash
cd /data/cse/tiflash-upstream/target/columnar-perf-test

MYSQL_HOST=127.0.0.1 \
MYSQL_PORT=4000 \
MYSQL_USER=root \
./scripts/run_mysql_benchmark.sh bootstrap-schema
```

### 1B-scale data load

```bash
MYSQL_HOST=127.0.0.1 \
MYSQL_PORT=4000 \
MYSQL_USER=root \
FACT_TARGET_ROWS=1000000000 \
FACT_DAY_COUNT=10 \
FACT_CHUNK_ROWS=1000000 \
USER_TARGET_ROWS=1000000000 \
USER_DAY_COUNT=10 \
USER_CHUNK_ROWS=1000000 \
./scripts/load_large_dataset.sh
```

If only one table needs 1B rows, you can disable the other one:

```bash
MYSQL_HOST=127.0.0.1 \
MYSQL_PORT=4000 \
MYSQL_USER=root \
FACT_TARGET_ROWS=1000000000 \
LOAD_USER=0 \
./scripts/load_large_dataset.sh
```

### 2. Prepare `S0 stable-heavy`

```bash
MYSQL_HOST=127.0.0.1 \
MYSQL_PORT=4000 \
MYSQL_USER=root \
./scripts/run_mysql_benchmark.sh prepare-s0
```

### 3. Run the query suite on the `columnar` environment

```bash
MYSQL_HOST=columnar.example \
MYSQL_PORT=4000 \
MYSQL_USER=root \
RUN_LABEL=columnar-s0 \
./scripts/run_mysql_benchmark.sh run
```

### 4. Run the same query suite on the `delta` environment

```bash
MYSQL_HOST=delta.example \
MYSQL_PORT=4000 \
MYSQL_USER=root \
RUN_LABEL=delta-s0 \
./scripts/run_mysql_benchmark.sh run
```

### 5. Compare results

```bash
./scripts/compare_benchmark_results.py \
  --lhs results/columnar-s0 \
  --rhs results/delta-s0 \
  --lhs-name columnar-s0 \
  --rhs-name delta-s0 \
  --output results/columnar-vs-delta-s0.md
```

### 6. Prepare `S1` and `S2`

```bash
MYSQL_HOST=127.0.0.1 \
MYSQL_PORT=4000 \
MYSQL_USER=root \
./scripts/run_mysql_benchmark.sh prepare-s1

MYSQL_HOST=127.0.0.1 \
MYSQL_PORT=4000 \
MYSQL_USER=root \
./scripts/run_mysql_benchmark.sh prepare-s2
```

Then repeat the benchmark for both environments with `RUN_LABEL=columnar-s1`,
`delta-s1`, `columnar-s2`, and `delta-s2`.

## Physical State Notes

### `S0 stable-heavy`

`sql/05_prepare_s0_stable.sql` uses:

```sql
ALTER TABLE ... COMPACT TIFLASH REPLICA;
```

This is the recommended TiDB-side path for compacting TiFlash replicas.

If the benchmark is run in a TiFlash standalone or special debug environment
instead of a normal TiDB cluster, the equivalent maintenance command can be
replaced with the environment-specific `merge delta` operation.

### `S1 append-heavy`

`sql/06_prepare_s1_append.sql` inserts extra rows into the latest two hot days
and deliberately does not compact afterward.

### `S2 mixed-delta`

`sql/07_prepare_s2_mixed_delta.sql` performs:

- targeted updates on recent hot rows
- targeted deletes on recent hot rows
- `ANALYZE TABLE` refresh

It intentionally leaves the delta layer active.

## What To Compare

For each state, compare the following artifacts:

- `results/<label>/timings.tsv`
  - raw per-iteration wall time
- `results/<label>/hashes.tsv`
  - result-set hash and row count
- `results/<label>/explain/*.txt`
  - `EXPLAIN ANALYZE` output for each query
- optional `results/<label>/dt_tables.tsv`
  - TiFlash physical stats from `system.dt_tables`

Recommended primary metrics:

- median latency per query
- p95 latency per query
- result hash match
- `delta_rate_rows` and `total_delta_rows` at benchmark time

## Expected Readouts

- `01` / `02` / `03`: scan and aggregation dominated, likely the best place for
  `columnar` to win
- `04` / `05`: wide projection and pagination style, good at exposing eager
  materialization costs
- `06` / `07`: hot-window stress, useful for checking sensitivity to active
  delta rows
- `08`: OR lookup style boundary case, useful as a non-ideal but real pattern
- `09` / `10`: filter-pushdown sensitivity pair; `09` keeps predicates on base
  columns while `10` routes the same logical checks through derived flags so
  `EXPLAIN ANALYZE` can show how much filtering stays near the scan
- `11` / `12`: explicit late-materialization pair; both run the same `TopN`
  shape, but `11` keeps the projection narrow while `12` pulls wide payload
  columns to make materialization cost easy to compare

## Data Preparation Capacity

The answer for the current bundle is now:

- `bootstrap`:
  - `fact_order_wide` about 5,000,000 rows
  - `user_game_day` about 2,000,000 rows
- `load_large_dataset.sh`:
  - default 1,000,000,000 rows per table
  - can be increased further if the cluster can sustain it

The practical upper bound is no longer hard-coded by the SQL template itself.
It is now controlled by:

- `FACT_TARGET_ROWS`
- `FACT_DAY_COUNT`
- `FACT_CHUNK_ROWS`
- `USER_TARGET_ROWS`
- `USER_DAY_COUNT`
- `USER_CHUNK_ROWS`

For example, 2 billion rows on `fact_order_wide`:

```bash
MYSQL_HOST=127.0.0.1 \
MYSQL_PORT=4000 \
MYSQL_USER=root \
FACT_TARGET_ROWS=2000000000 \
LOAD_USER=0 \
./scripts/load_large_dataset.sh
```

The main limit becomes cluster capacity and loading time, not the SQL syntax.

## Safety Notes

- None of the default scripts drop the benchmark database.
- Rerunning the load scripts uses `INSERT IGNORE` to avoid duplicate primary-key
  failures.
- If a full rebuild is needed, do it explicitly and manually.
