#!/usr/bin/env python3
"""PATCH325: promote accepted stranded remux jobs, never interrupt/duplicate running ones."""
from pathlib import Path
from collections import deque
import re
root=Path(__file__).resolve().parents[1]/"Cinemana_PATCH252_Project/app"
def read(path): return (root/path).read_text()
def meth(text,identifier):
    x=[m for m in re.findall(r"(?ms)^\.method [^\n]*\n.*?^\.end method",text) if identifier in m.split("\n",1)[0]]
    assert len(x)==1,(identifier,len(x))
    return x[0]
exp=read("smali_classes3/com/shabakaty/cinemana/features/MkvExporter.smali")
cl=meth(exp,"<clinit>()V")
assert "LinkedBlockingDeque;-><init>()V" in cl
assert "ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V" in cl
assert "const/4 v1, 0x1" in cl and "const/4 v2, 0x1" in cl
assert "Semaphore;-><init>(IZ)V" in cl
assert "newFixedThreadPool" not in cl
assert "MkvExporter$1" in cl
assert "FFMPEG_SLOTS" in exp and "ACTIVE_JOB_KEYS" in exp
repair=meth(read("smali_classes6/com/shabakaty/cinemana/ca1/DownloadRepair129.smali"),"prioritizeInterruptedParts(")
assert "MkvRepairAgeComparator" in repair
assert "const/16 v7, 0x10" in repair
assert "reconcileDiskVideo(" in repair
assert repair.index("reconcileDiskVideo(") < repair.index("ArrayList;->add(") < repair.index("\n    :p324_report\n") < repair.index("promoteQueuedSource(")
assert "priority_promoted=" in repair
assert "add-int/lit8 v8, v8, -0x1" in repair
assert "const/16 v12, 0x35" in repair and ".mkv.cnm115-" in repair
for danger in ("->delete()Z","->renameTo(","->copyFile(","->exportLocked(","FFMPEG_SLOTS","setBusy("):
    assert danger not in repair,danger
helper=meth(read("smali_classes3/com/shabakaty/cinemana/features/MkvPriority325.smali"),"promote(")
for marker in ("ThreadPoolExecutor;->getQueue()","LinkedBlockingDeque;->toArray()","MkvExporter$Recovered","MkvExporter$2","val$initialRawPath","sourceForPriority()","LinkedBlockingDeque;->remove(","LinkedBlockingDeque;->addFirst("):
    assert marker in helper,marker
assert helper.index("LinkedBlockingDeque;->remove(")<helper.index("LinkedBlockingDeque;->addFirst(")
for danger in ("->execute(","->start()","->interrupt()","->delete()","->renameTo(","FFMPEG_SLOTS","ProcessBuilder","FileOutputStream"):
    assert danger not in helper,danger
assert "promoteQueuedSource(" in exp
assert "sourceForPriority()" in read("smali_classes3/com/shabakaty/cinemana/features/MkvExporter$Recovered.smali")
# Semantic regression: reverse offer-first retains old-to-new order and one active worker.
waiting=deque(["normalA","normalB","normalC","E42","normalD","E49"])
for candidate in reversed(["E42","E49"]):
    waiting.remove(candidate)
    waiting.appendleft(candidate)
assert list(waiting)==["E42","E49","normalA","normalB","normalC","normalD"],waiting
print("PASS PATCH325: one-worker deque, queued-only atomic reprioritization, old-to-new order and source safety")
