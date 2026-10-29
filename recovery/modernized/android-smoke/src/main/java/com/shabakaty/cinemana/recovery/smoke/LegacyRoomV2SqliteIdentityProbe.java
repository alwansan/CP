package com.shabakaty.cinemana.recovery.smoke;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.shabakaty.cinemana.recovery.downloads.LegacyRoomV2EpisodeMetadata;
import com.shabakaty.cinemana.recovery.downloads.LegacyRoomV2RowWriteGuard;
import com.shabakaty.cinemana.recovery.downloads.LegacyRoomV2RowWriteGuard.Reason;
import com.shabakaty.cinemana.recovery.downloads.LegacyRoomV2RowWriteGuard.Row;
import com.shabakaty.cinemana.recovery.downloads.LegacyRoomV2RowWriteGuard.Target;
import org.json.JSONException;

/**
 * Disposable SQLite fixture proving that the recovered JSON projection cannot
 * be applied to another copied DownloadItem row, unfinished row, or stale task.
 *
 * SQL constants below are verbatim from it2$c and it2$m (Migrations.kt)
 * used by jt2 in the original APK. A separate CI script verifies exact parity.
 * The temporary DownloadItem fixture has ONLY required columns, not a full
 * historical v2 schema. No production DB or account is ever opened.
 *
 * Diagnostic SAFE DIFFERENCE: jt2 updates by JSON videoModel.nb only, and
 * loops all legacy rows even though SQL copies finished=1 rows only. Here
 * a fail-closed guard additionally requires source ID, finished, target ID
 * and downloadTaskId to all match; this is intentionally NOT an exact
 * behavioral replica or a production migration.
 */
public final class LegacyRoomV2SqliteIdentityProbe {
    private LegacyRoomV2SqliteIdentityProbe() {}

    static final String ORIGINAL_V3_CREATE = "CREATE TABLE IF NOT EXISTS `CinemanaDownloadItem` (\n\t`id` TEXT NOT NULL DEFAULT \"\",\n\t`downloadTaskId` INTEGER NOT NULL DEFAULT 0,\n\t`title` TEXT NOT NULL DEFAULT \"\",\n\t`stars` TEXT NOT NULL DEFAULT \"\",\n\t`kind` TEXT NOT NULL DEFAULT \"\",\n\t`sizeMB` INTEGER NOT NULL DEFAULT 0,\n\t`season` TEXT NOT NULL DEFAULT \"\",\n\t`imgObjUrl` TEXT NOT NULL DEFAULT \"\",\n\t`filmRating` TEXT NOT NULL DEFAULT \"\",\n\t`tvShowRating` TEXT NOT NULL DEFAULT \"\",\n\t`path` TEXT NOT NULL DEFAULT \"\",\n\t`episodeNumber` TEXT NOT NULL DEFAULT \"\",\n\t`isSpecial` TEXT NOT NULL DEFAULT \"\",\n\t`useParentImg` TEXT NOT NULL DEFAULT \"\",\n\t`parentSkipping` TEXT NOT NULL DEFAULT \"\",\n\t`collectionID` INTEGER NOT NULL DEFAULT 0,\n\t`imgThumbObjUrl` TEXT NOT NULL DEFAULT \"\",\n\t`qualityName` TEXT NOT NULL DEFAULT \"\",\n\t`rootEpisode` TEXT NOT NULL DEFAULT \"\",\n\t`hasIntroSkipping` INTEGER NOT NULL DEFAULT 0,\n\t`episodeFlag` TEXT NOT NULL DEFAULT \"\",\n\t`lastUpdated` TEXT NOT NULL DEFAULT \"\",\n\t`skippingDurations_start` TEXT NOT NULL DEFAULT \"\",\n\t`skippingDurations_end` TEXT NOT NULL DEFAULT \"\",\n\tPRIMARY KEY(`id`)\n)";
    static final String ORIGINAL_V3_COPY = "INSERT INTO CinemanaDownloadItem (\n\tid,\n         \tdownloadTaskId,\n         \ttitle,\n         \timgThumbObjUrl,\n         \tpath,\n         \tcollectionID,\n         \tqualityName\n         )\nSELECT\n\tid,\n\tdownloadTaskId,\n\ttitle,\n\tthumbUrl,\n\tpath,\n\tcollectionID,\n\tqualityName\nFROM DownloadItem WHERE finished = 1;";

    private static final String CREATE_SYNTHETIC_OLD =
            "CREATE TABLE DownloadItem (id TEXT PRIMARY KEY NOT NULL,"
            + "downloadTaskId INTEGER NOT NULL, title TEXT NOT NULL,"
            + "thumbUrl TEXT NOT NULL, path TEXT NOT NULL,"
            + "collectionID INTEGER NOT NULL, qualityName TEXT NOT NULL,"
            + "finished INTEGER NOT NULL, videoFile TEXT NOT NULL)";

    private static final String GOOD_JSON =
            "{\"title\":\"Series\\nSeason One , Episode ، 7\","
            + "\"videoModel\":{\"kind\":\"2\",\"nb\":\"episode-17\","
            + "\"season\":\"1\",\"episodeNummer\":\"7\",\"rootSeries\":\"91\"}}";

    private static void need(boolean ok, String message) {
        if (!ok) throw new IllegalStateException("Room 2->3 row identity: " + message);
    }

    private static void insertSource(SQLiteDatabase db, String id, int taskId,
                                     boolean finished, String raw) {
        ContentValues values = new ContentValues();
        values.put("id", id);
        values.put("downloadTaskId", taskId);
        values.put("title", "Original " + id);
        values.put("thumbUrl", "image.png");
        values.put("path", "/diagnostic/" + id + ".mp4");
        values.put("collectionID", 9);
        values.put("qualityName", "720p");
        values.put("finished", finished ? 1 : 0);
        values.put("videoFile", raw);
        need(db.insertOrThrow("DownloadItem", null, values) != -1, "insert old source");
    }

    private static String scalar(SQLiteDatabase db, String sql, String... args) {
        try (Cursor c = db.rawQuery(sql, args)) {
            return c.moveToFirst() ? c.getString(0) : null;
        }
    }

    private static void set(SQLiteDatabase db, String table, String col,
                            Object value, String id) {
        ContentValues cv = new ContentValues();
        if (value instanceof Integer) cv.put(col, (Integer) value);
        else cv.put(col, (String) value);
        need(db.update(table, cv, "id=?", new String[]{id}) == 1,
                "fixture changed exactly one row");
    }

    /** Exactly one source row and one copied target are inspected in a transaction. */
    private static Reason applyWithinTransaction(SQLiteDatabase db, String sourceId)
            throws JSONException {
        Row source = null;
        LegacyRoomV2EpisodeMetadata.Result json = null;
        try (Cursor old = db.rawQuery(
                "SELECT id,downloadTaskId,finished,videoFile FROM DownloadItem WHERE id=?",
                new String[]{sourceId})) {
            if (old.moveToFirst()) {
                source = new Row(old.getString(0), old.getInt(1), old.getInt(2) == 1);
                // The actual source JSON is read back from SQLite, not supplied
                // from the requested target or a second independent fixture.
                json = LegacyRoomJsonProbe.inspect(old.getString(3));
                need(!old.moveToNext(), "one legacy source identity");
            }
        }

        Target target = null;
        if (source != null) {
            try (Cursor copied = db.rawQuery(
                    "SELECT id,downloadTaskId FROM CinemanaDownloadItem WHERE id=?",
                    new String[]{source.id})) {
                if (copied.moveToFirst()) {
                    target = new Target(copied.getString(0), copied.getInt(1));
                    need(!copied.moveToNext(), "one copied target identity");
                }
            }
        }

        Reason decision = LegacyRoomV2RowWriteGuard.inspect(source, json, target);
        if (decision != Reason.READY) return decision;

        ContentValues changed = new ContentValues();
        changed.put("title", json.projection.title);
        changed.put("episodeNumber", json.projection.episodeNumber);
        changed.put("season", json.projection.season);
        changed.put("rootEpisode", json.projection.rootEpisode);
        changed.put("collectionID", json.projection.collectionId);
        int count = db.update("CinemanaDownloadItem", changed,
                "id=? AND downloadTaskId=?",
                new String[]{source.id, String.valueOf(source.taskId)});
        need(count == 1, "only exact copied row may be updated");
        return Reason.READY;
    }

    public static String run() throws Exception {
        int cases = 0;
        for (int scenario = 0; scenario < 10; scenario++) {
            try (SQLiteDatabase db = SQLiteDatabase.create(null)) {
                db.execSQL(CREATE_SYNTHETIC_OLD);
                db.execSQL(ORIGINAL_V3_CREATE);
                insertSource(db, "episode-17", 17, true, GOOD_JSON);
                insertSource(db, "episode-18", 17, true,
                        "{\"title\":\"Neighbor\",\"videoModel\":{\"kind\":\"2\","
                        + "\"nb\":\"episode-18\",\"rootSeries\":\"99\"}}");
                insertSource(db, "pending", 17, false,
                        "{\"title\":\"Pending\",\"videoModel\":{\"kind\":\"2\","
                        + "\"nb\":\"pending\",\"rootSeries\":\"99\"}}");
                String attempted = "episode-17";
                if (scenario == 8) {
                    attempted = "x' OR 1=1--";
                    insertSource(db, attempted, 18, true,
                            "{\"title\":\"Quoted ID\",\"videoModel\":{\"kind\":\"2\","
                            + "\"nb\":\"x' OR 1=1--\",\"rootSeries\":\"0\"}}");
                }
                // This is the real SQL from it2$m: copies finished=1 only.
                db.execSQL(ORIGINAL_V3_COPY);
                need("2".equals(scalar(db,
                        "SELECT count(*) FROM CinemanaDownloadItem")) || scenario == 8,
                        "original completed-row filter");
                need(scalar(db, "SELECT id FROM CinemanaDownloadItem WHERE id=?",
                        "pending") == null, "unfinished source was not copied");

                if (scenario == 1) attempted = "pending";
                if (scenario == 2) set(db, "DownloadItem", "videoFile",
                        "{\"title\":\"Alias\",\"videoModel\":{\"kind\":\"2\","
                        + "\"nb\":\"episode-18\",\"rootSeries\":\"55\"}}",
                        "episode-17");
                if (scenario == 3) set(db, "DownloadItem", "videoFile",
                        "{\"title\":\"Movie\",\"videoModel\":{\"kind\":\"1\","
                        + "\"nb\":\"episode-17\"}}", "episode-17");
                if (scenario == 4) set(db, "CinemanaDownloadItem", "downloadTaskId",
                        99, "episode-17");
                if (scenario == 5) {
                    need(db.delete("CinemanaDownloadItem", "id=?",
                            new String[]{"episode-17"}) == 1, "fixture deleted target");
                }
                if (scenario == 6) set(db, "DownloadItem", "videoFile",
                        "{\"title\":\"Bad\",\"videoModel\":{\"kind\":\"2\","
                        + "\"nb\":[\"episode-17\"]}}", "episode-17");
                if (scenario == 9) attempted = "absent";

                String ownBefore = scalar(db,
                        "SELECT title FROM CinemanaDownloadItem WHERE id=?",
                        "episode-17");
                String neighborBefore = scalar(db,
                        "SELECT title FROM CinemanaDownloadItem WHERE id=?",
                        "episode-18");

                db.beginTransaction();
                Reason actual;
                try {
                    actual = applyWithinTransaction(db, attempted);
                    if (scenario != 7) db.setTransactionSuccessful();
                    // Case 7 deliberately omits transaction success and checks rollback.
                } finally {
                    db.endTransaction();
                }
                Reason expected = Reason.READY;
                if (scenario == 1) expected = Reason.SOURCE_NOT_COPIED;
                if (scenario == 2) expected = Reason.JSON_ID_MISMATCH;
                if (scenario == 3 || scenario == 6)
                    expected = Reason.PROJECTION_NOT_SELECTED;
                if (scenario == 4) expected = Reason.TARGET_TASK_MISMATCH;
                if (scenario == 5) expected = Reason.TARGET_ROW_MISSING;
                if (scenario == 9) expected = Reason.SOURCE_MISSING;
                need(actual == expected, "scenario " + scenario + ": " + actual);

                String ownAfter = scalar(db,
                        "SELECT title FROM CinemanaDownloadItem WHERE id=?",
                        "episode-17");
                String neighborAfter = scalar(db,
                        "SELECT title FROM CinemanaDownloadItem WHERE id=?",
                        "episode-18");
                need(neighborBefore.equals(neighborAfter),
                        "neighbor unchanged scenario " + scenario);
                if (scenario == 0) {
                    need("Series Season One Episode 7".equals(ownAfter),
                            "selected projection updated only copied row");
                    need("91".equals(scalar(db,
                            "SELECT collectionID FROM CinemanaDownloadItem WHERE id=?",
                            "episode-17")), "collection ID mapped");
                    need("7".equals(scalar(db,
                            "SELECT episodeNumber FROM CinemanaDownloadItem WHERE id=?",
                            "episode-17")), "episode number mapped");
                } else {
                    need(ownBefore == null ? ownAfter == null : ownBefore.equals(ownAfter),
                            "rejected or rolled-back projection never updates row " + scenario);
                }
                if (scenario == 8) {
                    need("Quoted ID".equals(scalar(db,
                            "SELECT title FROM CinemanaDownloadItem WHERE id=?",
                            attempted)), "SQL-injection-like ID remained literal");
                }
                cases++;
            }
        }
        return "PASS (" + cases + " SQLite JSON row-identity scenarios)";
    }
}
