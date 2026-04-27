USE bench_columnar_perf_large;
USE bench_columnar_perf_large;
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 8 DAY AS stat_day,
    1000000 + 8000000 + seq AS user_id,
    1 + ((8000000 + seq) % 100) AS game_id,
    1 + ((8000000 + seq) % 200) AS merchant_id,
    CAST(((8000000 + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((8000000 + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 1000000;

