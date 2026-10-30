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



# PATCH298: the API 22+ detail XML must not re-enable implicit layout
# transitions disabled in the default layout. Explicit poster shared-element
# transitions and the expandable-description animation remain intact.
detail_default=load("fragment_video_info.xml")
detail_modern=ET.parse(root / "Cinemana_PATCH252_Project/app/res/layout-v22/fragment_video_info.xml").getroot()
for identity in ("video_info_appbar", "video_info_collapsing_toolbar",
                 "video_info_poster", "video_info_poster_fade_overlay",
                 "video_info_toolbar", "root_scroll_view", "root_constraint"):
    for layout in (detail_default, detail_modern):
        matches=[node for node in layout.iter()
                 if node.get(android+"id") == "@id/"+identity]
        assert len(matches)==1, ("detail XML node", identity, len(matches))
        assert matches[0].get(android+"animateLayoutChanges")=="false", (
            "implicit detail layout transition", identity)
assert sum(node.get(android+"animateLayoutChanges")=="true" for node in detail_modern.iter())==1
assert any(node.tag.endswith("ExpandableTextView") and
           node.get(android+"animateLayoutChanges")=="true"
           for node in detail_modern.iter())

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
assert 'if(snap.hasData())writeSample(snap,cpuDelta,gcCount,gcTime,blockingCount,blockingTime);' in diag
assert 'next!=null && !next.equals(screen)' in diag
assert 'addOnFrameMetricsAvailableListener' in diag and 'removeOnFrameMetricsAvailableListener' in diag
assert 'LAYOUT_MEASURE_DURATION' in diag and 'DRAW_DURATION' in diag
assert 'scroll(int area, int delta)' in diag and 'diff(long startedNanos)' in diag
assert 'LOG_LIMIT_BYTES' in diag and 'ui_performance.jsonl' in diag
assert 'getFilesDir()' in diag and 'Cinemana/work/log' in diag
assert 'getNativeHeapAllocatedSize' in diag and 'getElapsedCpuTime' in diag
assert 'BUILD = "PATCH299"' in diag
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
assert 'BUILD = "PATCH299"' in diag
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
assert 'Arrays.copyOf(v,96)' in diag
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
assert 'Arrays.copyOf(v,96)' in diag
assert 'continue_refresh_skipped' in diag and 'continue_refresh_full' in diag
home_ctor=smali_method(home_fragment,'.method public constructor <init>()V')
assert 'RecyclerView$s;-><init>()V' in home_ctor
assert 'railPool:Landroidx/recyclerview/widget/RecyclerView$s;' in home_fragment
home_bind=smali_method(rows,'.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V')
assert 'setSharedRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$s;)V' in home_bind
pool_setter=smali_method(childview,'.method public final setSharedRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$s;)V')
assert 'RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$s;' in pool_setter
assert 'RecyclerView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$s;)V' in pool_setter
jj=source("com/shabakaty/downloader/jj.smali")
assert 'const p1, 0x7f0d008f' in smali_method(jj,'.method public getItemViewType(I)I')
assert 'const p1, 0x7f0d008f' in smali_method(jj,'.method public i(I)I')
card_create=smali_method(jj,'.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;')
assert 'UiPerfDiag;->railCardCreate(J)V' in card_create
assert 'rail_card_create_count' in diag and 'rail_card_create_max_ms' in diag
assert 'Debug.getRuntimeStat(name)' in diag
assert 'art.gc.blocking-gc-time' in diag
assert 'art.gc.gc-time' in diag
assert 'gc_count' in diag and 'blocking_gc_count' in diag
assert 'writeSample(snap,cpuDelta,gcCount,gcTime,blockingCount,blockingTime)' in diag
assert 'private static void gcStatDelta' not in diag  # method returns long
assert 'private static long gcStatDelta' in diag
horizontal_fast=smali_method(childview,'.method public final u()V')
assert 'TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z' in horizontal_fast
assert horizontal_fast.count('TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z') == 2
assert ':perf_title_unchanged' in horizontal_fast
assert horizontal_fast.index(':perf_title_unchanged',horizontal_fast.index('nl6;->q(')) < horizontal_fast.index('.line 8')
assert 'TextView;->setText(Ljava/lang/CharSequence;)V' in horizontal_fast
stalled=s.split("DO_NOT_EXIST") if False else diag.split('private static void sampleBlockedMain()',1)[1].split('private static void probeMainThread()',1)[0]
assert 'main_stall_sample' in stalled
assert 'app_sites' in stalled and 'framework_site' in stalled
assert 'count<3' in stalled and 'now-lastStallStackMs<500' in stalled
assert 'org.json.JSONObject.quote' in stalled
assert 'codeLocation(frame)' in stalled and 'getMethodName()' in diag
assert 'sampleBlockedMain();' in diag and '>=100_000_000L' in diag
assert 'writer.scheduleAtFixedRate(UiPerfDiag::probeMainThread' in diag
assert 'append(event);' in stalled
assert 'startMethodTracing' not in diag and 'getStackTrace()' in diag
assert 'frame.getFileName()' not in diag and 'frame.getLineNumber()' not in diag
c106=(root / "Cinemana_PATCH252_Project/app/smali_classes6/com/shabakaty/cinemana/ca1/Continue106.smali").read_text()
card106=smali_method(c106,'.method public static card(Ljava/lang/Object;)V')
paint106=smali_method(c106,'.method static paint(Ljava/lang/Object;)V')
assert 'Continue106$$ExternalSyntheticLambda3;-><init>(Ljava/lang/ref/WeakReference;)V' in card106
assert 'const-string v1, "post"' in card106
assert 'View;->post(Ljava/lang/Runnable;)Z' not in card106, "do not reintroduce crashed PATCH289 callback rewrite"
assert 'Continue106;->call(' in card106, "PATCH288 callback path changed"
pre_metadata=paint106.split('.line 162',1)[0]
assert pre_metadata.count('View;->getParent()Landroid/view/ViewParent;') == 2
assert 'HorizontalScrollVideosView;->getTitle()Ljava/lang/String;' in pre_metadata
assert 'Continue106;->call(' not in pre_metadata
assert 'instance-of v3, v0, Landroid/view/View;' in pre_metadata
# PATCH291: optimization applies to horizontal video cards only.
nl6text=source("com/shabakaty/downloader/nl6.smali")
text_fast=smali_method(nl6text,'.method public static final perfHorizontalText(Landroid/widget/TextView;Ljava/lang/String;)V')
description_fast=smali_method(nl6text,'.method public static final perfHorizontalDescription(Landroid/view/View;Ljava/lang/CharSequence;)V')
for body in (text_fast,description_fast):
    assert 'Landroid/text/Spanned;' in body
    assert 'TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z' in body
    assert 'if-eqz v1, :perf_' in body
assert 'nl6;->r(Landroid/widget/TextView;Ljava/lang/String;)V' in text_fast
assert 'nl6;->q(Landroid/view/View;Ljava/lang/CharSequence;)V' in description_fast
g42bind=smali_method(source("com/shabakaty/downloader/g42.smali"),'.method public i()V')
assert g42bind.count('nl6;->perfHorizontalText(Landroid/widget/TextView;Ljava/lang/String;)V') == 2
assert g42bind.count('nl6;->perfHorizontalDescription(Landroid/view/View;Ljava/lang/CharSequence;)V') == 3
assert 'nl6;->r(Landroid/widget/TextView;Ljava/lang/String;)V' not in g42bind
assert 'nl6;->q(Landroid/view/View;Ljava/lang/CharSequence;)V' not in g42bind
# PATCH292: eliminate repeated reflective badge view/text calls without changing
# the crashed PATCH289 callback, the generated badge layout or its styling.
ep107=(root / "Cinemana_PATCH252_Project/app/smali_classes6/com/shabakaty/cinemana/ca1/Episodes107.smali").read_text()
badge107=smali_method(ep107,'.method public static badge(Ljava/lang/Object;Z)V')
assert 'Landroid/view/View;->getParent()Landroid/view/ViewParent;' in badge107
assert 'Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;' in badge107
assert 'instance-of v1, v0, Landroid/view/View;' in badge107
assert 'Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z' in badge107
assert 'TextView;->setText(Ljava/lang/CharSequence;)V' in badge107
assert badge107.count('Landroid/view/View;->setVisibility(I)V') == 2
assert ':perf_badge_text_same' in badge107 and ':perf_badge_visible' in badge107
assert 'const-string v5, "setVisibility"' in badge107
assert 'const-string p0, "setText"' not in badge107
assert 'const-string v5, "findViewWithTag"' not in badge107
assert 'Continue106$$ExternalSyntheticLambda3' in card106
# PATCH293: no per-bind reflective progress operations and no extra layout pass
# when watched progress state is already correct. Post callback remains PATCH288.
progress293=paint106.split('.line 167',1)[1].split('.line 172',1)[0]
for api in ('ProgressBar;->getProgress()I','ProgressBar;->setProgress(I)V',
            'ProgressBar;->getMax()I','ProgressBar;->setMax(I)V',
            'ProgressBar;->getProgressTintList()Landroid/content/res/ColorStateList;',
            'ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V',
            'LinearLayout$LayoutParams;->gravity:I',
            'View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V'):
    assert api in progress293, api
assert 'sget-object v3, Lcom/shabakaty/cinemana/ca1/Continue106;->heights:Ljava/util/Map;' in progress293
assert ':perf293_layout_done' in progress293
assert ':cond_7' in progress293 and ':cond_8' in progress293, 'preserve original branch labels'
assert 'Continue106;->call(' not in progress293
assert 'Class;->forName(' not in progress293
assert 'Continue106$$ExternalSyntheticLambda3' in card106
# PATCH294: SearchManager's Binder call should happen only on the first
# SearchView bind per process, while every SearchView still receives metadata.
gk294=source("com/shabakaty/downloader/gk1.smali")
search294=smali_method(gk294,'.method public i()V')
assert '.field private static perf294SearchableLoaded:Z' in gk294
assert '.field private static perf294SearchableInfo:Landroid/app/SearchableInfo;' in gk294
assert 'sget-boolean v9, Lcom/shabakaty/downloader/gk1;->perf294SearchableLoaded:Z' in search294
assert 'if-nez v9, :perf294_searchable_cached' in search294
assert search294.count('SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;') == 1
assert 'sput-object v9, Lcom/shabakaty/downloader/gk1;->perf294SearchableInfo:Landroid/app/SearchableInfo;' in search294
assert 'sput-boolean v12, Lcom/shabakaty/downloader/gk1;->perf294SearchableLoaded:Z' in search294
assert search294.index('sput-object v9, Lcom/shabakaty/downloader/gk1;->perf294SearchableInfo:') < search294.index('sput-boolean v12, Lcom/shabakaty/downloader/gk1;->perf294SearchableLoaded:')
assert search294.index(':perf294_searchable_cached') < search294.index('SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V')
assert 'SearchView;->onActionViewExpanded()V' in search294
assert 'SearchView;->clearFocus()V' in search294
assert 'Continue106$$ExternalSyntheticLambda3' in card106
# PATCH295: bounded Home-only shared rail RecycledViewPool capacity.
# Verified exact obfuscated RecyclerView pool type record in this APK.
ctor295=smali_method(home_fragment,'.method public constructor <init>()V')
poolpart=ctor295.split('new-instance v0, Landroidx/recyclerview/widget/RecyclerView$s;',1)[1]
assert ctor295.lstrip().startswith('.locals 2')
assert '.locals 2' in ctor295.split('new-instance v0, Landroidx/recyclerview/widget/RecyclerView$s;',1)[0]
assert 'const v1, 0x7f0d008f' in poolpart
assert 'RecyclerView$s;->a(I)Landroidx/recyclerview/widget/RecyclerView$s$a;' in poolpart
assert 'const/16 v1, 0xa' in poolpart
assert 'RecyclerView$s$a;->b:I' in poolpart
assert poolpart.index('iput-object v0, p0, Lcom/shabakaty/downloader/vt1;->railPool:') < poolpart.index('RecyclerView$s;->a(I)')
assert poolpart.count('RecyclerView$s$a;->b:I') == 1
poolrec=source("androidx/recyclerview/widget/RecyclerView$s.smali")
poolentry=source("androidx/recyclerview/widget/RecyclerView$s$a.smali")
assert '.method public final a(I)Landroidx/recyclerview/widget/RecyclerView$s$a;' in poolrec
assert '.field public b:I' in poolentry
assert 'const/4 v0, 0x5' in poolentry
assert 'const p1, 0x7f0d008f' in smali_method(source("com/shabakaty/downloader/jj.smali"),'.method public getItemViewType(I)I')
assert 'Continue106$$ExternalSyntheticLambda3' in card106

# PATCH296: bind the stable SearchableInfo to each SearchView just once.
# Must not skip setup for a newly inflated SearchView or retain old View objects.
assert '.field private perf296SearchableBound:Z' in gk294
assert 'iget-boolean v12, v1, Lcom/shabakaty/downloader/gk1;->perf296SearchableBound:Z' in search294
assert 'if-nez v12, :perf296_searchable_bound' in search294
assert search294.count('SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V') == 1
assert 'iput-boolean v12, v1, Lcom/shabakaty/downloader/gk1;->perf296SearchableBound:Z' in search294
assert search294.index(':perf294_searchable_cached') < search294.index('iget-boolean v12, v1, Lcom/shabakaty/downloader/gk1;->perf296SearchableBound:Z')
assert search294.index('if-nez v12, :perf296_searchable_bound') < search294.index('SearchView;->setSearchableInfo(')
assert search294.index('SearchView;->setSearchableInfo(') < search294.index('iput-boolean v12, v1, Lcom/shabakaty/downloader/gk1;->perf296SearchableBound:Z') < search294.index('\n    :perf296_searchable_bound')
assert search294.index('\n    :perf296_searchable_bound') < search294.index('SearchView;->clearFocus()V')
assert 'SearchView;->onActionViewExpanded()V' in search294
assert 'Continue106$$ExternalSyntheticLambda3' in card106


# PATCH297: only one synchronous LiveData observer dispatch for initial
# detail model sync; do not change shared-element transitions or view lifecycle.
detail_refresh=smali_method(details_fragment,'.method public final k2()V')
assert detail_refresh.count('zi2;->f(Lcom/shabakaty/downloader/xv2;)V') == 1
assert detail_refresh.index('tj;->b:Ljava/lang/Object;') < detail_refresh.index('zi2;->f(Lcom/shabakaty/downloader/xv2;)V')
assert 'FirebaseAnalytics;->getInstance(Landroid/content/Context;)' in detail_refresh
detail_init=smali_method(details_fragment,'.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V')
assert 'detail_view_created' in detail_init
assert 'const-string v0, "detail_ui_ready"' in detail_init
assert detail_init.index('hj;->f2(ZLjava/lang/String;)V') < detail_init.index('const-string v0, "detail_ui_ready"')
assert 'UiPerfDiag;->mark(Ljava/lang/String;)V' in detail_init
assert '"detail_ui_ready".equals(event)' in diag
assert 'Continue106$$ExternalSyntheticLambda3' in card106


# PATCH299: retain original overload checks, invocation, lambda and all UI.
continue_call=smali_method(c106,'.method static varargs call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;')
assert continue_call.count('MethodCache299;->declaredMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;') == 1
assert 'Class;->getDeclaredMethods()' not in continue_call
assert 'Method;->getParameterTypes()' in continue_call
assert 'Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)' in continue_call
assert 'NoSuchMethodException;' in continue_call
reflect_helper=(root/'Cinemana_PATCH252_Project/app/smali_classes6/com/shabakaty/cinemana/ca1/MethodCache299.smali').read_text()
assert '.class public final Lcom/shabakaty/cinemana/ca1/MethodCache299;' in reflect_helper
assert 'ConcurrentHashMap;->get(Ljava/lang/Object;)' in reflect_helper
assert 'Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;' in reflect_helper
assert 'ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)' in reflect_helper
assert 'Landroid/view/' not in reflect_helper and 'Landroid/app/Activity;' not in reflect_helper
assert 'Continue106$$ExternalSyntheticLambda3' in card106

print("PASS Phase 3 bounded FrameMetrics tracing, lifecycle probes, and non-sensitive telemetry wiring")

print("PASS Phase 2 adapter diff guards, pagination debounce, FAB state, and RecyclerView animation policy")

print("PASS viewport-bound scrolling, static text labels, bounded image fades and off-thread episode parsing")
