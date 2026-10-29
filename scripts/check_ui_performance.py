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
print("PASS viewport-bound scrolling, static text labels, bounded image fades and off-thread episode parsing")
