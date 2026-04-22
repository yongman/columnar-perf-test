SELECT /*+ read_from_storage(tiflash[user_game_day]) */
    stat_day,
    user_id,
    game_id,
    merchant_id,
    bet_amount,
    payout_amount
FROM bench_columnar_perf.user_game_day
WHERE (stat_day = '2026-03-05' AND user_id = 9000001 AND game_id = 11 AND merchant_id = 17)
   OR (stat_day = '2026-03-05' AND user_id = 9000002 AND game_id = 11 AND merchant_id = 17)
   OR (stat_day = '2026-03-05' AND user_id = 9000003 AND game_id = 12 AND merchant_id = 17)
   OR (stat_day = '2026-03-05' AND user_id = 9000004 AND game_id = 12 AND merchant_id = 17)
   OR (stat_day = '2026-03-05' AND user_id = 9000005 AND game_id = 13 AND merchant_id = 17)
   OR (stat_day = '2026-03-05' AND user_id = 9000006 AND game_id = 13 AND merchant_id = 17)
ORDER BY user_id;
