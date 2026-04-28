USE bench_columnar_perf_xlarge;
USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((20000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 1 DAY), INTERVAL ((20000000 + seq) % 86400) SECOND) AS stat_time,
    20000000 + seq AS order_id,
    1000000 + ((20000000 + seq) % 500000000) AS user_id,
    200000000 + 20000000 + seq AS round_id,
    10001 + ((20000000 + seq) % 5000) AS ad_id,
    1 + ((20000000 + seq) % 200) AS game_id,
    1 + ((20000000 + seq) % 20) AS platform_id,
    ELT(1 + ((20000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((20000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((20000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((20000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((20000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((20000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((20000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((20000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((20000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((20000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((20000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((20000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((20000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (20000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (20000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (20000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (20000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (20000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 1 DAY), INTERVAL ((20000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((21000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 1 DAY), INTERVAL ((21000000 + seq) % 86400) SECOND) AS stat_time,
    21000000 + seq AS order_id,
    1000000 + ((21000000 + seq) % 500000000) AS user_id,
    200000000 + 21000000 + seq AS round_id,
    10001 + ((21000000 + seq) % 5000) AS ad_id,
    1 + ((21000000 + seq) % 200) AS game_id,
    1 + ((21000000 + seq) % 20) AS platform_id,
    ELT(1 + ((21000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((21000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((21000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((21000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((21000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((21000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((21000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((21000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((21000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((21000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((21000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((21000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((21000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (21000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (21000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (21000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (21000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (21000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 1 DAY), INTERVAL ((21000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((22000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 1 DAY), INTERVAL ((22000000 + seq) % 86400) SECOND) AS stat_time,
    22000000 + seq AS order_id,
    1000000 + ((22000000 + seq) % 500000000) AS user_id,
    200000000 + 22000000 + seq AS round_id,
    10001 + ((22000000 + seq) % 5000) AS ad_id,
    1 + ((22000000 + seq) % 200) AS game_id,
    1 + ((22000000 + seq) % 20) AS platform_id,
    ELT(1 + ((22000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((22000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((22000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((22000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((22000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((22000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((22000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((22000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((22000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((22000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((22000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((22000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((22000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (22000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (22000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (22000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (22000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (22000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 1 DAY), INTERVAL ((22000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((23000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 1 DAY), INTERVAL ((23000000 + seq) % 86400) SECOND) AS stat_time,
    23000000 + seq AS order_id,
    1000000 + ((23000000 + seq) % 500000000) AS user_id,
    200000000 + 23000000 + seq AS round_id,
    10001 + ((23000000 + seq) % 5000) AS ad_id,
    1 + ((23000000 + seq) % 200) AS game_id,
    1 + ((23000000 + seq) % 20) AS platform_id,
    ELT(1 + ((23000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((23000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((23000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((23000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((23000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((23000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((23000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((23000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((23000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((23000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((23000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((23000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((23000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (23000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (23000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (23000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (23000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (23000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 1 DAY), INTERVAL ((23000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((24000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 1 DAY), INTERVAL ((24000000 + seq) % 86400) SECOND) AS stat_time,
    24000000 + seq AS order_id,
    1000000 + ((24000000 + seq) % 500000000) AS user_id,
    200000000 + 24000000 + seq AS round_id,
    10001 + ((24000000 + seq) % 5000) AS ad_id,
    1 + ((24000000 + seq) % 200) AS game_id,
    1 + ((24000000 + seq) % 20) AS platform_id,
    ELT(1 + ((24000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((24000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((24000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((24000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((24000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((24000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((24000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((24000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((24000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((24000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((24000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((24000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((24000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (24000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (24000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (24000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (24000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (24000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 1 DAY), INTERVAL ((24000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((25000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 1 DAY), INTERVAL ((25000000 + seq) % 86400) SECOND) AS stat_time,
    25000000 + seq AS order_id,
    1000000 + ((25000000 + seq) % 500000000) AS user_id,
    200000000 + 25000000 + seq AS round_id,
    10001 + ((25000000 + seq) % 5000) AS ad_id,
    1 + ((25000000 + seq) % 200) AS game_id,
    1 + ((25000000 + seq) % 20) AS platform_id,
    ELT(1 + ((25000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((25000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((25000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((25000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((25000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((25000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((25000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((25000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((25000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((25000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((25000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((25000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((25000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (25000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (25000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (25000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (25000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (25000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 1 DAY), INTERVAL ((25000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((26000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 1 DAY), INTERVAL ((26000000 + seq) % 86400) SECOND) AS stat_time,
    26000000 + seq AS order_id,
    1000000 + ((26000000 + seq) % 500000000) AS user_id,
    200000000 + 26000000 + seq AS round_id,
    10001 + ((26000000 + seq) % 5000) AS ad_id,
    1 + ((26000000 + seq) % 200) AS game_id,
    1 + ((26000000 + seq) % 20) AS platform_id,
    ELT(1 + ((26000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((26000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((26000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((26000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((26000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((26000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((26000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((26000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((26000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((26000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((26000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((26000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((26000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (26000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (26000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (26000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (26000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (26000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 1 DAY), INTERVAL ((26000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((27000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 1 DAY), INTERVAL ((27000000 + seq) % 86400) SECOND) AS stat_time,
    27000000 + seq AS order_id,
    1000000 + ((27000000 + seq) % 500000000) AS user_id,
    200000000 + 27000000 + seq AS round_id,
    10001 + ((27000000 + seq) % 5000) AS ad_id,
    1 + ((27000000 + seq) % 200) AS game_id,
    1 + ((27000000 + seq) % 20) AS platform_id,
    ELT(1 + ((27000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((27000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((27000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((27000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((27000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((27000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((27000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((27000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((27000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((27000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((27000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((27000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((27000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (27000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (27000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (27000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (27000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (27000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 1 DAY), INTERVAL ((27000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((28000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 1 DAY), INTERVAL ((28000000 + seq) % 86400) SECOND) AS stat_time,
    28000000 + seq AS order_id,
    1000000 + ((28000000 + seq) % 500000000) AS user_id,
    200000000 + 28000000 + seq AS round_id,
    10001 + ((28000000 + seq) % 5000) AS ad_id,
    1 + ((28000000 + seq) % 200) AS game_id,
    1 + ((28000000 + seq) % 20) AS platform_id,
    ELT(1 + ((28000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((28000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((28000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((28000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((28000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((28000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((28000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((28000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((28000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((28000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((28000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((28000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((28000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (28000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (28000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (28000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (28000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (28000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 1 DAY), INTERVAL ((28000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((29000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 1 DAY), INTERVAL ((29000000 + seq) % 86400) SECOND) AS stat_time,
    29000000 + seq AS order_id,
    1000000 + ((29000000 + seq) % 500000000) AS user_id,
    200000000 + 29000000 + seq AS round_id,
    10001 + ((29000000 + seq) % 5000) AS ad_id,
    1 + ((29000000 + seq) % 200) AS game_id,
    1 + ((29000000 + seq) % 20) AS platform_id,
    ELT(1 + ((29000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((29000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((29000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((29000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((29000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((29000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((29000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((29000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((29000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((29000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((29000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((29000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((29000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (29000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (29000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (29000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (29000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (29000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 1 DAY), INTERVAL ((29000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((30000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 1 DAY), INTERVAL ((30000000 + seq) % 86400) SECOND) AS stat_time,
    30000000 + seq AS order_id,
    1000000 + ((30000000 + seq) % 500000000) AS user_id,
    200000000 + 30000000 + seq AS round_id,
    10001 + ((30000000 + seq) % 5000) AS ad_id,
    1 + ((30000000 + seq) % 200) AS game_id,
    1 + ((30000000 + seq) % 20) AS platform_id,
    ELT(1 + ((30000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((30000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((30000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((30000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((30000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((30000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((30000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((30000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((30000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((30000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((30000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((30000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((30000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (30000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (30000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (30000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (30000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (30000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 1 DAY), INTERVAL ((30000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((31000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 1 DAY), INTERVAL ((31000000 + seq) % 86400) SECOND) AS stat_time,
    31000000 + seq AS order_id,
    1000000 + ((31000000 + seq) % 500000000) AS user_id,
    200000000 + 31000000 + seq AS round_id,
    10001 + ((31000000 + seq) % 5000) AS ad_id,
    1 + ((31000000 + seq) % 200) AS game_id,
    1 + ((31000000 + seq) % 20) AS platform_id,
    ELT(1 + ((31000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((31000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((31000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((31000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((31000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((31000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((31000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((31000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((31000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((31000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((31000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((31000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((31000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (31000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (31000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (31000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (31000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (31000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 1 DAY), INTERVAL ((31000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((32000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 1 DAY), INTERVAL ((32000000 + seq) % 86400) SECOND) AS stat_time,
    32000000 + seq AS order_id,
    1000000 + ((32000000 + seq) % 500000000) AS user_id,
    200000000 + 32000000 + seq AS round_id,
    10001 + ((32000000 + seq) % 5000) AS ad_id,
    1 + ((32000000 + seq) % 200) AS game_id,
    1 + ((32000000 + seq) % 20) AS platform_id,
    ELT(1 + ((32000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((32000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((32000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((32000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((32000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((32000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((32000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((32000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((32000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((32000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((32000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((32000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((32000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (32000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (32000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (32000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (32000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (32000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 1 DAY), INTERVAL ((32000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((33000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 1 DAY), INTERVAL ((33000000 + seq) % 86400) SECOND) AS stat_time,
    33000000 + seq AS order_id,
    1000000 + ((33000000 + seq) % 500000000) AS user_id,
    200000000 + 33000000 + seq AS round_id,
    10001 + ((33000000 + seq) % 5000) AS ad_id,
    1 + ((33000000 + seq) % 200) AS game_id,
    1 + ((33000000 + seq) % 20) AS platform_id,
    ELT(1 + ((33000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((33000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((33000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((33000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((33000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((33000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((33000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((33000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((33000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((33000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((33000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((33000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((33000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (33000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (33000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (33000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (33000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (33000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 1 DAY), INTERVAL ((33000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((34000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 1 DAY), INTERVAL ((34000000 + seq) % 86400) SECOND) AS stat_time,
    34000000 + seq AS order_id,
    1000000 + ((34000000 + seq) % 500000000) AS user_id,
    200000000 + 34000000 + seq AS round_id,
    10001 + ((34000000 + seq) % 5000) AS ad_id,
    1 + ((34000000 + seq) % 200) AS game_id,
    1 + ((34000000 + seq) % 20) AS platform_id,
    ELT(1 + ((34000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((34000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((34000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((34000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((34000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((34000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((34000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((34000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((34000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((34000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((34000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((34000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((34000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (34000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (34000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (34000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (34000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (34000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 1 DAY), INTERVAL ((34000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((35000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 1 DAY), INTERVAL ((35000000 + seq) % 86400) SECOND) AS stat_time,
    35000000 + seq AS order_id,
    1000000 + ((35000000 + seq) % 500000000) AS user_id,
    200000000 + 35000000 + seq AS round_id,
    10001 + ((35000000 + seq) % 5000) AS ad_id,
    1 + ((35000000 + seq) % 200) AS game_id,
    1 + ((35000000 + seq) % 20) AS platform_id,
    ELT(1 + ((35000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((35000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((35000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((35000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((35000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((35000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((35000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((35000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((35000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((35000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((35000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((35000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((35000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (35000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (35000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (35000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (35000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (35000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 1 DAY), INTERVAL ((35000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((36000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 1 DAY), INTERVAL ((36000000 + seq) % 86400) SECOND) AS stat_time,
    36000000 + seq AS order_id,
    1000000 + ((36000000 + seq) % 500000000) AS user_id,
    200000000 + 36000000 + seq AS round_id,
    10001 + ((36000000 + seq) % 5000) AS ad_id,
    1 + ((36000000 + seq) % 200) AS game_id,
    1 + ((36000000 + seq) % 20) AS platform_id,
    ELT(1 + ((36000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((36000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((36000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((36000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((36000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((36000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((36000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((36000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((36000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((36000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((36000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((36000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((36000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (36000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (36000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (36000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (36000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (36000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 1 DAY), INTERVAL ((36000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((37000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 1 DAY), INTERVAL ((37000000 + seq) % 86400) SECOND) AS stat_time,
    37000000 + seq AS order_id,
    1000000 + ((37000000 + seq) % 500000000) AS user_id,
    200000000 + 37000000 + seq AS round_id,
    10001 + ((37000000 + seq) % 5000) AS ad_id,
    1 + ((37000000 + seq) % 200) AS game_id,
    1 + ((37000000 + seq) % 20) AS platform_id,
    ELT(1 + ((37000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((37000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((37000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((37000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((37000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((37000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((37000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((37000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((37000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((37000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((37000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((37000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((37000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (37000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (37000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (37000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (37000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (37000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 1 DAY), INTERVAL ((37000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((38000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 1 DAY), INTERVAL ((38000000 + seq) % 86400) SECOND) AS stat_time,
    38000000 + seq AS order_id,
    1000000 + ((38000000 + seq) % 500000000) AS user_id,
    200000000 + 38000000 + seq AS round_id,
    10001 + ((38000000 + seq) % 5000) AS ad_id,
    1 + ((38000000 + seq) % 200) AS game_id,
    1 + ((38000000 + seq) % 20) AS platform_id,
    ELT(1 + ((38000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((38000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((38000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((38000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((38000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((38000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((38000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((38000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((38000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((38000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((38000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((38000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((38000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (38000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (38000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (38000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (38000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (38000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 1 DAY), INTERVAL ((38000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((39000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 1 DAY), INTERVAL ((39000000 + seq) % 86400) SECOND) AS stat_time,
    39000000 + seq AS order_id,
    1000000 + ((39000000 + seq) % 500000000) AS user_id,
    200000000 + 39000000 + seq AS round_id,
    10001 + ((39000000 + seq) % 5000) AS ad_id,
    1 + ((39000000 + seq) % 200) AS game_id,
    1 + ((39000000 + seq) % 20) AS platform_id,
    ELT(1 + ((39000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((39000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((39000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((39000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((39000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((39000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((39000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((39000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((39000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((39000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((39000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((39000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((39000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (39000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (39000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (39000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (39000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (39000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 1 DAY), INTERVAL ((39000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

