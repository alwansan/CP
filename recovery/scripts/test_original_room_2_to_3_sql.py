#!/usr/bin/env python3
"""SQL-only slice of original Room AppDatabase 2->3, with synthetic SQLite data.

Does not run jt2's JSON parser, title/season transformations, or follow-up
ContentValues writes. Not a production migration or historical v2 schema.
"""
import json
from pathlib import Path
import re
import sqlite3

ROOT = Path(__file__).resolve().parents[2]
BASE = ROOT / "Cinemana_PATCH252_Project/app/smali/com/shabakaty/downloader"
checks = 0


def check(ok, message):
    global checks
    checks += 1
    if not ok:
        raise AssertionError(message)


def sql_lambda(letter):
    data = (BASE / ("it2$" + letter + ".smali")).read_text(encoding="utf-8")
    lines = [
        line.strip().split(", ", 1)[1]
        for line in data.splitlines() if line.strip().startswith('const-string v0, "')
    ]
    check(len(lines) == 1, "one SQL constant required for it2$" + letter)
    return json.loads(lines[0])


def recovered_sql():
    # Map lazy fields from it2.<clinit>, not from lexical inner-class names.
    mapping = {
        "c": "c", "d": "b", "e": "g", "f": "f", "g": "j",
        "h": "d", "i": "k", "j": "i", "k": "e", "l": "h",
        "m": "m", "n": "n", "o": "l",
    }
    initializer = (BASE / "it2.smali").read_text(encoding="utf-8")
    source = (BASE / "jt2.smali").read_text(encoding="utf-8")
    stages = re.findall(
        r'sget-object v0, Lcom/shabakaty/downloader/it2;->([c-o]):'
        r'Lcom/shabakaty/downloader/kf2;',
        source,
    )
    check(stages == list(mapping), "jt2 SQL execution sequence changed")
    output = []
    for field, inner in mapping.items():
        marker = ("sget-object v0, Lcom/shabakaty/downloader/it2$" + inner
                  + ";->r:")
        end = "sput-object v0, Lcom/shabakaty/downloader/it2;->" + field + ":"
        start_index = initializer.find(marker)
        check(start_index >= 0 and end in initializer[start_index:start_index + 450],
              "it2 lazy supplier changed: " + field + " -> " + inner)
        output.append(sql_lambda(inner))
    check(len(output) == 13, "expected 13 SQL statements before JSON remap")
    return output


def old_rows(db):
    db.executescript(
        "CREATE TABLE DownloadItem("
        "id TEXT PRIMARY KEY, downloadTaskId INTEGER, title TEXT,"
        "thumbUrl TEXT, path TEXT, collectionID INTEGER, qualityName TEXT,"
        "finished INTEGER, translationLocalPath TEXT, videoFile TEXT);"
        "CREATE TABLE CollectionItem(id INTEGER PRIMARY KEY, name TEXT, image TEXT);"
    )
    db.executemany(
        "INSERT INTO DownloadItem VALUES (?,?,?,?,?,?,?,?,?,?)",
        [
            ("completed", 17, "Episode", "image.png", "/videos/Episode.mp4",
             9, "1080p", 1, "Episode.en.srt", "{}"),
            ("pending", 18, "Another", "image2.png", "/videos/Another.mp4",
             9, "720p", 0, "Another.ar.srt", "{}"),
        ],
    )
    db.execute("INSERT INTO CollectionItem VALUES (9,'Series','cover.png')")
    db.commit()


def main():
    sql = recovered_sql()
    with sqlite3.connect(":memory:") as db:
        old_rows(db)
        db.execute("BEGIN IMMEDIATE")
        for statement in sql:
            db.execute(statement)
        db.commit()
        download = db.execute(
            "SELECT id,downloadTaskId,title,path,collectionID,qualityName "
            "FROM CinemanaDownloadItem"
        ).fetchall()
        check(download == [("completed",17,"Episode","/videos/Episode.mp4",9,"1080p")],
              "SQL copy retains completed downloads only")
        subtitles = db.execute(
            "SELECT id,parentId,file FROM TranslationDB ORDER BY id"
        ).fetchall()
        check(subtitles == [
            ("completed","completed","Episode.en.srt"),
            ("pending","pending","Another.ar.srt"),
        ], "SQL subtitle copy matches original unfiltered DownloadItem SELECT")
        collections = db.execute(
            "SELECT id,name,image FROM DownloadsCollectionItem"
        ).fetchall()
        check(collections == [(9,"Series","cover.png")],
              "SQL copy retains old collection ID and name")
        check(any(row[1] == "nb" for row in db.execute("PRAGMA index_list(video_model)")),
              "2->3 creates video index")
        check(any(row[1] == "videoId" for row in db.execute("PRAGMA index_list(video_status)")),
              "2->3 creates video status index")

    with sqlite3.connect(":memory:") as db:
        old_rows(db)
        db.execute("BEGIN IMMEDIATE")
        for statement in sql[:8]:
            db.execute(statement)
        db.rollback()
        check(db.execute(
            "SELECT count(*) FROM sqlite_master WHERE name='CinemanaDownloadItem'"
        ).fetchone()[0] == 0, "interrupted SQL preparation leaves no new table")
        check(db.execute("SELECT count(*) FROM DownloadItem").fetchone()[0] == 2,
              "legacy DownloadItem rows survive interrupted SQL transaction")
    print(f"ROOM_2_TO_3_SQL_PASS: {checks} original SQL/lazy wiring checks")
    print("ROOM_2_TO_3_SQL_LIMIT: JSON conversion and post-SQL updates not executed")


if __name__ == "__main__":
    main()
