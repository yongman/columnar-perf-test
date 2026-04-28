USE bench_columnar_perf_xlarge;
USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 3 DAY AS stat_day,
    1000000 + 30000000 + seq AS user_id,
    1 + ((30000000 + seq) % 100) AS game_id,
    1 + ((30000000 + seq) % 200) AS merchant_id,
    CAST(((30000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((30000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 3 DAY AS stat_day,
    1000000 + 31000000 + seq AS user_id,
    1 + ((31000000 + seq) % 100) AS game_id,
    1 + ((31000000 + seq) % 200) AS merchant_id,
    CAST(((31000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((31000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 3 DAY AS stat_day,
    1000000 + 32000000 + seq AS user_id,
    1 + ((32000000 + seq) % 100) AS game_id,
    1 + ((32000000 + seq) % 200) AS merchant_id,
    CAST(((32000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((32000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 3 DAY AS stat_day,
    1000000 + 33000000 + seq AS user_id,
    1 + ((33000000 + seq) % 100) AS game_id,
    1 + ((33000000 + seq) % 200) AS merchant_id,
    CAST(((33000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((33000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 3 DAY AS stat_day,
    1000000 + 34000000 + seq AS user_id,
    1 + ((34000000 + seq) % 100) AS game_id,
    1 + ((34000000 + seq) % 200) AS merchant_id,
    CAST(((34000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((34000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 3 DAY AS stat_day,
    1000000 + 35000000 + seq AS user_id,
    1 + ((35000000 + seq) % 100) AS game_id,
    1 + ((35000000 + seq) % 200) AS merchant_id,
    CAST(((35000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((35000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 3 DAY AS stat_day,
    1000000 + 36000000 + seq AS user_id,
    1 + ((36000000 + seq) % 100) AS game_id,
    1 + ((36000000 + seq) % 200) AS merchant_id,
    CAST(((36000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((36000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 3 DAY AS stat_day,
    1000000 + 37000000 + seq AS user_id,
    1 + ((37000000 + seq) % 100) AS game_id,
    1 + ((37000000 + seq) % 200) AS merchant_id,
    CAST(((37000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((37000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 3 DAY AS stat_day,
    1000000 + 38000000 + seq AS user_id,
    1 + ((38000000 + seq) % 100) AS game_id,
    1 + ((38000000 + seq) % 200) AS merchant_id,
    CAST(((38000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((38000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 3 DAY AS stat_day,
    1000000 + 39000000 + seq AS user_id,
    1 + ((39000000 + seq) % 100) AS game_id,
    1 + ((39000000 + seq) % 200) AS merchant_id,
    CAST(((39000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((39000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

