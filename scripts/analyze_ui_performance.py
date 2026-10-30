#!/usr/bin/env python3
"""Summarize numeric Cinemana UI performance diagnostics (no private app data required).

Usage: python3 scripts/analyze_ui_performance.py CL/log/ui_performance.jsonl
       python3 scripts/analyze_ui_performance.py CL/log/ui_performance.previous.jsonl CL/log/ui_performance.jsonl
"""
import argparse
import json
from collections import Counter, defaultdict
from pathlib import Path


def read_records(paths):
    records, invalid = [], 0
    for path in paths:
        try:
            with open(path, encoding="utf-8") as file:
                for line in file:
                    try:
                        obj = json.loads(line)
                        if isinstance(obj, dict) and obj.get("schema") == 1 and obj.get("build") in ("PATCH277", "PATCH278", "PATCH279", "PATCH280", "PATCH281", "PATCH282", "PATCH283", "PATCH284", "PATCH285", "PATCH286", "PATCH287"):
                            records.append(obj)
                        else:
                            invalid += 1
                    except (ValueError, TypeError):
                        invalid += 1
        except OSError as exc:
            raise SystemExit(f"Cannot read {path}: {exc}")
    # Files can be uploaded in any order; keep the event timeline correct.
    records.sort(key=lambda obj: (obj.get("utc_ms", 0), obj.get("elapsed_ms", 0)))
    return records, invalid


def aggregate(records):
    metrics = [r for r in records if "frames" in r]
    events = [r for r in records if "event" in r]
    groups = defaultdict(list)
    for r in metrics:
        # Screen here is only a fixed fragment/activity category, not user content.
        groups[str(r.get("screen", "unknown"))].append(r)

    def totals(rows):
        frames = sum(int(r.get("frames", 0)) for r in rows)
        slow = sum(int(r.get("over_32ms", 0)) for r in rows)
        average_ms = (
            sum(float(r.get("frame_avg_ms", 0)) * int(r.get("frames", 0)) for r in rows)
            / frames if frames else 0.0
        )
        return {
            "windows": len(rows),
            "frames": frames,
            "avg_frame_ms": round(average_ms, 2),
            "max_frame_ms": round(max((float(r.get("frame_max_ms", 0)) for r in rows), default=0.0), 2),
            "over_32ms": slow,
            "over_50ms": sum(int(r.get("over_50ms", 0)) for r in rows),
            "over_100ms": sum(int(r.get("over_100ms", 0)) for r in rows),
            "slow_32_pct": round(100 * slow / frames, 2) if frames else 0.0,
            "diff_count": sum(int(r.get("diff_count", 0)) for r in rows),
            "diff_max_ms": round(max((float(r.get("diff_max_ms", 0)) for r in rows), default=0), 2),
            "diff_skipped": sum(int(r.get("diff_skipped", 0)) for r in rows),
            "scroll_events": sum(
                int(r.get("scroll_home", 0)) + int(r.get("scroll_horizontal", 0)) + int(r.get("scroll_vertical", 0))
                for r in rows
            ),
            "pagination": sum(int(r.get("pagination", 0)) for r in rows),
            "poster_start": sum(int(r.get("poster_start", 0)) for r in rows),
            "poster_success": sum(int(r.get("poster_success", 0)) for r in rows),
            "poster_failed": sum(int(r.get("poster_failed", 0)) for r in rows),
            "peak_java_heap_kb": max((int(r.get("java_heap_used_kb", 0)) for r in rows), default=0),
            "peak_native_heap_kb": max((int(r.get("native_heap_used_kb", 0)) for r in rows), default=0),
            "main_probes": sum(int(r.get("main_probes", 0)) for r in rows),
            "main_over_100ms": sum(int(r.get("main_over_100ms", 0)) for r in rows),
            "main_over_250ms": sum(int(r.get("main_over_250ms", 0)) for r in rows),
            "main_max_ms": round(max((float(r.get("main_max_ms", 0)) for r in rows), default=0), 2),
            "home_refresh_count": sum(int(r.get("home_refresh_count", 0)) for r in rows),
            "continue_refresh_skipped": sum(int(r.get("continue_refresh_skipped",0)) for r in rows),
            "continue_refresh_full": sum(int(r.get("continue_refresh_full",0)) for r in rows),
            "gc_count": sum(int(r.get("gc_count",0)) for r in rows),
            "gc_time_ms": sum(int(r.get("gc_time_ms",0)) for r in rows),
            "blocking_gc_count": sum(int(r.get("blocking_gc_count",0)) for r in rows),
            "blocking_gc_time_ms": sum(int(r.get("blocking_gc_time_ms",0)) for r in rows),
            "rail_card_create_count": sum(int(r.get("rail_card_create_count",0)) for r in rows),
            "rail_card_create_max_ms": round(max((float(r.get("rail_card_create_max_ms",0)) for r in rows),default=0),2),
            "home_refresh_max_ms": round(max((float(r.get("home_refresh_max_ms", 0)) for r in rows), default=0), 2),
            "home_setup_count": sum(int(r.get("home_setup_count", 0)) for r in rows),
            "home_setup_max_ms": round(max((float(r.get("home_setup_max_ms", 0)) for r in rows), default=0), 2),
            "home_inflate_count": sum(int(r.get("home_inflate_count", 0)) for r in rows),
            "home_inflate_max_ms": round(max((float(r.get("home_inflate_max_ms", 0)) for r in rows), default=0), 2),
            "detail_inflate_count": sum(int(r.get("detail_inflate_count", 0)) for r in rows),
            "detail_inflate_max_ms": round(max((float(r.get("detail_inflate_max_ms", 0)) for r in rows), default=0), 2),
            "layout_max_ms": round(max((float(r.get("layout_max_ms", 0)) for r in rows), default=0), 2),
            "draw_max_ms": round(max((float(r.get("draw_max_ms", 0)) for r in rows), default=0), 2),
            "worst_frame_stages": {k: round(max((float(x.get("worst_frame_"+k+"_ms",0)) for x in rows),default=0),2) for k in ("unknown","input","animation","layout","draw","sync","command","swap")},
            "layout_over_100ms":sum(int(x.get("layout_over_100ms",0)) for x in rows),
            "command_over_100ms":sum(int(x.get("command_over_100ms",0)) for x in rows),
            "unknown_over_100ms":sum(int(x.get("unknown_over_100ms",0)) for x in rows),
            "main_stack_samples": {kind:sum(int(x.get("main_stack_"+kind,0)) for x in rows)
                for kind in ("view","image","theme","io","app","system","unknown","binder","lock")},
            "theme_apply_count":sum(int(x.get("theme_apply_count",0)) for x in rows),
            "theme_apply_max_ms":round(max((float(x.get("theme_apply_max_ms",0)) for x in rows),default=0),2),
            "home_row_types": {
                name: {
                    "bind_count": sum(int(r.get(f"row_{type_id}_bind_count", 0)) for r in rows),
                    "bind_max_ms": round(max((float(r.get(f"row_{type_id}_bind_max_ms", 0)) for r in rows), default=0), 2),
                    "create_count": sum(int(r.get(f"row_{type_id}_create_count", 0)) for r in rows),
                    "create_max_ms": round(max((float(r.get(f"row_{type_id}_create_max_ms", 0)) for r in rows), default=0), 2),
                }
                for type_id, name in enumerate(("slider", "horizontal", "advertisement", "franchises", "bottom_groups"))
            },
            "process_cpu_ms": sum(int(r.get("process_cpu_ms", 0)) for r in rows),
        }

    sorted_windows = sorted(
        metrics,
        key=lambda r: (int(r.get("over_100ms", 0)), int(r.get("over_50ms", 0)), float(r.get("frame_max_ms", 0))),
        reverse=True,
    )
    worst = [
        {key: r.get(key) for key in (
            "utc_ms", "session", "screen", "frames", "frame_max_ms", "over_32ms",
            "over_50ms", "over_100ms", "layout_sum_ms", "draw_sum_ms",
            "diff_count", "diff_max_ms", "scroll_home", "scroll_horizontal",
            "scroll_vertical", "java_heap_used_kb", "native_heap_used_kb"
        )}
        for r in sorted_windows[:10]
    ]
    return {
        "sessions": sorted({str(r.get("session")) for r in records if "session" in r}),
        "events": dict(Counter(str(r.get("event")) for r in events)),
        "overall": totals(metrics),
        "screens": {screen: totals(rows) for screen, rows in sorted(groups.items())},
        "worst_windows": worst,
    }


def markdown(report, invalid):
    o = report["overall"]
    lines = [
        "# Cinemana PATCH277–PATCH287 UI trace",
        f"Sessions: {len(report['sessions'])} · Metrics windows: {o['windows']} · Invalid/skipped records: {invalid}",
        f"Frames: {o['frames']} · Average: {o['avg_frame_ms']} ms · Worst: {o['max_frame_ms']} ms",
        f"Above 32 ms: {o['over_32ms']} ({o['slow_32_pct']}%) · Above 50 ms: {o['over_50ms']} · Above 100 ms: {o['over_100ms']}",
        f"DiffUtil calls: {o['diff_count']} · Diff skipped: {o['diff_skipped']} · Worst diff: {o['diff_max_ms']} ms",
        f"Scroll events: {o['scroll_events']} · Pagination events: {o['pagination']} · Poster failures: {o['poster_failed']}",
        f"Main-loop checks: {o['main_probes']} · >100 ms: {o['main_over_100ms']} · >250 ms: {o['main_over_250ms']} · Max response: {o['main_max_ms']} ms",
        f"Home refresh: {o['home_refresh_count']} · Worst: {o['home_refresh_max_ms']} ms · Home setup: {o['home_setup_count']} · Worst: {o['home_setup_max_ms']} ms",
        "",
        f"Home inflate: {o['home_inflate_count']} · Worst: {o['home_inflate_max_ms']} ms · Detail inflate: {o['detail_inflate_count']} · Worst: {o['detail_inflate_max_ms']} ms",
        f"Worst layout per frame: {o['layout_max_ms']} ms · Worst draw per frame: {o['draw_max_ms']} ms",
        f"Same-frame slowest breakdown per window: {o['worst_frame_stages']} | layout>100ms: {o['layout_over_100ms']} | command>100ms: {o['command_over_100ms']}",
        f"ThemeEngine.apply: {o['theme_apply_count']} calls; max {o['theme_apply_max_ms']} ms",
        f"Continue resume: skipped identical {o['continue_refresh_skipped']}; full updates {o['continue_refresh_full']}",
        f"Rail card inflation: {o['rail_card_create_count']} items; max {o['rail_card_create_max_ms']} ms",
        f"ART GC: {o['gc_count']} runs, {o['gc_time_ms']} ms, blocking {o['blocking_gc_count']} runs / {o['blocking_gc_time_ms']} ms",
        f"Slow frames: unknown delay over 100ms = {o['unknown_over_100ms']}",
        f"Main-thread blocked stack samples (non-identifying buckets): {o['main_stack_samples']}",
        "",
        "## By screen",
        "| Screen | Frames | Avg ms | Max ms | >32 ms | >50 ms | >100 ms | Scroll callbacks |",
        "|---|---:|---:|---:|---:|---:|---:|---:|",
    ]
    for key, m in report["screens"].items():
        lines.append(f"| {key} | {m['frames']} | {m['avg_frame_ms']} | {m['max_frame_ms']} | {m['over_32ms']} | {m['over_50ms']} | {m['over_100ms']} | {m['scroll_events']} |")
    lines += ["", "## Home row create/bind timing (max of each measured window)",
              "| Section | Binds | Max bind ms | Creates | Max create ms |",
              "|---|---:|---:|---:|---:|"]
    for kind, stats in o["home_row_types"].items():
        lines.append(f"| {kind} | {stats['bind_count']} | {stats['bind_max_ms']} | {stats['create_count']} | {stats['create_max_ms']} |")
    lines += ["", "## Worst 10-second windows", "| UTC ms | Screen | Max ms | >50 ms | >100 ms | Diff max ms |", "|---:|---|---:|---:|---:|---:|"]
    for row in report["worst_windows"]:
        lines.append(f"| {row.get('utc_ms')} | {row.get('screen')} | {row.get('frame_max_ms')} | {row.get('over_50ms')} | {row.get('over_100ms')} | {row.get('diff_max_ms')} |")
    lines += [
        "",
        "Interpretation: FrameMetrics measures app frame durations on Android 7.0+. It is not a GPU trace,",
        "does not prove causality by itself, and reports only frames the window delivered. Compare with",
        "the matching activity/fragment event times and (when available) Perfetto System Trace.",
    ]
    return "\n".join(lines)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("files", type=Path, nargs="+")
    parser.add_argument("--json", action="store_true", help="Machine-readable report")
    args = parser.parse_args()
    records, invalid = read_records(args.files)
    report = aggregate(records)
    print(json.dumps({"report": report, "skipped": invalid}, ensure_ascii=False, indent=2)
          if args.json else markdown(report, invalid))


if __name__ == "__main__":
    main()
