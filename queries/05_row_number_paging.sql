SELECT *
FROM (
    SELECT /*+ read_from_storage(tiflash[fact_order_wide]) */
        order_id,
        user_id,
        merchant_id,
        stat_time,
        amount,
        payout,
        payload_1,
        payload_2,
        ROW_NUMBER() OVER (ORDER BY stat_time DESC, order_id DESC) AS rn
    FROM bench_columnar_perf.fact_order_wide
    WHERE merchant_id = 17
      AND stat_time >= '2026-03-04 00:00:00'
      AND stat_time < '2026-03-07 00:00:00'
      AND deleted = 0
) AS ranked
WHERE rn BETWEEN 1 AND 1000;
