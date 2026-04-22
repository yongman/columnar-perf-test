USE bench_columnar_perf;

DROP PROCEDURE IF EXISTS load_fact_order_wide_chunk;
DROP PROCEDURE IF EXISTS load_user_game_day_chunk;

DELIMITER //

CREATE PROCEDURE load_fact_order_wide_chunk(
    IN p_base_order_id BIGINT,
    IN p_day_offset INT,
    IN p_rows_in_chunk INT
)
BEGIN
    INSERT IGNORE INTO fact_order_wide
    SELECT
        1 + ((p_base_order_id + seq) % 200) AS merchant_id,
        TIMESTAMP('2026-03-01 00:00:00') + INTERVAL p_day_offset DAY + INTERVAL ((p_base_order_id + seq) % 86400) SECOND AS stat_time,
        p_base_order_id + seq AS order_id,
        1000000 + ((p_base_order_id + seq) % 500000000) AS user_id,
        200000000 + p_base_order_id + seq AS round_id,
        10001 + ((p_base_order_id + seq) % 5000) AS ad_id,
        1 + ((p_base_order_id + seq) % 200) AS game_id,
        1 + ((p_base_order_id + seq) % 20) AS platform_id,
        ELT(1 + ((p_base_order_id + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
        1 + ((p_base_order_id + seq) % 3) AS status,
        0 AS deleted,
        CAST(((p_base_order_id + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
        CAST(((p_base_order_id + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
        CAST(((p_base_order_id + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
        CAST(((p_base_order_id + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
        CAST(((p_base_order_id + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
        JSON_OBJECT('first', CAST(((p_base_order_id + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
        JSON_OBJECT('second', CAST(((p_base_order_id + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
        ELT(1 + ((p_base_order_id + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
        ELT(1 + ((p_base_order_id + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
        CONCAT('m-', LPAD((p_base_order_id + seq) % 100, 2, '0')) AS device_model,
        CONCAT('user-', LPAD((p_base_order_id + seq) % 500000000, 9, '0')) AS login_name,
        RPAD(CONCAT('p1-', (p_base_order_id + seq) % 1000), 64, 'x') AS payload_1,
        RPAD(CONCAT('p2-', (p_base_order_id + seq) % 2000), 64, 'y') AS payload_2,
        RPAD(CONCAT('p3-', (p_base_order_id + seq) % 3000), 64, 'z') AS payload_3,
        RPAD(CONCAT('p4-', (p_base_order_id + seq) % 4000), 64, 'k') AS payload_4,
        RPAD(CONCAT('p5-', (p_base_order_id + seq) % 5000), 64, 'm') AS payload_5,
        TIMESTAMP('2026-03-01 00:01:00') + INTERVAL p_day_offset DAY + INTERVAL ((p_base_order_id + seq) % 86400) SECOND AS updated_at
    FROM bench_seq_1m
    WHERE seq < p_rows_in_chunk;
END //

CREATE PROCEDURE load_user_game_day_chunk(
    IN p_base_slot BIGINT,
    IN p_day_offset INT,
    IN p_rows_in_chunk INT
)
BEGIN
    INSERT IGNORE INTO user_game_day
    SELECT
        DATE('2026-03-01') + INTERVAL p_day_offset DAY AS stat_day,
        1000000 + p_base_slot + seq AS user_id,
        1 + ((p_base_slot + seq) % 100) AS game_id,
        1 + ((p_base_slot + seq) % 200) AS merchant_id,
        CAST(((p_base_slot + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
        CAST(((p_base_slot + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
    FROM bench_seq_1m
    WHERE seq < p_rows_in_chunk;
END //

DELIMITER ;
