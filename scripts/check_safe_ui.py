#!/usr/bin/env python3
"""Safety guard: no experimental download or notification backend edits."""
from pathlib import Path
from hashlib import sha1
import xml.etree.ElementTree as ET
root=Path(__file__).resolve().parents[1]
locked={
  "Cinemana_PATCH252_Project/app/smali_classes6/com/shabakaty/cinemana/ca1/Continue106.smali": "0381a6a03cdfc6d0f34dd9a2a54687453c95e877",
  "Cinemana_PATCH252_Project/app/smali_classes6/com/shabakaty/cinemana/ca1/Episodes107.smali": "09ff7e7864e78432bfc84cce27f819cab9ee8494",
  "Cinemana_PATCH252_Project/app/smali_classes6/com/shabakaty/cinemana/ca1/Queue110.smali": "9c3f25e83447ce8288778ab22db2c3a4d70456ee",
  "Cinemana_PATCH252_Project/app/smali_classes6/com/shabakaty/cinemana/ca1/BatchDownload.smali": "c8dc95c1ad877aca4dc04f00e894f8fbfc2b3a8e",
  "Cinemana_PATCH252_Project/app/smali_classes6/com/shabakaty/cinemana/ca1/Restart108.smali": "03f7966b42a198d963be1be85078d6a71df404e1",
  "Cinemana_PATCH252_Project/app/smali_classes3/com/shabakaty/cinemana/features/DownloadTrace.smali": "d78beaa9b2ed5a5a14c51688f798c48d6e21f736",
  "Cinemana_PATCH252_Project/app/smali_classes3/com/shabakaty/cinemana/features/MkvManifestStore.smali": "6f4f6af50cfc1acfd022524cc96097d6fa20bb50",
  "Cinemana_PATCH252_Project/app/smali_classes5/com/shabakaty/downloader/CnmDownloadQueue.smali": "c12ebf3c123fbd9a94ac4b524a2e33bdacbd5eb0",
  "Cinemana_PATCH252_Project/app/smali/com/shabakaty/cinemana/features/RenameAssets.smali": "fae737884d16ba1af179fb0d7d6c1a327d351af4",
  "patches/local-account/src/com/shabakaty/cinemana/local/LocalRuntime.java": "bb8961da1372f61eb374471c82d9384bc5cedaf8",
  "Cinemana_PATCH252_Project/app/smali_classes11/com/shabakaty/cinemana/local/LocalEpisodeJob.smali": "9fd63a563b1e37fc8b979a05ce389d9ad9efc89e",
  "Cinemana_PATCH252_Project/app/smali_classes11/com/shabakaty/cinemana/local/LocalAccountStore.smali": "a4cecaa7687b3e3b920f43745cc8fdf27c80a47b"
}
for rel, expected in locked.items():
    content=(root/rel).read_bytes()
    actual=sha1(b"blob "+str(len(content)).encode()+bytes([0])+content).hexdigest()
    assert actual==expected, f"PROTECTED BACKEND CHANGED: {rel}: {actual} != {expected}"
project=root/"Cinemana_PATCH252_Project/app"
# Byte-identical RTSP DEX sharding only: keep the ExoPlayer code itself unchanged.
rtsp={"c":"b4bdddbf23be9b463c50ba8b2f9ee1c3a7ac5720","d":"8c34412a71cbf23a9897edac0e44701df98f7b90","f":"0fd846bb197af8c110b2e47926c0484a31d408e5","h":"eb0bc91df7113549f9bfa84bdbcfeb3b8f9788bf"}
for name, expected in rtsp.items():
    src=project/f"smali/com/google/android/exoplayer2/source/rtsp/{name}.smali"
    dest=project/f"smali_classes10/com/google/android/exoplayer2/source/rtsp/{name}.smali"
    assert not src.exists(), "Duplicate RTSP class in primary DEX: "+str(src)
    data=dest.read_bytes()
    sha=sha1(b"blob "+str(len(data)).encode()+bytes([0])+data).hexdigest()
    assert sha==expected, "RTSP code changed while relocating: "+name
for rel in (
    "smali_classes3/com/shabakaty/cinemana/features/DownloadTrace301.smali",
    "smali_classes3/com/shabakaty/cinemana/features/DownloadTrace301$Log.smali",
    "smali_classes6/com/shabakaty/cinemana/ca1/MethodCache299.smali",
    "smali_classes6/com/shabakaty/cinemana/ca1/Continue106$ExternalSyntheticLambda3.smali",
):
    assert not (project/rel).exists(), "Unsafe experimental class imported: "+rel
android="{http://schemas.android.com/apk/res/android}"
detail=ET.parse(project/"res/layout-v22/fragment_video_info.xml").getroot()
for elem in detail.iter():
    anim=elem.get(android+"animateLayoutChanges")
    if anim is not None:
        assert anim=="false" or (anim=="true" and elem.get(android+"id")=="@id/video_info_description"), (elem.tag,elem.get(android+"id"),anim)
home=ET.parse(project/"res/layout/fragment_home.xml").getroot()
nodes=[e for e in home.iter() if e.get(android+"id")=="@id/home_page_main_recycler"]
assert len(nodes)==1 and nodes[0].get(android+"layout_height")=="0.0dip"
nl6=(project/"smali/com/shabakaty/downloader/nl6.smali").read_text()
g42=(project/"smali/com/shabakaty/downloader/g42.smali").read_text()
for helper in ("perfHorizontalText","perfHorizontalDescription"):
    assert "->"+helper+"(" in g42 and ".method public static final "+helper+"(" in nl6
for view in ("FranchisesRecyclerView","HorizontalScrollVideosView","WideVerticalVideosView"):
    src=(project/f"smali/com/shabakaty/cinemana/ui/home_fragment/{view}.smali").read_text()
    assert "setItemAnimator(" not in src, "Keep original card animation: "+view
assert "UiPerfDiag;" not in g42
print("PASS safe-rebase core checks, original notifications and RecyclerView animations")
