#!/usr/bin/env python3
"""Run original 3->4 Room SQL on disposable, compatible synthetic SQLite tables.

This tests preserved IDs/values and rollback, NOT the full historical Room v3
schema, room_master_table hashes, or production user-data migration.
"""
import json
from pathlib import Path
import re
import sqlite3

ROOT = Path(__file__).resolve().parents[2]
SOURCE = ROOT / "Cinemana_PATCH252_Project/app/smali/com/shabakaty/downloader/kt2.smali"
checks = 0


def check(value, label):
    global checks
    checks += 1
    if not value:
        raise AssertionError(label)


def original_sql():
    lines = SOURCE.read_text(encoding="utf-8").splitlines()
    statements = [
        json.loads(line.strip().split(", ", 1)[1])
        for line in lines if line.strip().startswith('const-string v1, "')
    ]
    check(len(statements) == 10, "expected ten original Room 3->4 SQL statements")
    expected = [
        "ALTER TABLE CinemanaDownloadItem RENAME TO temp_cinemana_download_item",
        "CREATE TABLE CinemanaDownloadItem",
        "INSERT INTO CinemanaDownloadItem(",
        "DROP TABLE temp_cinemana_download_item",
        "DROP INDEX nb",
        "ALTER TABLE video_model RENAME TO temp_video_model",
        "CREATE TABLE video_model",
        "INSERT INTO video_model(",
        "DROP TABLE temp_video_model",
        "CREATE INDEX nb ON video_model (nb)",
    ]
    for statement, prefix in zip(statements, expected):
        check(statement.startswith(prefix), "3->4 migration order changed: " + prefix)
    return statements


def add_row(db, table, overrides):
    info = db.execute("PRAGMA table_info(" + table + ")").fetchall()
    names = [col[1] for col in info]
    check(set(overrides).issubset(names), "v3 fixture missing expected columns")
    values = [
        overrides.get(col[1], 0 if col[2].upper() in ("INTEGER", "REAL") else "")
        for col in info
    ]
    db.execute(
        "INSERT INTO " + table + "(" + ",".join('"' + n + '"' for n in names)
        + ") VALUES (" + ",".join("?" for _ in names) + ")", values
    )


def fixture(db, sql):
    # Undo only the original 3->4 field-name remaps in target CREATE SQL.
    # This intentionally does not claim to recreate the exact older schema.
    item = re.sub(r"\bspecial TEXT\b", "isSpecial TEXT", sql[1])
    video = sql[6]
    for now, old, typ in [
        ("special", "isSpecial", "TEXT"),
        ("mock", "isMock", "INTEGER"),
        ("deleted", "isDeleted", "TEXT"),
        ("addedToWatchLater", "isAddedToWatchLater", "INTEGER"),
    ]:
        video = re.sub(r"\b" + now + " " + typ + r"\b", old + " " + typ, video)
    db.execute(item)
    db.execute(video)
    db.execute("CREATE INDEX nb ON video_model (nb)")
    add_row(db, "CinemanaDownloadItem", {
        "id": "item-17", "downloadTaskId": 17, "title": "Episode",
        "path": "/videos/Episode.mp4", "sizeMB": 123, "isSpecial": "yes",
    })
    add_row(db, "video_model", {
        "nb": "video-17", "enTitle": "Fixture show", "downloadTaskId": 17,
        "isSpecial": "special", "isMock": 1, "isDeleted": "false",
        "isAddedToWatchLater": 1,
    })
    db.commit()


def main():
    sql = original_sql()
    with sqlite3.connect(":memory:") as db:
        fixture(db, sql)
        db.execute("BEGIN IMMEDIATE")
        for statement in sql:
            db.execute(statement)
        db.commit()
        item = db.execute(
            "SELECT id,downloadTaskId,title,path,sizeMB,special "
            "FROM CinemanaDownloadItem"
        ).fetchone()
        check(item == ("item-17",17,"Episode","/videos/Episode.mp4",123,"yes"),
              "3->4 downloaded-item identity and special rename")
        video = db.execute(
            "SELECT nb,enTitle,downloadTaskId,special,mock,deleted,"
            "addedToWatchLater FROM video_model"
        ).fetchone()
        check(video == ("video-17","Fixture show",17,"special",1,"false",1),
              "3->4 video_model flags and identity")
        check(db.execute("SELECT count(*) FROM CinemanaDownloadItem").fetchone()[0] == 1,
              "3->4 download row count")
        check(db.execute("SELECT count(*) FROM video_model").fetchone()[0] == 1,
              "3->4 video row count")
        check(any(row[1] == "nb" for row in db.execute("PRAGMA index_list(video_model)")),
              "3->4 restored video_model index")
        check(db.execute(
            "SELECT count(*) FROM sqlite_master WHERE name LIKE 'temp_%'"
        ).fetchone()[0] == 0, "3->4 no leftover staging tables")

    with sqlite3.connect(":memory:") as db:
        fixture(db, sql)
        original = db.execute(
            "SELECT id,isSpecial,path FROM CinemanaDownloadItem"
        ).fetchall()
        db.execute("BEGIN IMMEDIATE")
        for statement in sql[:4]:
            db.execute(statement)
        db.rollback()
        check(db.execute(
            "SELECT id,isSpecial,path FROM CinemanaDownloadItem"
        ).fetchall() == original, "interrupted 3->4 transaction restores legacy rows")
        check(db.execute(
            "SELECT count(*) FROM sqlite_master WHERE name='temp_cinemana_download_item'"
        ).fetchone()[0] == 0, "interrupted 3->4 leaves no staging table")

    print(f"ROOM_3_TO_4_PASS: {checks} synthetic original SQL assertions")


if __name__ == "__main__":
    main()
