SELECT
    tidb_database,
    tidb_table,
    delta_rate_rows,
    delta_rate_segments,
    total_rows,
    total_delta_rows,
    total_stable_rows,
    total_delete_ranges,
    stable_count,
    delta_count,
    avg_pack_rows_in_stable,
    avg_pack_rows_in_delta
FROM system.dt_tables
WHERE tidb_database = 'bench_columnar_perf'
  AND tidb_table IN ('fact_order_wide', 'user_game_day')
  AND is_tombstone = 0
ORDER BY tidb_table;
