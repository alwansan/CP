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
        child_adapter = (ROOT / "smali/com/shabakaty/downloader/jj.smali").read_text()
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


if __name__ == "__main__":
    unittest.main()
