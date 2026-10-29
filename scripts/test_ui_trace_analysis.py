#!/usr/bin/env python3
"""Offline contract tests for PATCH277–PATCH280 diagnostic report parsing."""
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
        {"schema":1, "build":"PATCH280", "session":42, "utc_ms":2000,
         "screen":"details", "frames":10, "frame_avg_ms":10, "frame_max_ms":19,
         "over_32ms":0, "over_50ms":0, "over_100ms":0, "poster_failed":1, "home_refresh_count":2, "home_refresh_max_ms":120, "home_setup_count":1, "home_setup_max_ms":40, "home_inflate_count":1, "home_inflate_max_ms":34.7, "detail_inflate_count":2, "detail_inflate_max_ms":21.1, "layout_max_ms":13.5, "draw_max_ms":18.4, "main_probes":4, "main_over_100ms":2, "main_max_ms":309},
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
    assert report["overall"]["main_over_100ms"] == 2
    assert report["overall"]["home_inflate_count"] == 1
    assert report["overall"]["detail_inflate_max_ms"] == 21.1
    assert report["overall"]["layout_max_ms"] == 13.5
    assert report["overall"]["home_refresh_count"] == 2
    assert report["overall"]["home_refresh_max_ms"] == 120
    assert report["screens"]["details"]["home_setup_max_ms"] == 40
    assert report["screens"]["details"]["main_max_ms"] == 309
    assert report["screens"]["home"]["scroll_events"] == 9
    assert report["events"]["detail_visible"] == 1
    assert report["worst_windows"][0]["screen"] == "home"
    assert "By screen" in markdown(report, bad)
    print("PASS PATCH277/PATCH278 offline UI telemetry report parsing, aggregation, privacy-safe output and malformed-line handling")
