USE bench_columnar_perf_xlarge;
USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 5 DAY AS stat_day,
    1000000 + 50000000 + seq AS user_id,
    1 + ((50000000 + seq) % 100) AS game_id,
    1 + ((50000000 + seq) % 200) AS merchant_id,
    CAST(((50000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((50000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 5 DAY AS stat_day,
    1000000 + 51000000 + seq AS user_id,
    1 + ((51000000 + seq) % 100) AS game_id,
    1 + ((51000000 + seq) % 200) AS merchant_id,
    CAST(((51000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((51000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 5 DAY AS stat_day,
    1000000 + 52000000 + seq AS user_id,
    1 + ((52000000 + seq) % 100) AS game_id,
    1 + ((52000000 + seq) % 200) AS merchant_id,
    CAST(((52000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((52000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 5 DAY AS stat_day,
    1000000 + 53000000 + seq AS user_id,
    1 + ((53000000 + seq) % 100) AS game_id,
    1 + ((53000000 + seq) % 200) AS merchant_id,
    CAST(((53000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((53000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 5 DAY AS stat_day,
    1000000 + 54000000 + seq AS user_id,
    1 + ((54000000 + seq) % 100) AS game_id,
    1 + ((54000000 + seq) % 200) AS merchant_id,
    CAST(((54000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((54000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 5 DAY AS stat_day,
    1000000 + 55000000 + seq AS user_id,
    1 + ((55000000 + seq) % 100) AS game_id,
    1 + ((55000000 + seq) % 200) AS merchant_id,
    CAST(((55000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((55000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 5 DAY AS stat_day,
    1000000 + 56000000 + seq AS user_id,
    1 + ((56000000 + seq) % 100) AS game_id,
    1 + ((56000000 + seq) % 200) AS merchant_id,
    CAST(((56000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((56000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 5 DAY AS stat_day,
    1000000 + 57000000 + seq AS user_id,
    1 + ((57000000 + seq) % 100) AS game_id,
    1 + ((57000000 + seq) % 200) AS merchant_id,
    CAST(((57000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((57000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 5 DAY AS stat_day,
    1000000 + 58000000 + seq AS user_id,
    1 + ((58000000 + seq) % 100) AS game_id,
    1 + ((58000000 + seq) % 200) AS merchant_id,
    CAST(((58000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((58000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 5 DAY AS stat_day,
    1000000 + 59000000 + seq AS user_id,
    1 + ((59000000 + seq) % 100) AS game_id,
    1 + ((59000000 + seq) % 200) AS merchant_id,
    CAST(((59000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((59000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

