#!/usr/bin/env python3
"""Summarize complete CL download and MKV traces; redact URLs and local paths."""
from pathlib import Path
from collections import Counter, deque
import re, sys, json, hashlib

root=Path(sys.argv[1])
err=re.compile(r"Exception|\bERROR\b|\bFAIL(?:ED|URE)?\b|timed? ?out|EACCES|ENOSPC|ENOENT|HTTP.[45]\d\d|EXPORT_STILL_MP4|rename", re.I)
state=re.compile(r"STATE=(\w+)")
version=re.compile(r"PATCH\d{3}|build=CA1\.\d+",re.I)
stamp=re.compile(r"(?:^|UTC_MS=)(\d{13})")
url=re.compile(r"https?://\S+",re.I)
path=re.compile(r"(?:/storage/emulated/\d+|/data/user/\d+)/\S+")
secret=re.compile(r"(?:token|password|authorization|cookie)\s*[:=]\s*\S+",re.I)

def redact(line):
    return secret.sub("[SECRET]",path.sub("[PATH]",url.sub("[URL]",line))).strip()[:190]

for filename in ("downloads.log","diagnostics.log",".mkv_export.log","ui95.log"):
    f=root/filename
    if not f.exists():
        print("MISSING",filename)
        continue
    lines=0
    states,versions,errors=Counter(),Counter(),Counter()
    last_errors=deque(maxlen=12)
    last_states=deque(maxlen=18)
    last_stamp=0
    with f.open(errors="replace") as stream:
        for line in stream:
            lines+=1
            m=state.search(line)
            if m:
                states[m.group(1)]+=1
                last_states.append(m.group(1))
            for s in version.findall(line):
                versions[s]+=1
            t=stamp.search(line)
            if t:
                last_stamp=max(last_stamp,int(t.group(1)))
            match=err.search(line)
            if match:
                errors[match.group(0).lower()]+=1
                last_errors.append(redact(line))
    print("\n##",filename,"lines",lines,"bytes",f.stat().st_size,"last_timestamp",last_stamp,"sha256",hashlib.sha256(f.read_bytes()).hexdigest())
    print("states",states.most_common(30))
    print("version_tags",versions.most_common(20))
    print("error_terms",errors.most_common(20))
    print("last_states",list(last_states))
    for s in last_errors:
        print("LAST_ERROR",s)

for filename in ("ui_performance.jsonl","ui_performance.previous.jsonl"):
    f=root/filename
    if not f.exists():
        continue
    builds=Counter()
    windows={}
    for line in f.open(errors="replace"):
        try:
            row=json.loads(line)
        except (ValueError,TypeError):
            continue
        build=str(row.get("build","unknown"))
        builds[build]+=1
        if "frames" in row and "screen" in row:
            windows[(build,row["screen"])]=(row.get("frames"),row.get("frame_max_ms"),row.get("over_100ms"),row.get("main_max_ms"))
    print("\n##",filename,"builds",builds.most_common(30))
    print("latest_screen_windows_frames_max_gt100_main",list(windows.items())[-25:])
f=root/"mkv_repair_pending.properties"
if f.exists():
    lines=[s for s in f.read_text(errors="replace").splitlines() if s and not s.startswith("#")]
    print("\n## MKV_REPAIR_PENDING",len(lines),Counter(s.split("|")[1] for s in lines if "|" in s).most_common())
print("\nWARNING: files combine builds and sessions; error counts alone are not a proven cause.")
