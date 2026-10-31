#!/usr/bin/env python3
"""Guard PATCH317: direct known view IDs and safe, live download progress delivery."""
from pathlib import Path
import re

app=Path(__file__).resolve().parents[1]/"Cinemana_PATCH252_Project/app"
layout=(app/"res/values/public.xml").read_text()
download=(app/"smali_classes6/com/shabakaty/cinemana/ca1/Download94.smali").read_text()
listener=(app/"smali/com/shabakaty/downloader/mc4.smali").read_text()

def method(s, name):
    all_methods=re.findall(r"(?ms)^\.method [^\n]*\n.*?^\.end method",s)
    r=[m for m in all_methods if name in m.split("\n",1)[0]]
    assert len(r)==1, (name,len(r))
    return r[0]

find=method(download,"find(Landroid/view/View;Ljava/lang/String;)")
for name,resid in (
    ("downloads_recycler","0x7f0a014e"),
    ("collections_recycler","0x7f0a00f9"),
    ("home_bottom_nav","0x7f0a0204"),
):
    assert ('name="'+name+'" id="'+resid+'"') in layout, (name,resid)
    assert ('const-string v0, "'+name+'"') in find
    assert ("const v0, "+resid) in find

assert find.index("->findViewById(I)") < find.index("->getResourceEntryName(I)")
assert ":patch317_legacy" in find
assert "Lcom/shabakaty/cinemana/ca1/Download94;->find" in find
assert "Ljava/lang/String;->equals(Ljava/lang/Object;)Z" in find
assert 'const-string v0, "downloads_recycler"' in method(download,"lambda$install$0(")

progress=method(listener,"progress(Lcom/liulishuo/filedownloader/BaseDownloadTask;II)V")
assert "DownloadTrace;->progress(Landroid/content/Context;Ljava/lang/Object;IJ)V" in progress
assert "Lcom/shabakaty/downloader/mc4$e;-><init>" in progress
assert "Lcom/shabakaty/downloader/mc4;->a(Lcom/shabakaty/downloader/hn1;)V" in progress
assert "download listener progress callback with task:" not in progress
assert "Lcom/shabakaty/downloader/lw0;->c(" not in progress
for callback in ("completed(","pending(","started(","error(","paused("):
    assert method(listener,callback)
print("PASS PATCH317: XML IDs pinned, fast lookup before legacy recursion, structured progress and live UI callbacks preserved")
