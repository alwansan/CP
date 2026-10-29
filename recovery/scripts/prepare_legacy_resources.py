#!/usr/bin/env python3
"""Stage original APKTool resources for Gradle without touching the source tree.

Original APKTool res/values/attrs.xml includes definitions of three attributes
also provided by androidx.core:core:1.13.0 when lifecycle/Activity is restored.
AAPT2 rejects these duplicate definitions in the combined APK. Copy the whole
tree and delete *only* the three redundant definitions in the staged output.

Requires exactly one of each attribute; fails closed if upstream XML changes.
"""
from pathlib import Path
import re
import shutil
import sys

ATTRS = ("fontProviderFetchStrategy", "fontProviderFetchTimeout", "fontStyle")


def main():
    if len(sys.argv) != 3:
        raise SystemExit("usage: prepare_legacy_resources.py ORIGINAL_RES STAGED_RES")
    src = Path(sys.argv[1]).resolve()
    target = Path(sys.argv[2]).resolve()
    if not src.is_dir() or target == src or src in target.parents:
        raise SystemExit("invalid source or destination resources paths")
    original_attrs = src / "values/attrs.xml"
    if not original_attrs.is_file():
        raise SystemExit("original attrs.xml not found")
    text = original_attrs.read_text(encoding="utf-8")
    for attr in ATTRS:
        pattern = r"(?m)^[ \t]*<attr name=\"" + re.escape(attr) + r"\">[ \t]*\n(?:.*\n)*?^[ \t]*</attr>[ \t]*\n"
        updated, count = re.subn(pattern, "", text)
        if count != 1:
            raise SystemExit(f"expected exactly one {attr} definition; found {count}")
        text = updated
    if target.exists():
        shutil.rmtree(target)
    shutil.copytree(src, target)
    (target / "values/attrs.xml").write_text(text, encoding="utf-8")
    print("STAGED_RESOURCE_PASS: original files preserved; removed duplicate AndroidX attrs:", ", ".join(ATTRS))
    print("STAGED_RESOURCE_DIR:", target)


if __name__ == "__main__":
    main()
