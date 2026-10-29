#!/usr/bin/env python3
"""Static UI-performance regression guards for the decoded Cinemana APK."""
from pathlib import Path
from xml.etree import ElementTree as ET

root = Path(__file__).resolve().parents[1]
layout_dir = root / "Cinemana_PATCH252_Project/app/res/layout"
android = "{http://schemas.android.com/apk/res/android}"
app = "{http://schemas.android.com/apk/res-auto}"


def load(name):
    return ET.parse(layout_dir / name).getroot()


def by_id(name, identity):
    matches = [item for item in load(name).iter()
               if item.get(android + "id") == "@id/" + identity]
    assert len(matches) == 1, (name, identity, len(matches))
    return matches[0]


def viewport(name, identity):
    item = by_id(name, identity)
    assert item.get(android + "layout_height") in ("0dp", "0.0dip"), (name, "unbounded vertical list")
    assert item.get(app + "layout_constraintTop_toTopOf") == "parent", name
    assert item.get(app + "layout_constraintBottom_toBottomOf") == "parent", name


viewport("fragment_home.xml", "home_page_main_recycler")
viewport("fragment_franchises.xml", "home_page_franchises_view")
assert load("fragment_franchises.xml").get(android + "animateLayoutChanges") == "false"

# Continuous marquee invalidations on dozens of recycled text labels compete with fling frames.
posters = ("item_base_video.xml", "item_base_video_horizontal.xml",
           "item_base_video_wide.xml", "horizontal_scroll_videos_layout.xml", "item_slider.xml")
for name in posters:
    for node in load(name).iter():
        assert node.get(android + "ellipsize") != "marquee", (name, "continuous marquee")
        for key, value in node.attrib.items():
            if key.endswith("fadeDuration"):
                assert int(value) <= 150, (name, "long concurrent poster fades", value)

runtime = (root / "patches/local-account/src/com/shabakaty/cinemana/local/LocalRuntime.java").read_text()
episode_method = runtime.split("static void observeEpisodes(", 1)[1].split("static void schedule()", 1)[0]
assert episode_method.index("NETWORK.execute(") < episode_method.index("JSON.i(value)"), "season JSON parsed on UI callback"
# Phase 2: native scroll callbacks and adapter invalidation are performance-critical.
smali = root / "Cinemana_PATCH252_Project/app/smali"
def source(path):
    return (smali / path).read_text()

def smali_method(data, declaration):
    assert declaration in data, declaration
    return data.split(declaration, 1)[1].split(".end method", 1)[0]

adapter = smali_method(source("com/shabakaty/downloader/ej.smali"),
                       ".method public e(Ljava/util/List;)V")
assert adapter.index("->equals(Ljava/lang/Object;)Z") < adapter.index("Landroidx/recyclerview/widget/j;->b("), "DiffUtil still always runs"
assert adapter.count(":perf_no_change") == 2 and ":perf_calculate_diff" in adapter, "missing no-op update guard"

horizontal = source("com/shabakaty/downloader/gv1.smali")
callback = smali_method(horizontal,
                        ".method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V")
assert "java/lang/Integer;->valueOf" not in callback, "onScrolled boxes item count"
assert "Lcom/shabakaty/downloader/gv1;->c:I" in callback, "pagination guard missing"
assert callback.index("iput v0, p0, Lcom/shabakaty/downloader/gv1;->c:I") < callback.index("->invoke()Ljava/lang/Object;"), "callback not edge-triggered"
assert "if-lez v0, :perf_done" in callback, "empty carousel may request another page"

vertical = source("com/shabakaty/downloader/n65.smali")
scroll = smali_method(vertical,
                      ".method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V")
assert scroll.count("Lcom/shabakaty/downloader/n65;->b:I") >= 4, "scroll FAB guard missing"
assert "if-eq v0, v1, :goto_1" in scroll, "redundant FAB show/hide calls"

for path in (
    "com/shabakaty/downloader/vt1.smali",
    "com/shabakaty/cinemana/ui/home_fragment/HorizontalScrollVideosView.smali",
    "com/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView.smali",
    "com/shabakaty/cinemana/ui/home_fragment/FranchisesRecyclerView.smali",
):
    assert "->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$j;)V" in source(path), path

# Detect accidentally duplicated method labels in modified Smali classes.
for path in ("com/shabakaty/downloader/ej.smali", "com/shabakaty/downloader/gv1.smali",
             "com/shabakaty/downloader/n65.smali"):
    data = source(path)
    assert data.count(".method ") == data.count(".end method"), path
    for method in data.split(".method ")[1:]:
        body = method.split(".end method")[0]
        labels = [line.strip() for line in body.splitlines() if line.strip().startswith(":")]
        assert len(labels) == len(set(labels)), (path, "duplicate branch label")


# Phase 3: instrumentation must be explicitly wired, built and bounded.
diag = (root / "patches/local-account/src/com/shabakaty/cinemana/local/UiPerfDiag.java").read_text()
assert 'main_over_250ms' in diag and 'captureLocked' in diag
assert 'probeMainThread' in diag and 'MAIN.post' in diag
assert 'if (snap.hasData()) writeSample(snap,cpuDelta);' in diag
assert 'next!=null && !next.equals(screen)' in diag
assert 'addOnFrameMetricsAvailableListener' in diag and 'removeOnFrameMetricsAvailableListener' in diag
assert 'LAYOUT_MEASURE_DURATION' in diag and 'DRAW_DURATION' in diag
assert 'scroll(int area, int delta)' in diag and 'diff(long startedNanos)' in diag
assert 'LOG_LIMIT_BYTES' in diag and 'ui_performance.jsonl' in diag
assert 'getFilesDir()' in diag and 'Cinemana/work/log' in diag
assert 'getNativeHeapAllocatedSize' in diag and 'getElapsedCpuTime' in diag
assert 'BUILD = "PATCH278"' in diag
for unexpected in ('getAccount(', 'getToken(', 'getTitle(', 'getUrl(', 'getRequestBody('):
    assert unexpected not in diag, ('sensitive telemetry value', unexpected)

home_activity = source("com/shabakaty/cinemana/ui/home_activity/HomeActivity.smali")
assert 'UiPerfDiag;->install(Landroid/app/Activity;)V' in home_activity
home_fragment = source("com/shabakaty/downloader/vt1.smali")
assert 'HomeScrollPerfListener;-><init>()V' in home_fragment
assert 'home_visible' in home_fragment and 'home_destroy_view' in home_fragment
details_fragment = source("com/shabakaty/downloader/d15.smali")
assert 'detail_visible' in details_fragment and 'detail_view_created' in details_fragment
assert 'UiPerfDiag;->diff(J)V' in adapter and 'UiPerfDiag;->skippedDiff()V' in adapter
assert 'UiPerfDiag;->scroll(II)V' in horizontal and 'UiPerfDiag;->scroll(II)V' in vertical
scroll_observer = (root / "Cinemana_PATCH252_Project/app/smali_classes6/com/shabakaty/cinemana/local/HomeScrollPerfListener.smali").read_text()
assert 'UiPerfDiag;->scroll(II)V' in scroll_observer
print("PASS Phase 3 bounded FrameMetrics tracing, lifecycle probes, and non-sensitive telemetry wiring")

print("PASS Phase 2 adapter diff guards, pagination debounce, FAB state, and RecyclerView animation policy")

print("PASS viewport-bound scrolling, static text labels, bounded image fades and off-thread episode parsing")
