USE bench_columnar_perf_large;
USE bench_columnar_perf_large;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((0 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 0 DAY), INTERVAL ((0 + seq) % 86400) SECOND) AS stat_time,
    0 + seq AS order_id,
    1000000 + ((0 + seq) % 500000000) AS user_id,
    200000000 + 0 + seq AS round_id,
    10001 + ((0 + seq) % 5000) AS ad_id,
    1 + ((0 + seq) % 200) AS game_id,
    1 + ((0 + seq) % 20) AS platform_id,
    ELT(1 + ((0 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((0 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((0 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((0 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((0 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((0 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((0 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((0 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((0 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((0 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((0 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((0 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((0 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (0 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (0 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (0 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (0 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (0 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 0 DAY), INTERVAL ((0 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_large;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((1000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 0 DAY), INTERVAL ((1000000 + seq) % 86400) SECOND) AS stat_time,
    1000000 + seq AS order_id,
    1000000 + ((1000000 + seq) % 500000000) AS user_id,
    200000000 + 1000000 + seq AS round_id,
    10001 + ((1000000 + seq) % 5000) AS ad_id,
    1 + ((1000000 + seq) % 200) AS game_id,
    1 + ((1000000 + seq) % 20) AS platform_id,
    ELT(1 + ((1000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((1000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((1000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((1000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((1000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((1000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((1000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((1000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((1000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((1000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((1000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((1000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((1000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (1000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (1000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (1000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (1000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (1000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 0 DAY), INTERVAL ((1000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

