#!/usr/bin/env python3
"""Evaluate seven JADX-failed methods using REA; never changes application source."""
import argparse
import json
import os
from pathlib import Path
import subprocess

CANDIDATES = [
    ("BatchLog", "com.shabakaty.cinemana.ca1.BatchLog", "lambda$init$1"),
    ("Enhancements", "com.shabakaty.cinemana.ca1.Enhancements", "transform"),
    ("WorkFolders104", "com.shabakaty.cinemana.ca1.WorkFolders104", "name"),
    ("DownloadTrace", "com.shabakaty.cinemana.features.DownloadTrace", "log"),
    ("RenameAssets", "com.shabakaty.cinemana.features.RenameAssets", "renameSubtitlesFor"),
    ("SubtitlePreviewTask", "com.shabakaty.cinemana.mod.SubtitlePreviewTask", "run"),
    ("ObserverWhileStartedImpl", "com.shabakaty.cinemana.utils.extensions.ObserverWhileStartedImpl$b$a", "t"),
]

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--apk", required=True)
    ap.add_argument("--out", required=True)
    args = ap.parse_args()
    out = Path(args.out)
    out.mkdir(parents=True, exist_ok=True)
    records = []
    for label, clazz, method in CANDIDATES:
        cmd = ["rea", "inspect-android-method", os.path.abspath(args.apk), clazz, method, "--format", "json"]
        record = {"label": label, "class": clazz, "method": method}
        print("Inspecting", label, method, flush=True)
        try:
            p = subprocess.run(cmd, capture_output=True, text=True, timeout=180)
            record["exit_code"] = p.returncode
            (out / (label + ".stderr.txt")).write_text(p.stderr[-25000:], "utf-8")
            if p.returncode != 0:
                record["error"] = p.stderr[-1000:] or p.stdout[-1000:]
            else:
                doc = json.loads(p.stdout)
                n = doc.get("normalized_result") or {}
                source = n.get("source") or {}
                record.update({
                    "representation": n.get("representation"),
                    "body_status": n.get("body_status"),
                    "fell_back": n.get("fell_back"),
                    "source_status": source.get("status"),
                })
                actual_source = source.get("text")
                if actual_source and isinstance(actual_source, str):
                    (out / (label + ".method.java.txt")).write_text(actual_source, "utf-8")
                    record["source_size"] = len(actual_source)
                (out / (label + ".evidence.json")).write_text(
                    json.dumps(doc, indent=2, ensure_ascii=False), "utf-8")
        except (subprocess.TimeoutExpired, OSError, json.JSONDecodeError) as ex:
            record["error"] = str(ex)
        records.append(record)
    (out / "results.json").write_text(json.dumps(records, indent=2, ensure_ascii=False) + "\n", "utf-8")
    lines = [
        "# REA independent method recovery",
        "",
        "Seven methods that bulk JADX flagged as not decompiled.",
        "Results are diagnostics, not proof that Java files can compile.",
        "",
        "| File | Method | Java body | Fallback | Source status |",
        "|---|---|---|---|---|",
    ]
    for x in records:
        body = str(x.get("body_status", "ERROR"))
        lines.append("| " + x["label"] + " | " + x["method"] + " | "
                     + body + " | " + str(x.get("fell_back", "n/a"))
                     + " | " + str(x.get("source_status", x.get("error", "n/a")))[:70].replace("|","/") + " |")
    lines += ["", "Full method evidence and Java extracts are in the workflow artifact.", ""]
    (out / "RESULTS.md").write_text("\n".join(lines), "utf-8")
    good = sum(1 for x in records if x.get("representation") == "java" and x.get("body_status") == "available"
               and not x.get("fell_back") and x.get("source_status") == "complete")
    print("REA recovered complete Java bodies:", good, "/", len(records))

if __name__ == "__main__":
    main()
