USE bench_columnar_perf_xlarge;
USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 2 DAY AS stat_day,
    1000000 + 20000000 + seq AS user_id,
    1 + ((20000000 + seq) % 100) AS game_id,
    1 + ((20000000 + seq) % 200) AS merchant_id,
    CAST(((20000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((20000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 2 DAY AS stat_day,
    1000000 + 21000000 + seq AS user_id,
    1 + ((21000000 + seq) % 100) AS game_id,
    1 + ((21000000 + seq) % 200) AS merchant_id,
    CAST(((21000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((21000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 2 DAY AS stat_day,
    1000000 + 22000000 + seq AS user_id,
    1 + ((22000000 + seq) % 100) AS game_id,
    1 + ((22000000 + seq) % 200) AS merchant_id,
    CAST(((22000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((22000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 2 DAY AS stat_day,
    1000000 + 23000000 + seq AS user_id,
    1 + ((23000000 + seq) % 100) AS game_id,
    1 + ((23000000 + seq) % 200) AS merchant_id,
    CAST(((23000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((23000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 2 DAY AS stat_day,
    1000000 + 24000000 + seq AS user_id,
    1 + ((24000000 + seq) % 100) AS game_id,
    1 + ((24000000 + seq) % 200) AS merchant_id,
    CAST(((24000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((24000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 2 DAY AS stat_day,
    1000000 + 25000000 + seq AS user_id,
    1 + ((25000000 + seq) % 100) AS game_id,
    1 + ((25000000 + seq) % 200) AS merchant_id,
    CAST(((25000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((25000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 2 DAY AS stat_day,
    1000000 + 26000000 + seq AS user_id,
    1 + ((26000000 + seq) % 100) AS game_id,
    1 + ((26000000 + seq) % 200) AS merchant_id,
    CAST(((26000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((26000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 2 DAY AS stat_day,
    1000000 + 27000000 + seq AS user_id,
    1 + ((27000000 + seq) % 100) AS game_id,
    1 + ((27000000 + seq) % 200) AS merchant_id,
    CAST(((27000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((27000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 2 DAY AS stat_day,
    1000000 + 28000000 + seq AS user_id,
    1 + ((28000000 + seq) % 100) AS game_id,
    1 + ((28000000 + seq) % 200) AS merchant_id,
    CAST(((28000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((28000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 2 DAY AS stat_day,
    1000000 + 29000000 + seq AS user_id,
    1 + ((29000000 + seq) % 100) AS game_id,
    1 + ((29000000 + seq) % 200) AS merchant_id,
    CAST(((29000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((29000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

