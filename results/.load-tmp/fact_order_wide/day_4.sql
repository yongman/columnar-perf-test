USE bench_columnar_perf_large;
USE bench_columnar_perf_large;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((8000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 4 DAY), INTERVAL ((8000000 + seq) % 86400) SECOND) AS stat_time,
    8000000 + seq AS order_id,
    1000000 + ((8000000 + seq) % 500000000) AS user_id,
    200000000 + 8000000 + seq AS round_id,
    10001 + ((8000000 + seq) % 5000) AS ad_id,
    1 + ((8000000 + seq) % 200) AS game_id,
    1 + ((8000000 + seq) % 20) AS platform_id,
    ELT(1 + ((8000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((8000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((8000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((8000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((8000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((8000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((8000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((8000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((8000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((8000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((8000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((8000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((8000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (8000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (8000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (8000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (8000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (8000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 4 DAY), INTERVAL ((8000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_large;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((9000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 4 DAY), INTERVAL ((9000000 + seq) % 86400) SECOND) AS stat_time,
    9000000 + seq AS order_id,
    1000000 + ((9000000 + seq) % 500000000) AS user_id,
    200000000 + 9000000 + seq AS round_id,
    10001 + ((9000000 + seq) % 5000) AS ad_id,
    1 + ((9000000 + seq) % 200) AS game_id,
    1 + ((9000000 + seq) % 20) AS platform_id,
    ELT(1 + ((9000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((9000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((9000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((9000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((9000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((9000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((9000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((9000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((9000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((9000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((9000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((9000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((9000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (9000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (9000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (9000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (9000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (9000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 4 DAY), INTERVAL ((9000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

