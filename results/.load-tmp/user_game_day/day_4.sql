USE bench_columnar_perf_xlarge;
USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 4 DAY AS stat_day,
    1000000 + 40000000 + seq AS user_id,
    1 + ((40000000 + seq) % 100) AS game_id,
    1 + ((40000000 + seq) % 200) AS merchant_id,
    CAST(((40000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((40000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 4 DAY AS stat_day,
    1000000 + 41000000 + seq AS user_id,
    1 + ((41000000 + seq) % 100) AS game_id,
    1 + ((41000000 + seq) % 200) AS merchant_id,
    CAST(((41000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((41000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 4 DAY AS stat_day,
    1000000 + 42000000 + seq AS user_id,
    1 + ((42000000 + seq) % 100) AS game_id,
    1 + ((42000000 + seq) % 200) AS merchant_id,
    CAST(((42000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((42000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 4 DAY AS stat_day,
    1000000 + 43000000 + seq AS user_id,
    1 + ((43000000 + seq) % 100) AS game_id,
    1 + ((43000000 + seq) % 200) AS merchant_id,
    CAST(((43000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((43000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 4 DAY AS stat_day,
    1000000 + 44000000 + seq AS user_id,
    1 + ((44000000 + seq) % 100) AS game_id,
    1 + ((44000000 + seq) % 200) AS merchant_id,
    CAST(((44000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((44000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 4 DAY AS stat_day,
    1000000 + 45000000 + seq AS user_id,
    1 + ((45000000 + seq) % 100) AS game_id,
    1 + ((45000000 + seq) % 200) AS merchant_id,
    CAST(((45000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((45000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 4 DAY AS stat_day,
    1000000 + 46000000 + seq AS user_id,
    1 + ((46000000 + seq) % 100) AS game_id,
    1 + ((46000000 + seq) % 200) AS merchant_id,
    CAST(((46000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((46000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 4 DAY AS stat_day,
    1000000 + 47000000 + seq AS user_id,
    1 + ((47000000 + seq) % 100) AS game_id,
    1 + ((47000000 + seq) % 200) AS merchant_id,
    CAST(((47000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((47000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 4 DAY AS stat_day,
    1000000 + 48000000 + seq AS user_id,
    1 + ((48000000 + seq) % 100) AS game_id,
    1 + ((48000000 + seq) % 200) AS merchant_id,
    CAST(((48000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((48000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 4 DAY AS stat_day,
    1000000 + 49000000 + seq AS user_id,
    1 + ((49000000 + seq) % 100) AS game_id,
    1 + ((49000000 + seq) % 200) AS merchant_id,
    CAST(((49000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((49000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

