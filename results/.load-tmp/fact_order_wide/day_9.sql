USE bench_columnar_perf_xlarge;
USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((180000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 9 DAY), INTERVAL ((180000000 + seq) % 86400) SECOND) AS stat_time,
    180000000 + seq AS order_id,
    1000000 + ((180000000 + seq) % 500000000) AS user_id,
    200000000 + 180000000 + seq AS round_id,
    10001 + ((180000000 + seq) % 5000) AS ad_id,
    1 + ((180000000 + seq) % 200) AS game_id,
    1 + ((180000000 + seq) % 20) AS platform_id,
    ELT(1 + ((180000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((180000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((180000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((180000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((180000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((180000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((180000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((180000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((180000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((180000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((180000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((180000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((180000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (180000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (180000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (180000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (180000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (180000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 9 DAY), INTERVAL ((180000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((181000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 9 DAY), INTERVAL ((181000000 + seq) % 86400) SECOND) AS stat_time,
    181000000 + seq AS order_id,
    1000000 + ((181000000 + seq) % 500000000) AS user_id,
    200000000 + 181000000 + seq AS round_id,
    10001 + ((181000000 + seq) % 5000) AS ad_id,
    1 + ((181000000 + seq) % 200) AS game_id,
    1 + ((181000000 + seq) % 20) AS platform_id,
    ELT(1 + ((181000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((181000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((181000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((181000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((181000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((181000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((181000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((181000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((181000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((181000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((181000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((181000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((181000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (181000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (181000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (181000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (181000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (181000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 9 DAY), INTERVAL ((181000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((182000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 9 DAY), INTERVAL ((182000000 + seq) % 86400) SECOND) AS stat_time,
    182000000 + seq AS order_id,
    1000000 + ((182000000 + seq) % 500000000) AS user_id,
    200000000 + 182000000 + seq AS round_id,
    10001 + ((182000000 + seq) % 5000) AS ad_id,
    1 + ((182000000 + seq) % 200) AS game_id,
    1 + ((182000000 + seq) % 20) AS platform_id,
    ELT(1 + ((182000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((182000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((182000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((182000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((182000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((182000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((182000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((182000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((182000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((182000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((182000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((182000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((182000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (182000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (182000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (182000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (182000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (182000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 9 DAY), INTERVAL ((182000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((183000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 9 DAY), INTERVAL ((183000000 + seq) % 86400) SECOND) AS stat_time,
    183000000 + seq AS order_id,
    1000000 + ((183000000 + seq) % 500000000) AS user_id,
    200000000 + 183000000 + seq AS round_id,
    10001 + ((183000000 + seq) % 5000) AS ad_id,
    1 + ((183000000 + seq) % 200) AS game_id,
    1 + ((183000000 + seq) % 20) AS platform_id,
    ELT(1 + ((183000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((183000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((183000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((183000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((183000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((183000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((183000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((183000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((183000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((183000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((183000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((183000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((183000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (183000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (183000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (183000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (183000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (183000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 9 DAY), INTERVAL ((183000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((184000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 9 DAY), INTERVAL ((184000000 + seq) % 86400) SECOND) AS stat_time,
    184000000 + seq AS order_id,
    1000000 + ((184000000 + seq) % 500000000) AS user_id,
    200000000 + 184000000 + seq AS round_id,
    10001 + ((184000000 + seq) % 5000) AS ad_id,
    1 + ((184000000 + seq) % 200) AS game_id,
    1 + ((184000000 + seq) % 20) AS platform_id,
    ELT(1 + ((184000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((184000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((184000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((184000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((184000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((184000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((184000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((184000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((184000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((184000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((184000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((184000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((184000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (184000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (184000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (184000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (184000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (184000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 9 DAY), INTERVAL ((184000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((185000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 9 DAY), INTERVAL ((185000000 + seq) % 86400) SECOND) AS stat_time,
    185000000 + seq AS order_id,
    1000000 + ((185000000 + seq) % 500000000) AS user_id,
    200000000 + 185000000 + seq AS round_id,
    10001 + ((185000000 + seq) % 5000) AS ad_id,
    1 + ((185000000 + seq) % 200) AS game_id,
    1 + ((185000000 + seq) % 20) AS platform_id,
    ELT(1 + ((185000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((185000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((185000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((185000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((185000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((185000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((185000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((185000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((185000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((185000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((185000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((185000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((185000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (185000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (185000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (185000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (185000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (185000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 9 DAY), INTERVAL ((185000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((186000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 9 DAY), INTERVAL ((186000000 + seq) % 86400) SECOND) AS stat_time,
    186000000 + seq AS order_id,
    1000000 + ((186000000 + seq) % 500000000) AS user_id,
    200000000 + 186000000 + seq AS round_id,
    10001 + ((186000000 + seq) % 5000) AS ad_id,
    1 + ((186000000 + seq) % 200) AS game_id,
    1 + ((186000000 + seq) % 20) AS platform_id,
    ELT(1 + ((186000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((186000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((186000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((186000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((186000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((186000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((186000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((186000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((186000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((186000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((186000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((186000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((186000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (186000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (186000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (186000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (186000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (186000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 9 DAY), INTERVAL ((186000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((187000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 9 DAY), INTERVAL ((187000000 + seq) % 86400) SECOND) AS stat_time,
    187000000 + seq AS order_id,
    1000000 + ((187000000 + seq) % 500000000) AS user_id,
    200000000 + 187000000 + seq AS round_id,
    10001 + ((187000000 + seq) % 5000) AS ad_id,
    1 + ((187000000 + seq) % 200) AS game_id,
    1 + ((187000000 + seq) % 20) AS platform_id,
    ELT(1 + ((187000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((187000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((187000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((187000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((187000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((187000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((187000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((187000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((187000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((187000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((187000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((187000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((187000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (187000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (187000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (187000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (187000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (187000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 9 DAY), INTERVAL ((187000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((188000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 9 DAY), INTERVAL ((188000000 + seq) % 86400) SECOND) AS stat_time,
    188000000 + seq AS order_id,
    1000000 + ((188000000 + seq) % 500000000) AS user_id,
    200000000 + 188000000 + seq AS round_id,
    10001 + ((188000000 + seq) % 5000) AS ad_id,
    1 + ((188000000 + seq) % 200) AS game_id,
    1 + ((188000000 + seq) % 20) AS platform_id,
    ELT(1 + ((188000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((188000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((188000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((188000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((188000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((188000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((188000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((188000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((188000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((188000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((188000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((188000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((188000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (188000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (188000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (188000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (188000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (188000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 9 DAY), INTERVAL ((188000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((189000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 9 DAY), INTERVAL ((189000000 + seq) % 86400) SECOND) AS stat_time,
    189000000 + seq AS order_id,
    1000000 + ((189000000 + seq) % 500000000) AS user_id,
    200000000 + 189000000 + seq AS round_id,
    10001 + ((189000000 + seq) % 5000) AS ad_id,
    1 + ((189000000 + seq) % 200) AS game_id,
    1 + ((189000000 + seq) % 20) AS platform_id,
    ELT(1 + ((189000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((189000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((189000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((189000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((189000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((189000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((189000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((189000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((189000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((189000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((189000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((189000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((189000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (189000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (189000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (189000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (189000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (189000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 9 DAY), INTERVAL ((189000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((190000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 9 DAY), INTERVAL ((190000000 + seq) % 86400) SECOND) AS stat_time,
    190000000 + seq AS order_id,
    1000000 + ((190000000 + seq) % 500000000) AS user_id,
    200000000 + 190000000 + seq AS round_id,
    10001 + ((190000000 + seq) % 5000) AS ad_id,
    1 + ((190000000 + seq) % 200) AS game_id,
    1 + ((190000000 + seq) % 20) AS platform_id,
    ELT(1 + ((190000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((190000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((190000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((190000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((190000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((190000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((190000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((190000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((190000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((190000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((190000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((190000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((190000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (190000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (190000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (190000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (190000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (190000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 9 DAY), INTERVAL ((190000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((191000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 9 DAY), INTERVAL ((191000000 + seq) % 86400) SECOND) AS stat_time,
    191000000 + seq AS order_id,
    1000000 + ((191000000 + seq) % 500000000) AS user_id,
    200000000 + 191000000 + seq AS round_id,
    10001 + ((191000000 + seq) % 5000) AS ad_id,
    1 + ((191000000 + seq) % 200) AS game_id,
    1 + ((191000000 + seq) % 20) AS platform_id,
    ELT(1 + ((191000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((191000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((191000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((191000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((191000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((191000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((191000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((191000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((191000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((191000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((191000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((191000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((191000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (191000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (191000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (191000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (191000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (191000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 9 DAY), INTERVAL ((191000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((192000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 9 DAY), INTERVAL ((192000000 + seq) % 86400) SECOND) AS stat_time,
    192000000 + seq AS order_id,
    1000000 + ((192000000 + seq) % 500000000) AS user_id,
    200000000 + 192000000 + seq AS round_id,
    10001 + ((192000000 + seq) % 5000) AS ad_id,
    1 + ((192000000 + seq) % 200) AS game_id,
    1 + ((192000000 + seq) % 20) AS platform_id,
    ELT(1 + ((192000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((192000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((192000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((192000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((192000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((192000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((192000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((192000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((192000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((192000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((192000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((192000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((192000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (192000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (192000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (192000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (192000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (192000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 9 DAY), INTERVAL ((192000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((193000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 9 DAY), INTERVAL ((193000000 + seq) % 86400) SECOND) AS stat_time,
    193000000 + seq AS order_id,
    1000000 + ((193000000 + seq) % 500000000) AS user_id,
    200000000 + 193000000 + seq AS round_id,
    10001 + ((193000000 + seq) % 5000) AS ad_id,
    1 + ((193000000 + seq) % 200) AS game_id,
    1 + ((193000000 + seq) % 20) AS platform_id,
    ELT(1 + ((193000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((193000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((193000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((193000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((193000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((193000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((193000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((193000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((193000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((193000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((193000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((193000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((193000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (193000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (193000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (193000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (193000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (193000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 9 DAY), INTERVAL ((193000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((194000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 9 DAY), INTERVAL ((194000000 + seq) % 86400) SECOND) AS stat_time,
    194000000 + seq AS order_id,
    1000000 + ((194000000 + seq) % 500000000) AS user_id,
    200000000 + 194000000 + seq AS round_id,
    10001 + ((194000000 + seq) % 5000) AS ad_id,
    1 + ((194000000 + seq) % 200) AS game_id,
    1 + ((194000000 + seq) % 20) AS platform_id,
    ELT(1 + ((194000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((194000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((194000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((194000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((194000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((194000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((194000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((194000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((194000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((194000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((194000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((194000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((194000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (194000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (194000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (194000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (194000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (194000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 9 DAY), INTERVAL ((194000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((195000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 9 DAY), INTERVAL ((195000000 + seq) % 86400) SECOND) AS stat_time,
    195000000 + seq AS order_id,
    1000000 + ((195000000 + seq) % 500000000) AS user_id,
    200000000 + 195000000 + seq AS round_id,
    10001 + ((195000000 + seq) % 5000) AS ad_id,
    1 + ((195000000 + seq) % 200) AS game_id,
    1 + ((195000000 + seq) % 20) AS platform_id,
    ELT(1 + ((195000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((195000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((195000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((195000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((195000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((195000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((195000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((195000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((195000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((195000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((195000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((195000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((195000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (195000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (195000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (195000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (195000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (195000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 9 DAY), INTERVAL ((195000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((196000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 9 DAY), INTERVAL ((196000000 + seq) % 86400) SECOND) AS stat_time,
    196000000 + seq AS order_id,
    1000000 + ((196000000 + seq) % 500000000) AS user_id,
    200000000 + 196000000 + seq AS round_id,
    10001 + ((196000000 + seq) % 5000) AS ad_id,
    1 + ((196000000 + seq) % 200) AS game_id,
    1 + ((196000000 + seq) % 20) AS platform_id,
    ELT(1 + ((196000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((196000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((196000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((196000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((196000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((196000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((196000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((196000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((196000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((196000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((196000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((196000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((196000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (196000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (196000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (196000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (196000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (196000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 9 DAY), INTERVAL ((196000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((197000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 9 DAY), INTERVAL ((197000000 + seq) % 86400) SECOND) AS stat_time,
    197000000 + seq AS order_id,
    1000000 + ((197000000 + seq) % 500000000) AS user_id,
    200000000 + 197000000 + seq AS round_id,
    10001 + ((197000000 + seq) % 5000) AS ad_id,
    1 + ((197000000 + seq) % 200) AS game_id,
    1 + ((197000000 + seq) % 20) AS platform_id,
    ELT(1 + ((197000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((197000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((197000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((197000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((197000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((197000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((197000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((197000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((197000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((197000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((197000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((197000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((197000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (197000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (197000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (197000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (197000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (197000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 9 DAY), INTERVAL ((197000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((198000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 9 DAY), INTERVAL ((198000000 + seq) % 86400) SECOND) AS stat_time,
    198000000 + seq AS order_id,
    1000000 + ((198000000 + seq) % 500000000) AS user_id,
    200000000 + 198000000 + seq AS round_id,
    10001 + ((198000000 + seq) % 5000) AS ad_id,
    1 + ((198000000 + seq) % 200) AS game_id,
    1 + ((198000000 + seq) % 20) AS platform_id,
    ELT(1 + ((198000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((198000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((198000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((198000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((198000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((198000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((198000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((198000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((198000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((198000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((198000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((198000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((198000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (198000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (198000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (198000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (198000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (198000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 9 DAY), INTERVAL ((198000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((199000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 9 DAY), INTERVAL ((199000000 + seq) % 86400) SECOND) AS stat_time,
    199000000 + seq AS order_id,
    1000000 + ((199000000 + seq) % 500000000) AS user_id,
    200000000 + 199000000 + seq AS round_id,
    10001 + ((199000000 + seq) % 5000) AS ad_id,
    1 + ((199000000 + seq) % 200) AS game_id,
    1 + ((199000000 + seq) % 20) AS platform_id,
    ELT(1 + ((199000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((199000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((199000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((199000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((199000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((199000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((199000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((199000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((199000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((199000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((199000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((199000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((199000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (199000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (199000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (199000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (199000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (199000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 9 DAY), INTERVAL ((199000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

