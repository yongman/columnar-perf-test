USE bench_columnar_perf;

-- Append extra rows into the latest two hot days and do not compact afterward.

INSERT IGNORE INTO fact_order_wide
SELECT
    1 + (seq % 200) AS merchant_id,
    DATE_ADD(TIMESTAMP('2026-03-09 00:00:00'), INTERVAL (seq % 86400) SECOND) AS stat_time,
    100000000 + seq AS order_id,
    1000000 + (seq % 5000000) AS user_id,
    300000000 + seq AS round_id,
    10001 + (seq % 5000) AS ad_id,
    1 + (seq % 200) AS game_id,
    1 + (seq % 20) AS platform_id,
    ELT(1 + seq % 3, 'USD', 'CNY', 'EUR') AS currency,
    1 + (seq % 3) AS status,
    0 AS deleted,
    CAST((seq % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST((seq % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST((seq % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST((seq % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST((seq % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST((seq % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST((seq % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + seq % 5, 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + seq % 4, 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD(seq % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD(seq % 5000000, 7, '0')) AS login_name,
    RPAD(CONCAT('ap1-', seq % 1000), 64, 'a') AS payload_1,
    RPAD(CONCAT('ap2-', seq % 2000), 64, 'b') AS payload_2,
    RPAD(CONCAT('ap3-', seq % 3000), 64, 'c') AS payload_3,
    RPAD(CONCAT('ap4-', seq % 4000), 64, 'd') AS payload_4,
    RPAD(CONCAT('ap5-', seq % 5000), 64, 'e') AS payload_5,
    DATE_ADD(TIMESTAMP('2026-03-09 00:01:00'), INTERVAL (seq % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq >= 500000
  AND seq < 750000;

INSERT IGNORE INTO fact_order_wide
SELECT
    1 + (seq % 200) AS merchant_id,
    DATE_ADD(TIMESTAMP('2026-03-10 00:00:00'), INTERVAL (seq % 86400) SECOND) AS stat_time,
    101000000 + seq AS order_id,
    1000000 + (seq % 5000000) AS user_id,
    301000000 + seq AS round_id,
    10001 + (seq % 5000) AS ad_id,
    1 + (seq % 200) AS game_id,
    1 + (seq % 20) AS platform_id,
    ELT(1 + seq % 3, 'USD', 'CNY', 'EUR') AS currency,
    1 + (seq % 3) AS status,
    0 AS deleted,
    CAST((seq % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST((seq % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST((seq % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST((seq % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST((seq % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST((seq % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST((seq % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + seq % 5, 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + seq % 4, 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD(seq % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD(seq % 5000000, 7, '0')) AS login_name,
    RPAD(CONCAT('ap1-', seq % 1000), 64, 'a') AS payload_1,
    RPAD(CONCAT('ap2-', seq % 2000), 64, 'b') AS payload_2,
    RPAD(CONCAT('ap3-', seq % 3000), 64, 'c') AS payload_3,
    RPAD(CONCAT('ap4-', seq % 4000), 64, 'd') AS payload_4,
    RPAD(CONCAT('ap5-', seq % 5000), 64, 'e') AS payload_5,
    DATE_ADD(TIMESTAMP('2026-03-10 00:01:00'), INTERVAL (seq % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq >= 500000
  AND seq < 750000;

INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-09') AS stat_day,
    1000000 + (seq % 3000000) AS user_id,
    1 + (seq % 100) AS game_id,
    1 + (seq % 200) AS merchant_id,
    CAST((seq % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST((seq % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq >= 200000
  AND seq < 300000;

INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-10') AS stat_day,
    1000000 + (seq % 3000000) AS user_id,
    1 + (seq % 100) AS game_id,
    1 + (seq % 200) AS merchant_id,
    CAST((seq % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST((seq % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq >= 200000
  AND seq < 300000;

ANALYZE TABLE fact_order_wide, user_game_day;
