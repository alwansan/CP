#!/usr/bin/env python3
"""Regression guard for PATCH302: one layout-only change, no core behavior edits."""
from pathlib import Path
import xml.etree.ElementTree as ET

ROOT = Path(__file__).resolve().parents[1] / "Cinemana_PATCH252_Project" / "app"
A = "{http://schemas.android.com/apk/res/android}"
DISABLED = (
    "video_info_appbar", "video_info_collapsing_toolbar", "video_info_poster",
    "video_info_poster_fade_overlay", "video_info_toolbar",
    "root_scroll_view", "root_constraint",
)
EXPANDABLE = "video_info_description"

def flags(name):
    root = ET.parse(ROOT / "res" / name / "fragment_video_info.xml").getroot()
    found = {}
    for elem in root.iter():
        ident = elem.get(A + "id", "").split("/")[-1]
        if ident in (*DISABLED, EXPANDABLE):
            assert ident not in found, f"duplicate id {ident} in {name}"
            found[ident] = elem.get(A + "animateLayoutChanges")
    return found

standard, api22 = flags("layout"), flags("layout-v22")
expected = {key: "false" for key in DISABLED}
expected[EXPANDABLE] = "true"
assert standard == expected, ("baseline layout changed", standard)
assert api22 == expected, ("API22+ layout flags changed", api22)

manifest = ET.parse(ROOT / "AndroidManifest.xml").getroot()
assert manifest.get("package") == "com.cinemana.pro"
permissions = {x.get(A + "name") for x in manifest.findall("uses-permission")}
for perm in ("android.permission.FOREGROUND_SERVICE",
             "android.permission.POST_NOTIFICATIONS",
             "android.permission.RECEIVE_BOOT_COMPLETED",
             "android.permission.INTERNET"):
    assert perm in permissions, f"critical permission missing: {perm}"
print("PASS: both detail layouts, expected expand animation and core manifest permissions")
