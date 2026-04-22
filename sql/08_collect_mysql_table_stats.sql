USE bench_columnar_perf;

SELECT
    'fact_order_wide' AS table_name,
    COUNT(*) AS total_rows,
    MIN(stat_time) AS min_stat_time,
    MAX(stat_time) AS max_stat_time,
    SUM(CASE WHEN stat_time >= '2026-03-09 00:00:00' AND stat_time < '2026-03-11 00:00:00' THEN 1 ELSE 0 END) AS hot_window_rows,
    COUNT(DISTINCT merchant_id) AS merchant_count,
    COUNT(DISTINCT ad_id) AS ad_count
FROM fact_order_wide;

SELECT
    'user_game_day' AS table_name,
    COUNT(*) AS total_rows,
    MIN(stat_day) AS min_stat_day,
    MAX(stat_day) AS max_stat_day,
    SUM(CASE WHEN stat_day >= '2026-03-09' AND stat_day < '2026-03-11' THEN 1 ELSE 0 END) AS hot_window_rows,
    COUNT(DISTINCT merchant_id) AS merchant_count,
    COUNT(DISTINCT game_id) AS game_count
FROM user_game_day;
