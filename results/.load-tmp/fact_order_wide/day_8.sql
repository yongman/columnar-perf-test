USE bench_columnar_perf_xlarge;
USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((160000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 8 DAY), INTERVAL ((160000000 + seq) % 86400) SECOND) AS stat_time,
    160000000 + seq AS order_id,
    1000000 + ((160000000 + seq) % 500000000) AS user_id,
    200000000 + 160000000 + seq AS round_id,
    10001 + ((160000000 + seq) % 5000) AS ad_id,
    1 + ((160000000 + seq) % 200) AS game_id,
    1 + ((160000000 + seq) % 20) AS platform_id,
    ELT(1 + ((160000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((160000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((160000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((160000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((160000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((160000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((160000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((160000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((160000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((160000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((160000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((160000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((160000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (160000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (160000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (160000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (160000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (160000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 8 DAY), INTERVAL ((160000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((161000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 8 DAY), INTERVAL ((161000000 + seq) % 86400) SECOND) AS stat_time,
    161000000 + seq AS order_id,
    1000000 + ((161000000 + seq) % 500000000) AS user_id,
    200000000 + 161000000 + seq AS round_id,
    10001 + ((161000000 + seq) % 5000) AS ad_id,
    1 + ((161000000 + seq) % 200) AS game_id,
    1 + ((161000000 + seq) % 20) AS platform_id,
    ELT(1 + ((161000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((161000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((161000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((161000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((161000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((161000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((161000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((161000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((161000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((161000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((161000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((161000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((161000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (161000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (161000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (161000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (161000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (161000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 8 DAY), INTERVAL ((161000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((162000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 8 DAY), INTERVAL ((162000000 + seq) % 86400) SECOND) AS stat_time,
    162000000 + seq AS order_id,
    1000000 + ((162000000 + seq) % 500000000) AS user_id,
    200000000 + 162000000 + seq AS round_id,
    10001 + ((162000000 + seq) % 5000) AS ad_id,
    1 + ((162000000 + seq) % 200) AS game_id,
    1 + ((162000000 + seq) % 20) AS platform_id,
    ELT(1 + ((162000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((162000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((162000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((162000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((162000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((162000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((162000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((162000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((162000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((162000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((162000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((162000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((162000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (162000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (162000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (162000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (162000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (162000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 8 DAY), INTERVAL ((162000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((163000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 8 DAY), INTERVAL ((163000000 + seq) % 86400) SECOND) AS stat_time,
    163000000 + seq AS order_id,
    1000000 + ((163000000 + seq) % 500000000) AS user_id,
    200000000 + 163000000 + seq AS round_id,
    10001 + ((163000000 + seq) % 5000) AS ad_id,
    1 + ((163000000 + seq) % 200) AS game_id,
    1 + ((163000000 + seq) % 20) AS platform_id,
    ELT(1 + ((163000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((163000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((163000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((163000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((163000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((163000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((163000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((163000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((163000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((163000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((163000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((163000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((163000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (163000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (163000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (163000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (163000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (163000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 8 DAY), INTERVAL ((163000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((164000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 8 DAY), INTERVAL ((164000000 + seq) % 86400) SECOND) AS stat_time,
    164000000 + seq AS order_id,
    1000000 + ((164000000 + seq) % 500000000) AS user_id,
    200000000 + 164000000 + seq AS round_id,
    10001 + ((164000000 + seq) % 5000) AS ad_id,
    1 + ((164000000 + seq) % 200) AS game_id,
    1 + ((164000000 + seq) % 20) AS platform_id,
    ELT(1 + ((164000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((164000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((164000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((164000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((164000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((164000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((164000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((164000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((164000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((164000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((164000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((164000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((164000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (164000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (164000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (164000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (164000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (164000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 8 DAY), INTERVAL ((164000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((165000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 8 DAY), INTERVAL ((165000000 + seq) % 86400) SECOND) AS stat_time,
    165000000 + seq AS order_id,
    1000000 + ((165000000 + seq) % 500000000) AS user_id,
    200000000 + 165000000 + seq AS round_id,
    10001 + ((165000000 + seq) % 5000) AS ad_id,
    1 + ((165000000 + seq) % 200) AS game_id,
    1 + ((165000000 + seq) % 20) AS platform_id,
    ELT(1 + ((165000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((165000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((165000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((165000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((165000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((165000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((165000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((165000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((165000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((165000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((165000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((165000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((165000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (165000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (165000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (165000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (165000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (165000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 8 DAY), INTERVAL ((165000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((166000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 8 DAY), INTERVAL ((166000000 + seq) % 86400) SECOND) AS stat_time,
    166000000 + seq AS order_id,
    1000000 + ((166000000 + seq) % 500000000) AS user_id,
    200000000 + 166000000 + seq AS round_id,
    10001 + ((166000000 + seq) % 5000) AS ad_id,
    1 + ((166000000 + seq) % 200) AS game_id,
    1 + ((166000000 + seq) % 20) AS platform_id,
    ELT(1 + ((166000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((166000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((166000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((166000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((166000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((166000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((166000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((166000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((166000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((166000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((166000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((166000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((166000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (166000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (166000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (166000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (166000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (166000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 8 DAY), INTERVAL ((166000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((167000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 8 DAY), INTERVAL ((167000000 + seq) % 86400) SECOND) AS stat_time,
    167000000 + seq AS order_id,
    1000000 + ((167000000 + seq) % 500000000) AS user_id,
    200000000 + 167000000 + seq AS round_id,
    10001 + ((167000000 + seq) % 5000) AS ad_id,
    1 + ((167000000 + seq) % 200) AS game_id,
    1 + ((167000000 + seq) % 20) AS platform_id,
    ELT(1 + ((167000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((167000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((167000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((167000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((167000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((167000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((167000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((167000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((167000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((167000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((167000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((167000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((167000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (167000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (167000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (167000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (167000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (167000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 8 DAY), INTERVAL ((167000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((168000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 8 DAY), INTERVAL ((168000000 + seq) % 86400) SECOND) AS stat_time,
    168000000 + seq AS order_id,
    1000000 + ((168000000 + seq) % 500000000) AS user_id,
    200000000 + 168000000 + seq AS round_id,
    10001 + ((168000000 + seq) % 5000) AS ad_id,
    1 + ((168000000 + seq) % 200) AS game_id,
    1 + ((168000000 + seq) % 20) AS platform_id,
    ELT(1 + ((168000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((168000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((168000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((168000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((168000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((168000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((168000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((168000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((168000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((168000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((168000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((168000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((168000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (168000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (168000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (168000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (168000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (168000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 8 DAY), INTERVAL ((168000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((169000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 8 DAY), INTERVAL ((169000000 + seq) % 86400) SECOND) AS stat_time,
    169000000 + seq AS order_id,
    1000000 + ((169000000 + seq) % 500000000) AS user_id,
    200000000 + 169000000 + seq AS round_id,
    10001 + ((169000000 + seq) % 5000) AS ad_id,
    1 + ((169000000 + seq) % 200) AS game_id,
    1 + ((169000000 + seq) % 20) AS platform_id,
    ELT(1 + ((169000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((169000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((169000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((169000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((169000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((169000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((169000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((169000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((169000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((169000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((169000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((169000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((169000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (169000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (169000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (169000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (169000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (169000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 8 DAY), INTERVAL ((169000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((170000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 8 DAY), INTERVAL ((170000000 + seq) % 86400) SECOND) AS stat_time,
    170000000 + seq AS order_id,
    1000000 + ((170000000 + seq) % 500000000) AS user_id,
    200000000 + 170000000 + seq AS round_id,
    10001 + ((170000000 + seq) % 5000) AS ad_id,
    1 + ((170000000 + seq) % 200) AS game_id,
    1 + ((170000000 + seq) % 20) AS platform_id,
    ELT(1 + ((170000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((170000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((170000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((170000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((170000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((170000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((170000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((170000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((170000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((170000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((170000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((170000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((170000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (170000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (170000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (170000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (170000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (170000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 8 DAY), INTERVAL ((170000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((171000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 8 DAY), INTERVAL ((171000000 + seq) % 86400) SECOND) AS stat_time,
    171000000 + seq AS order_id,
    1000000 + ((171000000 + seq) % 500000000) AS user_id,
    200000000 + 171000000 + seq AS round_id,
    10001 + ((171000000 + seq) % 5000) AS ad_id,
    1 + ((171000000 + seq) % 200) AS game_id,
    1 + ((171000000 + seq) % 20) AS platform_id,
    ELT(1 + ((171000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((171000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((171000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((171000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((171000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((171000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((171000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((171000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((171000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((171000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((171000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((171000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((171000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (171000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (171000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (171000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (171000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (171000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 8 DAY), INTERVAL ((171000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((172000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 8 DAY), INTERVAL ((172000000 + seq) % 86400) SECOND) AS stat_time,
    172000000 + seq AS order_id,
    1000000 + ((172000000 + seq) % 500000000) AS user_id,
    200000000 + 172000000 + seq AS round_id,
    10001 + ((172000000 + seq) % 5000) AS ad_id,
    1 + ((172000000 + seq) % 200) AS game_id,
    1 + ((172000000 + seq) % 20) AS platform_id,
    ELT(1 + ((172000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((172000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((172000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((172000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((172000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((172000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((172000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((172000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((172000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((172000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((172000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((172000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((172000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (172000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (172000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (172000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (172000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (172000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 8 DAY), INTERVAL ((172000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((173000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 8 DAY), INTERVAL ((173000000 + seq) % 86400) SECOND) AS stat_time,
    173000000 + seq AS order_id,
    1000000 + ((173000000 + seq) % 500000000) AS user_id,
    200000000 + 173000000 + seq AS round_id,
    10001 + ((173000000 + seq) % 5000) AS ad_id,
    1 + ((173000000 + seq) % 200) AS game_id,
    1 + ((173000000 + seq) % 20) AS platform_id,
    ELT(1 + ((173000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((173000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((173000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((173000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((173000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((173000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((173000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((173000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((173000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((173000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((173000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((173000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((173000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (173000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (173000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (173000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (173000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (173000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 8 DAY), INTERVAL ((173000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((174000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 8 DAY), INTERVAL ((174000000 + seq) % 86400) SECOND) AS stat_time,
    174000000 + seq AS order_id,
    1000000 + ((174000000 + seq) % 500000000) AS user_id,
    200000000 + 174000000 + seq AS round_id,
    10001 + ((174000000 + seq) % 5000) AS ad_id,
    1 + ((174000000 + seq) % 200) AS game_id,
    1 + ((174000000 + seq) % 20) AS platform_id,
    ELT(1 + ((174000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((174000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((174000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((174000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((174000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((174000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((174000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((174000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((174000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((174000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((174000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((174000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((174000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (174000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (174000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (174000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (174000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (174000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 8 DAY), INTERVAL ((174000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((175000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 8 DAY), INTERVAL ((175000000 + seq) % 86400) SECOND) AS stat_time,
    175000000 + seq AS order_id,
    1000000 + ((175000000 + seq) % 500000000) AS user_id,
    200000000 + 175000000 + seq AS round_id,
    10001 + ((175000000 + seq) % 5000) AS ad_id,
    1 + ((175000000 + seq) % 200) AS game_id,
    1 + ((175000000 + seq) % 20) AS platform_id,
    ELT(1 + ((175000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((175000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((175000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((175000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((175000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((175000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((175000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((175000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((175000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((175000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((175000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((175000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((175000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (175000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (175000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (175000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (175000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (175000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 8 DAY), INTERVAL ((175000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((176000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 8 DAY), INTERVAL ((176000000 + seq) % 86400) SECOND) AS stat_time,
    176000000 + seq AS order_id,
    1000000 + ((176000000 + seq) % 500000000) AS user_id,
    200000000 + 176000000 + seq AS round_id,
    10001 + ((176000000 + seq) % 5000) AS ad_id,
    1 + ((176000000 + seq) % 200) AS game_id,
    1 + ((176000000 + seq) % 20) AS platform_id,
    ELT(1 + ((176000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((176000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((176000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((176000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((176000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((176000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((176000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((176000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((176000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((176000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((176000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((176000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((176000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (176000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (176000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (176000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (176000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (176000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 8 DAY), INTERVAL ((176000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((177000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 8 DAY), INTERVAL ((177000000 + seq) % 86400) SECOND) AS stat_time,
    177000000 + seq AS order_id,
    1000000 + ((177000000 + seq) % 500000000) AS user_id,
    200000000 + 177000000 + seq AS round_id,
    10001 + ((177000000 + seq) % 5000) AS ad_id,
    1 + ((177000000 + seq) % 200) AS game_id,
    1 + ((177000000 + seq) % 20) AS platform_id,
    ELT(1 + ((177000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((177000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((177000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((177000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((177000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((177000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((177000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((177000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((177000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((177000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((177000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((177000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((177000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (177000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (177000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (177000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (177000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (177000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 8 DAY), INTERVAL ((177000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((178000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 8 DAY), INTERVAL ((178000000 + seq) % 86400) SECOND) AS stat_time,
    178000000 + seq AS order_id,
    1000000 + ((178000000 + seq) % 500000000) AS user_id,
    200000000 + 178000000 + seq AS round_id,
    10001 + ((178000000 + seq) % 5000) AS ad_id,
    1 + ((178000000 + seq) % 200) AS game_id,
    1 + ((178000000 + seq) % 20) AS platform_id,
    ELT(1 + ((178000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((178000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((178000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((178000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((178000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((178000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((178000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((178000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((178000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((178000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((178000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((178000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((178000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (178000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (178000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (178000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (178000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (178000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 8 DAY), INTERVAL ((178000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((179000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 8 DAY), INTERVAL ((179000000 + seq) % 86400) SECOND) AS stat_time,
    179000000 + seq AS order_id,
    1000000 + ((179000000 + seq) % 500000000) AS user_id,
    200000000 + 179000000 + seq AS round_id,
    10001 + ((179000000 + seq) % 5000) AS ad_id,
    1 + ((179000000 + seq) % 200) AS game_id,
    1 + ((179000000 + seq) % 20) AS platform_id,
    ELT(1 + ((179000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((179000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((179000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((179000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((179000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((179000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((179000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((179000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((179000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((179000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((179000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((179000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((179000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (179000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (179000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (179000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (179000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (179000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 8 DAY), INTERVAL ((179000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

