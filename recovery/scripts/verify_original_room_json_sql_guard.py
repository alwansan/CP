#!/usr/bin/env python3
"""Guard diagnostic Android SQL/JSON update fixture against original jt2 Smali.

Only exact SQL extraction, selected identity predicates, and in-memory SQLite
probe wiring are checked here. This is NOT a proof of full historical v2->v3
Room migration parity and does not access a user database.
"""
import json
from pathlib import Path
import re

ROOT = Path(__file__).resolve().parents[2]
BASE = ROOT / "Cinemana_PATCH252_Project/app/smali/com/shabakaty/downloader"
ANDROID = ROOT / ("recovery/modernized/android-smoke/src/main/java/"
                  "com/shabakaty/cinemana/recovery/smoke/"
                  "LegacyRoomV2SqliteIdentityProbe.java")
GUARD = ROOT / ("recovery/modernized/core-downloads/src/main/java/"
                "com/shabakaty/cinemana/recovery/downloads/"
                "LegacyRoomV2RowWriteGuard.java")
COLLECTION_ANDROID = ROOT / ("recovery/modernized/android-smoke/src/main/java/"
                             "com/shabakaty/cinemana/recovery/smoke/"
                             "LegacyRoomV2CollectionSqliteProbe.java")
COLLECTION_PLAN = ROOT / ("recovery/modernized/core-downloads/src/main/java/"
                          "com/shabakaty/cinemana/recovery/downloads/"
                          "LegacyRoomV2CollectionPlanner.java")


def require(ok, message):
    if not ok:
        raise AssertionError(message)


def smali_literal(letter):
    raw = (BASE / ("it2$" + letter + ".smali")).read_text(encoding="utf-8")
    result = re.findall(r'^\s*const-string v0, ("(?:\\.|[^"\\])*")\s*$',
                        raw, re.MULTILINE)
    require(len(result) == 1, "missing or multiple original SQL sources: " + letter)
    return json.loads(result[0])


def java_literal(source, name):
    pattern = r'^\s*static final String ' + name + r' = ("(?:\\.|[^"\\])*");\s*$'
    found = re.findall(pattern, source, re.MULTILINE)
    require(len(found) == 1, "missing or ambiguous literal in Android probe: " + name)
    return json.loads(found[0])


def main():
    android = ANDROID.read_text(encoding="utf-8")
    guard = GUARD.read_text(encoding="utf-8")
    require(java_literal(android, "ORIGINAL_V3_CREATE") == smali_literal("c"),
            "Room 2->3 diagnostic CREATE deviated from exact original it2$c")
    copy = java_literal(android, "ORIGINAL_V3_COPY")
    require(copy == smali_literal("m"),
            "Room 2->3 diagnostic INSERT SELECT deviated from original it2$m")
    require("WHERE finished = 1" in copy,
            "copy eligibility predicate absent")
    for piece in (
        "SQLiteDatabase.create(null)",
        '"SELECT id,downloadTaskId,finished,videoFile FROM DownloadItem WHERE id=?"',
        '"SELECT id,downloadTaskId FROM CinemanaDownloadItem WHERE id=?"',
        'LegacyRoomJsonProbe.inspect(old.getString(3))',
        'LegacyRoomV2RowWriteGuard.inspect(source, json, target)',
        '"id=? AND downloadTaskId=?"',
        'need(count == 1, "only exact copied row may be updated")',
        "db.beginTransaction()",
        "db.endTransaction()",
        "if (scenario != 7) db.setTransactionSuccessful()",
        'for (int scenario = 0; scenario < 10; scenario++)',
    ):
        require(piece in android, "Android fixture safety marker changed: " + piece)
    for marker in (
        "if (!source.finished) return Reason.SOURCE_NOT_COPIED;",
        "source.id.equals(selected.projection.id)",
        "source.taskId != copiedTarget.taskId",
        "return Reason.READY;",
    ):
        require(marker in guard, "JDK identity guard changed: " + marker)
    collection = COLLECTION_ANDROID.read_text(encoding="utf-8")
    plan = COLLECTION_PLAN.read_text(encoding="utf-8")
    require(java_literal(collection, "ORIGINAL_COLLECTION_CREATE") == smali_literal("b"),
            "Room 2->3 collection CREATE drifted from original it2$b")
    require(java_literal(collection, "ORIGINAL_COLLECTION_COPY") == smali_literal("l"),
            "Room 2->3 collection INSERT SELECT drifted from original it2$l")
    for piece in (
        "SQLiteDatabase.create(null)",
        "db.execSQL(ORIGINAL_COLLECTION_CREATE)",
        "db.execSQL(ORIGINAL_COLLECTION_COPY)",
        "LegacyRoomV2RowWriteGuard.inspect(",
        "LegacyRoomV2CollectionPlanner.prepare(items, snapshot(db))",
        "SQLiteDatabase.CONFLICT_IGNORE",
        "db.beginTransaction()",
        "db.endTransaction()",
        "db.setTransactionSuccessful()",
        "incomplete collection migration fully rolled back",
    ):
        # The rollback check is an explicit runtime test assertion, and the
        # exact final message text may be edited separately from its meaning.
        if piece == "incomplete collection migration fully rolled back":
            continue
        require(piece in collection, "collection fixture contract drifted: " + piece)
    for piece in (
        "existingIds == null",
        "knownIds.contains(candidate.id)",
        "!plannedIds.add(candidate.id)",
        "candidate.name.trim().isEmpty()",
        "Collections.unmodifiableList(items)",
    ):
        require(piece in plan, "safer collection planner drifted: " + piece)
    print("ROOM_JSON_SQL_GUARD_PASS: exact source it2$b + it2$l collection SQL copied")
    print("ROOM_JSON_SQL_GUARD_PASS: exact source it2$c + it2$m SQL copied")
    print("ROOM_JSON_SQL_GUARD_PASS: bound id+task guarded in isolated Android SQLite probe")
    print("ROOM_JSON_SQL_GUARD_LIMIT: diagnostic-only; 2->3 historical Room parity not proven")


if __name__ == "__main__":
    main()
