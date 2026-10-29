#!/usr/bin/env python3
"""Stage exactly the obfuscated classes directly imported by first-party Java.

Uses the original full JADX snapshot as authoritative reconstructed source.
Never copies all 7,770 classes or overwrites the APKTool source tree.
"""
from collections import defaultdict, Counter
from pathlib import Path
import argparse
import hashlib
import json
import re
import zipfile

PREFIX = "sources/com/shabakaty/downloader/"
IMPORT = re.compile(r"(?m)^\s*import\s+(?:static\s+)?(com\.shabakaty\.downloader\.([A-Za-z_$][\w$]*))(?=[.;])")
FQCN = re.compile(r"com\.shabakaty\.downloader\.([A-Za-z_$][\w$]*)")
MAX_FILE_BYTES = 1_500_000
MAX_TOTAL_BYTES = 45_000_000
MAX_CLASSES = 950

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--zip", required=True)
    parser.add_argument("--root", default=".")
    args = parser.parse_args()
    repo = Path(args.root).resolve()
    first_party = repo / "recovery/generated/java/com/shabakaty/cinemana"
    if not first_party.is_dir():
        raise SystemExit("First-party generated classes absent")
    used = defaultdict(set)
    direct_imports = Counter()
    first_party_files = sorted(first_party.rglob("*.java"))
    for src in first_party_files:
        txt = src.read_text("utf-8", errors="replace")
        for m in IMPORT.finditer(txt):
            used[m.group(2)].add(src.relative_to(first_party).as_posix())
            direct_imports[m.group(2)] += 1
        for m in FQCN.finditer(txt):
            used[m.group(1)].add(src.relative_to(first_party).as_posix())
    class_names = sorted(used, key=lambda n:(-len(used[n]),n))
    if len(class_names) > MAX_CLASSES:
        raise SystemExit("Too many direct references; review staging rules")
    staging = repo / "recovery/generated/java/com/shabakaty/downloader"
    staging.mkdir(parents=True, exist_ok=True)
    copied = []
    missing = []
    total = 0
    with zipfile.ZipFile(args.zip) as archive:
        manifest = set(archive.namelist())
        for name in class_names:
            lookup = name.split("$")[0]
            java = PREFIX + lookup + ".java"
            if java not in manifest:
                missing.append({"class":name, "source":java, "referenced_by":len(used[name])})
                continue
            target = staging / (lookup + ".java")
            if target.exists():
                continue
            info = archive.getinfo(java)
            if info.file_size > MAX_FILE_BYTES or total + info.file_size > MAX_TOTAL_BYTES:
                raise SystemExit("Obfuscated source size safety limit exceeded")
            target.write_bytes(archive.read(java))
            copied.append({"class":lookup, "file":str(target.relative_to(repo)), "bytes":info.file_size,
                           "referenced_by":len(used[name])})
            total += info.file_size
    report = {
        "first_party_files_scanned":len(first_party_files),
        "unique_imported_obfuscated_symbols":len(class_names),
        "obfuscated_java_staged":len(copied),
        "obfuscated_bytes_staged":total,
        "missing_direct_reference_source_files":missing,
        "top_referenced_symbols":[{"symbol":n, "referenced_by":len(used[n]),
                                   "direct_import_statements":direct_imports[n]}
                                  for n in class_names[:80]],
        "warning":"These obfuscated Java classes are recovered code, not classified original app versus third-party libraries and not yet compilable.",
    }
    report_dir = repo/"recovery/reports"
    report_dir.mkdir(parents=True, exist_ok=True)
    (report_dir/"obfuscated_dependencies.json").write_text(json.dumps(report,indent=2)+"\n","utf-8")
    lines = [
        "# Direct obfuscated dependency staging",
        "",
        "All source is derived from the exact published JADX archive; nothing was edited in the original APKTool app.",
        "",
        "- First-party Java files scanned: "+str(len(first_party_files)),
        "- Unique referenced obfuscated symbols: "+str(len(class_names)),
        "- Staged Java files: "+str(len(copied)),
        "- Staged bytes: "+str(total),
        "- Unresolved symbols: "+str(len(missing)),
        "",
        "This is the first direct dependency layer only, not a complete transitive closure.",
        "Obfuscated source names may contain relocated third-party code, which must be classified before migrating to Maven.",
        "",
        "| Referenced class | First-party Java references |",
        "| --- | ---: |",
    ]
    lines.extend("| "+x["symbol"]+" | "+str(x["referenced_by"])+" |"
                 for x in report["top_referenced_symbols"])
    if missing:
        lines.extend(["","## Missing reconstructed files", ""])
        lines.extend("- "+x["class"]+" ("+str(x["referenced_by"])+" references)" for x in missing[:100])
    (report_dir/"OBFUSCATED_DEPENDENCIES.md").write_text("\n".join(lines)+"\n","utf-8")
    print(json.dumps({k:report[k] for k in ["first_party_files_scanned","unique_imported_obfuscated_symbols",
                                           "obfuscated_java_staged","obfuscated_bytes_staged"]},indent=2))

if __name__ == "__main__":
    main()
