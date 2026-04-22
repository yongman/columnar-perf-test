#!/usr/bin/env python3
import argparse
import csv
import math
import pathlib
import statistics
from typing import Dict, List


def read_timings(path: pathlib.Path) -> Dict[str, List[float]]:
    timings: Dict[str, List[float]] = {}
    with path.open("r", encoding="utf-8") as f:
        reader = csv.DictReader(f, delimiter="\t")
        for row in reader:
            timings.setdefault(row["query"], []).append(float(row["elapsed_seconds"]))
    return timings


def read_hashes(path: pathlib.Path) -> Dict[str, Dict[str, str]]:
    hashes: Dict[str, Dict[str, str]] = {}
    with path.open("r", encoding="utf-8") as f:
        reader = csv.DictReader(f, delimiter="\t")
        for row in reader:
            hashes[row["query"]] = row
    return hashes


def percentile(values: List[float], p: float) -> float:
    if not values:
        return float("nan")
    ordered = sorted(values)
    idx = max(0, math.ceil(len(ordered) * p) - 1)
    return ordered[idx]


def summarize(values: List[float]) -> Dict[str, float]:
    return {
        "min": min(values),
        "median": statistics.median(values),
        "avg": statistics.mean(values),
        "p95": percentile(values, 0.95),
        "max": max(values),
    }


def format_seconds(value: float) -> str:
    return f"{value:.6f}"


def main() -> None:
    parser = argparse.ArgumentParser(description="Compare two benchmark result directories.")
    parser.add_argument("--lhs", required=True, help="Left-hand result directory")
    parser.add_argument("--rhs", required=True, help="Right-hand result directory")
    parser.add_argument("--lhs-name", required=True, help="Display name for lhs")
    parser.add_argument("--rhs-name", required=True, help="Display name for rhs")
    parser.add_argument("--output", help="Optional markdown output file")
    args = parser.parse_args()

    lhs_dir = pathlib.Path(args.lhs)
    rhs_dir = pathlib.Path(args.rhs)

    lhs_timings = read_timings(lhs_dir / "timings.tsv")
    rhs_timings = read_timings(rhs_dir / "timings.tsv")
    lhs_hashes = read_hashes(lhs_dir / "hashes.tsv")
    rhs_hashes = read_hashes(rhs_dir / "hashes.tsv")

    queries = sorted(set(lhs_timings.keys()) | set(rhs_timings.keys()))

    lines: List[str] = []
    lines.append(f"# Benchmark Comparison: {args.lhs_name} vs {args.rhs_name}")
    lines.append("")
    lines.append("| Query | Hash Match | LHS Median (s) | RHS Median (s) | RHS / LHS | LHS P95 (s) | RHS P95 (s) |")
    lines.append("| --- | --- | ---: | ---: | ---: | ---: | ---: |")

    for query in queries:
        lhs_values = lhs_timings.get(query)
        rhs_values = rhs_timings.get(query)
        if not lhs_values or not rhs_values:
            lines.append(f"| {query} | missing | - | - | - | - | - |")
            continue

        lhs_summary = summarize(lhs_values)
        rhs_summary = summarize(rhs_values)
        lhs_hash = lhs_hashes.get(query, {}).get("sha256", "")
        rhs_hash = rhs_hashes.get(query, {}).get("sha256", "")
        hash_match = "yes" if lhs_hash and lhs_hash == rhs_hash else "no"
        ratio = rhs_summary["median"] / lhs_summary["median"] if lhs_summary["median"] > 0 else float("nan")

        lines.append(
            "| {query} | {hash_match} | {lhs_median} | {rhs_median} | {ratio:.4f} | {lhs_p95} | {rhs_p95} |".format(
                query=query,
                hash_match=hash_match,
                lhs_median=format_seconds(lhs_summary["median"]),
                rhs_median=format_seconds(rhs_summary["median"]),
                ratio=ratio,
                lhs_p95=format_seconds(lhs_summary["p95"]),
                rhs_p95=format_seconds(rhs_summary["p95"]),
            )
        )

    lines.append("")
    lines.append("## Notes")
    lines.append("")
    lines.append(f"- `RHS / LHS > 1` means `{args.lhs_name}` is faster on median latency.")
    lines.append(f"- `RHS / LHS < 1` means `{args.rhs_name}` is faster on median latency.")
    lines.append("- `Hash Match = no` means the result set content differed and the timing comparison should not be trusted before the mismatch is explained.")

    content = "\n".join(lines) + "\n"

    if args.output:
        out_path = pathlib.Path(args.output)
        out_path.write_text(content, encoding="utf-8")
    else:
        print(content, end="")


if __name__ == "__main__":
    main()
