SELECT /*+ read_from_storage(tiflash[fact_order_wide]) */
    merchant_id,
    stat_time,
    order_id,
    user_id,
    round_id,
    ad_id,
    game_id,
    platform_id,
    currency,
    status,
    amount,
    valid_amount,
    payout,
    revenue,
    jackpot_prize,
    channel,
    device_model,
    login_name,
    payload_1,
    payload_2,
    payload_3,
    payload_4,
    payload_5,
    insurance_turn,
    insurance_river
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
