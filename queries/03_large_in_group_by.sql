SELECT /*+ read_from_storage(tiflash[fact_order_wide]) */
    ad_id,
    SUM(amount) AS total_amount,
    COUNT(DISTINCT user_id) AS uv
FROM bench_columnar_perf.fact_order_wide
WHERE stat_time >= '2026-03-04 00:00:00'
  AND stat_time < '2026-03-07 00:00:00'
  AND ad_id IN (
      10001, 10002, 10003, 10004, 10005, 10006, 10007, 10008,
      10009, 10010, 10011, 10012, 10013, 10014, 10015, 10016,
      10017, 10018, 10019, 10020, 10021, 10022, 10023, 10024,
      10025, 10026, 10027, 10028, 10029, 10030, 10031, 10032
  )
GROUP BY ad_id
ORDER BY ad_id;
