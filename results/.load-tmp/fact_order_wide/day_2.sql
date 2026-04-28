USE bench_columnar_perf_xlarge;
USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((40000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 2 DAY), INTERVAL ((40000000 + seq) % 86400) SECOND) AS stat_time,
    40000000 + seq AS order_id,
    1000000 + ((40000000 + seq) % 500000000) AS user_id,
    200000000 + 40000000 + seq AS round_id,
    10001 + ((40000000 + seq) % 5000) AS ad_id,
    1 + ((40000000 + seq) % 200) AS game_id,
    1 + ((40000000 + seq) % 20) AS platform_id,
    ELT(1 + ((40000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((40000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((40000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((40000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((40000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((40000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((40000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((40000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((40000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((40000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((40000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((40000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((40000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (40000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (40000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (40000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (40000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (40000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 2 DAY), INTERVAL ((40000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((41000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 2 DAY), INTERVAL ((41000000 + seq) % 86400) SECOND) AS stat_time,
    41000000 + seq AS order_id,
    1000000 + ((41000000 + seq) % 500000000) AS user_id,
    200000000 + 41000000 + seq AS round_id,
    10001 + ((41000000 + seq) % 5000) AS ad_id,
    1 + ((41000000 + seq) % 200) AS game_id,
    1 + ((41000000 + seq) % 20) AS platform_id,
    ELT(1 + ((41000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((41000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((41000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((41000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((41000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((41000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((41000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((41000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((41000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((41000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((41000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((41000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((41000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (41000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (41000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (41000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (41000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (41000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 2 DAY), INTERVAL ((41000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((42000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 2 DAY), INTERVAL ((42000000 + seq) % 86400) SECOND) AS stat_time,
    42000000 + seq AS order_id,
    1000000 + ((42000000 + seq) % 500000000) AS user_id,
    200000000 + 42000000 + seq AS round_id,
    10001 + ((42000000 + seq) % 5000) AS ad_id,
    1 + ((42000000 + seq) % 200) AS game_id,
    1 + ((42000000 + seq) % 20) AS platform_id,
    ELT(1 + ((42000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((42000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((42000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((42000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((42000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((42000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((42000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((42000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((42000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((42000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((42000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((42000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((42000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (42000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (42000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (42000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (42000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (42000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 2 DAY), INTERVAL ((42000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((43000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 2 DAY), INTERVAL ((43000000 + seq) % 86400) SECOND) AS stat_time,
    43000000 + seq AS order_id,
    1000000 + ((43000000 + seq) % 500000000) AS user_id,
    200000000 + 43000000 + seq AS round_id,
    10001 + ((43000000 + seq) % 5000) AS ad_id,
    1 + ((43000000 + seq) % 200) AS game_id,
    1 + ((43000000 + seq) % 20) AS platform_id,
    ELT(1 + ((43000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((43000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((43000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((43000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((43000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((43000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((43000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((43000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((43000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((43000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((43000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((43000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((43000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (43000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (43000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (43000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (43000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (43000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 2 DAY), INTERVAL ((43000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((44000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 2 DAY), INTERVAL ((44000000 + seq) % 86400) SECOND) AS stat_time,
    44000000 + seq AS order_id,
    1000000 + ((44000000 + seq) % 500000000) AS user_id,
    200000000 + 44000000 + seq AS round_id,
    10001 + ((44000000 + seq) % 5000) AS ad_id,
    1 + ((44000000 + seq) % 200) AS game_id,
    1 + ((44000000 + seq) % 20) AS platform_id,
    ELT(1 + ((44000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((44000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((44000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((44000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((44000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((44000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((44000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((44000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((44000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((44000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((44000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((44000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((44000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (44000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (44000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (44000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (44000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (44000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 2 DAY), INTERVAL ((44000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((45000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 2 DAY), INTERVAL ((45000000 + seq) % 86400) SECOND) AS stat_time,
    45000000 + seq AS order_id,
    1000000 + ((45000000 + seq) % 500000000) AS user_id,
    200000000 + 45000000 + seq AS round_id,
    10001 + ((45000000 + seq) % 5000) AS ad_id,
    1 + ((45000000 + seq) % 200) AS game_id,
    1 + ((45000000 + seq) % 20) AS platform_id,
    ELT(1 + ((45000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((45000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((45000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((45000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((45000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((45000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((45000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((45000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((45000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((45000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((45000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((45000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((45000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (45000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (45000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (45000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (45000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (45000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 2 DAY), INTERVAL ((45000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((46000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 2 DAY), INTERVAL ((46000000 + seq) % 86400) SECOND) AS stat_time,
    46000000 + seq AS order_id,
    1000000 + ((46000000 + seq) % 500000000) AS user_id,
    200000000 + 46000000 + seq AS round_id,
    10001 + ((46000000 + seq) % 5000) AS ad_id,
    1 + ((46000000 + seq) % 200) AS game_id,
    1 + ((46000000 + seq) % 20) AS platform_id,
    ELT(1 + ((46000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((46000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((46000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((46000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((46000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((46000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((46000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((46000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((46000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((46000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((46000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((46000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((46000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (46000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (46000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (46000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (46000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (46000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 2 DAY), INTERVAL ((46000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((47000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 2 DAY), INTERVAL ((47000000 + seq) % 86400) SECOND) AS stat_time,
    47000000 + seq AS order_id,
    1000000 + ((47000000 + seq) % 500000000) AS user_id,
    200000000 + 47000000 + seq AS round_id,
    10001 + ((47000000 + seq) % 5000) AS ad_id,
    1 + ((47000000 + seq) % 200) AS game_id,
    1 + ((47000000 + seq) % 20) AS platform_id,
    ELT(1 + ((47000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((47000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((47000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((47000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((47000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((47000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((47000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((47000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((47000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((47000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((47000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((47000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((47000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (47000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (47000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (47000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (47000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (47000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 2 DAY), INTERVAL ((47000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((48000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 2 DAY), INTERVAL ((48000000 + seq) % 86400) SECOND) AS stat_time,
    48000000 + seq AS order_id,
    1000000 + ((48000000 + seq) % 500000000) AS user_id,
    200000000 + 48000000 + seq AS round_id,
    10001 + ((48000000 + seq) % 5000) AS ad_id,
    1 + ((48000000 + seq) % 200) AS game_id,
    1 + ((48000000 + seq) % 20) AS platform_id,
    ELT(1 + ((48000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((48000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((48000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((48000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((48000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((48000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((48000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((48000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((48000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((48000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((48000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((48000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((48000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (48000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (48000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (48000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (48000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (48000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 2 DAY), INTERVAL ((48000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((49000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 2 DAY), INTERVAL ((49000000 + seq) % 86400) SECOND) AS stat_time,
    49000000 + seq AS order_id,
    1000000 + ((49000000 + seq) % 500000000) AS user_id,
    200000000 + 49000000 + seq AS round_id,
    10001 + ((49000000 + seq) % 5000) AS ad_id,
    1 + ((49000000 + seq) % 200) AS game_id,
    1 + ((49000000 + seq) % 20) AS platform_id,
    ELT(1 + ((49000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((49000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((49000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((49000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((49000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((49000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((49000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((49000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((49000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((49000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((49000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((49000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((49000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (49000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (49000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (49000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (49000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (49000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 2 DAY), INTERVAL ((49000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((50000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 2 DAY), INTERVAL ((50000000 + seq) % 86400) SECOND) AS stat_time,
    50000000 + seq AS order_id,
    1000000 + ((50000000 + seq) % 500000000) AS user_id,
    200000000 + 50000000 + seq AS round_id,
    10001 + ((50000000 + seq) % 5000) AS ad_id,
    1 + ((50000000 + seq) % 200) AS game_id,
    1 + ((50000000 + seq) % 20) AS platform_id,
    ELT(1 + ((50000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((50000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((50000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((50000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((50000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((50000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((50000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((50000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((50000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((50000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((50000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((50000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((50000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (50000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (50000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (50000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (50000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (50000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 2 DAY), INTERVAL ((50000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((51000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 2 DAY), INTERVAL ((51000000 + seq) % 86400) SECOND) AS stat_time,
    51000000 + seq AS order_id,
    1000000 + ((51000000 + seq) % 500000000) AS user_id,
    200000000 + 51000000 + seq AS round_id,
    10001 + ((51000000 + seq) % 5000) AS ad_id,
    1 + ((51000000 + seq) % 200) AS game_id,
    1 + ((51000000 + seq) % 20) AS platform_id,
    ELT(1 + ((51000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((51000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((51000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((51000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((51000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((51000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((51000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((51000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((51000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((51000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((51000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((51000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((51000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (51000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (51000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (51000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (51000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (51000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 2 DAY), INTERVAL ((51000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((52000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 2 DAY), INTERVAL ((52000000 + seq) % 86400) SECOND) AS stat_time,
    52000000 + seq AS order_id,
    1000000 + ((52000000 + seq) % 500000000) AS user_id,
    200000000 + 52000000 + seq AS round_id,
    10001 + ((52000000 + seq) % 5000) AS ad_id,
    1 + ((52000000 + seq) % 200) AS game_id,
    1 + ((52000000 + seq) % 20) AS platform_id,
    ELT(1 + ((52000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((52000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((52000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((52000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((52000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((52000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((52000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((52000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((52000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((52000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((52000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((52000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((52000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (52000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (52000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (52000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (52000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (52000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 2 DAY), INTERVAL ((52000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((53000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 2 DAY), INTERVAL ((53000000 + seq) % 86400) SECOND) AS stat_time,
    53000000 + seq AS order_id,
    1000000 + ((53000000 + seq) % 500000000) AS user_id,
    200000000 + 53000000 + seq AS round_id,
    10001 + ((53000000 + seq) % 5000) AS ad_id,
    1 + ((53000000 + seq) % 200) AS game_id,
    1 + ((53000000 + seq) % 20) AS platform_id,
    ELT(1 + ((53000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((53000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((53000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((53000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((53000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((53000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((53000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((53000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((53000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((53000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((53000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((53000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((53000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (53000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (53000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (53000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (53000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (53000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 2 DAY), INTERVAL ((53000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((54000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 2 DAY), INTERVAL ((54000000 + seq) % 86400) SECOND) AS stat_time,
    54000000 + seq AS order_id,
    1000000 + ((54000000 + seq) % 500000000) AS user_id,
    200000000 + 54000000 + seq AS round_id,
    10001 + ((54000000 + seq) % 5000) AS ad_id,
    1 + ((54000000 + seq) % 200) AS game_id,
    1 + ((54000000 + seq) % 20) AS platform_id,
    ELT(1 + ((54000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((54000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((54000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((54000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((54000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((54000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((54000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((54000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((54000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((54000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((54000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((54000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((54000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (54000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (54000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (54000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (54000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (54000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 2 DAY), INTERVAL ((54000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((55000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 2 DAY), INTERVAL ((55000000 + seq) % 86400) SECOND) AS stat_time,
    55000000 + seq AS order_id,
    1000000 + ((55000000 + seq) % 500000000) AS user_id,
    200000000 + 55000000 + seq AS round_id,
    10001 + ((55000000 + seq) % 5000) AS ad_id,
    1 + ((55000000 + seq) % 200) AS game_id,
    1 + ((55000000 + seq) % 20) AS platform_id,
    ELT(1 + ((55000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((55000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((55000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((55000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((55000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((55000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((55000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((55000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((55000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((55000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((55000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((55000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((55000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (55000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (55000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (55000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (55000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (55000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 2 DAY), INTERVAL ((55000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((56000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 2 DAY), INTERVAL ((56000000 + seq) % 86400) SECOND) AS stat_time,
    56000000 + seq AS order_id,
    1000000 + ((56000000 + seq) % 500000000) AS user_id,
    200000000 + 56000000 + seq AS round_id,
    10001 + ((56000000 + seq) % 5000) AS ad_id,
    1 + ((56000000 + seq) % 200) AS game_id,
    1 + ((56000000 + seq) % 20) AS platform_id,
    ELT(1 + ((56000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((56000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((56000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((56000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((56000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((56000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((56000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((56000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((56000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((56000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((56000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((56000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((56000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (56000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (56000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (56000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (56000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (56000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 2 DAY), INTERVAL ((56000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((57000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 2 DAY), INTERVAL ((57000000 + seq) % 86400) SECOND) AS stat_time,
    57000000 + seq AS order_id,
    1000000 + ((57000000 + seq) % 500000000) AS user_id,
    200000000 + 57000000 + seq AS round_id,
    10001 + ((57000000 + seq) % 5000) AS ad_id,
    1 + ((57000000 + seq) % 200) AS game_id,
    1 + ((57000000 + seq) % 20) AS platform_id,
    ELT(1 + ((57000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((57000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((57000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((57000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((57000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((57000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((57000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((57000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((57000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((57000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((57000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((57000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((57000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (57000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (57000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (57000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (57000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (57000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 2 DAY), INTERVAL ((57000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((58000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 2 DAY), INTERVAL ((58000000 + seq) % 86400) SECOND) AS stat_time,
    58000000 + seq AS order_id,
    1000000 + ((58000000 + seq) % 500000000) AS user_id,
    200000000 + 58000000 + seq AS round_id,
    10001 + ((58000000 + seq) % 5000) AS ad_id,
    1 + ((58000000 + seq) % 200) AS game_id,
    1 + ((58000000 + seq) % 20) AS platform_id,
    ELT(1 + ((58000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((58000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((58000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((58000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((58000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((58000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((58000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((58000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((58000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((58000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((58000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((58000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((58000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (58000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (58000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (58000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (58000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (58000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 2 DAY), INTERVAL ((58000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((59000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 2 DAY), INTERVAL ((59000000 + seq) % 86400) SECOND) AS stat_time,
    59000000 + seq AS order_id,
    1000000 + ((59000000 + seq) % 500000000) AS user_id,
    200000000 + 59000000 + seq AS round_id,
    10001 + ((59000000 + seq) % 5000) AS ad_id,
    1 + ((59000000 + seq) % 200) AS game_id,
    1 + ((59000000 + seq) % 20) AS platform_id,
    ELT(1 + ((59000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((59000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((59000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((59000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((59000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((59000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((59000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((59000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((59000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((59000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((59000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((59000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((59000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (59000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (59000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (59000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (59000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (59000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 2 DAY), INTERVAL ((59000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

