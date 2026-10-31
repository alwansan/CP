#!/usr/bin/env python3
"""Compare current stress runs using the exact SHA-pinned CL trace. No private IDs printed."""
from collections import Counter
from pathlib import Path
from bisect import bisect_right
import json, re, sys

root = Path(sys.argv[1])
def rows(filename):
    p = root / filename
    if not p.exists():
        return
    with p.open(errors="replace") as f:
        for line in f:
            try:
                item = json.loads(line)
                if isinstance(item, dict):
                    yield item
            except (ValueError, TypeError):
                continue

def lines(filename):
    p = root / filename
    if not p.exists():
        return
    with p.open(errors="replace") as f:
        yield from f

starts = sorted({(x["utc_ms"], x["build"]) for x in rows("load_diagnostics.main.jsonl")
                 if x.get("event") == "process_start" and x.get("build")})
stamps = [x[0] for x in starts]
def build_at(ts):
    n = bisect_right(stamps, ts)
    return starts[n-1][1] if n else "unattributed"

samples = {}
for name in ("load_diagnostics.main.jsonl", "load_diagnostics.filedownloader.jsonl"):
    for o in rows(name):
        if o.get("event") != "load_sample":
            continue
        b = o.get("build", "unattributed")
        proc = o.get("process", "?")
        key = (b, proc)
        s = samples.setdefault(key, {"count":0,"rss_max_kb":0,"cpu_max_ms":0,"threads_max":0,"peak_screen":"","time_start":None,"time_end":None})
        s["count"] += 1
        s["rss_max_kb"] = max(s["rss_max_kb"], o.get("vm_rss_kb") or 0)
        cpu = o.get("process_cpu_delta_ms") or 0
        if cpu > s["cpu_max_ms"]:
            s["cpu_max_ms"] = cpu
            s["peak_screen"] = o.get("screen", "?")
        s["threads_max"] = max(s["threads_max"], o.get("threads") or 0)
        when = o.get("utc_ms")
        if when:
            s["time_start"] = min(s["time_start"] or when, when)
            s["time_end"] = max(s["time_end"] or when, when)
print("## STRESS_SPLITS")
print("build_starts", starts)
for (build,process),row in sorted(samples.items()):
    print("LOAD",build,process,json.dumps(row,sort_keys=True))

events = {}
videos = {}
for line in lines("downloads.log"):
    match = re.match(r"^(\d{13})\s+",line)
    if not match:
        continue
    ts = int(match.group(1))
    b = build_at(ts)
    count = events.setdefault(b, Counter())
    m = re.search(r"\bSTATE=([A-Z_]+)",line)
    if m:
        count[m.group(1)] += 1
    for marker in ("MKV_READY","MKV_UI_QUEUED_IMMEDIATE","MKV_DB_RECOVER",
                   "MKV_MANIFEST_WAIT","ITEM_SCAN_FAILED","WAIT_ITEM_MAPPING",
                   "WAITING_PLAN_OR_SUBTITLES","queue_terminal_error",
                   "inputs114_deferred","NATIVE_QUEUE_TERMINAL"):
        if marker in line:
            count[marker] += 1
    if "STATE=DOWNLOAD_COMPLETED" in line and ".mp4" in line:
        count["MP4_COMPLETE_CALLBACKS"] += 1
        tok = re.search(r"\[cnm-([a-z0-9]+)\]\.mp4",line)
        if tok:
            videos.setdefault(b,Counter())[tok.group(1)]+=1
for b,counts in sorted(events.items()):
    print("DOWNLOAD",b,counts.most_common(30))
    c=videos.get(b,Counter())
    print("VIDEO_DISTINCT",b,len(c),"callbacks",sum(c.values()),"duplicated_tokens",sum(x>1 for x in c.values()))

all_tree=list(lines("tree.txt"))
paths={"mp4":set(),"temp":set(),"mkv":set()}
for line in all_tree:
    name=line.strip().split("]  ")[-1]
    if name.endswith(".mp4"):
        match=re.search(r"\[cnm-([a-z0-9]+)\]\.mp4$",line)
        if match:paths["mp4"].add(match.group(1))
    if name.endswith(".mp4.temp"):
        match=re.search(r"\[cnm-([a-z0-9]+)\]\.mp4\.temp$",line)
        if match:paths["temp"].add(match.group(1))
    if name.endswith(".mkv"): paths["mkv"].add(name)
print("TREE",{"mp4":len(paths["mp4"]),"temp":len(paths["temp"]),"mkv":len(paths["mkv"])})
for b,c in sorted(videos.items()):
    unfinished=sorted(paths["mp4"].intersection(c.keys()))
    print("COMPLETED_STILL_MP4",b,len(unfinished),
          "callbacks",sum(c[t] for t in unfinished),
          "not_unique_sample_ids")
print("TREE_MP4_NO_COMPLETION_OBSERVED",len(paths["mp4"].difference(*(set(x.keys()) for x in videos.values())) if videos else paths["mp4"]))

mkv={}
for line in lines(".mkv_export.log"):
    match=re.match(r"^(\d{13})\s+([A-Za-z0-9_]+)",line)
    if match:
        mkv.setdefault(build_at(int(match.group(1))),Counter())[match.group(2)]+=1
for b,c in sorted(mkv.items()):
    keys=("DB_PROMOTE_DOWNLOADS_DB_NAME","DB_PROMOTE_DOWNLOADS_DB_CLASS",
          "DB_PROMOTE_DOWNLOADS_DAO","DB_PROMOTE_SUCCESS",
          "MKV_FFMPEG_SLOT_ACQUIRED","MKV_FFMPEG_SLOT_RELEASED",
          "QUEUE_ENQUEUED","WAIT_ITEM_MAPPING","WAITING_PLAN_OR_SUBTITLES")
    print("MKV",b,{k:c[k] for k in keys if c[k]}, "total_tagged_lines",sum(c.values()))

perf={}
for row in rows("ui_performance.jsonl"):
    if not isinstance(row.get("frames"),int) or not row.get("frames"):
        continue
    b=row.get("build","?")
    screen=row.get("screen","?")
    x=perf.setdefault((b,screen),{"windows":0,"frames":0,"gt100":0,"max_frame_ms":0,
                                   "max_main_ms":0,"gc_count":0})
    x["windows"]+=1
    x["frames"]+=row.get("frames") or 0
    x["gt100"]+=row.get("over_100ms") or 0
    x["max_frame_ms"]=max(x["max_frame_ms"],row.get("frame_max_ms") or 0)
    x["max_main_ms"]=max(x["max_main_ms"],row.get("main_max_ms") or 0)
    x["gc_count"]+=row.get("gc_count") or 0
for (b,screen),r in sorted(perf.items()):
    if b in ("PATCH313","PATCH314"):
        print("UI",b,screen,json.dumps(r,sort_keys=True))
print("Note: log counts are observations; outputs are from a point-in-time tree, not proof of permanently stranded files.")
