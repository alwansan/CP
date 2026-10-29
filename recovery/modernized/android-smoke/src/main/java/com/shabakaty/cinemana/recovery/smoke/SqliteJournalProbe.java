package com.shabakaty.cinemana.recovery.smoke;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.shabakaty.cinemana.recovery.downloads.MkvPromotionPreflight;
import java.io.File;

/**
 * Diagnostic-only, single-file SQLite journal/restart experiment.
 *
 * The journal snapshot is durably inserted before any promotion writes.
 * We simulate interruption by closing the database after partial writes,
 * then reopen it and restore snapshots inside a single SQLite transaction.
 *
 * NO production Cinemana database is opened. The original MkvExporter uses
 * distinct stores, so these single-database checks DO NOT prove that a
 * production migration survives process death or writes across two DBs.
 */
public final class SqliteJournalProbe {
    private SqliteJournalProbe() {}

    private static final MkvPromotionPreflight.Request REQUEST =
            new MkvPromotionPreflight.Request("item1", 17, "external1",
                    "/diagnostic/Episode.mp4", "/diagnostic/Episode.mkv", 5000L);

    private static final MkvPromotionPreflight.DownloadRow ORIGINAL_DOWNLOAD =
            new MkvPromotionPreflight.DownloadRow(17, "external1", "Episode.mp4", 4200L);
    private static final MkvPromotionPreflight.CinemanaRow ORIGINAL_ITEM =
            new MkvPromotionPreflight.CinemanaRow("item1", 17, "Episode.mp4");

    private static void createJournal(SQLiteDatabase db) {
        db.execSQL("CREATE TABLE diag_journal("
                + "id INTEGER PRIMARY KEY, task_id INTEGER NOT NULL,"
                + "external_id TEXT NOT NULL, item_id TEXT NOT NULL,"
                + "download_path TEXT NOT NULL, download_bytes INTEGER NOT NULL,"
                + "cinemana_path TEXT NOT NULL, subtitles_path TEXT NOT NULL)");
    }

    /** Commit the before-image snapshot before any nontransactional writes. */
    private static void beginPromotion(SQLiteDatabase db) throws Exception {
        SqlitePromotionProbe.SqlitePort port =
                new SqlitePromotionProbe.SqlitePort(db, null, false);
        MkvPromotionPreflight.DownloadRow download = port.readDownload();
        MkvPromotionPreflight.CinemanaRow item = port.readCinemanaItem();
        Object subtitles = port.snapshotSubtitles();
        if (!MkvPromotionPreflight.evaluate(REQUEST, download, item).ready()
                || subtitles == null || download.originalBytes < 0) {
            throw new IllegalStateException("invalid journal snapshot identities");
        }
        db.beginTransaction();
        try {
            db.execSQL("INSERT INTO diag_journal VALUES(1, ?, ?, ?, ?, ?, ?, ?)",
                    new Object[]{download.taskId, download.externalId, item.itemId,
                            download.path, download.originalBytes, item.path, subtitles});
            db.setTransactionSuccessful();
        } finally {
            db.endTransaction();
        }
    }

    private static void partiallyPromote(SQLiteDatabase db, int stages) throws Exception {
        SqlitePromotionProbe.SqlitePort port =
                new SqlitePromotionProbe.SqlitePort(db, null, false);
        port.writeDownload("Episode.mkv", 5000L);
        if (stages >= 2) port.writeCinemana("Episode.mkv");
        if (stages >= 3) port.writeSubtitles("Episode.mkv");
    }

    private static boolean hasJournal(SQLiteDatabase db) {
        try (Cursor c = db.rawQuery("SELECT COUNT(*) FROM diag_journal WHERE id=1", null)) {
            if (!c.moveToFirst()) throw new IllegalStateException("missing journal COUNT");
            return c.getLong(0) == 1L;
        }
    }

    /**
     * Return false if no pending snapshot. Rollback and journal removal are
     * atomic together in THIS disposable SQLite database. A failure leaves
     * the pending row for another recovery attempt, without claiming success.
     */
    private static boolean recover(SQLiteDatabase db, boolean injectFailure) throws Exception {
        db.beginTransaction();
        try {
            MkvPromotionPreflight.DownloadRow download;
            MkvPromotionPreflight.CinemanaRow item;
            String subtitle;
            try (Cursor c = db.rawQuery(
                    "SELECT task_id, external_id, item_id, download_path,"
                    + " download_bytes, cinemana_path, subtitles_path"
                    + " FROM diag_journal WHERE id=1", null)) {
                if (!c.moveToFirst()) return false;
                download = new MkvPromotionPreflight.DownloadRow(
                        c.getInt(0), c.getString(1), c.getString(3), c.getLong(4));
                item = new MkvPromotionPreflight.CinemanaRow(
                        c.getString(2), c.getInt(0), c.getString(5));
                subtitle = c.getString(6);
            }

            SqlitePromotionProbe.SqlitePort port =
                    new SqlitePromotionProbe.SqlitePort(db, null, false);
            MkvPromotionPreflight.DownloadRow currentDownload = port.readDownload();
            MkvPromotionPreflight.CinemanaRow currentItem = port.readCinemanaItem();
            // A journal for another task/item must NEVER overwrite new rows.
            if (currentDownload.taskId != download.taskId
                    || !currentDownload.externalId.equals(download.externalId)
                    || !currentItem.itemId.equals(item.itemId)
                    || currentItem.downloadTaskId != item.downloadTaskId) {
                throw new IllegalStateException("recovery identity differs from journal");
            }
            port.restoreSubtitles(subtitle);
            if (injectFailure) {
                throw new IllegalStateException("injected mid-recovery failure");
            }
            port.restoreCinemana(item);
            port.restoreDownload(download);
            if (!port.verifyRestored(download, item, subtitle)) {
                throw new IllegalStateException("recovery readback mismatch");
            }
            db.execSQL("DELETE FROM diag_journal WHERE id=1");
            if (hasJournal(db)) {
                throw new IllegalStateException("journal cleanup failed");
            }
            db.setTransactionSuccessful();
            return true;
        } finally {
            db.endTransaction();
        }
    }

    private static boolean restored(SQLiteDatabase db) throws Exception {
        SqlitePromotionProbe.SqlitePort port =
                new SqlitePromotionProbe.SqlitePort(db, null, false);
        return port.verifyRestored(ORIGINAL_DOWNLOAD, ORIGINAL_ITEM, "Episode.mp4");
    }

    /**
     * Cases: interruption after each of 3 writes; a failed recovery retried
     * on the next reopen; identity tampering rejected without data overwrite;
     * successful recovery remains idempotent across another reopen.
     */
    public static String run(Context context) {
        File dir = new File(context.getCacheDir(), "sqlite-journal-diagnostics");
        if (!dir.isDirectory() && !dir.mkdirs()) {
            throw new IllegalStateException("cannot create journal diagnostics directory");
        }
        int checks = 0;
        for (int scenario = 1; scenario <= 6; scenario++) {
            File file = new File(dir, "journal-case-" + scenario + ".db");
            SQLiteDatabase.deleteDatabase(file);
            int stages = scenario <= 3 ? scenario : (scenario == 4 ? 2 : 1);
            try {
                // Simulated interruption: write only the first N stages and
                // close the SQLite handle WITHOUT clearing the journal row.
                try (SQLiteDatabase db = SQLiteDatabase.openOrCreateDatabase(file, null)) {
                    SqlitePromotionProbe.seed(db);
                    createJournal(db);
                    beginPromotion(db);
                    partiallyPromote(db, stages);
                    if (scenario == 5) {
                        db.execSQL("UPDATE diag_downloads SET external_id='different' "
                                + "WHERE task_id=17");
                    }
                }

                if (scenario == 4) {
                    try (SQLiteDatabase reopened =
                                 SQLiteDatabase.openOrCreateDatabase(file, null)) {
                        boolean threw = false;
                        try {
                            recover(reopened, true);
                        } catch (IllegalStateException expected) {
                            threw = true;
                        }
                        if (!threw || !hasJournal(reopened)) {
                            throw new AssertionError("failed recovery lost durable intent");
                        }
                    }
                }

                try (SQLiteDatabase reopened =
                             SQLiteDatabase.openOrCreateDatabase(file, null)) {
                    if (scenario == 5) {
                        boolean rejected = false;
                        try {
                            recover(reopened, false);
                        } catch (IllegalStateException expected) {
                            rejected = true;
                        }
                        if (!rejected || !hasJournal(reopened)
                                || restored(reopened)) {
                            throw new AssertionError(
                                    "identity mismatch wrongly restored or cleared journal");
                        }
                    } else {
                        if (!recover(reopened, false)
                                || hasJournal(reopened) || !restored(reopened)) {
                            throw new AssertionError("journal recovery failed: " + scenario);
                        }
                    }
                }

                // Confirm the recovery result is persisted to disk, not only
                // visible in the connection that performed restoration.
                try (SQLiteDatabase verify = SQLiteDatabase.openDatabase(
                        file.getAbsolutePath(), null, SQLiteDatabase.OPEN_READONLY)) {
                    if (scenario == 5) {
                        if (!hasJournal(verify) || restored(verify)) {
                            throw new AssertionError("identity rejection did not persist");
                        }
                    } else if (hasJournal(verify) || !restored(verify)) {
                        throw new AssertionError("reopen readback failed: " + scenario);
                    }
                }
                if (scenario == 6) {
                    try (SQLiteDatabase reopened =
                                 SQLiteDatabase.openOrCreateDatabase(file, null)) {
                        if (recover(reopened, false)) {
                            throw new AssertionError("completed journal was applied twice");
                        }
                    }
                }
                checks++;
            } catch (Exception e) {
                throw new IllegalStateException(
                        "journal SQLite diagnostic failed: " + scenario, e);
            } finally {
                SQLiteDatabase.deleteDatabase(file);
            }
        }
        return "PASS (" + checks + " journal restart cases)";
    }
}
