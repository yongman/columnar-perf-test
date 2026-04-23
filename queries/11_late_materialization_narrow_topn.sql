SELECT /*+ read_from_storage(tiflash[fact_order_wide]) */
    merchant_id,
    stat_time,
    order_id,
    amount
FROM bench_columnar_perf.fact_order_wide
WHERE merchant_id IN (17, 18, 19, 20)
  AND stat_time >= '2026-03-04 00:00:00'
  AND stat_time < '2026-03-07 00:00:00'
  AND deleted = 0
  AND status IN (1, 2)
  AND amount >= 100.00
  AND amount < 900.00
ORDER BY amount DESC, stat_time DESC, order_id DESC
LIMIT 200;
