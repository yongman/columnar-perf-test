SELECT /*+ read_from_storage(tiflash[fact_order_wide]) */
    merchant_id,
    COUNT(DISTINCT user_id) AS uv,
    SUM(valid_amount) AS total_valid_amount,
    SUM(amount - payout) AS total_win_lose,
    COUNT(*) AS total_rows
FROM bench_columnar_perf.fact_order_wide
WHERE merchant_id = 17
  AND stat_time >= '2026-03-09 00:00:00'
  AND stat_time < '2026-03-11 00:00:00'
  AND deleted = 0
GROUP BY merchant_id;
