USE bench_columnar_perf_xlarge;
USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 1 DAY AS stat_day,
    1000000 + 10000000 + seq AS user_id,
    1 + ((10000000 + seq) % 100) AS game_id,
    1 + ((10000000 + seq) % 200) AS merchant_id,
    CAST(((10000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((10000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 1 DAY AS stat_day,
    1000000 + 11000000 + seq AS user_id,
    1 + ((11000000 + seq) % 100) AS game_id,
    1 + ((11000000 + seq) % 200) AS merchant_id,
    CAST(((11000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((11000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 1 DAY AS stat_day,
    1000000 + 12000000 + seq AS user_id,
    1 + ((12000000 + seq) % 100) AS game_id,
    1 + ((12000000 + seq) % 200) AS merchant_id,
    CAST(((12000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((12000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 1 DAY AS stat_day,
    1000000 + 13000000 + seq AS user_id,
    1 + ((13000000 + seq) % 100) AS game_id,
    1 + ((13000000 + seq) % 200) AS merchant_id,
    CAST(((13000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((13000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 1 DAY AS stat_day,
    1000000 + 14000000 + seq AS user_id,
    1 + ((14000000 + seq) % 100) AS game_id,
    1 + ((14000000 + seq) % 200) AS merchant_id,
    CAST(((14000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((14000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 1 DAY AS stat_day,
    1000000 + 15000000 + seq AS user_id,
    1 + ((15000000 + seq) % 100) AS game_id,
    1 + ((15000000 + seq) % 200) AS merchant_id,
    CAST(((15000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((15000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 1 DAY AS stat_day,
    1000000 + 16000000 + seq AS user_id,
    1 + ((16000000 + seq) % 100) AS game_id,
    1 + ((16000000 + seq) % 200) AS merchant_id,
    CAST(((16000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((16000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 1 DAY AS stat_day,
    1000000 + 17000000 + seq AS user_id,
    1 + ((17000000 + seq) % 100) AS game_id,
    1 + ((17000000 + seq) % 200) AS merchant_id,
    CAST(((17000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((17000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 1 DAY AS stat_day,
    1000000 + 18000000 + seq AS user_id,
    1 + ((18000000 + seq) % 100) AS game_id,
    1 + ((18000000 + seq) % 200) AS merchant_id,
    CAST(((18000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((18000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 1 DAY AS stat_day,
    1000000 + 19000000 + seq AS user_id,
    1 + ((19000000 + seq) % 100) AS game_id,
    1 + ((19000000 + seq) % 200) AS merchant_id,
    CAST(((19000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((19000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

