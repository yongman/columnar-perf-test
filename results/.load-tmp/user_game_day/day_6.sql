USE bench_columnar_perf_xlarge;
USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 6 DAY AS stat_day,
    1000000 + 60000000 + seq AS user_id,
    1 + ((60000000 + seq) % 100) AS game_id,
    1 + ((60000000 + seq) % 200) AS merchant_id,
    CAST(((60000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((60000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 6 DAY AS stat_day,
    1000000 + 61000000 + seq AS user_id,
    1 + ((61000000 + seq) % 100) AS game_id,
    1 + ((61000000 + seq) % 200) AS merchant_id,
    CAST(((61000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((61000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 6 DAY AS stat_day,
    1000000 + 62000000 + seq AS user_id,
    1 + ((62000000 + seq) % 100) AS game_id,
    1 + ((62000000 + seq) % 200) AS merchant_id,
    CAST(((62000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((62000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 6 DAY AS stat_day,
    1000000 + 63000000 + seq AS user_id,
    1 + ((63000000 + seq) % 100) AS game_id,
    1 + ((63000000 + seq) % 200) AS merchant_id,
    CAST(((63000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((63000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 6 DAY AS stat_day,
    1000000 + 64000000 + seq AS user_id,
    1 + ((64000000 + seq) % 100) AS game_id,
    1 + ((64000000 + seq) % 200) AS merchant_id,
    CAST(((64000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((64000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 6 DAY AS stat_day,
    1000000 + 65000000 + seq AS user_id,
    1 + ((65000000 + seq) % 100) AS game_id,
    1 + ((65000000 + seq) % 200) AS merchant_id,
    CAST(((65000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((65000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 6 DAY AS stat_day,
    1000000 + 66000000 + seq AS user_id,
    1 + ((66000000 + seq) % 100) AS game_id,
    1 + ((66000000 + seq) % 200) AS merchant_id,
    CAST(((66000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((66000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 6 DAY AS stat_day,
    1000000 + 67000000 + seq AS user_id,
    1 + ((67000000 + seq) % 100) AS game_id,
    1 + ((67000000 + seq) % 200) AS merchant_id,
    CAST(((67000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((67000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 6 DAY AS stat_day,
    1000000 + 68000000 + seq AS user_id,
    1 + ((68000000 + seq) % 100) AS game_id,
    1 + ((68000000 + seq) % 200) AS merchant_id,
    CAST(((68000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((68000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 6 DAY AS stat_day,
    1000000 + 69000000 + seq AS user_id,
    1 + ((69000000 + seq) % 100) AS game_id,
    1 + ((69000000 + seq) % 200) AS merchant_id,
    CAST(((69000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((69000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

