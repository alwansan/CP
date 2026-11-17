from pathlib import Path
from xml.etree import ElementTree as ET
root=Path(__file__).resolve().parents[1]/"Cinemana_PATCH252_Project/app"
def read(p): return (root/p).read_text()
m=read("smali_classes3/com/shabakaty/cinemana/features/MkvExporter.smali")
assert "declared-synchronized getDownloadsDao" in m and "DL_SHARED_DAO" in m
assert m.index("sget-object v0, Lcom/shabakaty/cinemana/features/MkvExporter;->DL_SHARED_DAO") < m.index("    .line 1164")
r=read("smali_classes6/com/shabakaty/cinemana/ca1/DownloadRepair129.smali")
assert "goto :startup_done\n    :dl_gate_error\n    move-exception" in r
assert "Restart108;->main(Ljava/lang/Object;)Z" in r
pub={n.attrib["name"]:n.attrib["id"] for n in ET.parse(root/"res/values/public.xml").getroot() if n.attrib.get("type")=="id"}
for f,names in [("Download94",["downloads_recycler","collections_recycler","home_bottom_nav"]),("Native98",["download_button"])]:
 s=read("smali_classes6/com/shabakaty/cinemana/ca1/"+f+".smali")
 for n in names: assert n in s and pub[n] in s
 assert "findViewById(I)" in s
s=read("smali/com/shabakaty/downloader/mc4.smali")
assert "DownloadTrace;->progress" in s and "mc4$e;" in s
q=read("smali_classes6/com/shabakaty/cinemana/ca1/Queue110.smali")
assert "declared-synchronized bind()" in q and "SystemClock;->elapsedRealtime()J" in q
print("CP-DL A1 source guards: PASS")
