USE bench_columnar_perf_xlarge;
USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((140000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 7 DAY), INTERVAL ((140000000 + seq) % 86400) SECOND) AS stat_time,
    140000000 + seq AS order_id,
    1000000 + ((140000000 + seq) % 500000000) AS user_id,
    200000000 + 140000000 + seq AS round_id,
    10001 + ((140000000 + seq) % 5000) AS ad_id,
    1 + ((140000000 + seq) % 200) AS game_id,
    1 + ((140000000 + seq) % 20) AS platform_id,
    ELT(1 + ((140000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((140000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((140000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((140000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((140000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((140000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((140000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((140000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((140000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((140000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((140000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((140000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((140000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (140000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (140000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (140000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (140000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (140000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 7 DAY), INTERVAL ((140000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((141000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 7 DAY), INTERVAL ((141000000 + seq) % 86400) SECOND) AS stat_time,
    141000000 + seq AS order_id,
    1000000 + ((141000000 + seq) % 500000000) AS user_id,
    200000000 + 141000000 + seq AS round_id,
    10001 + ((141000000 + seq) % 5000) AS ad_id,
    1 + ((141000000 + seq) % 200) AS game_id,
    1 + ((141000000 + seq) % 20) AS platform_id,
    ELT(1 + ((141000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((141000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((141000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((141000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((141000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((141000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((141000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((141000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((141000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((141000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((141000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((141000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((141000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (141000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (141000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (141000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (141000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (141000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 7 DAY), INTERVAL ((141000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((142000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 7 DAY), INTERVAL ((142000000 + seq) % 86400) SECOND) AS stat_time,
    142000000 + seq AS order_id,
    1000000 + ((142000000 + seq) % 500000000) AS user_id,
    200000000 + 142000000 + seq AS round_id,
    10001 + ((142000000 + seq) % 5000) AS ad_id,
    1 + ((142000000 + seq) % 200) AS game_id,
    1 + ((142000000 + seq) % 20) AS platform_id,
    ELT(1 + ((142000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((142000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((142000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((142000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((142000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((142000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((142000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((142000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((142000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((142000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((142000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((142000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((142000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (142000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (142000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (142000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (142000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (142000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 7 DAY), INTERVAL ((142000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((143000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 7 DAY), INTERVAL ((143000000 + seq) % 86400) SECOND) AS stat_time,
    143000000 + seq AS order_id,
    1000000 + ((143000000 + seq) % 500000000) AS user_id,
    200000000 + 143000000 + seq AS round_id,
    10001 + ((143000000 + seq) % 5000) AS ad_id,
    1 + ((143000000 + seq) % 200) AS game_id,
    1 + ((143000000 + seq) % 20) AS platform_id,
    ELT(1 + ((143000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((143000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((143000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((143000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((143000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((143000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((143000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((143000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((143000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((143000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((143000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((143000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((143000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (143000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (143000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (143000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (143000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (143000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 7 DAY), INTERVAL ((143000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((144000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 7 DAY), INTERVAL ((144000000 + seq) % 86400) SECOND) AS stat_time,
    144000000 + seq AS order_id,
    1000000 + ((144000000 + seq) % 500000000) AS user_id,
    200000000 + 144000000 + seq AS round_id,
    10001 + ((144000000 + seq) % 5000) AS ad_id,
    1 + ((144000000 + seq) % 200) AS game_id,
    1 + ((144000000 + seq) % 20) AS platform_id,
    ELT(1 + ((144000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((144000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((144000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((144000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((144000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((144000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((144000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((144000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((144000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((144000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((144000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((144000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((144000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (144000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (144000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (144000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (144000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (144000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 7 DAY), INTERVAL ((144000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((145000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 7 DAY), INTERVAL ((145000000 + seq) % 86400) SECOND) AS stat_time,
    145000000 + seq AS order_id,
    1000000 + ((145000000 + seq) % 500000000) AS user_id,
    200000000 + 145000000 + seq AS round_id,
    10001 + ((145000000 + seq) % 5000) AS ad_id,
    1 + ((145000000 + seq) % 200) AS game_id,
    1 + ((145000000 + seq) % 20) AS platform_id,
    ELT(1 + ((145000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((145000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((145000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((145000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((145000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((145000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((145000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((145000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((145000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((145000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((145000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((145000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((145000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (145000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (145000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (145000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (145000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (145000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 7 DAY), INTERVAL ((145000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((146000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 7 DAY), INTERVAL ((146000000 + seq) % 86400) SECOND) AS stat_time,
    146000000 + seq AS order_id,
    1000000 + ((146000000 + seq) % 500000000) AS user_id,
    200000000 + 146000000 + seq AS round_id,
    10001 + ((146000000 + seq) % 5000) AS ad_id,
    1 + ((146000000 + seq) % 200) AS game_id,
    1 + ((146000000 + seq) % 20) AS platform_id,
    ELT(1 + ((146000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((146000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((146000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((146000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((146000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((146000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((146000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((146000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((146000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((146000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((146000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((146000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((146000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (146000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (146000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (146000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (146000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (146000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 7 DAY), INTERVAL ((146000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((147000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 7 DAY), INTERVAL ((147000000 + seq) % 86400) SECOND) AS stat_time,
    147000000 + seq AS order_id,
    1000000 + ((147000000 + seq) % 500000000) AS user_id,
    200000000 + 147000000 + seq AS round_id,
    10001 + ((147000000 + seq) % 5000) AS ad_id,
    1 + ((147000000 + seq) % 200) AS game_id,
    1 + ((147000000 + seq) % 20) AS platform_id,
    ELT(1 + ((147000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((147000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((147000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((147000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((147000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((147000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((147000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((147000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((147000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((147000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((147000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((147000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((147000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (147000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (147000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (147000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (147000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (147000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 7 DAY), INTERVAL ((147000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((148000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 7 DAY), INTERVAL ((148000000 + seq) % 86400) SECOND) AS stat_time,
    148000000 + seq AS order_id,
    1000000 + ((148000000 + seq) % 500000000) AS user_id,
    200000000 + 148000000 + seq AS round_id,
    10001 + ((148000000 + seq) % 5000) AS ad_id,
    1 + ((148000000 + seq) % 200) AS game_id,
    1 + ((148000000 + seq) % 20) AS platform_id,
    ELT(1 + ((148000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((148000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((148000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((148000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((148000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((148000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((148000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((148000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((148000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((148000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((148000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((148000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((148000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (148000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (148000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (148000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (148000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (148000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 7 DAY), INTERVAL ((148000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((149000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 7 DAY), INTERVAL ((149000000 + seq) % 86400) SECOND) AS stat_time,
    149000000 + seq AS order_id,
    1000000 + ((149000000 + seq) % 500000000) AS user_id,
    200000000 + 149000000 + seq AS round_id,
    10001 + ((149000000 + seq) % 5000) AS ad_id,
    1 + ((149000000 + seq) % 200) AS game_id,
    1 + ((149000000 + seq) % 20) AS platform_id,
    ELT(1 + ((149000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((149000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((149000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((149000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((149000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((149000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((149000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((149000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((149000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((149000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((149000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((149000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((149000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (149000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (149000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (149000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (149000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (149000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 7 DAY), INTERVAL ((149000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((150000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 7 DAY), INTERVAL ((150000000 + seq) % 86400) SECOND) AS stat_time,
    150000000 + seq AS order_id,
    1000000 + ((150000000 + seq) % 500000000) AS user_id,
    200000000 + 150000000 + seq AS round_id,
    10001 + ((150000000 + seq) % 5000) AS ad_id,
    1 + ((150000000 + seq) % 200) AS game_id,
    1 + ((150000000 + seq) % 20) AS platform_id,
    ELT(1 + ((150000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((150000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((150000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((150000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((150000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((150000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((150000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((150000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((150000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((150000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((150000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((150000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((150000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (150000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (150000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (150000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (150000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (150000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 7 DAY), INTERVAL ((150000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((151000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 7 DAY), INTERVAL ((151000000 + seq) % 86400) SECOND) AS stat_time,
    151000000 + seq AS order_id,
    1000000 + ((151000000 + seq) % 500000000) AS user_id,
    200000000 + 151000000 + seq AS round_id,
    10001 + ((151000000 + seq) % 5000) AS ad_id,
    1 + ((151000000 + seq) % 200) AS game_id,
    1 + ((151000000 + seq) % 20) AS platform_id,
    ELT(1 + ((151000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((151000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((151000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((151000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((151000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((151000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((151000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((151000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((151000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((151000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((151000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((151000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((151000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (151000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (151000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (151000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (151000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (151000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 7 DAY), INTERVAL ((151000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((152000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 7 DAY), INTERVAL ((152000000 + seq) % 86400) SECOND) AS stat_time,
    152000000 + seq AS order_id,
    1000000 + ((152000000 + seq) % 500000000) AS user_id,
    200000000 + 152000000 + seq AS round_id,
    10001 + ((152000000 + seq) % 5000) AS ad_id,
    1 + ((152000000 + seq) % 200) AS game_id,
    1 + ((152000000 + seq) % 20) AS platform_id,
    ELT(1 + ((152000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((152000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((152000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((152000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((152000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((152000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((152000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((152000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((152000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((152000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((152000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((152000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((152000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (152000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (152000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (152000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (152000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (152000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 7 DAY), INTERVAL ((152000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((153000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 7 DAY), INTERVAL ((153000000 + seq) % 86400) SECOND) AS stat_time,
    153000000 + seq AS order_id,
    1000000 + ((153000000 + seq) % 500000000) AS user_id,
    200000000 + 153000000 + seq AS round_id,
    10001 + ((153000000 + seq) % 5000) AS ad_id,
    1 + ((153000000 + seq) % 200) AS game_id,
    1 + ((153000000 + seq) % 20) AS platform_id,
    ELT(1 + ((153000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((153000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((153000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((153000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((153000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((153000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((153000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((153000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((153000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((153000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((153000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((153000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((153000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (153000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (153000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (153000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (153000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (153000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 7 DAY), INTERVAL ((153000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((154000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 7 DAY), INTERVAL ((154000000 + seq) % 86400) SECOND) AS stat_time,
    154000000 + seq AS order_id,
    1000000 + ((154000000 + seq) % 500000000) AS user_id,
    200000000 + 154000000 + seq AS round_id,
    10001 + ((154000000 + seq) % 5000) AS ad_id,
    1 + ((154000000 + seq) % 200) AS game_id,
    1 + ((154000000 + seq) % 20) AS platform_id,
    ELT(1 + ((154000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((154000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((154000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((154000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((154000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((154000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((154000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((154000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((154000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((154000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((154000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((154000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((154000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (154000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (154000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (154000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (154000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (154000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 7 DAY), INTERVAL ((154000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((155000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 7 DAY), INTERVAL ((155000000 + seq) % 86400) SECOND) AS stat_time,
    155000000 + seq AS order_id,
    1000000 + ((155000000 + seq) % 500000000) AS user_id,
    200000000 + 155000000 + seq AS round_id,
    10001 + ((155000000 + seq) % 5000) AS ad_id,
    1 + ((155000000 + seq) % 200) AS game_id,
    1 + ((155000000 + seq) % 20) AS platform_id,
    ELT(1 + ((155000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((155000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((155000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((155000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((155000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((155000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((155000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((155000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((155000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((155000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((155000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((155000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((155000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (155000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (155000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (155000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (155000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (155000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 7 DAY), INTERVAL ((155000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((156000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 7 DAY), INTERVAL ((156000000 + seq) % 86400) SECOND) AS stat_time,
    156000000 + seq AS order_id,
    1000000 + ((156000000 + seq) % 500000000) AS user_id,
    200000000 + 156000000 + seq AS round_id,
    10001 + ((156000000 + seq) % 5000) AS ad_id,
    1 + ((156000000 + seq) % 200) AS game_id,
    1 + ((156000000 + seq) % 20) AS platform_id,
    ELT(1 + ((156000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((156000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((156000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((156000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((156000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((156000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((156000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((156000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((156000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((156000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((156000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((156000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((156000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (156000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (156000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (156000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (156000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (156000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 7 DAY), INTERVAL ((156000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((157000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 7 DAY), INTERVAL ((157000000 + seq) % 86400) SECOND) AS stat_time,
    157000000 + seq AS order_id,
    1000000 + ((157000000 + seq) % 500000000) AS user_id,
    200000000 + 157000000 + seq AS round_id,
    10001 + ((157000000 + seq) % 5000) AS ad_id,
    1 + ((157000000 + seq) % 200) AS game_id,
    1 + ((157000000 + seq) % 20) AS platform_id,
    ELT(1 + ((157000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((157000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((157000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((157000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((157000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((157000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((157000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((157000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((157000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((157000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((157000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((157000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((157000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (157000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (157000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (157000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (157000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (157000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 7 DAY), INTERVAL ((157000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((158000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 7 DAY), INTERVAL ((158000000 + seq) % 86400) SECOND) AS stat_time,
    158000000 + seq AS order_id,
    1000000 + ((158000000 + seq) % 500000000) AS user_id,
    200000000 + 158000000 + seq AS round_id,
    10001 + ((158000000 + seq) % 5000) AS ad_id,
    1 + ((158000000 + seq) % 200) AS game_id,
    1 + ((158000000 + seq) % 20) AS platform_id,
    ELT(1 + ((158000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((158000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((158000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((158000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((158000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((158000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((158000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((158000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((158000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((158000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((158000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((158000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((158000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (158000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (158000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (158000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (158000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (158000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 7 DAY), INTERVAL ((158000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((159000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 7 DAY), INTERVAL ((159000000 + seq) % 86400) SECOND) AS stat_time,
    159000000 + seq AS order_id,
    1000000 + ((159000000 + seq) % 500000000) AS user_id,
    200000000 + 159000000 + seq AS round_id,
    10001 + ((159000000 + seq) % 5000) AS ad_id,
    1 + ((159000000 + seq) % 200) AS game_id,
    1 + ((159000000 + seq) % 20) AS platform_id,
    ELT(1 + ((159000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((159000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((159000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((159000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((159000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((159000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((159000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((159000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((159000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((159000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((159000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((159000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((159000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (159000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (159000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (159000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (159000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (159000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 7 DAY), INTERVAL ((159000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

