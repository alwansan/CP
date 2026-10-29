#!/usr/bin/env python3
"""Verify source-first search view references against original XML and gk1 constructor.

This validates only structural bindings; no LiveData or UI event parity is claimed.
"""
import pathlib
import re
import xml.etree.ElementTree as ET

ROOT = pathlib.Path(__file__).resolve().parents[3]
XML = ROOT / "Cinemana_PATCH252_Project/app/res/layout/fragment_search.xml"
JAVA = ROOT / "recovery/generated/java/com/shabakaty/downloader/gk1.java"
PORT = ROOT / "recovery/modernized/legacy-resources/src/main/java/com/shabakaty/cinemana/recovery/bindings/SearchScreenRefs.java"
ANDROID = "{http://schemas.android.com/apk/res/android}"

EXPECTED = {
    "search_root_coordinator": ("androidx.coordinatorlayout.widget.CoordinatorLayout", "layout/fragment_search_0"),
    "search_app_bar_layout": ("com.google.android.material.appbar.AppBarLayout", None),
    "searchView": ("androidx.appcompat.widget.SearchView", "binding_1"),
    "imageView5": ("androidx.appcompat.widget.AppCompatImageView", None),
    "tabLayout": ("com.google.android.material.tabs.TabLayout", "binding_2"),
    "search_adv_filter": ("com.google.android.material.button.MaterialButton", "binding_3"),
    "search_view_pager": ("androidx.viewpager2.widget.ViewPager2", "binding_5"),
    "search_recent_searches": ("com.shabakaty.cinemana.ui.home_fragment.WideVerticalVideosView", "binding_7"),
}

assert XML.is_file() and JAVA.is_file() and PORT.is_file()
root = ET.parse(XML).getroot()
found = {}
tags = set()
for element in root.iter():
    tag = element.attrib.get(ANDROID + "tag")
    if tag:
        tags.add(tag)
    ref = element.attrib.get(ANDROID + "id")
    if ref and ref.startswith("@id/"):
        found[ref.removeprefix("@id/")] = (element.tag, tag)

checks = 0
for name, expected in EXPECTED.items():
    assert found.get(name) == expected, (name, found.get(name), expected)
    checks += 1

for label in ["layout/fragment_search_0", *[f"binding_{i}" for i in range(1, 8)]]:
    assert label in tags, ("missing compiled binding tag", label)
    checks += 1

includes = [x.attrib.get("layout") for x in root.iter() if x.tag == "include"]
assert "@layout/no_search_results_layout" in includes
checks += 1

source = JAVA.read_text(encoding="utf-8")
contract = PORT.read_text(encoding="utf-8")
constructor = source[source.index("public gk1("):source.index("    @Override", source.index("public gk1("))]
mapping = {
    0: "CoordinatorLayout", 1: "SearchView", 2: "TabLayout",
    3: "MaterialButton", 5: "ViewPager2",
    7: "WideVerticalVideosView", 9: "AppBarLayout",
    10: "AppCompatImageView",
}
for index, type_name in mapping.items():
    needle = f"({type_name}) objArrS[{index}]"
    assert needle in constructor, ("Original generated binding index drift", needle)
    checks += 1

for name in EXPECTED:
    assert f"R.id.{name}" in contract, ("New view port missing", name)
    checks += 1

assert "findViewById" in contract and "IllegalStateException" in contract
checks += 1

print(f"PASS: {checks} structural SearchScreenRefs checks against original XML and gk1.")
print("WARNING: this does not reconstruct LiveData wiring or all legacy Data Binding expressions.")
