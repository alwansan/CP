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
assert 'home_refresh_count' in diag and 'home_setup_count' in diag
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
assert 'BUILD = "PATCH285"' in diag
for unexpected in ('getAccount(', 'getToken(', 'getTitle(', 'getUrl(', 'getRequestBody('):
    assert unexpected not in diag, ('sensitive telemetry value', unexpected)

home_activity = source("com/shabakaty/cinemana/ui/home_activity/HomeActivity.smali")
assert 'UiPerfDiag;->install(Landroid/app/Activity;)V' in home_activity
home_fragment = source("com/shabakaty/downloader/vt1.smali")
assert 'HomeScrollPerfListener;-><init>()V' in home_fragment
assert 'home_visible' in home_fragment and 'home_destroy_view' in home_fragment
resume=smali_method(home_fragment, '.method public onResume()V')
created=smali_method(home_fragment, '.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V')
assert resume.count('Continue106;->refresh(Ljava/lang/Object;)V')==1, 'home resume refresh absent'
assert 'Continue106;->refresh(Ljava/lang/Object;)V' not in created, 'redundant full home refresh on view creation'
assert 'UiPerfDiag;->homeRefresh(J)V' in resume and 'UiPerfDiag;->homeSetup(J)V' in created
created_home=smali_method(home_fragment, '.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V')
assert 'RecyclerView;->setHasFixedSize(Z)V' in created_home, 'home viewport must stay fixed when rows update'
assert created_home.index('RecyclerView;->setHasFixedSize(Z)V') > created_home.index('RecyclerView;->setAdapter(')
rows=source("com/shabakaty/downloader/yt1.smali")
assert 'UiPerfDiag;->homeRowBind(IJ)V' in smali_method(rows, '.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V')
assert 'UiPerfDiag;->homeRowCreate(IJ)V' in smali_method(rows, '.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;')
assert 'homeRowBind(int type, long startedNanos)' in diag and 'homeRowCreate(int type, long startedNanos)' in diag
assert 'for(int t=0;t<5;t++)' in diag and 'rowBindCount[type]++' in diag
assert 'BUILD = "PATCH285"' in diag
assert 'UiPerfDiag;->inflate(IJ)V' in smali_method(home_fragment, '.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;')
assert 'home_inflate_begin' in smali_method(home_fragment, '.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;')
assert 'home_inflate_count' in diag and 'detail_inflate_count' in diag
assert 'home_inflate_begin' in diag and 'detail_inflate_begin' in diag
assert 'layout_max_ms' in diag and 'draw_max_ms' in diag
details_fragment = source("com/shabakaty/downloader/d15.smali")
assert 'UiPerfDiag;->inflate(IJ)V' in smali_method(details_fragment, '.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;')
assert 'detail_inflate_begin' in smali_method(details_fragment, '.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;')
vertical_listener = source("com/shabakaty/downloader/n65.smali")
vertical_state = smali_method(vertical_listener,'.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V')
assert '->getItemCount()I' in vertical_state and 'n65;->c:I' in vertical_state and 'UiPerfDiag;->mark(Ljava/lang/String;)V' in vertical_state
assert '->canScrollVertically(I)Z' in vertical_state and ':perf_end' in vertical_state
assert 'n65;->c:I' in smali_method(vertical_listener,'.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V')
assert 'detail_visible' in details_fragment and 'detail_view_created' in details_fragment
assert 'UiPerfDiag;->diff(J)V' in adapter and 'UiPerfDiag;->skippedDiff()V' in adapter
assert 'UiPerfDiag;->scroll(II)V' in horizontal and 'UiPerfDiag;->scroll(II)V' in vertical
scroll_observer = (root / "Cinemana_PATCH252_Project/app/smali_classes6/com/shabakaty/cinemana/local/HomeScrollPerfListener.smali").read_text()
assert 'UiPerfDiag;->scroll(II)V' in scroll_observer
horizontal_u=smali_method(source("com/shabakaty/cinemana/ui/home_fragment/HorizontalScrollVideosView.smali"), '.method public final u()V')
assert 'Continue106;->row(Ljava/lang/Object;)V' not in horizontal_u
assert 'Lcom/shabakaty/downloader/cv1;->M:Lcom/google/android/material/button/MaterialButton;' in horizontal_u
assert 'Landroid/view/View;->setVisibility(I)V' in horizontal_u
theme=(root / "Cinemana_PATCH252_Project/app/smali_classes6/com/shabakaty/cinemana/ca1/ThemeEngine142.smali").read_text()
theme_apply=smali_method(theme, '.method public static apply(Landroid/app/Activity;)V')
assert 'UiPerfDiag;->begin()J' in theme_apply and 'UiPerfDiag;->themeApply(J)V' in theme_apply
assert 'FrameMetrics.SWAP_BUFFERS_DURATION' in diag
assert 'worst_frame_layout_ms' in diag and 'worst_frame_swap_ms' in diag
theme_method=smali_method(theme, '.method public static isGlassEnabled(Landroid/content/Context;)Z')
assert 'return v0' in theme_method and 'const/4 v0, 0x0' in theme_method
assert 'SharedPreferences;->getBoolean' not in theme_method
save_custom=smali_method(theme,'.method public static saveCustom(Landroid/content/Context;ZIIIIIIIIIIIIIIIIII)V')
assert 'const/4 v2, 0x0' in save_custom
studio=(root/"Cinemana_PATCH252_Project/app/smali_classes6/com/shabakaty/cinemana/ca1/ThemeStudio142.smali").read_text()
assert 'glassSwitch' not in studio, "stale uninitialized glass control"
assert 'const/4 v1, 0x0' in smali_method(studio,'.method private saveCustom()V')
assert 'main_stack_view' in diag and 'main_stack_io' in diag
assert 'sampleBlockedMain()' in diag and 'MAIN.getLooper().getThread().getStackTrace()' in diag
assert 'FrameMetrics.UNKNOWN_DELAY_DURATION' in diag
assert 'FrameMetrics.INPUT_HANDLING_DURATION' in diag
assert 'FrameMetrics.ANIMATION_DURATION' in diag
assert 'worst_frame_unknown_ms' in diag and 'unknown_over_100ms' in diag
assert 'main_stack_binder' in diag and 'main_stack_lock' in diag
assert 'Arrays.copyOf(v,92)' in diag
root_created=smali_method(home_fragment,'.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V')
assert 'RecyclerView;->setItemViewCacheSize(I)V' in root_created
assert 'const/4 p2, 0x3' in root_created
childview=source("com/shabakaty/cinemana/ui/home_fragment/HorizontalScrollVideosView.smali")
childctor=smali_method(childview,'.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V')
assert 'RecyclerView;->setItemViewCacheSize(I)V' in childctor
assert childctor.index('RecyclerView;->setItemViewCacheSize(I)V') > childctor.index('RecyclerView;->setAdapter(')
assert 'const/4 p2, 0x3' in childctor
continue_code=(root/"Cinemana_PATCH252_Project/app/smali_classes6/com/shabakaty/cinemana/ca1/Continue106.smali").read_text()
refresh=smali_method(continue_code,'.method public static refresh(Ljava/lang/Object;)V')
stamp=smali_method(continue_code,'.method private static declared-synchronized refreshStateStamp()J')
assert 'lastRefreshAdapter:Ljava/lang/ref/WeakReference;' in continue_code
assert 'lastRefreshStamp:J' in continue_code
assert 'Continue106$Entry;->p:J' in stamp and 'Continue106$Entry;->d:J' in stamp and 'Continue106$Entry;->t:J' in stamp
assert 'List;->equals(Ljava/lang/Object;)Z' in refresh
assert refresh.index('Continue106;->refreshStateStamp()J') < refresh.index('List;->equals(Ljava/lang/Object;)Z')
assert ':perf_publish' in refresh and 'goto :goto_1' in refresh
assert refresh.count('Continue106;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V') == 1
assert refresh.count('notifyDataSetChanged') == 1
assert refresh.count('UiPerfDiag;->continueRefreshDecision(Z)V') == 2
assert 'Arrays.copyOf(v,94)' in diag
assert 'continue_refresh_skipped' in diag and 'continue_refresh_full' in diag
print("PASS Phase 3 bounded FrameMetrics tracing, lifecycle probes, and non-sensitive telemetry wiring")

print("PASS Phase 2 adapter diff guards, pagination debounce, FAB state, and RecyclerView animation policy")

print("PASS viewport-bound scrolling, static text labels, bounded image fades and off-thread episode parsing")
