#!/usr/bin/env python3
"""Audit first-party reconstructed Java without claiming it is buildable."""
import collections
import json
from pathlib import Path
import re

ROOT = Path(__file__).resolve().parents[1]
SRC = ROOT / "generated" / "java"
REPORTS = ROOT / "reports"
IMPORT_RE = re.compile(r"(?m)^import\s+(?:static\s+)?([A-Za-z_$][\w$]*(?:\.[A-Za-z_$][\w$]*)*)\s*;")
ISSUES = {
    "decompiler_errors": "/* JADX ERROR",
    "decompiler_warnings": "/* JADX WARNING",
    "unreconstructed_method": 'UnsupportedOperationException("Method not decompiled:',
    "synthetic_dependencies_on_other_R": "import com.connectsdk.R;",
}

def family(name):
    for prefix in (
        "com.shabakaty.downloader.", "com.shabakaty.cinemana.",
        "com.google.firebase.", "com.google.android.gms.", "com.google.mlkit.",
        "com.facebook.", "com.onesignal.", "com.liulishuo.",
        "androidx.media3.", "androidx.", "io.github.anilbeesetti.",
        "com.squareup.", "okhttp3.", "retrofit2.", "org.jetbrains.",
        "kotlin.", "android.", "java.", "javax.", "org.json.",
        "zendesk.", "com.connectsdk.",
    ):
        if name.startswith(prefix):
            return prefix[:-1]
    return ".".join(name.split(".")[:2])

def main():
    if not SRC.is_dir():
        raise SystemExit("First-party Java not yet generated; run rea-full-source.yml first.")
    all_java = sorted((SRC / "com" / "shabakaty" / "cinemana").rglob("*.java"))
    if not all_java:
        raise SystemExit("No recovered Java found")
    files_with = collections.defaultdict(list)
    groups = collections.Counter()
    imported_types = collections.defaultdict(set)
    dependent_files = collections.defaultdict(set)
    dependency_counts = collections.Counter()
    for file in all_java:
        relative = file.relative_to(SRC).as_posix()
        source = file.read_text("utf-8", errors="replace")
        for key, match in ISSUES.items():
            if match in source:
                files_with[key].append(relative)
        for m in IMPORT_RE.finditer(source):
            symbol = m.group(1)
            group = family(symbol)
            groups[group] += 1
            imported_types[group].add(symbol)
            dependent_files[group].add(relative)
            dependency_counts[symbol] += 1
    upstream = json.loads((REPORTS / "java_inventory.json").read_text("utf-8"))
    lines = [
        "# Recovered Java dependency and quality audit",
        "",
        "> The reconstructed Java is **not yet compilable** as a complete Android app. This report identifies preparation work for safe Gradle migration.",
        "",
        f"- First-party Java files analyzed: **{len(all_java)}**",
        f"- Complete JADX Java snapshot: **{upstream['total_decompiled_java_files']}** files from **{len(upstream['dex_files'])}** DEX files.",
        f"- Obfuscated `com/shabakaty/downloader` package: **{upstream['top_package_counts'].get('com/shabakaty/downloader',0)}** Java files in the full ZIP, **not** duplicated in the staged subset.",
        "",
        "## Import families used by recovered first-party classes",
        "",
        "| Family | Unique imported types | Source files using it |",
        "|---|---:|---:|",
    ]
    for group in sorted(groups,key=lambda g:-len(dependent_files[g])):
        lines.append(f"| `{group}` | {len(imported_types[group])} | {len(dependent_files[group])} |")
    lines += ["", "## Recoverability signals", "", "| Signal | Affected files |", "|---|---:|"]
    for key, matches in ISSUES.items():
        lines.append(f"| `{key}` | {len(files_with[key])} |")
    lines += [
        "", "## Representative source files needing inspection", ""
    ]
    for key in ("unreconstructed_method", "decompiler_errors", "synthetic_dependencies_on_other_R"):
        lines.append(f"### {key}")
        entries=sorted(files_with[key])
        if entries:
            lines.extend(f"- `{v}`" for v in entries[:15])
            if len(entries)>15:
                lines.append(f"- ... and {len(entries)-15} other files")
        else:
            lines.append("- No matches under this marker")
        lines.append("")
    lines += [
        "## Bundled dependency version evidence (from original APK)",
        "",
        "| Version file | Reported version |",
        "|---|---|",
    ]
    for name, version in sorted(upstream["bundled_dependency_version_evidence"].items()):
        lines.append(f"| `{name}` | `{version}` |")
    lines += [
        "", "## Rules for reconstruction", "",
        "1. Preserve the original APKTool tree as the known-buildable reference and do not touch main or feature/local-account.",
        "2. Do **not** mix decompiled third-party AndroidX/Firebase/Fresco classes with their Maven binaries in one Gradle module; duplicate classes break builds.",
        "3. First confirm exact dependency coordinates, versions, and ABI needs against bytecode, APIs, and the shipped .so files; .properties versions are useful evidence, not complete dependency resolution.",
        "4. Retain the shipped FFmpeg/Media3 native libraries initially; link JNI with ABI-correct jniLibs only after testing compatibility. Not every ABI contains every library.",
        "5. Resolve the many com.shabakaty.downloader class references before compiling first-party packages; some names are obfuscated application code, not a reusable public library.",
        "6. Repair unsupported decompiler output and synthetic R constants against Smali evidence. A Java file existing does not mean it compiles or behaves correctly.",
        "7. Preserve package id com.cinemana.pro, original resources, manifest, permissions, data schemas, and signing/update behavior during migration.",
        "",
        "## Next objective",
        "",
        "Build a dependency graph of the essential startup/UI/player classes and create a Gradle module in stages, running compile and instrumentation checks before replacing the existing Smali APK release pipeline.",
        "",
    ]
    path = REPORTS / "SOURCE_DEPENDENCY_AUDIT.md"
    path.write_text("\n".join(lines), encoding="utf-8")
    output = {
        "first_party_files": len(all_java),
        "external_obfuscated_importing_files": len(dependent_files["com.shabakaty.downloader"]),
        "decompiler_issues": {k: len(files_with[k]) for k in ISSUES},
        "import_families": {k: len(v) for k,v in imported_types.items()},
    }
    (REPORTS / "dependency_audit.json").write_text(json.dumps(output,indent=2,ensure_ascii=False)+"\n",encoding="utf-8")
    print(json.dumps(output,indent=2))

if __name__ == "__main__":
    main()
