USE bench_columnar_perf_xlarge;
USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((100000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 5 DAY), INTERVAL ((100000000 + seq) % 86400) SECOND) AS stat_time,
    100000000 + seq AS order_id,
    1000000 + ((100000000 + seq) % 500000000) AS user_id,
    200000000 + 100000000 + seq AS round_id,
    10001 + ((100000000 + seq) % 5000) AS ad_id,
    1 + ((100000000 + seq) % 200) AS game_id,
    1 + ((100000000 + seq) % 20) AS platform_id,
    ELT(1 + ((100000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((100000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((100000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((100000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((100000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((100000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((100000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((100000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((100000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((100000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((100000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((100000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((100000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (100000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (100000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (100000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (100000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (100000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 5 DAY), INTERVAL ((100000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((101000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 5 DAY), INTERVAL ((101000000 + seq) % 86400) SECOND) AS stat_time,
    101000000 + seq AS order_id,
    1000000 + ((101000000 + seq) % 500000000) AS user_id,
    200000000 + 101000000 + seq AS round_id,
    10001 + ((101000000 + seq) % 5000) AS ad_id,
    1 + ((101000000 + seq) % 200) AS game_id,
    1 + ((101000000 + seq) % 20) AS platform_id,
    ELT(1 + ((101000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((101000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((101000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((101000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((101000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((101000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((101000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((101000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((101000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((101000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((101000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((101000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((101000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (101000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (101000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (101000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (101000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (101000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 5 DAY), INTERVAL ((101000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((102000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 5 DAY), INTERVAL ((102000000 + seq) % 86400) SECOND) AS stat_time,
    102000000 + seq AS order_id,
    1000000 + ((102000000 + seq) % 500000000) AS user_id,
    200000000 + 102000000 + seq AS round_id,
    10001 + ((102000000 + seq) % 5000) AS ad_id,
    1 + ((102000000 + seq) % 200) AS game_id,
    1 + ((102000000 + seq) % 20) AS platform_id,
    ELT(1 + ((102000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((102000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((102000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((102000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((102000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((102000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((102000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((102000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((102000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((102000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((102000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((102000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((102000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (102000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (102000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (102000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (102000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (102000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 5 DAY), INTERVAL ((102000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((103000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 5 DAY), INTERVAL ((103000000 + seq) % 86400) SECOND) AS stat_time,
    103000000 + seq AS order_id,
    1000000 + ((103000000 + seq) % 500000000) AS user_id,
    200000000 + 103000000 + seq AS round_id,
    10001 + ((103000000 + seq) % 5000) AS ad_id,
    1 + ((103000000 + seq) % 200) AS game_id,
    1 + ((103000000 + seq) % 20) AS platform_id,
    ELT(1 + ((103000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((103000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((103000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((103000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((103000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((103000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((103000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((103000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((103000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((103000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((103000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((103000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((103000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (103000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (103000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (103000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (103000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (103000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 5 DAY), INTERVAL ((103000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((104000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 5 DAY), INTERVAL ((104000000 + seq) % 86400) SECOND) AS stat_time,
    104000000 + seq AS order_id,
    1000000 + ((104000000 + seq) % 500000000) AS user_id,
    200000000 + 104000000 + seq AS round_id,
    10001 + ((104000000 + seq) % 5000) AS ad_id,
    1 + ((104000000 + seq) % 200) AS game_id,
    1 + ((104000000 + seq) % 20) AS platform_id,
    ELT(1 + ((104000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((104000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((104000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((104000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((104000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((104000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((104000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((104000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((104000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((104000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((104000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((104000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((104000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (104000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (104000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (104000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (104000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (104000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 5 DAY), INTERVAL ((104000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((105000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 5 DAY), INTERVAL ((105000000 + seq) % 86400) SECOND) AS stat_time,
    105000000 + seq AS order_id,
    1000000 + ((105000000 + seq) % 500000000) AS user_id,
    200000000 + 105000000 + seq AS round_id,
    10001 + ((105000000 + seq) % 5000) AS ad_id,
    1 + ((105000000 + seq) % 200) AS game_id,
    1 + ((105000000 + seq) % 20) AS platform_id,
    ELT(1 + ((105000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((105000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((105000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((105000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((105000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((105000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((105000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((105000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((105000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((105000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((105000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((105000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((105000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (105000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (105000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (105000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (105000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (105000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 5 DAY), INTERVAL ((105000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((106000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 5 DAY), INTERVAL ((106000000 + seq) % 86400) SECOND) AS stat_time,
    106000000 + seq AS order_id,
    1000000 + ((106000000 + seq) % 500000000) AS user_id,
    200000000 + 106000000 + seq AS round_id,
    10001 + ((106000000 + seq) % 5000) AS ad_id,
    1 + ((106000000 + seq) % 200) AS game_id,
    1 + ((106000000 + seq) % 20) AS platform_id,
    ELT(1 + ((106000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((106000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((106000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((106000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((106000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((106000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((106000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((106000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((106000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((106000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((106000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((106000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((106000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (106000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (106000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (106000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (106000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (106000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 5 DAY), INTERVAL ((106000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((107000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 5 DAY), INTERVAL ((107000000 + seq) % 86400) SECOND) AS stat_time,
    107000000 + seq AS order_id,
    1000000 + ((107000000 + seq) % 500000000) AS user_id,
    200000000 + 107000000 + seq AS round_id,
    10001 + ((107000000 + seq) % 5000) AS ad_id,
    1 + ((107000000 + seq) % 200) AS game_id,
    1 + ((107000000 + seq) % 20) AS platform_id,
    ELT(1 + ((107000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((107000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((107000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((107000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((107000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((107000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((107000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((107000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((107000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((107000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((107000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((107000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((107000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (107000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (107000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (107000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (107000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (107000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 5 DAY), INTERVAL ((107000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((108000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 5 DAY), INTERVAL ((108000000 + seq) % 86400) SECOND) AS stat_time,
    108000000 + seq AS order_id,
    1000000 + ((108000000 + seq) % 500000000) AS user_id,
    200000000 + 108000000 + seq AS round_id,
    10001 + ((108000000 + seq) % 5000) AS ad_id,
    1 + ((108000000 + seq) % 200) AS game_id,
    1 + ((108000000 + seq) % 20) AS platform_id,
    ELT(1 + ((108000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((108000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((108000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((108000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((108000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((108000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((108000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((108000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((108000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((108000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((108000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((108000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((108000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (108000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (108000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (108000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (108000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (108000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 5 DAY), INTERVAL ((108000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((109000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 5 DAY), INTERVAL ((109000000 + seq) % 86400) SECOND) AS stat_time,
    109000000 + seq AS order_id,
    1000000 + ((109000000 + seq) % 500000000) AS user_id,
    200000000 + 109000000 + seq AS round_id,
    10001 + ((109000000 + seq) % 5000) AS ad_id,
    1 + ((109000000 + seq) % 200) AS game_id,
    1 + ((109000000 + seq) % 20) AS platform_id,
    ELT(1 + ((109000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((109000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((109000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((109000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((109000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((109000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((109000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((109000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((109000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((109000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((109000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((109000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((109000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (109000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (109000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (109000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (109000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (109000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 5 DAY), INTERVAL ((109000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((110000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 5 DAY), INTERVAL ((110000000 + seq) % 86400) SECOND) AS stat_time,
    110000000 + seq AS order_id,
    1000000 + ((110000000 + seq) % 500000000) AS user_id,
    200000000 + 110000000 + seq AS round_id,
    10001 + ((110000000 + seq) % 5000) AS ad_id,
    1 + ((110000000 + seq) % 200) AS game_id,
    1 + ((110000000 + seq) % 20) AS platform_id,
    ELT(1 + ((110000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((110000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((110000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((110000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((110000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((110000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((110000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((110000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((110000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((110000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((110000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((110000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((110000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (110000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (110000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (110000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (110000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (110000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 5 DAY), INTERVAL ((110000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((111000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 5 DAY), INTERVAL ((111000000 + seq) % 86400) SECOND) AS stat_time,
    111000000 + seq AS order_id,
    1000000 + ((111000000 + seq) % 500000000) AS user_id,
    200000000 + 111000000 + seq AS round_id,
    10001 + ((111000000 + seq) % 5000) AS ad_id,
    1 + ((111000000 + seq) % 200) AS game_id,
    1 + ((111000000 + seq) % 20) AS platform_id,
    ELT(1 + ((111000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((111000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((111000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((111000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((111000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((111000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((111000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((111000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((111000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((111000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((111000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((111000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((111000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (111000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (111000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (111000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (111000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (111000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 5 DAY), INTERVAL ((111000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((112000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 5 DAY), INTERVAL ((112000000 + seq) % 86400) SECOND) AS stat_time,
    112000000 + seq AS order_id,
    1000000 + ((112000000 + seq) % 500000000) AS user_id,
    200000000 + 112000000 + seq AS round_id,
    10001 + ((112000000 + seq) % 5000) AS ad_id,
    1 + ((112000000 + seq) % 200) AS game_id,
    1 + ((112000000 + seq) % 20) AS platform_id,
    ELT(1 + ((112000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((112000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((112000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((112000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((112000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((112000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((112000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((112000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((112000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((112000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((112000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((112000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((112000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (112000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (112000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (112000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (112000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (112000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 5 DAY), INTERVAL ((112000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((113000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 5 DAY), INTERVAL ((113000000 + seq) % 86400) SECOND) AS stat_time,
    113000000 + seq AS order_id,
    1000000 + ((113000000 + seq) % 500000000) AS user_id,
    200000000 + 113000000 + seq AS round_id,
    10001 + ((113000000 + seq) % 5000) AS ad_id,
    1 + ((113000000 + seq) % 200) AS game_id,
    1 + ((113000000 + seq) % 20) AS platform_id,
    ELT(1 + ((113000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((113000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((113000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((113000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((113000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((113000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((113000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((113000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((113000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((113000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((113000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((113000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((113000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (113000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (113000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (113000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (113000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (113000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 5 DAY), INTERVAL ((113000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((114000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 5 DAY), INTERVAL ((114000000 + seq) % 86400) SECOND) AS stat_time,
    114000000 + seq AS order_id,
    1000000 + ((114000000 + seq) % 500000000) AS user_id,
    200000000 + 114000000 + seq AS round_id,
    10001 + ((114000000 + seq) % 5000) AS ad_id,
    1 + ((114000000 + seq) % 200) AS game_id,
    1 + ((114000000 + seq) % 20) AS platform_id,
    ELT(1 + ((114000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((114000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((114000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((114000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((114000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((114000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((114000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((114000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((114000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((114000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((114000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((114000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((114000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (114000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (114000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (114000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (114000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (114000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 5 DAY), INTERVAL ((114000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((115000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 5 DAY), INTERVAL ((115000000 + seq) % 86400) SECOND) AS stat_time,
    115000000 + seq AS order_id,
    1000000 + ((115000000 + seq) % 500000000) AS user_id,
    200000000 + 115000000 + seq AS round_id,
    10001 + ((115000000 + seq) % 5000) AS ad_id,
    1 + ((115000000 + seq) % 200) AS game_id,
    1 + ((115000000 + seq) % 20) AS platform_id,
    ELT(1 + ((115000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((115000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((115000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((115000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((115000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((115000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((115000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((115000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((115000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((115000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((115000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((115000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((115000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (115000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (115000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (115000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (115000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (115000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 5 DAY), INTERVAL ((115000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((116000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 5 DAY), INTERVAL ((116000000 + seq) % 86400) SECOND) AS stat_time,
    116000000 + seq AS order_id,
    1000000 + ((116000000 + seq) % 500000000) AS user_id,
    200000000 + 116000000 + seq AS round_id,
    10001 + ((116000000 + seq) % 5000) AS ad_id,
    1 + ((116000000 + seq) % 200) AS game_id,
    1 + ((116000000 + seq) % 20) AS platform_id,
    ELT(1 + ((116000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((116000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((116000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((116000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((116000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((116000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((116000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((116000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((116000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((116000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((116000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((116000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((116000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (116000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (116000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (116000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (116000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (116000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 5 DAY), INTERVAL ((116000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((117000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 5 DAY), INTERVAL ((117000000 + seq) % 86400) SECOND) AS stat_time,
    117000000 + seq AS order_id,
    1000000 + ((117000000 + seq) % 500000000) AS user_id,
    200000000 + 117000000 + seq AS round_id,
    10001 + ((117000000 + seq) % 5000) AS ad_id,
    1 + ((117000000 + seq) % 200) AS game_id,
    1 + ((117000000 + seq) % 20) AS platform_id,
    ELT(1 + ((117000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((117000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((117000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((117000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((117000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((117000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((117000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((117000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((117000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((117000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((117000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((117000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((117000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (117000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (117000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (117000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (117000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (117000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 5 DAY), INTERVAL ((117000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((118000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 5 DAY), INTERVAL ((118000000 + seq) % 86400) SECOND) AS stat_time,
    118000000 + seq AS order_id,
    1000000 + ((118000000 + seq) % 500000000) AS user_id,
    200000000 + 118000000 + seq AS round_id,
    10001 + ((118000000 + seq) % 5000) AS ad_id,
    1 + ((118000000 + seq) % 200) AS game_id,
    1 + ((118000000 + seq) % 20) AS platform_id,
    ELT(1 + ((118000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((118000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((118000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((118000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((118000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((118000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((118000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((118000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((118000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((118000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((118000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((118000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((118000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (118000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (118000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (118000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (118000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (118000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 5 DAY), INTERVAL ((118000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((119000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 5 DAY), INTERVAL ((119000000 + seq) % 86400) SECOND) AS stat_time,
    119000000 + seq AS order_id,
    1000000 + ((119000000 + seq) % 500000000) AS user_id,
    200000000 + 119000000 + seq AS round_id,
    10001 + ((119000000 + seq) % 5000) AS ad_id,
    1 + ((119000000 + seq) % 200) AS game_id,
    1 + ((119000000 + seq) % 20) AS platform_id,
    ELT(1 + ((119000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((119000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((119000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((119000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((119000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((119000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((119000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((119000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((119000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((119000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((119000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((119000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((119000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (119000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (119000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (119000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (119000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (119000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 5 DAY), INTERVAL ((119000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

