#!/usr/bin/env python3
"""Offline contract tests for PATCH277–PATCH294 diagnostic report parsing."""
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
        {"schema":1, "build":"PATCH281", "session":42, "utc_ms":2200,
         "screen":"home", "frames":4, "frame_avg_ms":15, "frame_max_ms":28,
         "over_32ms":0, "over_50ms":0, "over_100ms":0,
         "row_1_bind_count":8, "row_1_bind_max_ms":7.2,
         "row_1_create_count":3, "row_1_create_max_ms":22.5},
        {"schema":1, "build":"PATCH282", "session":42, "utc_ms":2300,
         "screen":"home", "frames":2, "frame_avg_ms":75, "frame_max_ms":145,
         "over_32ms":1, "over_50ms":1, "over_100ms":1,
         "worst_frame_layout_ms":108.3, "worst_frame_command_ms":3.4,
         "worst_frame_swap_ms":0.9, "layout_over_100ms":1,
         "command_over_100ms":0, "theme_apply_count":3,"theme_apply_max_ms":1.2},
        {"schema":1, "build":"PATCH283", "session":42, "utc_ms":2500,
         "screen":"home", "frames":1, "frame_avg_ms":111, "frame_max_ms":111,
         "over_32ms":1, "over_50ms":1, "over_100ms":1,
         "main_stack_view":2, "main_stack_image":1, "main_stack_app":1},
        {"schema":1, "build":"PATCH284", "session":42, "utc_ms":2600,
         "screen":"home", "frames":2, "frame_avg_ms":120, "frame_max_ms":240,
         "over_32ms":1,"over_50ms":1,"over_100ms":1,
         "worst_frame_unknown_ms":190.5,"worst_frame_input_ms":3.5,
         "worst_frame_animation_ms":7.0,"unknown_over_100ms":1,
         "main_stack_binder":1,"main_stack_lock":2},
        {"schema":1, "build":"PATCH285", "session":42, "utc_ms":2700,
         "screen":"home", "frames":1, "frame_avg_ms":13, "frame_max_ms":13,
         "continue_refresh_skipped":3,"continue_refresh_full":1},
        {"schema":1,"build":"PATCH286","session":42,"utc_ms":2800,"screen":"home",
         "frames":2,"frame_avg_ms":8,"frame_max_ms":12,
         "rail_card_create_count":7,"rail_card_create_max_ms":18.6},
        {"schema":1,"build":"PATCH287","session":42,"utc_ms":2900,"screen":"home",
         "frames":2,"frame_avg_ms":9,"frame_max_ms":24,
         "gc_count":2,"gc_time_ms":123,"blocking_gc_count":1,
         "blocking_gc_time_ms":80},
        {"schema":1,"build":"PATCH288","session":42,"utc_ms":2990,
         "event":"main_stall_sample","screen":"home","wait_ms":250,
         "thread_state":"RUNNABLE","bucket":"app",
         "app_sites":["com.shabakaty.downloader.vt1#onResume","com.shabakaty.downloader.hj#onCreate"],
         "framework_site":"android.view.Choreographer#doFrame"},
        {"schema":1,"build":"PATCH288","session":42,"utc_ms":2992,
         "event":"main_stall_sample","screen":"home","wait_ms":580,
         "thread_state":"WAITING","bucket":"binder",
         "app_sites":["com.shabakaty.downloader.vt1#onResume"],
         "framework_site":"android.os.BinderProxy#transact"},
        {"schema":1,"build":"PATCH290","session":42,"utc_ms":3100,
         "screen":"home","frames":1,"frame_avg_ms":10,"frame_max_ms":10,
         "over_32ms":0,"over_50ms":0,"over_100ms":0},
        {"schema":1,"build":"PATCH291","session":42,"utc_ms":3200,
         "screen":"home","frames":3,"frame_avg_ms":9,"frame_max_ms":15,
         "over_32ms":0,"over_50ms":0,"over_100ms":0},
        {"schema":1,"build":"PATCH292","session":42,"utc_ms":3300,
         "screen":"home","frames":2,"frame_avg_ms":9,"frame_max_ms":13,
         "over_32ms":0,"over_50ms":0,"over_100ms":0},
        {"schema":1,"build":"PATCH293","session":42,"utc_ms":3400,
         "screen":"home","frames":4,"frame_avg_ms":8,"frame_max_ms":19,
         "over_32ms":0,"over_50ms":0,"over_100ms":0},
        {"schema":1,"build":"PATCH294","session":42,"utc_ms":3500,
         "screen":"search","frames":5,"frame_avg_ms":6,"frame_max_ms":13,
         "over_32ms":0,"over_50ms":0,"over_100ms":0},
    ]
    target.write_text("\n".join(json.dumps(x) for x in sample) + "\ncorrupt\n", encoding="utf-8")
    records, bad = read_records([target])
    report = aggregate(records)
    assert bad == 1
    assert len(report["sessions"]) == 1 and report["overall"]["frames"] == 49
    assert report["overall"]["over_32ms"] == 6
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
    assert report["overall"]["home_row_types"]["horizontal"]["bind_count"] == 8
    assert report["overall"]["home_row_types"]["horizontal"]["create_max_ms"] == 22.5
    assert report["screens"]["home"]["home_row_types"]["horizontal"]["bind_max_ms"] == 7.2
    assert report["overall"]["layout_over_100ms"] == 1
    assert report["overall"]["theme_apply_count"] == 3
    assert report["overall"]["worst_frame_stages"]["layout"] == 108.3
    assert report["overall"]["main_stack_samples"]["view"] == 2
    assert report["overall"]["main_stack_samples"]["image"] == 1
    assert report["overall"]["main_stack_samples"]["app"] == 1
    assert report["overall"]["unknown_over_100ms"] == 1
    assert report["overall"]["worst_frame_stages"]["unknown"] == 190.5
    assert report["overall"]["worst_frame_stages"]["animation"] == 7.0
    assert report["overall"]["main_stack_samples"]["binder"] == 1
    assert report["overall"]["main_stack_samples"]["lock"] == 2
    assert report["overall"]["continue_refresh_skipped"] == 3
    assert report["overall"]["continue_refresh_full"] == 1
    assert report["screens"]["home"]["continue_refresh_skipped"] == 3
    assert report["overall"]["rail_card_create_count"] == 7
    assert report["overall"]["rail_card_create_max_ms"] == 18.6
    assert report["screens"]["home"]["rail_card_create_count"] == 7
    assert report["overall"]["gc_count"] == 2
    assert report["overall"]["gc_time_ms"] == 123
    assert report["overall"]["blocking_gc_count"] == 1
    assert report["overall"]["blocking_gc_time_ms"] == 80
    assert report["screens"]["home"]["blocking_gc_time_ms"] == 80
    assert report["events"]["main_stall_sample"] == 2
    assert report["main_stalls"]["samples"] == 2
    assert report["main_stalls"]["longest_wait_ms"] == 580
    assert report["main_stalls"]["by_thread_state"] == {"RUNNABLE":1,"WAITING":1}
    assert report["main_stalls"]["by_bucket"] == {"app":1,"binder":1}
    assert report["main_stalls"]["by_screen"] == {"home":2}
    assert report["main_stalls"]["app_hotspots"][0]["site"] == "com.shabakaty.downloader.vt1#onResume"
    assert report["main_stalls"]["app_hotspots"][0]["samples"] == 2
    assert report["events"]["detail_visible"] == 1
    assert report["worst_windows"][0]["screen"] == "home"
    assert "By screen" in markdown(report, bad)
    print("PASS PATCH277/PATCH278 offline UI telemetry report parsing, aggregation, privacy-safe output and malformed-line handling")
