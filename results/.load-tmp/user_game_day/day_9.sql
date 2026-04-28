USE bench_columnar_perf_xlarge;
USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 9 DAY AS stat_day,
    1000000 + 90000000 + seq AS user_id,
    1 + ((90000000 + seq) % 100) AS game_id,
    1 + ((90000000 + seq) % 200) AS merchant_id,
    CAST(((90000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((90000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 9 DAY AS stat_day,
    1000000 + 91000000 + seq AS user_id,
    1 + ((91000000 + seq) % 100) AS game_id,
    1 + ((91000000 + seq) % 200) AS merchant_id,
    CAST(((91000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((91000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 9 DAY AS stat_day,
    1000000 + 92000000 + seq AS user_id,
    1 + ((92000000 + seq) % 100) AS game_id,
    1 + ((92000000 + seq) % 200) AS merchant_id,
    CAST(((92000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((92000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 9 DAY AS stat_day,
    1000000 + 93000000 + seq AS user_id,
    1 + ((93000000 + seq) % 100) AS game_id,
    1 + ((93000000 + seq) % 200) AS merchant_id,
    CAST(((93000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((93000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 9 DAY AS stat_day,
    1000000 + 94000000 + seq AS user_id,
    1 + ((94000000 + seq) % 100) AS game_id,
    1 + ((94000000 + seq) % 200) AS merchant_id,
    CAST(((94000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((94000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 9 DAY AS stat_day,
    1000000 + 95000000 + seq AS user_id,
    1 + ((95000000 + seq) % 100) AS game_id,
    1 + ((95000000 + seq) % 200) AS merchant_id,
    CAST(((95000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((95000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 9 DAY AS stat_day,
    1000000 + 96000000 + seq AS user_id,
    1 + ((96000000 + seq) % 100) AS game_id,
    1 + ((96000000 + seq) % 200) AS merchant_id,
    CAST(((96000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((96000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 9 DAY AS stat_day,
    1000000 + 97000000 + seq AS user_id,
    1 + ((97000000 + seq) % 100) AS game_id,
    1 + ((97000000 + seq) % 200) AS merchant_id,
    CAST(((97000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((97000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 9 DAY AS stat_day,
    1000000 + 98000000 + seq AS user_id,
    1 + ((98000000 + seq) % 100) AS game_id,
    1 + ((98000000 + seq) % 200) AS merchant_id,
    CAST(((98000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((98000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 9 DAY AS stat_day,
    1000000 + 99000000 + seq AS user_id,
    1 + ((99000000 + seq) % 100) AS game_id,
    1 + ((99000000 + seq) % 200) AS merchant_id,
    CAST(((99000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((99000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

