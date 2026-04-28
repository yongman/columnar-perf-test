USE bench_columnar_perf_xlarge;
USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 0 DAY AS stat_day,
    1000000 + 0 + seq AS user_id,
    1 + ((0 + seq) % 100) AS game_id,
    1 + ((0 + seq) % 200) AS merchant_id,
    CAST(((0 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((0 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 0 DAY AS stat_day,
    1000000 + 1000000 + seq AS user_id,
    1 + ((1000000 + seq) % 100) AS game_id,
    1 + ((1000000 + seq) % 200) AS merchant_id,
    CAST(((1000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((1000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 0 DAY AS stat_day,
    1000000 + 2000000 + seq AS user_id,
    1 + ((2000000 + seq) % 100) AS game_id,
    1 + ((2000000 + seq) % 200) AS merchant_id,
    CAST(((2000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((2000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 0 DAY AS stat_day,
    1000000 + 3000000 + seq AS user_id,
    1 + ((3000000 + seq) % 100) AS game_id,
    1 + ((3000000 + seq) % 200) AS merchant_id,
    CAST(((3000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((3000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 0 DAY AS stat_day,
    1000000 + 4000000 + seq AS user_id,
    1 + ((4000000 + seq) % 100) AS game_id,
    1 + ((4000000 + seq) % 200) AS merchant_id,
    CAST(((4000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((4000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 0 DAY AS stat_day,
    1000000 + 5000000 + seq AS user_id,
    1 + ((5000000 + seq) % 100) AS game_id,
    1 + ((5000000 + seq) % 200) AS merchant_id,
    CAST(((5000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((5000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 0 DAY AS stat_day,
    1000000 + 6000000 + seq AS user_id,
    1 + ((6000000 + seq) % 100) AS game_id,
    1 + ((6000000 + seq) % 200) AS merchant_id,
    CAST(((6000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((6000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 0 DAY AS stat_day,
    1000000 + 7000000 + seq AS user_id,
    1 + ((7000000 + seq) % 100) AS game_id,
    1 + ((7000000 + seq) % 200) AS merchant_id,
    CAST(((7000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((7000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 0 DAY AS stat_day,
    1000000 + 8000000 + seq AS user_id,
    1 + ((8000000 + seq) % 100) AS game_id,
    1 + ((8000000 + seq) % 200) AS merchant_id,
    CAST(((8000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((8000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 0 DAY AS stat_day,
    1000000 + 9000000 + seq AS user_id,
    1 + ((9000000 + seq) % 100) AS game_id,
    1 + ((9000000 + seq) % 200) AS merchant_id,
    CAST(((9000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((9000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

