USE bench_columnar_perf_xlarge;
USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((120000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 6 DAY), INTERVAL ((120000000 + seq) % 86400) SECOND) AS stat_time,
    120000000 + seq AS order_id,
    1000000 + ((120000000 + seq) % 500000000) AS user_id,
    200000000 + 120000000 + seq AS round_id,
    10001 + ((120000000 + seq) % 5000) AS ad_id,
    1 + ((120000000 + seq) % 200) AS game_id,
    1 + ((120000000 + seq) % 20) AS platform_id,
    ELT(1 + ((120000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((120000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((120000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((120000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((120000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((120000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((120000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((120000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((120000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((120000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((120000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((120000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((120000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (120000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (120000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (120000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (120000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (120000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 6 DAY), INTERVAL ((120000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((121000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 6 DAY), INTERVAL ((121000000 + seq) % 86400) SECOND) AS stat_time,
    121000000 + seq AS order_id,
    1000000 + ((121000000 + seq) % 500000000) AS user_id,
    200000000 + 121000000 + seq AS round_id,
    10001 + ((121000000 + seq) % 5000) AS ad_id,
    1 + ((121000000 + seq) % 200) AS game_id,
    1 + ((121000000 + seq) % 20) AS platform_id,
    ELT(1 + ((121000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((121000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((121000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((121000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((121000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((121000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((121000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((121000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((121000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((121000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((121000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((121000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((121000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (121000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (121000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (121000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (121000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (121000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 6 DAY), INTERVAL ((121000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((122000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 6 DAY), INTERVAL ((122000000 + seq) % 86400) SECOND) AS stat_time,
    122000000 + seq AS order_id,
    1000000 + ((122000000 + seq) % 500000000) AS user_id,
    200000000 + 122000000 + seq AS round_id,
    10001 + ((122000000 + seq) % 5000) AS ad_id,
    1 + ((122000000 + seq) % 200) AS game_id,
    1 + ((122000000 + seq) % 20) AS platform_id,
    ELT(1 + ((122000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((122000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((122000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((122000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((122000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((122000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((122000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((122000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((122000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((122000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((122000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((122000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((122000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (122000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (122000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (122000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (122000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (122000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 6 DAY), INTERVAL ((122000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((123000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 6 DAY), INTERVAL ((123000000 + seq) % 86400) SECOND) AS stat_time,
    123000000 + seq AS order_id,
    1000000 + ((123000000 + seq) % 500000000) AS user_id,
    200000000 + 123000000 + seq AS round_id,
    10001 + ((123000000 + seq) % 5000) AS ad_id,
    1 + ((123000000 + seq) % 200) AS game_id,
    1 + ((123000000 + seq) % 20) AS platform_id,
    ELT(1 + ((123000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((123000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((123000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((123000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((123000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((123000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((123000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((123000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((123000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((123000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((123000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((123000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((123000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (123000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (123000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (123000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (123000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (123000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 6 DAY), INTERVAL ((123000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((124000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 6 DAY), INTERVAL ((124000000 + seq) % 86400) SECOND) AS stat_time,
    124000000 + seq AS order_id,
    1000000 + ((124000000 + seq) % 500000000) AS user_id,
    200000000 + 124000000 + seq AS round_id,
    10001 + ((124000000 + seq) % 5000) AS ad_id,
    1 + ((124000000 + seq) % 200) AS game_id,
    1 + ((124000000 + seq) % 20) AS platform_id,
    ELT(1 + ((124000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((124000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((124000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((124000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((124000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((124000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((124000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((124000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((124000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((124000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((124000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((124000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((124000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (124000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (124000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (124000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (124000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (124000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 6 DAY), INTERVAL ((124000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((125000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 6 DAY), INTERVAL ((125000000 + seq) % 86400) SECOND) AS stat_time,
    125000000 + seq AS order_id,
    1000000 + ((125000000 + seq) % 500000000) AS user_id,
    200000000 + 125000000 + seq AS round_id,
    10001 + ((125000000 + seq) % 5000) AS ad_id,
    1 + ((125000000 + seq) % 200) AS game_id,
    1 + ((125000000 + seq) % 20) AS platform_id,
    ELT(1 + ((125000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((125000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((125000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((125000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((125000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((125000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((125000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((125000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((125000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((125000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((125000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((125000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((125000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (125000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (125000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (125000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (125000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (125000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 6 DAY), INTERVAL ((125000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((126000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 6 DAY), INTERVAL ((126000000 + seq) % 86400) SECOND) AS stat_time,
    126000000 + seq AS order_id,
    1000000 + ((126000000 + seq) % 500000000) AS user_id,
    200000000 + 126000000 + seq AS round_id,
    10001 + ((126000000 + seq) % 5000) AS ad_id,
    1 + ((126000000 + seq) % 200) AS game_id,
    1 + ((126000000 + seq) % 20) AS platform_id,
    ELT(1 + ((126000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((126000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((126000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((126000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((126000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((126000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((126000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((126000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((126000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((126000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((126000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((126000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((126000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (126000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (126000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (126000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (126000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (126000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 6 DAY), INTERVAL ((126000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((127000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 6 DAY), INTERVAL ((127000000 + seq) % 86400) SECOND) AS stat_time,
    127000000 + seq AS order_id,
    1000000 + ((127000000 + seq) % 500000000) AS user_id,
    200000000 + 127000000 + seq AS round_id,
    10001 + ((127000000 + seq) % 5000) AS ad_id,
    1 + ((127000000 + seq) % 200) AS game_id,
    1 + ((127000000 + seq) % 20) AS platform_id,
    ELT(1 + ((127000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((127000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((127000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((127000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((127000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((127000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((127000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((127000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((127000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((127000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((127000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((127000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((127000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (127000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (127000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (127000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (127000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (127000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 6 DAY), INTERVAL ((127000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((128000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 6 DAY), INTERVAL ((128000000 + seq) % 86400) SECOND) AS stat_time,
    128000000 + seq AS order_id,
    1000000 + ((128000000 + seq) % 500000000) AS user_id,
    200000000 + 128000000 + seq AS round_id,
    10001 + ((128000000 + seq) % 5000) AS ad_id,
    1 + ((128000000 + seq) % 200) AS game_id,
    1 + ((128000000 + seq) % 20) AS platform_id,
    ELT(1 + ((128000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((128000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((128000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((128000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((128000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((128000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((128000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((128000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((128000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((128000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((128000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((128000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((128000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (128000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (128000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (128000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (128000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (128000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 6 DAY), INTERVAL ((128000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((129000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 6 DAY), INTERVAL ((129000000 + seq) % 86400) SECOND) AS stat_time,
    129000000 + seq AS order_id,
    1000000 + ((129000000 + seq) % 500000000) AS user_id,
    200000000 + 129000000 + seq AS round_id,
    10001 + ((129000000 + seq) % 5000) AS ad_id,
    1 + ((129000000 + seq) % 200) AS game_id,
    1 + ((129000000 + seq) % 20) AS platform_id,
    ELT(1 + ((129000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((129000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((129000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((129000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((129000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((129000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((129000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((129000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((129000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((129000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((129000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((129000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((129000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (129000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (129000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (129000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (129000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (129000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 6 DAY), INTERVAL ((129000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((130000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 6 DAY), INTERVAL ((130000000 + seq) % 86400) SECOND) AS stat_time,
    130000000 + seq AS order_id,
    1000000 + ((130000000 + seq) % 500000000) AS user_id,
    200000000 + 130000000 + seq AS round_id,
    10001 + ((130000000 + seq) % 5000) AS ad_id,
    1 + ((130000000 + seq) % 200) AS game_id,
    1 + ((130000000 + seq) % 20) AS platform_id,
    ELT(1 + ((130000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((130000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((130000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((130000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((130000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((130000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((130000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((130000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((130000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((130000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((130000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((130000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((130000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (130000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (130000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (130000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (130000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (130000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 6 DAY), INTERVAL ((130000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((131000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 6 DAY), INTERVAL ((131000000 + seq) % 86400) SECOND) AS stat_time,
    131000000 + seq AS order_id,
    1000000 + ((131000000 + seq) % 500000000) AS user_id,
    200000000 + 131000000 + seq AS round_id,
    10001 + ((131000000 + seq) % 5000) AS ad_id,
    1 + ((131000000 + seq) % 200) AS game_id,
    1 + ((131000000 + seq) % 20) AS platform_id,
    ELT(1 + ((131000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((131000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((131000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((131000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((131000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((131000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((131000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((131000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((131000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((131000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((131000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((131000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((131000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (131000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (131000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (131000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (131000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (131000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 6 DAY), INTERVAL ((131000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((132000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 6 DAY), INTERVAL ((132000000 + seq) % 86400) SECOND) AS stat_time,
    132000000 + seq AS order_id,
    1000000 + ((132000000 + seq) % 500000000) AS user_id,
    200000000 + 132000000 + seq AS round_id,
    10001 + ((132000000 + seq) % 5000) AS ad_id,
    1 + ((132000000 + seq) % 200) AS game_id,
    1 + ((132000000 + seq) % 20) AS platform_id,
    ELT(1 + ((132000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((132000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((132000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((132000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((132000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((132000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((132000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((132000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((132000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((132000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((132000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((132000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((132000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (132000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (132000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (132000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (132000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (132000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 6 DAY), INTERVAL ((132000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((133000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 6 DAY), INTERVAL ((133000000 + seq) % 86400) SECOND) AS stat_time,
    133000000 + seq AS order_id,
    1000000 + ((133000000 + seq) % 500000000) AS user_id,
    200000000 + 133000000 + seq AS round_id,
    10001 + ((133000000 + seq) % 5000) AS ad_id,
    1 + ((133000000 + seq) % 200) AS game_id,
    1 + ((133000000 + seq) % 20) AS platform_id,
    ELT(1 + ((133000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((133000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((133000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((133000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((133000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((133000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((133000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((133000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((133000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((133000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((133000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((133000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((133000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (133000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (133000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (133000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (133000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (133000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 6 DAY), INTERVAL ((133000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((134000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 6 DAY), INTERVAL ((134000000 + seq) % 86400) SECOND) AS stat_time,
    134000000 + seq AS order_id,
    1000000 + ((134000000 + seq) % 500000000) AS user_id,
    200000000 + 134000000 + seq AS round_id,
    10001 + ((134000000 + seq) % 5000) AS ad_id,
    1 + ((134000000 + seq) % 200) AS game_id,
    1 + ((134000000 + seq) % 20) AS platform_id,
    ELT(1 + ((134000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((134000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((134000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((134000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((134000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((134000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((134000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((134000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((134000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((134000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((134000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((134000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((134000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (134000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (134000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (134000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (134000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (134000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 6 DAY), INTERVAL ((134000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((135000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 6 DAY), INTERVAL ((135000000 + seq) % 86400) SECOND) AS stat_time,
    135000000 + seq AS order_id,
    1000000 + ((135000000 + seq) % 500000000) AS user_id,
    200000000 + 135000000 + seq AS round_id,
    10001 + ((135000000 + seq) % 5000) AS ad_id,
    1 + ((135000000 + seq) % 200) AS game_id,
    1 + ((135000000 + seq) % 20) AS platform_id,
    ELT(1 + ((135000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((135000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((135000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((135000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((135000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((135000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((135000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((135000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((135000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((135000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((135000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((135000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((135000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (135000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (135000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (135000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (135000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (135000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 6 DAY), INTERVAL ((135000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((136000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 6 DAY), INTERVAL ((136000000 + seq) % 86400) SECOND) AS stat_time,
    136000000 + seq AS order_id,
    1000000 + ((136000000 + seq) % 500000000) AS user_id,
    200000000 + 136000000 + seq AS round_id,
    10001 + ((136000000 + seq) % 5000) AS ad_id,
    1 + ((136000000 + seq) % 200) AS game_id,
    1 + ((136000000 + seq) % 20) AS platform_id,
    ELT(1 + ((136000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((136000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((136000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((136000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((136000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((136000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((136000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((136000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((136000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((136000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((136000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((136000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((136000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (136000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (136000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (136000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (136000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (136000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 6 DAY), INTERVAL ((136000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((137000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 6 DAY), INTERVAL ((137000000 + seq) % 86400) SECOND) AS stat_time,
    137000000 + seq AS order_id,
    1000000 + ((137000000 + seq) % 500000000) AS user_id,
    200000000 + 137000000 + seq AS round_id,
    10001 + ((137000000 + seq) % 5000) AS ad_id,
    1 + ((137000000 + seq) % 200) AS game_id,
    1 + ((137000000 + seq) % 20) AS platform_id,
    ELT(1 + ((137000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((137000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((137000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((137000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((137000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((137000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((137000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((137000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((137000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((137000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((137000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((137000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((137000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (137000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (137000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (137000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (137000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (137000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 6 DAY), INTERVAL ((137000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((138000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 6 DAY), INTERVAL ((138000000 + seq) % 86400) SECOND) AS stat_time,
    138000000 + seq AS order_id,
    1000000 + ((138000000 + seq) % 500000000) AS user_id,
    200000000 + 138000000 + seq AS round_id,
    10001 + ((138000000 + seq) % 5000) AS ad_id,
    1 + ((138000000 + seq) % 200) AS game_id,
    1 + ((138000000 + seq) % 20) AS platform_id,
    ELT(1 + ((138000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((138000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((138000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((138000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((138000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((138000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((138000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((138000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((138000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((138000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((138000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((138000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((138000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (138000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (138000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (138000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (138000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (138000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 6 DAY), INTERVAL ((138000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((139000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 6 DAY), INTERVAL ((139000000 + seq) % 86400) SECOND) AS stat_time,
    139000000 + seq AS order_id,
    1000000 + ((139000000 + seq) % 500000000) AS user_id,
    200000000 + 139000000 + seq AS round_id,
    10001 + ((139000000 + seq) % 5000) AS ad_id,
    1 + ((139000000 + seq) % 200) AS game_id,
    1 + ((139000000 + seq) % 20) AS platform_id,
    ELT(1 + ((139000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((139000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((139000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((139000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((139000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((139000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((139000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((139000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((139000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((139000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((139000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((139000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((139000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (139000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (139000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (139000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (139000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (139000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 6 DAY), INTERVAL ((139000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

