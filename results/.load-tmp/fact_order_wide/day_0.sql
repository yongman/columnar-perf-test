USE bench_columnar_perf_xlarge;
USE bench_columnar_perf_xlarge;
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

USE bench_columnar_perf_xlarge;
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

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((2000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 0 DAY), INTERVAL ((2000000 + seq) % 86400) SECOND) AS stat_time,
    2000000 + seq AS order_id,
    1000000 + ((2000000 + seq) % 500000000) AS user_id,
    200000000 + 2000000 + seq AS round_id,
    10001 + ((2000000 + seq) % 5000) AS ad_id,
    1 + ((2000000 + seq) % 200) AS game_id,
    1 + ((2000000 + seq) % 20) AS platform_id,
    ELT(1 + ((2000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((2000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((2000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((2000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((2000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((2000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((2000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((2000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((2000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((2000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((2000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((2000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((2000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (2000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (2000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (2000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (2000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (2000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 0 DAY), INTERVAL ((2000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((3000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 0 DAY), INTERVAL ((3000000 + seq) % 86400) SECOND) AS stat_time,
    3000000 + seq AS order_id,
    1000000 + ((3000000 + seq) % 500000000) AS user_id,
    200000000 + 3000000 + seq AS round_id,
    10001 + ((3000000 + seq) % 5000) AS ad_id,
    1 + ((3000000 + seq) % 200) AS game_id,
    1 + ((3000000 + seq) % 20) AS platform_id,
    ELT(1 + ((3000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((3000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((3000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((3000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((3000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((3000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((3000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((3000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((3000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((3000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((3000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((3000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((3000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (3000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (3000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (3000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (3000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (3000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 0 DAY), INTERVAL ((3000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((4000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 0 DAY), INTERVAL ((4000000 + seq) % 86400) SECOND) AS stat_time,
    4000000 + seq AS order_id,
    1000000 + ((4000000 + seq) % 500000000) AS user_id,
    200000000 + 4000000 + seq AS round_id,
    10001 + ((4000000 + seq) % 5000) AS ad_id,
    1 + ((4000000 + seq) % 200) AS game_id,
    1 + ((4000000 + seq) % 20) AS platform_id,
    ELT(1 + ((4000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((4000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((4000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((4000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((4000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((4000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((4000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((4000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((4000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((4000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((4000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((4000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((4000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (4000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (4000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (4000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (4000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (4000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 0 DAY), INTERVAL ((4000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((5000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 0 DAY), INTERVAL ((5000000 + seq) % 86400) SECOND) AS stat_time,
    5000000 + seq AS order_id,
    1000000 + ((5000000 + seq) % 500000000) AS user_id,
    200000000 + 5000000 + seq AS round_id,
    10001 + ((5000000 + seq) % 5000) AS ad_id,
    1 + ((5000000 + seq) % 200) AS game_id,
    1 + ((5000000 + seq) % 20) AS platform_id,
    ELT(1 + ((5000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((5000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((5000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((5000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((5000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((5000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((5000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((5000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((5000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((5000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((5000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((5000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((5000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (5000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (5000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (5000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (5000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (5000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 0 DAY), INTERVAL ((5000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((6000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 0 DAY), INTERVAL ((6000000 + seq) % 86400) SECOND) AS stat_time,
    6000000 + seq AS order_id,
    1000000 + ((6000000 + seq) % 500000000) AS user_id,
    200000000 + 6000000 + seq AS round_id,
    10001 + ((6000000 + seq) % 5000) AS ad_id,
    1 + ((6000000 + seq) % 200) AS game_id,
    1 + ((6000000 + seq) % 20) AS platform_id,
    ELT(1 + ((6000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((6000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((6000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((6000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((6000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((6000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((6000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((6000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((6000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((6000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((6000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((6000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((6000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (6000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (6000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (6000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (6000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (6000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 0 DAY), INTERVAL ((6000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((7000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 0 DAY), INTERVAL ((7000000 + seq) % 86400) SECOND) AS stat_time,
    7000000 + seq AS order_id,
    1000000 + ((7000000 + seq) % 500000000) AS user_id,
    200000000 + 7000000 + seq AS round_id,
    10001 + ((7000000 + seq) % 5000) AS ad_id,
    1 + ((7000000 + seq) % 200) AS game_id,
    1 + ((7000000 + seq) % 20) AS platform_id,
    ELT(1 + ((7000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((7000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((7000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((7000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((7000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((7000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((7000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((7000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((7000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((7000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((7000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((7000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((7000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (7000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (7000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (7000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (7000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (7000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 0 DAY), INTERVAL ((7000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((8000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 0 DAY), INTERVAL ((8000000 + seq) % 86400) SECOND) AS stat_time,
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
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 0 DAY), INTERVAL ((8000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((9000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 0 DAY), INTERVAL ((9000000 + seq) % 86400) SECOND) AS stat_time,
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
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 0 DAY), INTERVAL ((9000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((10000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 0 DAY), INTERVAL ((10000000 + seq) % 86400) SECOND) AS stat_time,
    10000000 + seq AS order_id,
    1000000 + ((10000000 + seq) % 500000000) AS user_id,
    200000000 + 10000000 + seq AS round_id,
    10001 + ((10000000 + seq) % 5000) AS ad_id,
    1 + ((10000000 + seq) % 200) AS game_id,
    1 + ((10000000 + seq) % 20) AS platform_id,
    ELT(1 + ((10000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((10000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((10000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((10000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((10000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((10000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((10000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((10000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((10000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((10000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((10000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((10000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((10000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (10000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (10000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (10000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (10000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (10000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 0 DAY), INTERVAL ((10000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((11000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 0 DAY), INTERVAL ((11000000 + seq) % 86400) SECOND) AS stat_time,
    11000000 + seq AS order_id,
    1000000 + ((11000000 + seq) % 500000000) AS user_id,
    200000000 + 11000000 + seq AS round_id,
    10001 + ((11000000 + seq) % 5000) AS ad_id,
    1 + ((11000000 + seq) % 200) AS game_id,
    1 + ((11000000 + seq) % 20) AS platform_id,
    ELT(1 + ((11000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((11000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((11000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((11000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((11000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((11000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((11000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((11000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((11000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((11000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((11000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((11000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((11000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (11000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (11000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (11000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (11000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (11000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 0 DAY), INTERVAL ((11000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((12000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 0 DAY), INTERVAL ((12000000 + seq) % 86400) SECOND) AS stat_time,
    12000000 + seq AS order_id,
    1000000 + ((12000000 + seq) % 500000000) AS user_id,
    200000000 + 12000000 + seq AS round_id,
    10001 + ((12000000 + seq) % 5000) AS ad_id,
    1 + ((12000000 + seq) % 200) AS game_id,
    1 + ((12000000 + seq) % 20) AS platform_id,
    ELT(1 + ((12000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((12000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((12000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((12000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((12000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((12000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((12000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((12000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((12000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((12000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((12000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((12000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((12000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (12000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (12000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (12000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (12000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (12000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 0 DAY), INTERVAL ((12000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((13000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 0 DAY), INTERVAL ((13000000 + seq) % 86400) SECOND) AS stat_time,
    13000000 + seq AS order_id,
    1000000 + ((13000000 + seq) % 500000000) AS user_id,
    200000000 + 13000000 + seq AS round_id,
    10001 + ((13000000 + seq) % 5000) AS ad_id,
    1 + ((13000000 + seq) % 200) AS game_id,
    1 + ((13000000 + seq) % 20) AS platform_id,
    ELT(1 + ((13000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((13000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((13000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((13000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((13000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((13000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((13000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((13000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((13000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((13000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((13000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((13000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((13000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (13000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (13000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (13000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (13000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (13000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 0 DAY), INTERVAL ((13000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((14000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 0 DAY), INTERVAL ((14000000 + seq) % 86400) SECOND) AS stat_time,
    14000000 + seq AS order_id,
    1000000 + ((14000000 + seq) % 500000000) AS user_id,
    200000000 + 14000000 + seq AS round_id,
    10001 + ((14000000 + seq) % 5000) AS ad_id,
    1 + ((14000000 + seq) % 200) AS game_id,
    1 + ((14000000 + seq) % 20) AS platform_id,
    ELT(1 + ((14000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((14000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((14000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((14000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((14000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((14000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((14000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((14000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((14000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((14000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((14000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((14000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((14000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (14000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (14000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (14000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (14000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (14000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 0 DAY), INTERVAL ((14000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((15000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 0 DAY), INTERVAL ((15000000 + seq) % 86400) SECOND) AS stat_time,
    15000000 + seq AS order_id,
    1000000 + ((15000000 + seq) % 500000000) AS user_id,
    200000000 + 15000000 + seq AS round_id,
    10001 + ((15000000 + seq) % 5000) AS ad_id,
    1 + ((15000000 + seq) % 200) AS game_id,
    1 + ((15000000 + seq) % 20) AS platform_id,
    ELT(1 + ((15000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((15000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((15000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((15000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((15000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((15000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((15000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((15000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((15000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((15000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((15000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((15000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((15000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (15000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (15000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (15000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (15000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (15000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 0 DAY), INTERVAL ((15000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((16000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 0 DAY), INTERVAL ((16000000 + seq) % 86400) SECOND) AS stat_time,
    16000000 + seq AS order_id,
    1000000 + ((16000000 + seq) % 500000000) AS user_id,
    200000000 + 16000000 + seq AS round_id,
    10001 + ((16000000 + seq) % 5000) AS ad_id,
    1 + ((16000000 + seq) % 200) AS game_id,
    1 + ((16000000 + seq) % 20) AS platform_id,
    ELT(1 + ((16000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((16000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((16000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((16000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((16000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((16000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((16000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((16000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((16000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((16000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((16000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((16000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((16000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (16000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (16000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (16000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (16000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (16000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 0 DAY), INTERVAL ((16000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((17000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 0 DAY), INTERVAL ((17000000 + seq) % 86400) SECOND) AS stat_time,
    17000000 + seq AS order_id,
    1000000 + ((17000000 + seq) % 500000000) AS user_id,
    200000000 + 17000000 + seq AS round_id,
    10001 + ((17000000 + seq) % 5000) AS ad_id,
    1 + ((17000000 + seq) % 200) AS game_id,
    1 + ((17000000 + seq) % 20) AS platform_id,
    ELT(1 + ((17000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((17000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((17000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((17000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((17000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((17000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((17000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((17000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((17000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((17000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((17000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((17000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((17000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (17000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (17000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (17000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (17000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (17000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 0 DAY), INTERVAL ((17000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((18000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 0 DAY), INTERVAL ((18000000 + seq) % 86400) SECOND) AS stat_time,
    18000000 + seq AS order_id,
    1000000 + ((18000000 + seq) % 500000000) AS user_id,
    200000000 + 18000000 + seq AS round_id,
    10001 + ((18000000 + seq) % 5000) AS ad_id,
    1 + ((18000000 + seq) % 200) AS game_id,
    1 + ((18000000 + seq) % 20) AS platform_id,
    ELT(1 + ((18000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((18000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((18000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((18000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((18000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((18000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((18000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((18000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((18000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((18000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((18000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((18000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((18000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (18000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (18000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (18000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (18000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (18000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 0 DAY), INTERVAL ((18000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((19000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 0 DAY), INTERVAL ((19000000 + seq) % 86400) SECOND) AS stat_time,
    19000000 + seq AS order_id,
    1000000 + ((19000000 + seq) % 500000000) AS user_id,
    200000000 + 19000000 + seq AS round_id,
    10001 + ((19000000 + seq) % 5000) AS ad_id,
    1 + ((19000000 + seq) % 200) AS game_id,
    1 + ((19000000 + seq) % 20) AS platform_id,
    ELT(1 + ((19000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((19000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((19000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((19000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((19000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((19000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((19000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((19000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((19000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((19000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((19000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((19000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((19000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (19000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (19000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (19000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (19000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (19000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 0 DAY), INTERVAL ((19000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

