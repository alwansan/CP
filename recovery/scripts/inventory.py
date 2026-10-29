#!/usr/bin/env python3
"""Inventory JADX outputs and stage only first-party Java on the isolated experiment branch.

This script never edits the APKTool source tree. It refuses to label decompiled
Java as buildable Android Studio sources.
"""
import argparse
import collections
import hashlib
import json
import os
from pathlib import Path
import re
import shutil
import sys
import zipfile

OWNED = ("com/shabakaty/cinemana/",)
REPORT_MARKERS = ("/* JADX ERROR:", "/* JADX WARNING:", "throw new UnsupportedOperationException("Method not decompiled:")
STAGE_LIMIT_BYTES = 35 * 1024 * 1024
STAGE_LIMIT_FILES = 1500

def sha256(path):
    h = hashlib.sha256()
    with path.open("rb") as f:
        for chunk in iter(lambda: f.read(1 << 20), b""):
            h.update(chunk)
    return h.hexdigest()

def main():
    p = argparse.ArgumentParser()
    p.add_argument("--java-root", required=True)
    p.add_argument("--apk", required=True)
    p.add_argument("--apktool-root", required=True)
    p.add_argument("--repo-root", default=".")
    args = p.parse_args()
    repo = Path(args.repo_root).resolve()
    sources = Path(args.java_root).resolve()
    apk = Path(args.apk).resolve()
    original = Path(args.apktool_root).resolve()
    if not sources.is_dir() or not apk.is_file() or not original.is_dir():
        raise SystemExit("Required JADX/APK/APKTool input is missing")
    all_sources = sorted(sources.rglob("*.java"))
    if not all_sources:
        raise SystemExit("JADX produced no Java source files")
    first_party = []
    package_groups = collections.Counter()
    problem_counts = collections.Counter()
    for java in all_sources:
        rel = java.relative_to(sources).as_posix()
        bits = rel.split("/")
        package_groups["/".join(bits[:3])] += 1
        if any(rel.startswith(prefix) for prefix in OWNED):
            first_party.append(java)
        # Scan bounded head for decompiler diagnostic markers.
        with java.open("r", encoding="utf-8", errors="replace") as f:
            head = f.read(32768)
        for marker in REPORT_MARKERS:
            if marker in head:
                problem_counts[marker] += 1

    selected = first_party
    staged_bytes = sum(p.stat().st_size for p in selected)
    mode = "full-first-party"
    if staged_bytes > STAGE_LIMIT_BYTES or len(selected) > STAGE_LIMIT_FILES:
        # Conservative fallback: commit only player package and keep everything
        # else in the complete downloadable source artifact.
        selected = [s for s in first_party if s.relative_to(sources).as_posix().startswith("com/shabakaty/cinemana/player/")]
        staged_bytes = sum(p.stat().st_size for p in selected)
        mode = "player-only-limit-exceeded"
    out = repo / "recovery" / "generated" / "java"
    if out.exists():
        shutil.rmtree(out)
    for src in selected:
        rel = src.relative_to(sources)
        dst = out / rel
        dst.parent.mkdir(parents=True, exist_ok=True)
        shutil.copy2(src, dst)

    props = {}
    for file in sorted((original / "unknown").glob("*.properties")):
        if file.stat().st_size > 4096:
            continue
        data = file.read_text(encoding="utf-8", errors="replace")
        version = re.search(r"(?m)^version=(.+)$", data)
        if version:
            props[file.name] = version.group(1).strip()
    native = {}
    for abi in sorted((original / "lib").iterdir()):
        if abi.is_dir():
            native[abi.name] = sorted(p.name for p in abi.glob("*.so"))
    with zipfile.ZipFile(apk) as z:
        dex_entries = [i.filename for i in z.infolist() if re.fullmatch(r"classes(?:[0-9]+)?\.dex", i.filename)]
    report = {
        "source_apk_sha256": sha256(apk),
        "dex_files": sorted(dex_entries),
        "total_decompiled_java_files": len(all_sources),
        "first_party_java_files": len(first_party),
        "staged_java_files": len(selected),
        "staged_bytes": staged_bytes,
        "stage_mode": mode,
        "top_package_counts": dict(package_groups.most_common(35)),
        "decompiler_warning_counts_from_first_32KiB": dict(problem_counts),
        "bundled_dependency_version_evidence": props,
        "native_libs_by_abi": native,
        "caveats": [
            "JADX output is reconstructed Java, not the original Java/Kotlin.",
            "This subset is NOT a compilable Android Studio application.",
            "Obfuscated packages such as com/shabakaty/downloader remain in the complete zip artifact.",
            "Actual library dependency coordinates and versions require validation before Gradle conversion.",
        ],
    }
    report_dir = repo / "recovery" / "reports"
    report_dir.mkdir(parents=True, exist_ok=True)
    (report_dir / "java_inventory.json").write_text(
        json.dumps(report, indent=2, ensure_ascii=False) + "\n", encoding="utf-8"
    )
    summary = [
        "# Java recovery inventory",
        "",
        "> This is a **decompilation checkpoint**, not a working Android Studio project.",
        "",
        f"- APK SHA256: `{report['source_apk_sha256']}`",
        f"- DEX inputs: **{len(dex_entries)}**",
        f"- Total reconstructed Java files: **{len(all_sources)}**",
        f"- First-party `com/shabakaty/cinemana` Java files: **{len(first_party)}**",
        f"- Java files committed to branch: **{len(selected)}**",
        f"- Stage mode: `{mode}`",
        "",
        "## Largest source package groups",
        "",
        "| Package prefix | Java files |",
        "| --- | ---: |",
    ]
    summary += [f"| `{k}` | {v} |" for k, v in package_groups.most_common(20)]
    summary += ["", "## Key points", "",
        "- Full decompiled Java is available in the workflow's ZIP artifact, including obfuscated packages.",
        "- Original Smali, resources, assets, and native libraries remain untouched.",
        "- Maven/Gradle dependencies must be audited: do not blindly include both bundled and external classes.",
        "- Classes containing JADX recovery warnings may need hand repair or reimplementation.",
        "", "## Native ABIs", ""]
    summary += [f"- `{k}`: {len(v)} shared objects" for k, v in native.items()]
    (report_dir / "JAVA_INVENTORY.md").write_text("\n".join(summary)+"\n",encoding="utf-8")
    print(json.dumps({k: report[k] for k in (
        "source_apk_sha256", "dex_files", "total_decompiled_java_files",
        "first_party_java_files", "staged_java_files", "staged_bytes",
        "stage_mode")}, ensure_ascii=False, indent=2))

if __name__ == "__main__":
    main()
