#!/usr/bin/env python3
"""PATCH315 regression: do not crash on null FileDownloader UI messenger."""
from pathlib import Path
import re
root = Path(__file__).resolve().parents[1] / "Cinemana_PATCH252_Project/app/smali/com/liulishuo/filedownloader"
station = (root/"FileDownloadMessageStation.smali").read_text()
callback = (root/"FileDownloadMessageStation$UIHandlerCallback.smali").read_text()
def method(source, signature):
    m = re.search(r"(?ms)^\.method [^\n]*"+re.escape(signature)+r"\n.*?^\.end method", source)
    assert m, signature
    return m.group()
block=method(station,"interceptBlockCompleteMessage(Lcom/liulishuo/filedownloader/IFileDownloadMessenger;)Z")
assert block.index("if-eqz p0, :cond_0") < block.index("IFileDownloadMessenger;->isBlockingCompleted()Z")
assert "IFileDownloadMessenger;->isBlockingCompleted()Z" in block
enqueue=method(station,"requestEnqueue(Lcom/liulishuo/filedownloader/IFileDownloadMessenger;Z)V")
assert enqueue.index("if-eqz p1, :patch315_null_enqueue") < enqueue.index("IFileDownloadMessenger;->handoverDirectly()Z")
assert ":patch315_null_enqueue\n    return-void" in enqueue
assert "IFileDownloadMessenger;->handoverMessage()V" in enqueue
assert "FileDownloadMessageStation;->enqueue(Lcom/liulishuo/filedownloader/IFileDownloadMessenger;)V" in enqueue
dispose=method(callback,"dispose(Ljava/util/ArrayList;)V")
assert dispose.index("if-nez v1, :patch315_dispose_valid") < dispose.index("FileDownloadMessageStation;->access$400")
assert "goto :goto_0" in dispose
assert "IFileDownloadMessenger;->handoverMessage()V" in dispose
assert "null_messenger_dispose_skipped" in dispose
single=method(callback,"handleMessage(Landroid/os/Message;)Z")
assert single.index("if-eqz p1, :goto_0") < single.index("IFileDownloadMessenger;->handoverMessage()V")
assert "FileDownloadMessageStation;->access$300" in single
print("PASS PATCH315: null messenger guarded on enqueue, batch and single UI delivery; valid callbacks preserved")
