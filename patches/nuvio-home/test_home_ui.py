#!/usr/bin/env python3
"""Regression checks for the Nuvio-inspired home overlay and shelf policy.

Static layout assertions complement, but do not replace, device-level UI tests.
Run from repository root: python3 patches/nuvio-home/test_home_ui.py
"""
from pathlib import Path
import re
import unittest
import xml.etree.ElementTree as ET

ROOT = Path(__file__).resolve().parents[2] / "Cinemana_PATCH252_Project" / "app"
NS = {"android": "http://schemas.android.com/apk/res/android",
      "app": "http://schemas.android.com/apk/res-auto"}
ANDROID = "{" + NS["android"] + "}"
APP = "{" + NS["app"] + "}"


def layout(name, qualifier="layout"):
    return ET.parse(ROOT / "res" / qualifier / name).getroot()


def get_by_id(root, id_name):
    for child in root.iter():
        if child.attrib.get(ANDROID + "id") == "@id/" + id_name:
            return child
    raise AssertionError(f"Missing view @id/{id_name}")


def dp(value):
    assert value.endswith("dp"), value
    return int(value[:-2])


class HomeOverlayTests(unittest.TestCase):
    def test_two_activity_variants_overlay_content(self):
        for qualifier in ("layout", "layout-v22"):
            with self.subTest(qualifier=qualifier):
                root = layout("activity_home.xml", qualifier)
                content = get_by_id(root, "fragment_container")
                nav = get_by_id(root, "home_bottom_nav")
                self.assertEqual(content.get(APP + "layout_constraintBottom_toBottomOf"), "parent")
                self.assertEqual(nav.get(APP + "layout_constraintBottom_toBottomOf"), "parent")
                self.assertLess(list(root).index(content), list(root).index(nav),
                                "Navigation must be drawn after its full-screen content")
                self.assertEqual(nav.get(ANDROID + "background"), "@drawable/nuvio_nav_surface")
                self.assertEqual(nav.get(ANDROID + "clipToOutline"), "true")
                self.assertEqual(root.get(ANDROID + "background"), "@color/nuvio_home_background")

    def test_home_feed_can_scroll_behind_nav_with_safe_padding(self):
        activity = layout("activity_home.xml")
        nav = get_by_id(activity, "home_bottom_nav")
        minimum = dp(nav.get(ANDROID + "layout_height")) + dp(nav.get(ANDROID + "layout_marginBottom"))
        feed = get_by_id(layout("fragment_home.xml"), "home_page_main_recycler")
        self.assertEqual(feed.get(ANDROID + "layout_height"), "0dp")
        self.assertEqual(feed.get(APP + "layout_constraintBottom_toBottomOf"), "parent")
        self.assertEqual(feed.get(ANDROID + "clipToPadding"), "false")
        self.assertGreater(dp(feed.get(ANDROID + "paddingBottom")), minimum)

    def test_navigation_surface_remains_translucent(self):
        surface = layout("nuvio_nav_surface.xml", "drawable")
        gradient = surface.find("gradient")
        self.assertIsNotNone(gradient)
        for key in ("startColor", "centerColor", "endColor"):
            rgba = gradient.attrib.get(ANDROID + key, "")
            self.assertRegex(rgba, r"^#[0-9a-fA-F]{8}$")
            self.assertLess(int(rgba[1:3], 16), 255, "Opaque nav blocks its backdrop")

    def test_all_primary_destinations_have_consistent_background(self):
        names = ("fragment_home_root.xml", "fragment_categories_root.xml",
                 "fragment_search_root.xml", "fragment_profile_root.xml",
                 "fragment_categories.xml", "fragment_profile.xml", "fragment_search.xml")
        for name in names:
            with self.subTest(name=name):
                self.assertEqual(layout(name).get(ANDROID + "background"),
                                 "@color/nuvio_home_background")
        search = layout("fragment_search.xml")
        self.assertEqual(get_by_id(search, "search_view_pager").get(ANDROID + "background"),
                         "@color/nuvio_home_background")
        toolbar = (ROOT / "res/layout/main_toolbar.xml").read_text()
        self.assertNotIn('android:animateLayoutChanges="true"', toolbar)

    def test_recycler_pool_reattached_only_on_change(self):
        cls = ROOT / "smali/com/shabakaty/cinemana/ui/home_fragment/HorizontalScrollVideosView.smali"
        code = cls.read_text()
        self.assertIn(".field private T:Z", code)
        section = code.split(".method public final applyNuvioRecyclerPolicy()V", 1)[1].split(".end method", 1)[0]
        self.assertIn("if-eq v3, v4, :nuvio_done", section)
        self.assertIn("iget-boolean v1, p0,", section)
        self.assertIn("iput-boolean v1, p0,", section)
        self.assertEqual(section.count("setRecycledViewPool("), 1)
        detached = code.split(".method public onDetachedFromWindow()V", 1)[1].split(".end method", 1)[0]
        self.assertIn("iput-boolean v0, p0,", detached)
        parent_adapter = (ROOT / "smali_classes10/com/shabakaty/downloader/yt1.smali").read_text()
        child_adapter = (ROOT / "smali_classes10/com/shabakaty/downloader/jj.smali").read_text()
        self.assertIn("const p1, 0x7f0d008f", child_adapter)
        self.assertIn("const/4 p1, 0x4", parent_adapter)


    def test_home_section_diffs_are_async_and_generation_safe(self):
        smali = ROOT / "smali"
        binding = (smali / "com/shabakaty/downloader/rj1.smali").read_text()
        adapter = (ROOT / "smali_classes10/com/shabakaty/downloader/yt1.smali").read_text()
        helpers = ROOT / "smali_classes10/com/shabakaty/cinemana/ca1"
        bridge = (helpers / "NuvioHomeDiff.smali").read_text()
        update = (helpers / "NuvioHomeUpdateCallback.smali").read_text()
        compare = (helpers / "NuvioHomeItemCallback.smali").read_text()
        self.assertIn("NuvioHomeDiff;->submit(", binding)
        self.assertNotIn("invoke-static {v0}, Landroidx/recyclerview/widget/j;->a(", binding)
        self.assertIn("NuvioHomeDiff;->init(", adapter)
        self.assertIn(".field public e:Landroidx/recyclerview/widget/e;", adapter)
        self.assertIn("->newFixedThreadPool(I)", bridge)
        self.assertIn("Landroidx/recyclerview/widget/d;-><init>", bridge)
        self.assertIn("->execute(Ljava/lang/Runnable;)V", bridge)
        self.assertIn("NuvioHomeCommit;-><init>", bridge)
        complete = (helpers / "NuvioHomeCommit.smali").read_text()
        self.assertIn("Landroidx/recyclerview/widget/e;->f:Ljava/util/List;", complete)
        self.assertIn("Lcom/shabakaty/downloader/yt1;->c:Ljava/util/List;", complete)
        self.assertIn("->g:I", bridge)
        self.assertIn("->unmodifiableList(Ljava/util/List;)Ljava/util/List;", bridge)
        self.assertIn("->notifyItemRangeInserted(II)V", bridge)
        self.assertIn("->notifyItemRangeRemoved(II)V", bridge)
        for callback in ("onChanged", "onInserted", "onMoved", "onRemoved"):
            section = update.split(".method public " + callback + "(", 1)[1].split(".end method", 1)[0]
            self.assertLess(section.index("->sync()V"), section.index("->notifyItem"))
        self.assertIn("HomeItem$Horizontal;", compare)
        self.assertIn("Lcom/shabakaty/downloader/j32;->a(", compare)


    def test_only_video_adapters_use_off_thread_poster_diffs(self):
        secondary = ROOT / "smali_classes10"
        poster = secondary / "com/shabakaty/downloader/jj.smali"
        code = poster.read_text()
        helper_dir = secondary / "com/shabakaty/cinemana/ca1"
        bridge = (helper_dir / "NuvioPosterDiff.smali").read_text()
        compare = (helper_dir / "NuvioPosterItemCallback.smali").read_text()
        updates = (helper_dir / "NuvioPosterUpdateCallback.smali").read_text()
        completion = (helper_dir / "NuvioPosterCommit.smali").read_text()
        base = (ROOT / "smali/com/shabakaty/downloader/ej.smali").read_text()
        self.assertIn("NuvioPosterDiff;->init(", code)
        self.assertIn("NuvioPosterDiff;->submit(", code)
        self.assertIn("Enhancements;->transform(", code)
        self.assertIn(".field public d:Landroidx/recyclerview/widget/e;", code)
        self.assertIn("Landroidx/recyclerview/widget/d;-><init>", bridge)
        self.assertIn("invoke-direct/range {v8 .. v13}", bridge)
        self.assertIn("NuvioPosterCommit;-><init>", bridge)
        self.assertIn("NuvioHomeDiff;->executor()", bridge)
        self.assertIn("->g:I", bridge)
        self.assertIn("->unmodifiableList(", bridge)
        self.assertIn("->notifyItemRangeInserted(II)V", bridge)
        self.assertIn("->notifyItemRangeRemoved(II)V", bridge)
        self.assertIn("Lcom/shabakaty/downloader/ej;->a:Ljava/util/List;", completion)
        self.assertIn("Lcom/shabakaty/downloader/ej;->g(", compare)
        self.assertIn("Lcom/shabakaty/downloader/ej;->f(", compare)
        for callback in ("onChanged", "onInserted", "onMoved", "onRemoved"):
            section = updates.split(".method public " + callback + "(", 1)[1].split(".end method", 1)[0]
            self.assertLess(section.index("->sync()V"), section.index("->notifyItem"))
        # Unrelated ej subclasses remain on the old path (do not globally rewrite).
        self.assertIn("invoke-static {v0, v1}, Landroidx/recyclerview/widget/j;->b(", base)
        self.assertIn("->e(Ljava/util/List;)V", (ROOT / "smali/com/shabakaty/downloader/fo3.smali").read_text())


    def test_glass_keeps_native_nav_children_untouched_and_debounces_capture(self):
        source = (ROOT.parents[1] / "patches/local-account/src/com/shabakaty/cinemana/local/NuvioGlassBackdrop.java").read_text()
        activity = (ROOT / "smali/com/shabakaty/cinemana/ui/home_activity/HomeActivity.smali").read_text()
        oncreate = activity.split(".method public onCreate(Landroid/os/Bundle;)V",1)[1].split(".end method",1)[0]
        self.assertIn("NuvioGlassBackdrop;->install(Landroid/app/Activity;)V", oncreate)
        self.assertIn("Build.VERSION.SDK_INT < 31", source)
        self.assertIn("isLowRamDevice()", source)
        self.assertIn("QUIET_MS = 950L", source)
        self.assertIn("SAMPLE_DIVISOR = 6", source)
        self.assertIn("MAX_SAMPLE_WIDTH = 160", source)
        self.assertIn("ThreadPoolExecutor", source)
        self.assertIn("removeOnScrollChangedListener(this)", source)
        self.assertIn("nav.removeCallbacks(sampleTask)", source)
        self.assertIn("feed.draw(canvas)", source)
        self.assertIn("nav.setBackground(new FrostedBackground", source)
        self.assertNotIn("nav.addView(", source, "Must not change the Material nav child index")
        self.assertNotIn("new FrostedImage(", source)
        self.assertNotIn("RenderEffect.createBlurEffect", source)
        self.assertNotIn("feed.setRenderEffect(", source)
        self.assertIn("feed.getLocationInWindow(feedPosition)", source)
        self.assertIn("nav.getLocationInWindow(navPosition)", source)

    def test_nav_menu_and_avatar_casts_are_type_guarded(self):
        code = (ROOT / "smali/com/shabakaty/downloader/nl6.smali").read_text()
        method = code.split(".method public static final v(Lcom/google/android/material/bottomnavigation/BottomNavigationView;Ljava/lang/String;)V",1)[1].split(".end method",1)[0]
        self.assertIn(":nuvio_seek_menu",method)
        self.assertIn(":nuvio_missing_menu",method)
        self.assertIn("instance-of v2, v1, Lcom/shabakaty/downloader/kn;",method)
        self.assertIn("instance-of v2, v1, Lcom/shabakaty/downloader/jn;",method)
        self.assertLess(method.index("instance-of v2, v1, Lcom/shabakaty/downloader/kn;"),
                        method.index("check-cast v1, Lcom/shabakaty/downloader/kn;"))

    def test_nuvio_full_width_hero_and_fast_poster_rails(self):
        hero = layout("item_slider.xml")
        self.assertGreaterEqual(dp(hero.get(ANDROID + "layout_height")), 450)
        self.assertIsNone(hero.get(ANDROID + "layout_marginStart"))
        self.assertIsNone(hero.get(ANDROID + "layout_marginEnd"))
        self.assertIsNone(hero.get(ANDROID + "background"))
        self.assertEqual(get_by_id(hero, "videoThumb").get(APP + "actualImageScaleType"), "centerCrop")
        row = layout("horizontal_scroll_videos_layout.xml")
        recycler = get_by_id(row, "videos_recycler")
        self.assertEqual(recycler.get(ANDROID + "nestedScrollingEnabled"), "false")
        self.assertEqual(recycler.get(ANDROID + "clipToPadding"), "false")
        code = (ROOT / "smali/com/shabakaty/cinemana/ui/home_fragment/HorizontalScrollVideosView.smali").read_text()
        policy = code.split(".method public final applyNuvioRecyclerPolicy()V",1)[1].split(".end method",1)[0]
        self.assertIn("setHasFixedSize(Z)V",policy)
        self.assertIn("setItemViewCacheSize(I)V",policy)

    def test_skips_identical_poster_and_section_lists_without_worker_job(self):
        helpers = ROOT / "smali_classes10/com/shabakaty/cinemana/ca1"
        snapshot = (helpers / "NuvioDiffSnapshots.smali").read_text()
        guard = (helpers / "NuvioGuardedDiffTask.smali").read_text()
        for name in ("NuvioPosterDiff.smali", "NuvioHomeDiff.smali"):
            with self.subTest(adapter=name):
                code = (helpers / name).read_text()
                self.assertIn("NuvioDiffSnapshots;->sameReferences(", code)
                self.assertIn(":nuvio_snapshot", code)
                self.assertIn("NuvioGuardedDiffTask;-><init>", code)
                self.assertIn("invoke-interface {v7, v6}", code)
                submit = code.split(".method public static submit(", 1)[1].split(".end method", 1)[0]
                self.assertLess(submit.index("->sameReferences("), submit.index("Ljava/util/ArrayList;"))
                self.assertIn("->g:I", code)
        self.assertIn("if-ne v3, v4, :different", snapshot)
        self.assertIn("Landroidx/recyclerview/widget/e;->g:I", guard)
        self.assertIn("if-ne v0, v1, :done", guard)
        # The root list's dimensions are viewport-fixed across data changes.
        fragment = (ROOT / "smali/com/shabakaty/downloader/vt1.smali").read_text()
        self.assertIn("->setHasFixedSize(Z)V", fragment)


if __name__ == "__main__":
    unittest.main()
