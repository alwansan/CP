#!/usr/bin/env python3
"""PATCH318 regression: prevent repeat Room builder churn under MKV recovery stress."""
from pathlib import Path
import re
root=Path(__file__).resolve().parents[1]/"Cinemana_PATCH252_Project/app/smali"
export=(root.parent/"smali_classes3/com/shabakaty/cinemana/features/MkvExporter.smali").read_text()
dao=(root/"com/shabakaty/downloader/lz0.smali").read_text()
field=".field private static volatile SHARED_DOWNLOADS_DAO318:Ljava/lang/Object;"
assert field in export
m=re.search(r"(?ms)^\.method private static declared-synchronized getDownloadsDao\([^\n]+\n.*?^\.end method", export)
assert m, "DAO cache must be synchronized for concurrent workers"
method=m.group()
cache_get="sget-object v0, Lcom/shabakaty/cinemana/features/MkvExporter;->SHARED_DOWNLOADS_DAO318:Ljava/lang/Object;"
cache_put="sput-object v0, Lcom/shabakaty/cinemana/features/MkvExporter;->SHARED_DOWNLOADS_DAO318:Ljava/lang/Object;"
assert method.count(cache_get)==1 and method.count(cache_put)==1
assert method.index(cache_get)<method.index("return-object v0")<method.index("Context;->getPackageName")
assert "if-eqz v0, :patch318_build_first_dao" in method
assert method.index("const-string v4, \"a\"")>method.index("Context;->getPackageName")
assert "com.shabakaty.downloader.data.db.DownloadsDatabase" in method
assert "com.shabakaty.downloader.ut3" in method
assert "Ljava/lang/reflect/Method;->invoke" in method
assert "const-string v0, \"p\"" in method
assert "DB_PROMOTE_DOWNLOADS_DAO=" in method
assert method.index(cache_put) > method.index("DB_PROMOTE_DOWNLOADS_DAO=")
assert "if-eqz v0, :patch318_return_dao" in method
assert ".field public final a:Lcom/shabakaty/downloader/vt3;" in dao
assert "iput-object p1, p0, Lcom/shabakaty/downloader/lz0;->a:Lcom/shabakaty/downloader/vt3;" in dao
assert "newFixedThreadPool" in export and "FFMPEG_SLOTS" in export
print("PASS PATCH318: synchronized one-time DAO cache, original DB/DAO resolution and queries retained")
