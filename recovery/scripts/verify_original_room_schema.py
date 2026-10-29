#!/usr/bin/env python3
"""Fail CI if a source-first Room SQL fixture differs from original Smali.

Uses only Python standard library. Never opens or modifies SQLite databases,
video files, or any Cinemana user data.
"""
from pathlib import Path
import re

ROOT = Path(__file__).resolve().parents[2]
JAVA = ROOT / (
    "recovery/modernized/android-smoke/src/main/java/"
    "com/shabakaty/cinemana/recovery/smoke/OriginalRoomSchemaProbe.java"
)

DEFINITIONS = (
    (
        "Downloads",
        "CREATE_DOWNLOADS",
        "Cinemana_PATCH252_Project/app/smali/com/shabakaty/downloader/"
        "data/db/DownloadsDatabase_Impl$a.smali",
        10,
        ("task_id", "external_id"),
    ),
    (
        "CinemanaDownloadItem",
        "CREATE_CINEMANA",
        "Cinemana_PATCH252_Project/app/smali/com/shabakaty/cinemana/"
        "data/db/AppDatabase_Impl$a.smali",
        24,
        ("id",),
    ),
    (
        "SubtitleDb",
        "CREATE_SUBTITLES",
        "Cinemana_PATCH252_Project/app/smali/com/shabakaty/cinemana/"
        "data/db/AppDatabase_Impl$a.smali",
        7,
        ("id",),
    ),
)


def require(condition: bool, message: str) -> None:
    if not condition:
        raise AssertionError(message)


def single(pattern: str, text: str, label: str) -> str:
    matches = re.findall(pattern, text, flags=re.MULTILINE)
    require(len(matches) == 1, f"{label}: expected one SQL definition, got {len(matches)}")
    return matches[0]


def main() -> None:
    java = JAVA.read_text(encoding="utf-8")
    for table, const, smali_path, column_count, key in DEFINITIONS:
        smali = (ROOT / smali_path).read_text(encoding="utf-8")
        original = single(
            r'^\s*const-string(?:/jumbo)? v\d+, "(CREATE TABLE IF NOT EXISTS '
            + re.escape("`" + table + "`") + r'[^"\n]+)"',
            smali,
            f"{table} original Smali",
        )
        fixture = single(
            r'^\s*static final String ' + re.escape(const) + r' = "([^"\n]+)";',
            java,
            f"{table} Java fixture",
        )
        require(original == fixture, f"{table}: fixture SQL differs from original Smali")
        cols = tuple(re.findall(
            r'`([^`]+)` (?:INTEGER|TEXT|REAL) NOT NULL', original
        ))
        require(len(cols) == column_count,
                f"{table}: expected {column_count} fields, got {len(cols)}")
        original_key = ", ".join(f"`{col}`" for col in key)
        require(f"PRIMARY KEY({original_key})" in original,
                f"{table}: original primary key changed")
        print(f"ROOM_SCHEMA_PARITY_PASS: {table} ({len(cols)} fields; key={','.join(key)})")

    downloader = (
        ROOT / "Cinemana_PATCH252_Project/app/smali/"
        "com/shabakaty/downloader/data/db/DownloadsDatabase_Impl$a.smali"
    ).read_text(encoding="utf-8")
    index = (
        "CREATE UNIQUE INDEX IF NOT EXISTS `id` ON `Downloads` "
        "(`task_id`, `external_id`)"
    )
    require(index in downloader, "composite Downloads unique index changed")
    require(index.split(" ON ")[1].split(" (")[0] == "`Downloads`",
            "unexpected Downloads index table")
    print("ROOM_SCHEMA_PARITY_PASS: Downloads composite unique index")
    print("ROOM_SCHEMA_PARITY_PASS: all 3 original Room CREATE TABLE fixtures matched")


if __name__ == "__main__":
    main()
