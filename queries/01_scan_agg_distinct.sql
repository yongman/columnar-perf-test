SELECT /*+ read_from_storage(tiflash[fact_order_wide]) */
    merchant_id,
    COUNT(DISTINCT user_id) AS uv,
    SUM(valid_amount) AS total_valid_amount,
    SUM(amount - payout) AS total_win_lose,
    COUNT(DISTINCT round_id) AS round_count
FROM bench_columnar_perf.fact_order_wide
WHERE merchant_id = 17
  AND stat_time >= '2026-03-04 00:00:00'
  AND stat_time < '2026-03-07 00:00:00'
  AND deleted = 0
GROUP BY merchant_id;
