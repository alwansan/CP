#!/usr/bin/env python3
"""Pin the source-first episode projection to original jt2.smali semantics.

This is a static read-only contract check, not proof of JSON parser parity,
Room migration integration, or migrated production data correctness.
"""
from pathlib import Path
import re

ROOT = Path(__file__).resolve().parents[2]
SMALI = ROOT / "Cinemana_PATCH252_Project/app/smali/com/shabakaty/downloader"
JAVA = ROOT / (
    "recovery/modernized/core-downloads/src/main/java/com/shabakaty/"
    "cinemana/recovery/downloads/LegacyRoomV2EpisodeMetadata.java"
)


def require(ok, label):
    if not ok:
        raise AssertionError(label)


def ordered(text, fragments, label):
    positions = [text.find(token) for token in fragments]
    require(all(x >= 0 for x in positions), label + ": expected markers missing")
    require(positions == sorted(positions), label + ": marker order changed")


def main():
    original = (SMALI / "jt2.smali").read_text(encoding="utf-8")
    source = JAVA.read_text(encoding="utf-8")

    # jt2 stores the "title" register before entering its cursor loop.
    ordered(original, [
        'const-string v11, "title"',
        'const-string v2, "videoFile"',
        'Lcom/shabakaty/downloader/ea2;->b(Ljava/lang/String;)',
        'const-string v3, "videoModel"',
        'const-string v3, "kind"',
        'const-string v3, "2"',
        'const-string v3, "nb"',
        'const-string v3, "episodeNummer"',
        'const-string v3, "rootSeries"',
        'Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;-><init>',
    ], "original JSON selection/constructor")

    # 'season' is initialized before the JSON loop, not inside the keys list.
    require('const-string v8, "season"' in original,
            "season field not found in original migration")
    require('const-string v7, "0"' in original,
            "rootSeries literal-zero fallback not found")
    require('const-string v11, " , "' in original
            and 'const-string v11, " \\u060c "' in original,
            "original title comma normalization changed")
    require('Lcom/shabakaty/downloader/ne4;->G(' in original
            and original.count('Lcom/shabakaty/downloader/ne4;->H(') == 2,
            "original newline and 2 comma replacements changed")

    require('Lcom/shabakaty/downloader/vd5;->B(' in original,
            "rootEpisode collection ID conversion changed")
    require('Lcom/shabakaty/downloader/m50;->W(' in original,
            "Kotlin collection name dropLast() call changed")
    require('const/4 v10, 0x4' in original,
            "Kotlin dropLast(4) argument changed")
    require('Lcom/shabakaty/downloader/yh4;->n0(' in original,
            "post-migration ContentValues update changed")
    require('Lcom/shabakaty/downloader/yh4;->A0(' in original,
            "distinct root collection insertion changed")
    require('Lcom/shabakaty/downloader/it2;->b:Ljava/util/List;' in original,
            "temporary JSON projection list changed")

    # Guard some of the recovered class semantics too. The unit regressions
    # inspect actual behavior; static markers prevent source drift.
    for marker in [
        '"2".equals(scalar(video, "kind"))',
        'scalar(video, "nb")',
        'scalar(video, "season")',
        'scalar(video, "episodeNummer")',
        'scalar(video, "rootSeries")',
        '"0".equals(root)',
        '.replace(\'\\n\', \' \')',
        '.replace(" , ", " ")',
        '.replace(" ، ", " ")',
        'distinct.putIfAbsent(item.rootEpisode, item)',
        'Math.max(0, words.length - 4)',
    ]:
        require(marker in source, "recovered projection marker changed: " + marker)

    print("ROOM_JSON_PROJECTION_PARITY_PASS: original jt2 field order + Kotlin operations")
    print("ROOM_JSON_PROJECTION_PARITY_LIMIT: parsing, Room migration and write-back still unported")


if __name__ == "__main__":
    main()
