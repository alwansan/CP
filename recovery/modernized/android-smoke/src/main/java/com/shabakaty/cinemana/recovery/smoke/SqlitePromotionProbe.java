package com.shabakaty.cinemana.recovery.smoke;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.shabakaty.cinemana.recovery.downloads.MkvPromotionCoordinator;
import com.shabakaty.cinemana.recovery.downloads.MkvPromotionPreflight;

/**
 * Real Android SQLite integration test. An anonymous, in-memory DB is created
 * anew for each fault injection. No original Cinemana DAO, production database,
 * download, account, or user files are accessed.
 *
 * This tests compensating updates only. Process death and multi-database
 * atomicity are NOT covered; a persistent journal remains required.
 */
public final class SqlitePromotionProbe {
    private SqlitePromotionProbe() {}

    private static final MkvPromotionPreflight.Request REQUEST =
            new MkvPromotionPreflight.Request("item1", 17, "external1",
                    "/diagnostic/Episode.mp4", "/diagnostic/Episode.mkv", 5000L);

    private static final class SqlitePort implements MkvPromotionCoordinator.Port {
        final SQLiteDatabase db;
        String failStep;
        boolean noopRestore;

        SqlitePort(SQLiteDatabase db, String failStep, boolean noopRestore) {
            this.db = db;
            this.failStep = failStep;
            this.noopRestore = noopRestore;
        }

        private String selectText(String table, String column) {
            try (Cursor c = db.rawQuery("SELECT " + column + " FROM " + table + " LIMIT 1", null)) {
                if (!c.moveToFirst()) throw new IllegalStateException("no row in " + table);
                return c.getString(0);
            }
        }

        private long selectLong(String table, String column) {
            try (Cursor c = db.rawQuery("SELECT " + column + " FROM " + table + " LIMIT 1", null)) {
                if (!c.moveToFirst()) throw new IllegalStateException("no row in " + table);
                return c.getLong(0);
            }
        }

        private void afterWrite(String stage) throws Exception {
            if (stage.equals(failStep)) throw new Exception("injected failure after " + stage);
        }

        @Override public MkvPromotionPreflight.DownloadRow readDownload() {
            return new MkvPromotionPreflight.DownloadRow(
                    (int)selectLong("diag_downloads", "task_id"),
                    selectText("diag_downloads", "external_id"),
                    selectText("diag_downloads", "path"),
                    selectLong("diag_downloads", "bytes"));
        }

        @Override public MkvPromotionPreflight.CinemanaRow readCinemanaItem() {
            return new MkvPromotionPreflight.CinemanaRow(
                    selectText("diag_cinemana", "item_id"),
                    (int)selectLong("diag_cinemana", "task_id"),
                    selectText("diag_cinemana", "path"));
        }

        @Override public Object snapshotSubtitles() {
            return selectText("diag_subtitles", "path");
        }

        @Override public void writeDownload(String name, long size) throws Exception {
            db.execSQL("UPDATE diag_downloads SET path=?, bytes=? WHERE task_id=17",
                    new Object[]{name, size});
            afterWrite("download");
        }

        @Override public void writeCinemana(String name) throws Exception {
            db.execSQL("UPDATE diag_cinemana SET path=? WHERE item_id='item1'",
                    new Object[]{name});
            afterWrite("cinemana");
        }

        @Override public void writeSubtitles(String name) throws Exception {
            db.execSQL("UPDATE diag_subtitles SET path=? WHERE item_id='item1'",
                    new Object[]{name});
            afterWrite("subtitles");
        }

        @Override public boolean verify(String name, long size) throws Exception {
            afterWrite("readback");
            return selectText("diag_downloads", "path").equals(name)
                    && selectLong("diag_downloads", "bytes") == size
                    && selectText("diag_cinemana", "path").equals(name)
                    && selectText("diag_subtitles", "path").equals(name);
        }

        @Override public void restoreSubtitles(Object snapshot) {
            db.execSQL("UPDATE diag_subtitles SET path=? WHERE item_id='item1'",
                    new Object[]{snapshot});
        }

        @Override public void restoreCinemana(MkvPromotionPreflight.CinemanaRow snapshot) {
            db.execSQL("UPDATE diag_cinemana SET path=? WHERE item_id='item1'",
                    new Object[]{snapshot.path});
        }

        @Override public void restoreDownload(MkvPromotionPreflight.DownloadRow snapshot) {
            if (noopRestore) return;
            db.execSQL("UPDATE diag_downloads SET path=?, bytes=? WHERE task_id=17",
                    new Object[]{snapshot.path, snapshot.originalBytes});
        }

        @Override public boolean verifyRestored(
                MkvPromotionPreflight.DownloadRow dl,
                MkvPromotionPreflight.CinemanaRow item, Object subtitle) {
            return selectText("diag_downloads", "path").equals(dl.path)
                    && selectLong("diag_downloads", "bytes") == dl.originalBytes
                    && selectText("diag_cinemana", "path").equals(item.path)
                    && selectText("diag_subtitles", "path").equals(subtitle);
        }
    }

    private static SQLiteDatabase create() {
        SQLiteDatabase db = SQLiteDatabase.create(null);
        db.execSQL("CREATE TABLE diag_downloads(task_id INTEGER PRIMARY KEY,"
                + " external_id TEXT, path TEXT, bytes INTEGER)");
        db.execSQL("CREATE TABLE diag_cinemana(item_id TEXT PRIMARY KEY,"
                + " task_id INTEGER, path TEXT)");
        db.execSQL("CREATE TABLE diag_subtitles(item_id TEXT PRIMARY KEY, path TEXT)");
        db.execSQL("INSERT INTO diag_downloads VALUES(17, 'external1', 'Episode.mp4', 4200)");
        db.execSQL("INSERT INTO diag_cinemana VALUES('item1', 17, 'Episode.mp4')");
        db.execSQL("INSERT INTO diag_subtitles VALUES('item1', 'Episode.mp4')");
        return db;
    }

    /** Throws with exact failing stage; callers display PASS only if all cases passed. */
    public static String run() {
        int checks = 0;
        for (String stage : new String[]{null, "download", "cinemana", "subtitles", "readback"}) {
            try (SQLiteDatabase db = create()) {
                SqlitePort port = new SqlitePort(db, stage, false);
                MkvPromotionCoordinator.Result result = MkvPromotionCoordinator.promote(REQUEST, port);
                if (stage == null) {
                    if (result.status != MkvPromotionCoordinator.Status.SUCCESS
                            || !port.verify("Episode.mkv", 5000L)) {
                        throw new AssertionError("SQLite promotion success/readback failed");
                    }
                } else {
                    if (result.status != MkvPromotionCoordinator.Status.ROLLED_BACK
                            || !port.verifyRestored(
                                new MkvPromotionPreflight.DownloadRow(17, "external1", "Episode.mp4", 4200L),
                                new MkvPromotionPreflight.CinemanaRow("item1", 17, "Episode.mp4"),
                                "Episode.mp4")) {
                        throw new AssertionError("SQLite compensation failed at " + stage
                                + ": " + result.status);
                    }
                }
                checks++;
            } catch (Exception error) {
                throw new IllegalStateException("SQLite diagnostic error: " + stage, error);
            }
        }

        try (SQLiteDatabase db = create()) {
            SqlitePort port = new SqlitePort(db, "readback", true);
            MkvPromotionCoordinator.Result failed = MkvPromotionCoordinator.promote(REQUEST, port);
            if (failed.status != MkvPromotionCoordinator.Status.ROLLBACK_FAILED) {
                throw new AssertionError("silent SQLite restore must report ROLLBACK_FAILED");
            }
            checks++;
        }
        return "PASS (" + checks + " in-memory SQLite cases)";
    }
}
