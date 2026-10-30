#!/usr/bin/env python3
"""Summarize LogFox ANR reports from CL without uploading raw device traces."""
from pathlib import Path
from datetime import datetime, timezone
import json
import re
import sys
import urllib.parse
import urllib.request

TARGET = "https://api.github.com/repos/alwansan/CL/contents/logfox?ref=main"

def fetch(folder):
    request=urllib.request.Request(TARGET, headers={"User-Agent":"Cinemana-ANR-Diagnostics/1"})
    with urllib.request.urlopen(request, timeout=30) as response:
        entries=json.load(response)
    received=0
    for item in entries:
        if item.get("type") != "file" or not item.get("name","").endswith(".log"):
            continue
        if int(item.get("size",0)) > 2_000_000:
            continue
        url=item.get("download_url")
        if not url:continue
        parts=urllib.parse.urlsplit(url)
        fixed=urllib.parse.urlunsplit((parts.scheme,parts.netloc,urllib.parse.quote(parts.path,safe="/%"),parts.query,parts.fragment))
        with urllib.request.urlopen(urllib.request.Request(fixed,headers={"User-Agent":"Cinemana-ANR-Diagnostics/1"}),timeout=30) as response:
            data=response.read(2_000_001)
        if len(data)>2_000_000:continue
        received+=1
        (folder/f"logfox_{received:03}.log").write_bytes(data)
    return received

def first(text, regex):
    m=re.search(regex,text,re.M)
    return m.group(1).strip() if m else "-"

def analyze_file(path):
    content=path.read_text(encoding="utf-8",errors="replace")
    who=first(content,r"\bANR in ([^\r\n]+)")
    reason=first(content,r"\bReason: ([^\r\n]+)")
    pid=first(content,r"\bPID: (\d+)")
    when=first(content,r"(?m)^(\d{10}\.\d{3})\s+.*ActivityManager: ANR in ")
    dt="-"
    try:
        if when!="-":dt=datetime.fromtimestamp(float(when),timezone.utc).strftime("%Y-%m-%d %H:%M:%S UTC")
    except ValueError:pass
    media=[]
    for line in content.splitlines():
        if "com.google.android.providers.media.module" not in line:continue
        m=re.search(r"ActivityManager:\s+(\d+(?:\.\d+)?)%\s+\d+/com\.google\.android\.providers\.media\.module\b",line)
        if m:media.append(float(m.group(1)))
    stack=bool(re.search(r"(?m)^\s+(?:at\s+[\w.$]+\([^)]*\)|\"main\"\s+prio=)",content))
    return {"process":who,"reason":reason,"pid":pid,"when":dt,"mediaPeak":max(media) if media else None,"stack":stack,"size":len(content)}

def main():
    folder=Path(sys.argv[1] if len(sys.argv)>1 else ".")
    folder.mkdir(parents=True,exist_ok=True)
    if "--fetch" in sys.argv:
        print("Fetched",fetch(folder),"LogFox files",file=sys.stderr)
    results=[analyze_file(p) for p in sorted(folder.glob("*.log"))]
    valid=[x for x in results if x["process"]!="-"]
    print("# Cinemana LogFox ANR audit\n")
    print("ANR reports:",len(valid),"/ Files analyzed:",len(results))
    print("\n| Process | Time | PID | Reason | MediaProvider CPU peak | Main stack present |")
    print("|---|---|---|---|---:|---|")
    for row in valid:
        safe=lambda x: str(x).replace("|","/").replace("\n"," ")[:120]
        media=(format(row["mediaPeak"],".1f")+"%") if row["mediaPeak"] is not None else "not sampled"
        print("| "+ " | ".join((safe(row["process"]),safe(row["when"]),safe(row["pid"]),safe(row["reason"]),media,"yes" if row["stack"] else "no"))+" |")
    print("\nThis is a system-level ANR summary, not evidence of the blocked Java call. CPU percentage can exceed 100% across multiple cores. Reports may overlap in time; no attribution to a specific PATCH without a build marker.")
    print("No download files, URIs, account identifiers, or full private log lines are included.")
    if not valid:
        print("\nNo ANR entries were found in the fetched files.")
if __name__=="__main__":
    main()
