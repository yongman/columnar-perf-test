USE bench_columnar_perf_xlarge;
USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((60000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 3 DAY), INTERVAL ((60000000 + seq) % 86400) SECOND) AS stat_time,
    60000000 + seq AS order_id,
    1000000 + ((60000000 + seq) % 500000000) AS user_id,
    200000000 + 60000000 + seq AS round_id,
    10001 + ((60000000 + seq) % 5000) AS ad_id,
    1 + ((60000000 + seq) % 200) AS game_id,
    1 + ((60000000 + seq) % 20) AS platform_id,
    ELT(1 + ((60000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((60000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((60000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((60000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((60000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((60000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((60000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((60000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((60000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((60000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((60000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((60000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((60000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (60000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (60000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (60000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (60000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (60000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 3 DAY), INTERVAL ((60000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((61000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 3 DAY), INTERVAL ((61000000 + seq) % 86400) SECOND) AS stat_time,
    61000000 + seq AS order_id,
    1000000 + ((61000000 + seq) % 500000000) AS user_id,
    200000000 + 61000000 + seq AS round_id,
    10001 + ((61000000 + seq) % 5000) AS ad_id,
    1 + ((61000000 + seq) % 200) AS game_id,
    1 + ((61000000 + seq) % 20) AS platform_id,
    ELT(1 + ((61000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((61000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((61000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((61000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((61000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((61000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((61000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((61000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((61000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((61000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((61000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((61000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((61000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (61000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (61000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (61000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (61000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (61000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 3 DAY), INTERVAL ((61000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((62000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 3 DAY), INTERVAL ((62000000 + seq) % 86400) SECOND) AS stat_time,
    62000000 + seq AS order_id,
    1000000 + ((62000000 + seq) % 500000000) AS user_id,
    200000000 + 62000000 + seq AS round_id,
    10001 + ((62000000 + seq) % 5000) AS ad_id,
    1 + ((62000000 + seq) % 200) AS game_id,
    1 + ((62000000 + seq) % 20) AS platform_id,
    ELT(1 + ((62000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((62000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((62000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((62000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((62000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((62000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((62000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((62000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((62000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((62000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((62000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((62000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((62000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (62000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (62000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (62000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (62000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (62000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 3 DAY), INTERVAL ((62000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((63000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 3 DAY), INTERVAL ((63000000 + seq) % 86400) SECOND) AS stat_time,
    63000000 + seq AS order_id,
    1000000 + ((63000000 + seq) % 500000000) AS user_id,
    200000000 + 63000000 + seq AS round_id,
    10001 + ((63000000 + seq) % 5000) AS ad_id,
    1 + ((63000000 + seq) % 200) AS game_id,
    1 + ((63000000 + seq) % 20) AS platform_id,
    ELT(1 + ((63000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((63000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((63000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((63000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((63000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((63000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((63000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((63000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((63000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((63000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((63000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((63000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((63000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (63000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (63000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (63000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (63000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (63000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 3 DAY), INTERVAL ((63000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((64000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 3 DAY), INTERVAL ((64000000 + seq) % 86400) SECOND) AS stat_time,
    64000000 + seq AS order_id,
    1000000 + ((64000000 + seq) % 500000000) AS user_id,
    200000000 + 64000000 + seq AS round_id,
    10001 + ((64000000 + seq) % 5000) AS ad_id,
    1 + ((64000000 + seq) % 200) AS game_id,
    1 + ((64000000 + seq) % 20) AS platform_id,
    ELT(1 + ((64000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((64000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((64000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((64000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((64000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((64000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((64000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((64000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((64000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((64000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((64000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((64000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((64000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (64000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (64000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (64000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (64000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (64000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 3 DAY), INTERVAL ((64000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((65000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 3 DAY), INTERVAL ((65000000 + seq) % 86400) SECOND) AS stat_time,
    65000000 + seq AS order_id,
    1000000 + ((65000000 + seq) % 500000000) AS user_id,
    200000000 + 65000000 + seq AS round_id,
    10001 + ((65000000 + seq) % 5000) AS ad_id,
    1 + ((65000000 + seq) % 200) AS game_id,
    1 + ((65000000 + seq) % 20) AS platform_id,
    ELT(1 + ((65000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((65000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((65000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((65000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((65000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((65000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((65000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((65000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((65000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((65000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((65000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((65000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((65000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (65000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (65000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (65000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (65000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (65000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 3 DAY), INTERVAL ((65000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((66000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 3 DAY), INTERVAL ((66000000 + seq) % 86400) SECOND) AS stat_time,
    66000000 + seq AS order_id,
    1000000 + ((66000000 + seq) % 500000000) AS user_id,
    200000000 + 66000000 + seq AS round_id,
    10001 + ((66000000 + seq) % 5000) AS ad_id,
    1 + ((66000000 + seq) % 200) AS game_id,
    1 + ((66000000 + seq) % 20) AS platform_id,
    ELT(1 + ((66000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((66000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((66000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((66000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((66000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((66000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((66000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((66000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((66000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((66000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((66000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((66000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((66000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (66000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (66000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (66000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (66000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (66000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 3 DAY), INTERVAL ((66000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((67000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 3 DAY), INTERVAL ((67000000 + seq) % 86400) SECOND) AS stat_time,
    67000000 + seq AS order_id,
    1000000 + ((67000000 + seq) % 500000000) AS user_id,
    200000000 + 67000000 + seq AS round_id,
    10001 + ((67000000 + seq) % 5000) AS ad_id,
    1 + ((67000000 + seq) % 200) AS game_id,
    1 + ((67000000 + seq) % 20) AS platform_id,
    ELT(1 + ((67000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((67000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((67000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((67000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((67000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((67000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((67000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((67000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((67000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((67000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((67000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((67000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((67000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (67000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (67000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (67000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (67000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (67000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 3 DAY), INTERVAL ((67000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((68000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 3 DAY), INTERVAL ((68000000 + seq) % 86400) SECOND) AS stat_time,
    68000000 + seq AS order_id,
    1000000 + ((68000000 + seq) % 500000000) AS user_id,
    200000000 + 68000000 + seq AS round_id,
    10001 + ((68000000 + seq) % 5000) AS ad_id,
    1 + ((68000000 + seq) % 200) AS game_id,
    1 + ((68000000 + seq) % 20) AS platform_id,
    ELT(1 + ((68000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((68000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((68000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((68000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((68000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((68000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((68000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((68000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((68000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((68000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((68000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((68000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((68000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (68000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (68000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (68000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (68000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (68000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 3 DAY), INTERVAL ((68000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((69000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 3 DAY), INTERVAL ((69000000 + seq) % 86400) SECOND) AS stat_time,
    69000000 + seq AS order_id,
    1000000 + ((69000000 + seq) % 500000000) AS user_id,
    200000000 + 69000000 + seq AS round_id,
    10001 + ((69000000 + seq) % 5000) AS ad_id,
    1 + ((69000000 + seq) % 200) AS game_id,
    1 + ((69000000 + seq) % 20) AS platform_id,
    ELT(1 + ((69000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((69000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((69000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((69000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((69000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((69000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((69000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((69000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((69000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((69000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((69000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((69000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((69000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (69000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (69000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (69000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (69000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (69000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 3 DAY), INTERVAL ((69000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((70000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 3 DAY), INTERVAL ((70000000 + seq) % 86400) SECOND) AS stat_time,
    70000000 + seq AS order_id,
    1000000 + ((70000000 + seq) % 500000000) AS user_id,
    200000000 + 70000000 + seq AS round_id,
    10001 + ((70000000 + seq) % 5000) AS ad_id,
    1 + ((70000000 + seq) % 200) AS game_id,
    1 + ((70000000 + seq) % 20) AS platform_id,
    ELT(1 + ((70000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((70000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((70000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((70000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((70000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((70000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((70000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((70000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((70000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((70000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((70000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((70000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((70000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (70000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (70000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (70000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (70000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (70000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 3 DAY), INTERVAL ((70000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((71000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 3 DAY), INTERVAL ((71000000 + seq) % 86400) SECOND) AS stat_time,
    71000000 + seq AS order_id,
    1000000 + ((71000000 + seq) % 500000000) AS user_id,
    200000000 + 71000000 + seq AS round_id,
    10001 + ((71000000 + seq) % 5000) AS ad_id,
    1 + ((71000000 + seq) % 200) AS game_id,
    1 + ((71000000 + seq) % 20) AS platform_id,
    ELT(1 + ((71000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((71000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((71000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((71000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((71000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((71000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((71000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((71000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((71000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((71000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((71000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((71000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((71000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (71000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (71000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (71000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (71000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (71000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 3 DAY), INTERVAL ((71000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((72000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 3 DAY), INTERVAL ((72000000 + seq) % 86400) SECOND) AS stat_time,
    72000000 + seq AS order_id,
    1000000 + ((72000000 + seq) % 500000000) AS user_id,
    200000000 + 72000000 + seq AS round_id,
    10001 + ((72000000 + seq) % 5000) AS ad_id,
    1 + ((72000000 + seq) % 200) AS game_id,
    1 + ((72000000 + seq) % 20) AS platform_id,
    ELT(1 + ((72000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((72000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((72000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((72000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((72000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((72000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((72000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((72000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((72000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((72000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((72000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((72000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((72000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (72000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (72000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (72000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (72000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (72000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 3 DAY), INTERVAL ((72000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((73000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 3 DAY), INTERVAL ((73000000 + seq) % 86400) SECOND) AS stat_time,
    73000000 + seq AS order_id,
    1000000 + ((73000000 + seq) % 500000000) AS user_id,
    200000000 + 73000000 + seq AS round_id,
    10001 + ((73000000 + seq) % 5000) AS ad_id,
    1 + ((73000000 + seq) % 200) AS game_id,
    1 + ((73000000 + seq) % 20) AS platform_id,
    ELT(1 + ((73000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((73000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((73000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((73000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((73000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((73000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((73000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((73000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((73000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((73000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((73000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((73000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((73000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (73000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (73000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (73000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (73000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (73000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 3 DAY), INTERVAL ((73000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((74000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 3 DAY), INTERVAL ((74000000 + seq) % 86400) SECOND) AS stat_time,
    74000000 + seq AS order_id,
    1000000 + ((74000000 + seq) % 500000000) AS user_id,
    200000000 + 74000000 + seq AS round_id,
    10001 + ((74000000 + seq) % 5000) AS ad_id,
    1 + ((74000000 + seq) % 200) AS game_id,
    1 + ((74000000 + seq) % 20) AS platform_id,
    ELT(1 + ((74000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((74000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((74000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((74000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((74000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((74000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((74000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((74000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((74000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((74000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((74000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((74000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((74000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (74000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (74000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (74000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (74000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (74000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 3 DAY), INTERVAL ((74000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((75000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 3 DAY), INTERVAL ((75000000 + seq) % 86400) SECOND) AS stat_time,
    75000000 + seq AS order_id,
    1000000 + ((75000000 + seq) % 500000000) AS user_id,
    200000000 + 75000000 + seq AS round_id,
    10001 + ((75000000 + seq) % 5000) AS ad_id,
    1 + ((75000000 + seq) % 200) AS game_id,
    1 + ((75000000 + seq) % 20) AS platform_id,
    ELT(1 + ((75000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((75000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((75000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((75000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((75000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((75000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((75000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((75000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((75000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((75000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((75000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((75000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((75000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (75000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (75000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (75000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (75000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (75000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 3 DAY), INTERVAL ((75000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((76000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 3 DAY), INTERVAL ((76000000 + seq) % 86400) SECOND) AS stat_time,
    76000000 + seq AS order_id,
    1000000 + ((76000000 + seq) % 500000000) AS user_id,
    200000000 + 76000000 + seq AS round_id,
    10001 + ((76000000 + seq) % 5000) AS ad_id,
    1 + ((76000000 + seq) % 200) AS game_id,
    1 + ((76000000 + seq) % 20) AS platform_id,
    ELT(1 + ((76000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((76000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((76000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((76000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((76000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((76000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((76000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((76000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((76000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((76000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((76000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((76000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((76000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (76000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (76000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (76000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (76000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (76000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 3 DAY), INTERVAL ((76000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((77000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 3 DAY), INTERVAL ((77000000 + seq) % 86400) SECOND) AS stat_time,
    77000000 + seq AS order_id,
    1000000 + ((77000000 + seq) % 500000000) AS user_id,
    200000000 + 77000000 + seq AS round_id,
    10001 + ((77000000 + seq) % 5000) AS ad_id,
    1 + ((77000000 + seq) % 200) AS game_id,
    1 + ((77000000 + seq) % 20) AS platform_id,
    ELT(1 + ((77000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((77000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((77000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((77000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((77000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((77000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((77000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((77000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((77000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((77000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((77000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((77000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((77000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (77000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (77000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (77000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (77000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (77000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 3 DAY), INTERVAL ((77000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((78000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 3 DAY), INTERVAL ((78000000 + seq) % 86400) SECOND) AS stat_time,
    78000000 + seq AS order_id,
    1000000 + ((78000000 + seq) % 500000000) AS user_id,
    200000000 + 78000000 + seq AS round_id,
    10001 + ((78000000 + seq) % 5000) AS ad_id,
    1 + ((78000000 + seq) % 200) AS game_id,
    1 + ((78000000 + seq) % 20) AS platform_id,
    ELT(1 + ((78000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((78000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((78000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((78000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((78000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((78000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((78000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((78000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((78000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((78000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((78000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((78000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((78000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (78000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (78000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (78000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (78000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (78000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 3 DAY), INTERVAL ((78000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((79000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 3 DAY), INTERVAL ((79000000 + seq) % 86400) SECOND) AS stat_time,
    79000000 + seq AS order_id,
    1000000 + ((79000000 + seq) % 500000000) AS user_id,
    200000000 + 79000000 + seq AS round_id,
    10001 + ((79000000 + seq) % 5000) AS ad_id,
    1 + ((79000000 + seq) % 200) AS game_id,
    1 + ((79000000 + seq) % 20) AS platform_id,
    ELT(1 + ((79000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((79000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((79000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((79000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((79000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((79000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((79000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((79000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((79000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((79000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((79000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((79000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((79000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (79000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (79000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (79000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (79000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (79000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 3 DAY), INTERVAL ((79000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

