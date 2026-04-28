USE bench_columnar_perf_xlarge;
USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 8 DAY AS stat_day,
    1000000 + 80000000 + seq AS user_id,
    1 + ((80000000 + seq) % 100) AS game_id,
    1 + ((80000000 + seq) % 200) AS merchant_id,
    CAST(((80000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((80000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 8 DAY AS stat_day,
    1000000 + 81000000 + seq AS user_id,
    1 + ((81000000 + seq) % 100) AS game_id,
    1 + ((81000000 + seq) % 200) AS merchant_id,
    CAST(((81000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((81000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 8 DAY AS stat_day,
    1000000 + 82000000 + seq AS user_id,
    1 + ((82000000 + seq) % 100) AS game_id,
    1 + ((82000000 + seq) % 200) AS merchant_id,
    CAST(((82000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((82000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 8 DAY AS stat_day,
    1000000 + 83000000 + seq AS user_id,
    1 + ((83000000 + seq) % 100) AS game_id,
    1 + ((83000000 + seq) % 200) AS merchant_id,
    CAST(((83000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((83000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 8 DAY AS stat_day,
    1000000 + 84000000 + seq AS user_id,
    1 + ((84000000 + seq) % 100) AS game_id,
    1 + ((84000000 + seq) % 200) AS merchant_id,
    CAST(((84000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((84000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 8 DAY AS stat_day,
    1000000 + 85000000 + seq AS user_id,
    1 + ((85000000 + seq) % 100) AS game_id,
    1 + ((85000000 + seq) % 200) AS merchant_id,
    CAST(((85000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((85000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 8 DAY AS stat_day,
    1000000 + 86000000 + seq AS user_id,
    1 + ((86000000 + seq) % 100) AS game_id,
    1 + ((86000000 + seq) % 200) AS merchant_id,
    CAST(((86000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((86000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 8 DAY AS stat_day,
    1000000 + 87000000 + seq AS user_id,
    1 + ((87000000 + seq) % 100) AS game_id,
    1 + ((87000000 + seq) % 200) AS merchant_id,
    CAST(((87000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((87000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 8 DAY AS stat_day,
    1000000 + 88000000 + seq AS user_id,
    1 + ((88000000 + seq) % 100) AS game_id,
    1 + ((88000000 + seq) % 200) AS merchant_id,
    CAST(((88000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((88000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 8 DAY AS stat_day,
    1000000 + 89000000 + seq AS user_id,
    1 + ((89000000 + seq) % 100) AS game_id,
    1 + ((89000000 + seq) % 200) AS merchant_id,
    CAST(((89000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((89000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

