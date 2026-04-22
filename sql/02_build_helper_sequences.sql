USE bench_columnar_perf;

CREATE TABLE IF NOT EXISTS bench_digits (
    d TINYINT NOT NULL,
    PRIMARY KEY (d)
);

INSERT IGNORE INTO bench_digits (d)
VALUES (0), (1), (2), (3), (4), (5), (6), (7), (8), (9);

CREATE TABLE IF NOT EXISTS bench_seq_1m (
    seq INT NOT NULL,
    PRIMARY KEY (seq)
);

INSERT IGNORE INTO bench_seq_1m (seq)
SELECT
    a.d
    + 10 * b.d
    + 100 * c.d
    + 1000 * d.d
    + 10000 * e.d
    + 100000 * f.d AS seq
FROM bench_digits AS a
JOIN bench_digits AS b
JOIN bench_digits AS c
JOIN bench_digits AS d
JOIN bench_digits AS e
JOIN bench_digits AS f;

CREATE TABLE IF NOT EXISTS bench_day_offsets (
    day_offset TINYINT NOT NULL,
    PRIMARY KEY (day_offset)
);

INSERT IGNORE INTO bench_day_offsets (day_offset)
SELECT a.d + 10 * b.d
FROM bench_digits AS a
JOIN bench_digits AS b
WHERE a.d + 10 * b.d < 32;
