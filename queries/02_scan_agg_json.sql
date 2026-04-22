SELECT /*+ read_from_storage(tiflash[fact_order_wide]) */
    merchant_id,
    SUM(CAST(JSON_UNQUOTE(JSON_EXTRACT(insurance_turn, '$.first')) AS DECIMAL(18, 2))) AS first_insurance,
    SUM(CAST(JSON_UNQUOTE(JSON_EXTRACT(insurance_river, '$.second')) AS DECIMAL(18, 2))) AS second_insurance,
    SUM(revenue) AS total_revenue
FROM bench_columnar_perf.fact_order_wide
WHERE merchant_id = 17
  AND stat_time >= '2026-03-04 00:00:00'
  AND stat_time < '2026-03-07 00:00:00'
  AND deleted = 0
GROUP BY merchant_id;
