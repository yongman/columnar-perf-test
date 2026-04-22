USE bench_columnar_perf;

-- Mixed-delta state on top of S1:
--   - update a targeted slice of hot rows
--   - delete a smaller targeted slice of hot rows
--   - keep delta active by not compacting afterward

UPDATE fact_order_wide
SET
    payout = payout + 1.25,
    revenue = revenue - 0.75,
    updated_at = NOW(),
    device_model = CONCAT(device_model, '-u')
WHERE stat_time >= '2026-03-09 00:00:00'
  AND stat_time < '2026-03-11 00:00:00'
  AND merchant_id <= 100
  AND MOD(order_id, 5) = 0;

DELETE FROM fact_order_wide
WHERE stat_time >= '2026-03-09 00:00:00'
  AND stat_time < '2026-03-11 00:00:00'
  AND merchant_id <= 80
  AND MOD(order_id, 31) = 0;

UPDATE user_game_day
SET
    bet_amount = bet_amount + 3.00,
    payout_amount = payout_amount + 1.00
WHERE stat_day >= '2026-03-09'
  AND stat_day < '2026-03-11'
  AND merchant_id <= 100
  AND MOD(user_id, 7) = 0;

DELETE FROM user_game_day
WHERE stat_day >= '2026-03-09'
  AND stat_day < '2026-03-11'
  AND merchant_id <= 80
  AND MOD(user_id, 43) = 0;

ANALYZE TABLE fact_order_wide, user_game_day;
