#!/usr/bin/env python3
"""Execute original Smali SQL against *disposable in-memory* SQLite fixtures.

This does NOT simulate a complete old Room database: historical schemas, Room
identity hashes, Kotlin JSON migration code, callbacks, and user files require
separate parity testing. It verifies actual SQL statements and rollback order
without opening any persisted database.
"""
from pathlib import Path
import re
import json
import sqlite3

ROOT = Path(__file__).resolve().parents[2]
DOWNLOADER_SMALI = ROOT / "Cinemana_PATCH252_Project/app/smali/com/shabakaty/downloader"
APP_SMALI = ROOT / "Cinemana_PATCH252_Project/app/smali/com/shabakaty/cinemana/data/db"
checks = 0


def check(condition: bool, message: str) -> None:
    global checks
    checks += 1
    if not condition:
        raise AssertionError(message)


def strings_in_method(path: Path, signature: str, variable: str) -> list[str]:
    source = path.read_text(encoding="utf-8")
    check(source.count(signature) == 1, f"{path}: method must be unambiguous")
    body = source.split(signature, 1)[1].split(".end method", 1)[0]
    # These SQL statements use literal backticks, not escaped double quotes.
    strings = re.findall(
        r'\bconst-string(?:/jumbo)? ' + re.escape(variable) + r', "([^"\n]*)"',
        body,
    )
    return strings


def read_download_sql() -> list[str]:
    filename = DOWNLOADER_SMALI / "data/db/a.smali"
    sql = strings_in_method(filename,
                            ".method public a(Lcom/shabakaty/downloader/yh4;)V",
                            "v0")
    check(len(sql) == 5, "expected exactly five downloaded Room auto-migration SQLs")
    check(sql[0].startswith("CREATE TABLE IF NOT EXISTS `_new_Downloads`"),
          "first original SQL creates new Downloads")
    check(sql[1].startswith("INSERT INTO `_new_Downloads`"),
          "second original SQL copies old Downloads rows")
    check(sql[2] == "DROP TABLE `Downloads`", "third original SQL drops old Downloads")
    check(sql[3] == "ALTER TABLE `_new_Downloads` RENAME TO `Downloads`",
          "fourth original SQL renames new Downloads")
    check(sql[4] == ("CREATE UNIQUE INDEX IF NOT EXISTS `id` ON `Downloads` "
                     "(`task_id`, `external_id`)"),
          "fifth original SQL creates the composite-key unique index")
    return sql


def download_rows(conn: sqlite3.Connection) -> list[tuple]:
    return conn.execute(
        "SELECT task_id, external_id, path, size_bytes, progress_bytes, status "
        "FROM Downloads ORDER BY task_id, external_id"
    ).fetchall()


def create_synthetic_downloads(conn: sqlite3.Connection, original_sql: list[str]) -> list[tuple]:
    # Intentionally use the migration's own target shape as a *compatible*
    # source fixture, NOT an assertion that Room v1's schema is identical.
    sql = original_sql[0].replace("`_new_Downloads`", "`Downloads`")
    conn.execute(sql)
    values = [
        (17, "external-A", 400, "Episode", "https://invalid/a", "",
         "/work/A/Episode.mp4", 4200, 3, "old"),
        (17, "external-B", 600, "Episode", "https://invalid/b", "",
         "/work/B/Episode.mp4", 6400, 3, "old"),
        (91, "external-C", 0, "Movie", "https://invalid/c", "",
         "/work/C/Movie.mp4", 7000, 1, "old"),
    ]
    conn.executemany(
        "INSERT INTO Downloads(task_id,external_id,progress_bytes,title,url,img,"
        "path,size_bytes,status,last_updated) VALUES (?,?,?,?,?,?,?,?,?,?)",
        values,
    )
    conn.commit()
    return download_rows(conn)


def test_downloads(original_sql: list[str]) -> None:
    with sqlite3.connect(":memory:") as conn:
        before = create_synthetic_downloads(conn, original_sql)
        conn.execute("BEGIN IMMEDIATE")
        for sql in original_sql:
            conn.execute(sql)
        conn.commit()
        check(download_rows(conn) == before,
              "original 1->2 migration preserves all three synthetic rows")
        check(len(download_rows(conn)) == 3,
              "same task_id with distinct external_id retained")
        index = conn.execute("PRAGMA index_list(Downloads)").fetchall()
        check(any(row[1] == "id" and row[2] == 1 for row in index),
              "Downloads composite index exists and is unique")
        keycols = [row[2] for row in conn.execute("PRAGMA index_info('id')")]
        check(keycols == ["task_id", "external_id"],
              "Downloads original index must use both key components")
        try:
            conn.execute(
                "INSERT INTO Downloads SELECT * FROM Downloads "
                "WHERE task_id=17 AND external_id='external-A'"
            )
        except sqlite3.IntegrityError:
            conn.rollback()
        else:
            raise AssertionError("duplicate composite identity was accepted")
        check(download_rows(conn) == before, "duplicate attempt left data unchanged")

    with sqlite3.connect(":memory:") as conn:
        before = create_synthetic_downloads(conn, original_sql)
        conn.execute("BEGIN IMMEDIATE")
        for sql in original_sql[:3]:
            conn.execute(sql)
        conn.rollback()
        check(download_rows(conn) == before,
              "SQLite transaction restores old Downloads after injected interruption")
        check(conn.execute("SELECT count(*) FROM sqlite_master WHERE type='table' "
                           "AND name='_new_Downloads'").fetchone()[0] == 0,
              "abandoned Downloads scratch table is rolled back")


def read_subtitle_sql() -> tuple[str, str]:
    statements = strings_in_method(
        DOWNLOADER_SMALI / "lt2.smali",
        ".method public invoke(Ljava/lang/Object;)Ljava/lang/Object;",
        "v0",
    )
    rename = [s for s in statements if s.startswith("ALTER TABLE TranslationDB ")]
    check(rename == ["ALTER TABLE TranslationDB RENAME TO SubtitleDb"],
          "expected original 4->5 TranslationDB rename SQL")
    app = (APP_SMALI / "AppDatabase_Impl$a.smali").read_text(encoding="utf-8")
    source = re.findall(
        r'const-string v0, "(CREATE TABLE IF NOT EXISTS `SubtitleDb`[^"\n]+)"',
        app,
    )
    check(len(source) == 1, "one original version-5 SubtitleDb CREATE TABLE")
    return rename[0], source[0]


def synthetic_subtitles(conn: sqlite3.Connection, schema: str) -> list[tuple]:
    conn.execute(schema.replace("`SubtitleDb`", "`TranslationDB`"))
    for ident, lang in (("s-en", "en"), ("s-ar", "ar")):
        conn.execute(
            "INSERT INTO TranslationDB "
            "(id,parentId,downloadTaskId,name,type,extension,file) "
            "VALUES(?, 'item-17', 17, ?, 'text', 'srt', ?)",
            (ident, lang, "Episode." + lang + ".srt"),
        )
    conn.commit()
    return conn.execute(
        "SELECT * FROM TranslationDB ORDER BY id"
    ).fetchall()


def test_subtitles(rename: str, schema: str) -> None:
    with sqlite3.connect(":memory:") as conn:
        before = synthetic_subtitles(conn, schema)
        conn.execute("BEGIN IMMEDIATE")
        conn.execute(rename)
        conn.commit()
        actual = conn.execute("SELECT * FROM SubtitleDb ORDER BY id").fetchall()
        check(actual == before, "4->5 subtitle rename preserves both distinct rows")
        check(conn.execute("SELECT count(*) FROM sqlite_master WHERE name='TranslationDB'")
              .fetchone()[0] == 0, "old TranslationDB removed by rename")

    with sqlite3.connect(":memory:") as conn:
        before = synthetic_subtitles(conn, schema)
        conn.execute("BEGIN IMMEDIATE")
        conn.execute(rename)
        conn.rollback()
        check(conn.execute("SELECT * FROM TranslationDB ORDER BY id").fetchall() == before,
              "rollback after subtitle rename restores previous table and rows")
        check(conn.execute("SELECT count(*) FROM sqlite_master WHERE name='SubtitleDb'")
              .fetchone()[0] == 0, "rolled-back SubtitleDb table does not persist")

    with sqlite3.connect(":memory:") as conn:
        before = synthetic_subtitles(conn, schema)
        conn.execute(schema)
        conn.commit()
        conn.execute("BEGIN IMMEDIATE")
        try:
            conn.execute(rename)
        except sqlite3.OperationalError:
            conn.rollback()
        else:
            raise AssertionError("unexpected successful rename into existing SubtitleDb")
        check(conn.execute("SELECT * FROM TranslationDB ORDER BY id").fetchall() == before,
              "colliding subtitle table rejects migration without modifying source rows")



def migration_3_to_4_sql() -> list[str]:
    # Smali long SQL constants are single physical lines with escaped \t,
    # \n and \"; json.loads decodes the same escape syntax for these strings.
    source = (DOWNLOADER_SMALI / "kt2.smali").read_text(encoding="utf-8")
    found = re.findall(
        r'^\s*const-string v1, "((?:\\.|[^"\\\n])*)"\s*
    rename, schema = read_subtitle_sql()
    test_downloads(download_sql)
    test_subtitles(rename, schema)
    test_v3_to_v4(migration_3_to_4_sql())
    print(f"ROOM_MIGRATION_SQL_PASS: {checks} assertions against original Smali SQL")
    print("ROOM_MIGRATION_SQL_PASS: Downloads 1->2 + App 3->4 + App subtitle 4->5 SQLite fixtures")
    print("ROOM_MIGRATION_SQL_LIMIT: in-memory fixtures, not full historical Room schemas")


if __name__ == "__main__":
    main()
,
        source, flags=re.MULTILINE,
    )
    sql = [json.loads('"' + value + '"') for value in found]
    check(len(sql) == 10, "original AppDatabase 3->4 migration has ten SQL statements")
    check(sql[0] == "ALTER TABLE CinemanaDownloadItem RENAME TO temp_cinemana_download_item",
          "3->4 must rename legacy download item first")
    check(sql[1].startswith("CREATE TABLE CinemanaDownloadItem"),
          "3->4 recreated downloaded-item table changed")
    check(sql[2].startswith("INSERT INTO CinemanaDownloadItem("),
          "3->4 item copy changed")
    check(sql[3] == "DROP TABLE temp_cinemana_download_item",
          "3->4 old item cleanup changed")
    check(sql[4] == "DROP INDEX nb",
          "3->4 video index drop changed")
    check(sql[5] == "ALTER TABLE video_model RENAME TO temp_video_model",
          "3->4 old video table rename changed")
    check(sql[6].startswith("CREATE TABLE video_model"),
          "3->4 recreated video table changed")
    check(sql[7].startswith("INSERT INTO video_model("),
          "3->4 video copy changed")
    check(sql[8] == "DROP TABLE temp_video_model",
          "3->4 old video cleanup changed")
    check(sql[9] == "CREATE INDEX nb ON video_model (nb)",
          "3->4 recreated video index changed")
    return sql


def insert_synthetic_row(conn: sqlite3.Connection, table: str,
                         override: dict[str, object]) -> None:
    columns = conn.execute("PRAGMA table_info(" + table + ")").fetchall()
    check(bool(columns), "synthetic table must have columns: " + table)
    names = [col[1] for col in columns]
    check(set(override).issubset(names), "synthetic fixture column mismatch: " + table)
    values = []
    for col in columns:
        name, kind = col[1], col[2].upper()
        values.append(override.get(name, 0 if kind in ("INTEGER", "REAL") else ""))
    conn.execute(
        "INSERT INTO " + table + "(" + ",".join('"' + name + '"' for name in names)
        + ") VALUES (" + ",".join("?" for _ in names) + ")",
        values,
    )


def synthetic_v3(conn: sqlite3.Connection, migration: list[str]) -> None:
    # Construct a *compatible* v3-shaped fixture by undoing only the column
    # renames seen in original 3->4 INSERT ... SELECT statements. This is not
    # a complete historical Room v3 identity-hash or migration simulation.
    old_item = re.sub(r'\bspecial TEXT\b', "isSpecial TEXT", migration[1])
    old_video = migration[6]
    for current, previous, kind in (
        ("special", "isSpecial", "TEXT"),
        ("mock", "isMock", "INTEGER"),
        ("deleted", "isDeleted", "TEXT"),
        ("addedToWatchLater", "isAddedToWatchLater", "INTEGER"),
    ):
        old_video = re.sub(r'\b' + current + r' ' + kind + r'\b',
                           previous + " " + kind, old_video)
    conn.execute(old_item)
    conn.execute(old_video)
    conn.execute("CREATE INDEX nb ON video_model (nb)")
    insert_synthetic_row(conn, "CinemanaDownloadItem", {
        "id": "download-17", "downloadTaskId": 17,
        "title": "Episode", "path": "/work/Episode.mp4",
        "sizeMB": 123, "isSpecial": "legacy-special",
    })
    insert_synthetic_row(conn, "video_model", {
        "nb": "video-17", "enTitle": "Fixture show",
        "isSpecial": "special-value", "isMock": 1, "isDeleted": "false",
        "isAddedToWatchLater": 1, "downloadTaskId": 17,
    })
    conn.commit()


def test_v3_to_v4(migration: list[str]) -> None:
    with sqlite3.connect(":memory:") as conn:
        synthetic_v3(conn, migration)
        conn.execute("BEGIN IMMEDIATE")
        for sql in migration:
            conn.execute(sql)
        conn.commit()
        item = conn.execute(
            "SELECT id, downloadTaskId, title, path, sizeMB, special "
            "FROM CinemanaDownloadItem"
        ).fetchone()
        check(item == ("download-17", 17, "Episode",
                       "/work/Episode.mp4", 123, "legacy-special"),
              "3->4 retained downloaded item identity and renamed special flag")
        video = conn.execute(
            "SELECT nb, enTitle, special, mock, deleted, addedToWatchLater, "
            "downloadTaskId FROM video_model"
        ).fetchone()
        check(video == ("video-17", "Fixture show", "special-value", 1, "false", 1, 17),
              "3->4 remapped four renamed video_model flags")
        check(conn.execute(
            "SELECT COUNT(*) FROM CinemanaDownloadItem"
        ).fetchone()[0] == 1, "3->4 item cardinality retained")
        check(conn.execute(
            "SELECT COUNT(*) FROM video_model"
        ).fetchone()[0] == 1, "3->4 video cardinality retained")
        check(any(row[1] == "nb" for row in conn.execute("PRAGMA index_list(video_model)")),
              "3->4 recreated original video_model index")
        check(conn.execute(
            "SELECT COUNT(*) FROM sqlite_master "
            "WHERE name IN ('temp_cinemana_download_item', 'temp_video_model')"
        ).fetchone()[0] == 0, "3->4 no orphan scratch tables on commit")

    with sqlite3.connect(":memory:") as conn:
        synthetic_v3(conn, migration)
        before = conn.execute(
            "SELECT id, isSpecial FROM CinemanaDownloadItem"
        ).fetchall()
        conn.execute("BEGIN IMMEDIATE")
        for sql in migration[:4]:
            conn.execute(sql)
        conn.rollback()
        check(conn.execute(
            "SELECT id, isSpecial FROM CinemanaDownloadItem"
        ).fetchall() == before, "3->4 interrupted item remap rolls back")
        check(conn.execute(
            "SELECT COUNT(*) FROM sqlite_master WHERE name='temp_cinemana_download_item'"
        ).fetchone()[0] == 0, "3->4 interruption leaves no staging table")


def main() -> None:
    download_sql = read_download_sql()
    rename, schema = read_subtitle_sql()
    test_downloads(download_sql)
    test_subtitles(rename, schema)
    print(f"ROOM_MIGRATION_SQL_PASS: {checks} assertions against original Smali SQL")
    print("ROOM_MIGRATION_SQL_PASS: Downloads 1->2 + App subtitle 4->5 synthetic SQLite fixtures")
    print("ROOM_MIGRATION_SQL_LIMIT: in-memory fixtures, not full historical Room schemas")


if __name__ == "__main__":
    main()
