USE bench_columnar_perf;

CREATE TABLE IF NOT EXISTS fact_order_wide (
    merchant_id BIGINT NOT NULL,
    stat_time DATETIME NOT NULL,
    order_id BIGINT NOT NULL,
    user_id BIGINT NOT NULL,
    round_id BIGINT NOT NULL,
    ad_id BIGINT NOT NULL,
    game_id INT NOT NULL,
    platform_id INT NOT NULL,
    currency CHAR(3) NOT NULL,
    status TINYINT NOT NULL,
    deleted TINYINT NOT NULL DEFAULT 0,
    amount DECIMAL(18, 2) NOT NULL,
    valid_amount DECIMAL(18, 2) NOT NULL,
    payout DECIMAL(18, 2) NOT NULL,
    revenue DECIMAL(18, 2) NOT NULL,
    jackpot_prize DECIMAL(18, 2) NOT NULL,
    insurance_turn JSON,
    insurance_river JSON,
    country CHAR(2),
    channel VARCHAR(16),
    device_model VARCHAR(32),
    login_name VARCHAR(64),
    payload_1 VARCHAR(128),
    payload_2 VARCHAR(128),
    payload_3 VARCHAR(128),
    payload_4 VARCHAR(128),
    payload_5 VARCHAR(128),
    updated_at DATETIME NOT NULL,
    PRIMARY KEY (merchant_id, stat_time, order_id)
);

CREATE TABLE IF NOT EXISTS user_game_day (
    stat_day DATE NOT NULL,
    user_id BIGINT NOT NULL,
    game_id INT NOT NULL,
    merchant_id BIGINT NOT NULL,
    bet_amount DECIMAL(18, 2) NOT NULL,
    payout_amount DECIMAL(18, 2) NOT NULL,
    PRIMARY KEY (stat_day, user_id, game_id, merchant_id)
);

ALTER TABLE fact_order_wide SET TIFLASH REPLICA 1;
ALTER TABLE user_game_day SET TIFLASH REPLICA 1;
