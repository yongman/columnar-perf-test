USE bench_columnar_perf;

-- Base dataset:
--   10 days
--   200,000 rows per day
--   about 2,000,000 rows total

INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 0 DAY AS stat_day,
    1000000 + (seq % 3000000) AS user_id,
    1 + (seq % 100) AS game_id,
    1 + (seq % 200) AS merchant_id,
    CAST((seq % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST((seq % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 200000;

INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 1 DAY AS stat_day,
    1000000 + (seq % 3000000) AS user_id,
    1 + (seq % 100) AS game_id,
    1 + (seq % 200) AS merchant_id,
    CAST((seq % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST((seq % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 200000;

INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 2 DAY AS stat_day,
    1000000 + (seq % 3000000) AS user_id,
    1 + (seq % 100) AS game_id,
    1 + (seq % 200) AS merchant_id,
    CAST((seq % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST((seq % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 200000;

INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 3 DAY AS stat_day,
    1000000 + (seq % 3000000) AS user_id,
    1 + (seq % 100) AS game_id,
    1 + (seq % 200) AS merchant_id,
    CAST((seq % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST((seq % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 200000;

INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 4 DAY AS stat_day,
    1000000 + (seq % 3000000) AS user_id,
    1 + (seq % 100) AS game_id,
    1 + (seq % 200) AS merchant_id,
    CAST((seq % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST((seq % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 200000;

INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 5 DAY AS stat_day,
    1000000 + (seq % 3000000) AS user_id,
    1 + (seq % 100) AS game_id,
    1 + (seq % 200) AS merchant_id,
    CAST((seq % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST((seq % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 200000;

INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 6 DAY AS stat_day,
    1000000 + (seq % 3000000) AS user_id,
    1 + (seq % 100) AS game_id,
    1 + (seq % 200) AS merchant_id,
    CAST((seq % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST((seq % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 200000;

INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 7 DAY AS stat_day,
    1000000 + (seq % 3000000) AS user_id,
    1 + (seq % 100) AS game_id,
    1 + (seq % 200) AS merchant_id,
    CAST((seq % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST((seq % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 200000;

INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 8 DAY AS stat_day,
    1000000 + (seq % 3000000) AS user_id,
    1 + (seq % 100) AS game_id,
    1 + (seq % 200) AS merchant_id,
    CAST((seq % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST((seq % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 200000;

INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL 9 DAY AS stat_day,
    1000000 + (seq % 3000000) AS user_id,
    1 + (seq % 100) AS game_id,
    1 + (seq % 200) AS merchant_id,
    CAST((seq % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST((seq % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < 200000;

-- Seed a few deterministic rows for OR lookup tests.
INSERT IGNORE INTO user_game_day (
    stat_day,
    user_id,
    game_id,
    merchant_id,
    bet_amount,
    payout_amount
)
VALUES
    ('2026-03-05', 9000001, 11, 17, 100.00, 80.00),
    ('2026-03-05', 9000002, 11, 17, 120.00, 92.00),
    ('2026-03-05', 9000003, 12, 17, 150.00, 110.00),
    ('2026-03-05', 9000004, 12, 17, 200.00, 160.00),
    ('2026-03-05', 9000005, 13, 17, 220.00, 170.00),
    ('2026-03-05', 9000006, 13, 17, 260.00, 210.00);
