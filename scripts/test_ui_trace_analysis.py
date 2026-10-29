#!/usr/bin/env python3
"""Offline contract tests for the PATCH277 diagnostic report parser."""
import json
import tempfile
from pathlib import Path
from analyze_ui_performance import read_records, aggregate, markdown

with tempfile.TemporaryDirectory() as tmp:
    target = Path(tmp) / "ui_performance.jsonl"
    sample = [
        {"schema":1, "build":"PATCH277", "session":42, "utc_ms":1000,
         "screen":"home", "frames":10, "frame_avg_ms":20, "frame_max_ms":66,
         "over_32ms":3, "over_50ms":1, "over_100ms":0,
         "scroll_home":9, "diff_count":2, "diff_max_ms":14, "diff_skipped":7},
        {"schema":1, "build":"PATCH277", "session":42, "utc_ms":1200, "event":"detail_visible"},
        {"schema":1, "build":"PATCH277", "session":42, "utc_ms":2000,
         "screen":"details", "frames":10, "frame_avg_ms":10, "frame_max_ms":19,
         "over_32ms":0, "over_50ms":0, "over_100ms":0, "poster_failed":1},
    ]
    target.write_text("\n".join(json.dumps(x) for x in sample) + "\ncorrupt\n", encoding="utf-8")
    records, bad = read_records([target])
    report = aggregate(records)
    assert bad == 1
    assert len(report["sessions"]) == 1 and report["overall"]["frames"] == 20
    assert report["overall"]["over_32ms"] == 3
    assert report["overall"]["diff_count"] == 2
    assert report["overall"]["diff_skipped"] == 7
    assert report["overall"]["poster_failed"] == 1
    assert report["screens"]["home"]["scroll_events"] == 9
    assert report["events"]["detail_visible"] == 1
    assert report["worst_windows"][0]["screen"] == "home"
    assert "By screen" in markdown(report, bad)
    print("PASS PATCH277 offline UI telemetry report parsing, aggregation, privacy-safe output and malformed-line handling")
