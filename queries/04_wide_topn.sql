SELECT /*+ read_from_storage(tiflash[fact_order_wide]) */
    order_id,
    user_id,
    merchant_id,
    stat_time,
    amount,
    payout,
    channel,
    device_model,
    login_name,
    payload_1,
    payload_2,
    payload_3,
    payload_4,
    payload_5
FROM bench_columnar_perf.fact_order_wide
WHERE merchant_id = 17
  AND stat_time >= '2026-03-04 00:00:00'
  AND stat_time < '2026-03-07 00:00:00'
  AND deleted = 0
ORDER BY stat_time DESC, order_id DESC
LIMIT 100;
