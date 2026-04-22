USE bench_columnar_perf;

ANALYZE TABLE fact_order_wide, user_game_day;

ALTER TABLE fact_order_wide COMPACT TIFLASH REPLICA;
ALTER TABLE user_game_day COMPACT TIFLASH REPLICA;

ANALYZE TABLE fact_order_wide, user_game_day;
