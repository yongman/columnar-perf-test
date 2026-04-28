USE bench_columnar_perf_xlarge;
USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((80000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 4 DAY), INTERVAL ((80000000 + seq) % 86400) SECOND) AS stat_time,
    80000000 + seq AS order_id,
    1000000 + ((80000000 + seq) % 500000000) AS user_id,
    200000000 + 80000000 + seq AS round_id,
    10001 + ((80000000 + seq) % 5000) AS ad_id,
    1 + ((80000000 + seq) % 200) AS game_id,
    1 + ((80000000 + seq) % 20) AS platform_id,
    ELT(1 + ((80000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((80000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((80000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((80000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((80000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((80000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((80000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((80000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((80000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((80000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((80000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((80000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((80000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (80000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (80000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (80000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (80000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (80000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 4 DAY), INTERVAL ((80000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((81000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 4 DAY), INTERVAL ((81000000 + seq) % 86400) SECOND) AS stat_time,
    81000000 + seq AS order_id,
    1000000 + ((81000000 + seq) % 500000000) AS user_id,
    200000000 + 81000000 + seq AS round_id,
    10001 + ((81000000 + seq) % 5000) AS ad_id,
    1 + ((81000000 + seq) % 200) AS game_id,
    1 + ((81000000 + seq) % 20) AS platform_id,
    ELT(1 + ((81000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((81000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((81000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((81000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((81000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((81000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((81000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((81000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((81000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((81000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((81000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((81000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((81000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (81000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (81000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (81000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (81000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (81000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 4 DAY), INTERVAL ((81000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((82000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 4 DAY), INTERVAL ((82000000 + seq) % 86400) SECOND) AS stat_time,
    82000000 + seq AS order_id,
    1000000 + ((82000000 + seq) % 500000000) AS user_id,
    200000000 + 82000000 + seq AS round_id,
    10001 + ((82000000 + seq) % 5000) AS ad_id,
    1 + ((82000000 + seq) % 200) AS game_id,
    1 + ((82000000 + seq) % 20) AS platform_id,
    ELT(1 + ((82000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((82000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((82000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((82000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((82000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((82000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((82000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((82000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((82000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((82000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((82000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((82000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((82000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (82000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (82000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (82000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (82000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (82000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 4 DAY), INTERVAL ((82000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((83000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 4 DAY), INTERVAL ((83000000 + seq) % 86400) SECOND) AS stat_time,
    83000000 + seq AS order_id,
    1000000 + ((83000000 + seq) % 500000000) AS user_id,
    200000000 + 83000000 + seq AS round_id,
    10001 + ((83000000 + seq) % 5000) AS ad_id,
    1 + ((83000000 + seq) % 200) AS game_id,
    1 + ((83000000 + seq) % 20) AS platform_id,
    ELT(1 + ((83000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((83000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((83000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((83000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((83000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((83000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((83000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((83000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((83000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((83000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((83000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((83000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((83000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (83000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (83000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (83000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (83000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (83000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 4 DAY), INTERVAL ((83000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((84000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 4 DAY), INTERVAL ((84000000 + seq) % 86400) SECOND) AS stat_time,
    84000000 + seq AS order_id,
    1000000 + ((84000000 + seq) % 500000000) AS user_id,
    200000000 + 84000000 + seq AS round_id,
    10001 + ((84000000 + seq) % 5000) AS ad_id,
    1 + ((84000000 + seq) % 200) AS game_id,
    1 + ((84000000 + seq) % 20) AS platform_id,
    ELT(1 + ((84000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((84000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((84000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((84000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((84000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((84000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((84000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((84000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((84000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((84000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((84000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((84000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((84000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (84000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (84000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (84000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (84000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (84000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 4 DAY), INTERVAL ((84000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((85000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 4 DAY), INTERVAL ((85000000 + seq) % 86400) SECOND) AS stat_time,
    85000000 + seq AS order_id,
    1000000 + ((85000000 + seq) % 500000000) AS user_id,
    200000000 + 85000000 + seq AS round_id,
    10001 + ((85000000 + seq) % 5000) AS ad_id,
    1 + ((85000000 + seq) % 200) AS game_id,
    1 + ((85000000 + seq) % 20) AS platform_id,
    ELT(1 + ((85000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((85000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((85000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((85000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((85000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((85000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((85000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((85000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((85000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((85000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((85000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((85000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((85000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (85000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (85000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (85000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (85000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (85000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 4 DAY), INTERVAL ((85000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((86000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 4 DAY), INTERVAL ((86000000 + seq) % 86400) SECOND) AS stat_time,
    86000000 + seq AS order_id,
    1000000 + ((86000000 + seq) % 500000000) AS user_id,
    200000000 + 86000000 + seq AS round_id,
    10001 + ((86000000 + seq) % 5000) AS ad_id,
    1 + ((86000000 + seq) % 200) AS game_id,
    1 + ((86000000 + seq) % 20) AS platform_id,
    ELT(1 + ((86000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((86000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((86000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((86000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((86000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((86000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((86000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((86000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((86000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((86000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((86000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((86000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((86000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (86000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (86000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (86000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (86000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (86000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 4 DAY), INTERVAL ((86000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((87000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 4 DAY), INTERVAL ((87000000 + seq) % 86400) SECOND) AS stat_time,
    87000000 + seq AS order_id,
    1000000 + ((87000000 + seq) % 500000000) AS user_id,
    200000000 + 87000000 + seq AS round_id,
    10001 + ((87000000 + seq) % 5000) AS ad_id,
    1 + ((87000000 + seq) % 200) AS game_id,
    1 + ((87000000 + seq) % 20) AS platform_id,
    ELT(1 + ((87000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((87000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((87000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((87000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((87000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((87000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((87000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((87000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((87000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((87000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((87000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((87000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((87000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (87000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (87000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (87000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (87000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (87000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 4 DAY), INTERVAL ((87000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((88000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 4 DAY), INTERVAL ((88000000 + seq) % 86400) SECOND) AS stat_time,
    88000000 + seq AS order_id,
    1000000 + ((88000000 + seq) % 500000000) AS user_id,
    200000000 + 88000000 + seq AS round_id,
    10001 + ((88000000 + seq) % 5000) AS ad_id,
    1 + ((88000000 + seq) % 200) AS game_id,
    1 + ((88000000 + seq) % 20) AS platform_id,
    ELT(1 + ((88000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((88000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((88000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((88000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((88000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((88000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((88000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((88000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((88000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((88000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((88000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((88000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((88000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (88000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (88000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (88000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (88000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (88000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 4 DAY), INTERVAL ((88000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((89000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 4 DAY), INTERVAL ((89000000 + seq) % 86400) SECOND) AS stat_time,
    89000000 + seq AS order_id,
    1000000 + ((89000000 + seq) % 500000000) AS user_id,
    200000000 + 89000000 + seq AS round_id,
    10001 + ((89000000 + seq) % 5000) AS ad_id,
    1 + ((89000000 + seq) % 200) AS game_id,
    1 + ((89000000 + seq) % 20) AS platform_id,
    ELT(1 + ((89000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((89000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((89000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((89000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((89000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((89000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((89000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((89000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((89000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((89000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((89000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((89000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((89000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (89000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (89000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (89000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (89000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (89000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 4 DAY), INTERVAL ((89000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((90000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 4 DAY), INTERVAL ((90000000 + seq) % 86400) SECOND) AS stat_time,
    90000000 + seq AS order_id,
    1000000 + ((90000000 + seq) % 500000000) AS user_id,
    200000000 + 90000000 + seq AS round_id,
    10001 + ((90000000 + seq) % 5000) AS ad_id,
    1 + ((90000000 + seq) % 200) AS game_id,
    1 + ((90000000 + seq) % 20) AS platform_id,
    ELT(1 + ((90000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((90000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((90000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((90000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((90000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((90000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((90000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((90000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((90000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((90000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((90000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((90000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((90000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (90000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (90000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (90000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (90000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (90000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 4 DAY), INTERVAL ((90000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((91000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 4 DAY), INTERVAL ((91000000 + seq) % 86400) SECOND) AS stat_time,
    91000000 + seq AS order_id,
    1000000 + ((91000000 + seq) % 500000000) AS user_id,
    200000000 + 91000000 + seq AS round_id,
    10001 + ((91000000 + seq) % 5000) AS ad_id,
    1 + ((91000000 + seq) % 200) AS game_id,
    1 + ((91000000 + seq) % 20) AS platform_id,
    ELT(1 + ((91000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((91000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((91000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((91000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((91000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((91000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((91000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((91000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((91000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((91000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((91000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((91000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((91000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (91000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (91000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (91000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (91000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (91000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 4 DAY), INTERVAL ((91000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((92000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 4 DAY), INTERVAL ((92000000 + seq) % 86400) SECOND) AS stat_time,
    92000000 + seq AS order_id,
    1000000 + ((92000000 + seq) % 500000000) AS user_id,
    200000000 + 92000000 + seq AS round_id,
    10001 + ((92000000 + seq) % 5000) AS ad_id,
    1 + ((92000000 + seq) % 200) AS game_id,
    1 + ((92000000 + seq) % 20) AS platform_id,
    ELT(1 + ((92000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((92000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((92000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((92000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((92000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((92000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((92000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((92000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((92000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((92000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((92000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((92000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((92000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (92000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (92000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (92000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (92000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (92000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 4 DAY), INTERVAL ((92000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((93000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 4 DAY), INTERVAL ((93000000 + seq) % 86400) SECOND) AS stat_time,
    93000000 + seq AS order_id,
    1000000 + ((93000000 + seq) % 500000000) AS user_id,
    200000000 + 93000000 + seq AS round_id,
    10001 + ((93000000 + seq) % 5000) AS ad_id,
    1 + ((93000000 + seq) % 200) AS game_id,
    1 + ((93000000 + seq) % 20) AS platform_id,
    ELT(1 + ((93000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((93000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((93000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((93000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((93000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((93000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((93000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((93000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((93000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((93000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((93000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((93000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((93000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (93000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (93000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (93000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (93000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (93000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 4 DAY), INTERVAL ((93000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((94000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 4 DAY), INTERVAL ((94000000 + seq) % 86400) SECOND) AS stat_time,
    94000000 + seq AS order_id,
    1000000 + ((94000000 + seq) % 500000000) AS user_id,
    200000000 + 94000000 + seq AS round_id,
    10001 + ((94000000 + seq) % 5000) AS ad_id,
    1 + ((94000000 + seq) % 200) AS game_id,
    1 + ((94000000 + seq) % 20) AS platform_id,
    ELT(1 + ((94000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((94000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((94000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((94000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((94000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((94000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((94000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((94000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((94000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((94000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((94000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((94000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((94000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (94000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (94000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (94000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (94000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (94000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 4 DAY), INTERVAL ((94000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((95000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 4 DAY), INTERVAL ((95000000 + seq) % 86400) SECOND) AS stat_time,
    95000000 + seq AS order_id,
    1000000 + ((95000000 + seq) % 500000000) AS user_id,
    200000000 + 95000000 + seq AS round_id,
    10001 + ((95000000 + seq) % 5000) AS ad_id,
    1 + ((95000000 + seq) % 200) AS game_id,
    1 + ((95000000 + seq) % 20) AS platform_id,
    ELT(1 + ((95000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((95000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((95000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((95000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((95000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((95000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((95000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((95000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((95000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((95000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((95000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((95000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((95000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (95000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (95000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (95000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (95000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (95000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 4 DAY), INTERVAL ((95000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((96000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 4 DAY), INTERVAL ((96000000 + seq) % 86400) SECOND) AS stat_time,
    96000000 + seq AS order_id,
    1000000 + ((96000000 + seq) % 500000000) AS user_id,
    200000000 + 96000000 + seq AS round_id,
    10001 + ((96000000 + seq) % 5000) AS ad_id,
    1 + ((96000000 + seq) % 200) AS game_id,
    1 + ((96000000 + seq) % 20) AS platform_id,
    ELT(1 + ((96000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((96000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((96000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((96000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((96000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((96000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((96000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((96000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((96000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((96000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((96000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((96000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((96000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (96000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (96000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (96000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (96000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (96000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 4 DAY), INTERVAL ((96000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((97000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 4 DAY), INTERVAL ((97000000 + seq) % 86400) SECOND) AS stat_time,
    97000000 + seq AS order_id,
    1000000 + ((97000000 + seq) % 500000000) AS user_id,
    200000000 + 97000000 + seq AS round_id,
    10001 + ((97000000 + seq) % 5000) AS ad_id,
    1 + ((97000000 + seq) % 200) AS game_id,
    1 + ((97000000 + seq) % 20) AS platform_id,
    ELT(1 + ((97000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((97000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((97000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((97000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((97000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((97000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((97000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((97000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((97000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((97000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((97000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((97000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((97000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (97000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (97000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (97000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (97000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (97000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 4 DAY), INTERVAL ((97000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((98000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 4 DAY), INTERVAL ((98000000 + seq) % 86400) SECOND) AS stat_time,
    98000000 + seq AS order_id,
    1000000 + ((98000000 + seq) % 500000000) AS user_id,
    200000000 + 98000000 + seq AS round_id,
    10001 + ((98000000 + seq) % 5000) AS ad_id,
    1 + ((98000000 + seq) % 200) AS game_id,
    1 + ((98000000 + seq) % 20) AS platform_id,
    ELT(1 + ((98000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((98000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((98000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((98000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((98000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((98000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((98000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((98000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((98000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((98000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((98000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((98000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((98000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (98000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (98000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (98000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (98000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (98000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 4 DAY), INTERVAL ((98000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((99000000 + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL 4 DAY), INTERVAL ((99000000 + seq) % 86400) SECOND) AS stat_time,
    99000000 + seq AS order_id,
    1000000 + ((99000000 + seq) % 500000000) AS user_id,
    200000000 + 99000000 + seq AS round_id,
    10001 + ((99000000 + seq) % 5000) AS ad_id,
    1 + ((99000000 + seq) % 200) AS game_id,
    1 + ((99000000 + seq) % 20) AS platform_id,
    ELT(1 + ((99000000 + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((99000000 + seq) % 3) AS status,
    0 AS deleted,
    CAST(((99000000 + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((99000000 + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((99000000 + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((99000000 + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((99000000 + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((99000000 + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((99000000 + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((99000000 + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((99000000 + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((99000000 + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((99000000 + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (99000000 + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (99000000 + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (99000000 + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (99000000 + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (99000000 + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL 4 DAY), INTERVAL ((99000000 + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < 1000000;

