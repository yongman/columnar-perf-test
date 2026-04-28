USE bench_columnar_perf_xlarge;
USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 7 DAY AS stat_day,
    1000000 + 70000000 + seq AS user_id,
    1 + ((70000000 + seq) % 100) AS game_id,
    1 + ((70000000 + seq) % 200) AS merchant_id,
    CAST(((70000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((70000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 7 DAY AS stat_day,
    1000000 + 71000000 + seq AS user_id,
    1 + ((71000000 + seq) % 100) AS game_id,
    1 + ((71000000 + seq) % 200) AS merchant_id,
    CAST(((71000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((71000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 7 DAY AS stat_day,
    1000000 + 72000000 + seq AS user_id,
    1 + ((72000000 + seq) % 100) AS game_id,
    1 + ((72000000 + seq) % 200) AS merchant_id,
    CAST(((72000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((72000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 7 DAY AS stat_day,
    1000000 + 73000000 + seq AS user_id,
    1 + ((73000000 + seq) % 100) AS game_id,
    1 + ((73000000 + seq) % 200) AS merchant_id,
    CAST(((73000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((73000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 7 DAY AS stat_day,
    1000000 + 74000000 + seq AS user_id,
    1 + ((74000000 + seq) % 100) AS game_id,
    1 + ((74000000 + seq) % 200) AS merchant_id,
    CAST(((74000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((74000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 7 DAY AS stat_day,
    1000000 + 75000000 + seq AS user_id,
    1 + ((75000000 + seq) % 100) AS game_id,
    1 + ((75000000 + seq) % 200) AS merchant_id,
    CAST(((75000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((75000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 7 DAY AS stat_day,
    1000000 + 76000000 + seq AS user_id,
    1 + ((76000000 + seq) % 100) AS game_id,
    1 + ((76000000 + seq) % 200) AS merchant_id,
    CAST(((76000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((76000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 7 DAY AS stat_day,
    1000000 + 77000000 + seq AS user_id,
    1 + ((77000000 + seq) % 100) AS game_id,
    1 + ((77000000 + seq) % 200) AS merchant_id,
    CAST(((77000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((77000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 7 DAY AS stat_day,
    1000000 + 78000000 + seq AS user_id,
    1 + ((78000000 + seq) % 100) AS game_id,
    1 + ((78000000 + seq) % 200) AS merchant_id,
    CAST(((78000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((78000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

USE bench_columnar_perf_xlarge;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 7 DAY AS stat_day,
    1000000 + 79000000 + seq AS user_id,
    1 + ((79000000 + seq) % 100) AS game_id,
    1 + ((79000000 + seq) % 200) AS merchant_id,
    CAST(((79000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((79000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

