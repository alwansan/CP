package com.shabakaty.cinemana.recovery.smoke;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.shabakaty.cinemana.recovery.downloads.MkvPromotionPreflight;
import java.io.File;

/**
 * Diagnostic-only crash-recovery probe spanning TWO SEPARATE SQLite databases,
 * with a THIRD database holding a committed compensation journal.
 *
 * These are new, disposable private files owned by the diagnostic package.
 * NO original Cinemana accounts, downloaded videos or databases are opened.
 *
 * Each SQLite database can commit independently. A pre-committed journal makes
 * recovery retryable, but this is not a globally atomic distributed transaction.
 * Production integration still needs genuine DAO adapters, concurrency control,
 * file-operation journaling, and more process-death/power-loss tests.
 */
public final class MultiDatabaseJournalProbe {
    private MultiDatabaseJournalProbe() {}

    private static final String OLD = "Episode.mp4";
    private static final String NEW = "Episode.mkv";
    private static final String OLD_AR = "Episode.ar.srt";
    private static final String NEW_AR = "Episode.mkv.ar.srt";
    private static final long OLD_BYTES = 4200L;
    private static final long NEW_BYTES = 5000L;

    private static final class Files {
        final File downloads;
        final File cinemana;
        final File journal;

        Files(Context context) {
            File dir = new File(context.getFilesDir(), "multi-db-recovery-probe");
            if (!dir.isDirectory() && !dir.mkdirs()) {
                throw new IllegalStateException("cannot create diagnostic directory");
            }
            downloads = new File(dir, "downloads.db");
            cinemana = new File(dir, "cinemana.db");
            journal = new File(dir, "journal.db");
        }
        void delete() {
            SQLiteDatabase.deleteDatabase(downloads);
            SQLiteDatabase.deleteDatabase(cinemana);
            SQLiteDatabase.deleteDatabase(journal);
        }
    }

    private static SQLiteDatabase open(File file) {
        // Never create a missing file on the recovery path.
        if (!file.isFile()) throw new IllegalStateException("missing " + file.getName());
        return SQLiteDatabase.openDatabase(
                file.getAbsolutePath(), null, SQLiteDatabase.OPEN_READWRITE);
    }

    private static String readText(SQLiteDatabase db, String sql) {
        try (Cursor c = db.rawQuery(sql, null)) {
            if (!c.moveToFirst() || c.isNull(0))
                throw new IllegalStateException("missing diagnostic text row");
            return c.getString(0);
        }
    }

    private static long readLong(SQLiteDatabase db, String sql) {
        try (Cursor c = db.rawQuery(sql, null)) {
            if (!c.moveToFirst() || c.isNull(0))
                throw new IllegalStateException("missing diagnostic numeric row");
            return c.getLong(0);
        }
    }

    private static String dlPath(SQLiteDatabase db) {
        return readText(db, "SELECT path FROM diag_downloads WHERE task_id=17");
    }
    private static long dlBytes(SQLiteDatabase db) {
        return readLong(db, "SELECT bytes FROM diag_downloads WHERE task_id=17");
    }
    private static String itemPath(SQLiteDatabase db) {
        return readText(db, "SELECT path FROM diag_cinemana WHERE item_id='item1'");
    }
    private static String subtitlePath(SQLiteDatabase db) {
        return readText(db, "SELECT file FROM diag_subtitles WHERE id='sub-en'");
    }
    private static String arabicSubtitlePath(SQLiteDatabase db) {
        return readText(db, "SELECT file FROM diag_subtitles WHERE id='sub-ar'");
    }
    private static void setSubtitleFiles(SQLiteDatabase db, String en, String ar) {
        ContentValues english = new ContentValues();
        english.put("file", en);
        ContentValues arabic = new ContentValues();
        arabic.put("file", ar);
        if (db.update("diag_subtitles", english,
                "id=? AND parent_id=? AND task_id=?",
                new String[]{"sub-en", "item1", "17"}) != 1
                || db.update("diag_subtitles", arabic,
                "id=? AND parent_id=? AND task_id=?",
                new String[]{"sub-ar", "item1", "17"}) != 1) {
            throw new IllegalStateException("subtitle identity mismatch");
        }
    }

    private static void setPath(SQLiteDatabase db, String table, String where,
                                String path, boolean includeBytes) {
        ContentValues values = new ContentValues();
        values.put("path", path);
        if (includeBytes) values.put("bytes", OLD.equals(path) ? OLD_BYTES : NEW_BYTES);
        if (db.update(table, values, where, null) != 1)
            throw new IllegalStateException("ambiguous update in " + table);
    }

    private static void createAndSeed(Files files) {
        files.delete();
        try (SQLiteDatabase dl = SQLiteDatabase.openOrCreateDatabase(files.downloads, null);
             SQLiteDatabase cine = SQLiteDatabase.openOrCreateDatabase(files.cinemana, null);
             SQLiteDatabase journal = SQLiteDatabase.openOrCreateDatabase(files.journal, null)) {
            dl.execSQL("CREATE TABLE diag_downloads(task_id INTEGER PRIMARY KEY,"
                    + " external_id TEXT NOT NULL, path TEXT NOT NULL, bytes INTEGER NOT NULL)");
            dl.execSQL("INSERT INTO diag_downloads VALUES(17,'external1','Episode.mp4',4200)");
            cine.execSQL("CREATE TABLE diag_cinemana(item_id TEXT PRIMARY KEY,"
                    + " task_id INTEGER NOT NULL, path TEXT NOT NULL)");
            cine.execSQL("CREATE TABLE diag_subtitles(id TEXT PRIMARY KEY,"
                    + " parent_id TEXT NOT NULL, task_id INTEGER NOT NULL, file TEXT NOT NULL)");
            cine.execSQL("INSERT INTO diag_cinemana VALUES('item1',17,'Episode.mp4')");
            cine.execSQL("INSERT INTO diag_subtitles VALUES('sub-en','item1',17,'Episode.mp4')");
            cine.execSQL("INSERT INTO diag_subtitles VALUES('sub-ar','item1',17,'Episode.ar.srt')");
            journal.execSQL("CREATE TABLE intents(id INTEGER PRIMARY KEY, phase INTEGER NOT NULL,"
                    + " task_id INTEGER NOT NULL, external_id TEXT NOT NULL,"
                    + " item_id TEXT NOT NULL, old_download TEXT NOT NULL,"
                    + " old_bytes INTEGER NOT NULL, old_cinemana TEXT NOT NULL,"
                    + " old_subtitle TEXT NOT NULL, old_subtitle_ar TEXT NOT NULL)");
        }
    }

    private static int journalStage(SQLiteDatabase db) {
        return (int)readLong(db, "SELECT phase FROM intents WHERE id=1");
    }

    private static boolean journalPending(SQLiteDatabase db) {
        return readLong(db, "SELECT COUNT(*) FROM intents WHERE id=1") == 1L;
    }

    /**
     * Phase 1: Downloads updated. Phase 2: Cinemana item also updated.
     * Phase 3: subtitle also updated. Journal commit precedes ALL 3 writes,
     * and separate SQLite connections commit each stage before force-stop.
     */
    public static String prepare(Context context, int phase) {
        if (phase < 1 || phase > 3)
            throw new IllegalArgumentException("diagnostic phase must be 1..3");
        Files files = new Files(context);
        createAndSeed(files);
        try (SQLiteDatabase dl = open(files.downloads);
             SQLiteDatabase cine = open(files.cinemana);
             SQLiteDatabase journal = open(files.journal)) {
            MkvPromotionPreflight.Decision decision = MkvPromotionPreflight.evaluate(
                    new MkvPromotionPreflight.Request("item1", 17, "external1",
                            "/diagnostic/Episode.mp4", "/diagnostic/Episode.mkv", NEW_BYTES),
                    new MkvPromotionPreflight.DownloadRow(17,
                            readText(dl, "SELECT external_id FROM diag_downloads WHERE task_id=17"),
                            dlPath(dl), dlBytes(dl)),
                    new MkvPromotionPreflight.CinemanaRow("item1",
                            (int)readLong(cine, "SELECT task_id FROM diag_cinemana WHERE item_id='item1'"),
                            itemPath(cine)));
            if (!decision.ready() || !OLD.equals(subtitlePath(cine))
                    || !OLD_AR.equals(arabicSubtitlePath(cine)))
                throw new IllegalStateException("invalid source snapshot");
            journal.beginTransaction();
            try {
                journal.execSQL("INSERT INTO intents VALUES(1,?,?,?,?,?,?,?,?,?)",
                        new Object[]{phase, 17, "external1", "item1", dlPath(dl),
                                dlBytes(dl), itemPath(cine), subtitlePath(cine),
                                arabicSubtitlePath(cine)});
                journal.setTransactionSuccessful();
            } finally {
                journal.endTransaction();
            }
            if (!journalPending(journal))
                throw new IllegalStateException("compensation journal not committed");
        }
        // Reopen journal independently to check it was durable before writes.
        try (SQLiteDatabase journal = open(files.journal)) {
            if (!journalPending(journal) || journalStage(journal) != phase)
                throw new IllegalStateException("journal missing after reopen");
        }
        try (SQLiteDatabase dl = open(files.downloads)) {
            setPath(dl, "diag_downloads", "task_id=17", NEW, true);
        }
        if (phase >= 2) {
            try (SQLiteDatabase cine = open(files.cinemana)) {
                setPath(cine, "diag_cinemana", "item_id='item1'", NEW, false);
            }
        }
        if (phase >= 3) {
            try (SQLiteDatabase cine = open(files.cinemana)) {
                cine.beginTransaction();
                try {
                    setSubtitleFiles(cine, NEW, NEW_AR);
                    cine.setTransactionSuccessful();
                } finally {
                    cine.endTransaction();
                }
            }
        }
        try (SQLiteDatabase dl = open(files.downloads);
             SQLiteDatabase cine = open(files.cinemana);
             SQLiteDatabase journal = open(files.journal)) {
            if (!journalPending(journal)
                    || !NEW.equals(dlPath(dl)) || dlBytes(dl) != NEW_BYTES
                    || !(phase >= 2 ? NEW : OLD).equals(itemPath(cine))
                    || !(phase >= 3 ? NEW : OLD).equals(subtitlePath(cine))
                    || !(phase >= 3 ? NEW_AR : OLD_AR).equals(arabicSubtitlePath(cine))) {
                throw new IllegalStateException("partial multi-db state not persisted");
            }
        }
        return "PREPARED stage=" + phase;
    }

    private static boolean oneOf(String path, String oldValue, String newValue) {
        return oldValue.equals(path) || newValue.equals(path);
    }

    private static void verifyBeforeCompensation(
            SQLiteDatabase dl, SQLiteDatabase cine, SQLiteDatabase journal) {
        if (!journalPending(journal)) throw new IllegalStateException("no pending journal");
        if (readLong(journal, "SELECT task_id FROM intents WHERE id=1") != 17
                || !("external1".equals(readText(journal,
                    "SELECT external_id FROM intents WHERE id=1")))
                || !("item1".equals(readText(journal,
                    "SELECT item_id FROM intents WHERE id=1")))
                || readLong(dl, "SELECT COUNT(*) FROM diag_downloads") != 1
                || readLong(cine, "SELECT COUNT(*) FROM diag_cinemana") != 1
                || readLong(cine, "SELECT COUNT(*) FROM diag_subtitles") != 2
                || readLong(cine, "SELECT COUNT(*) FROM diag_subtitles WHERE "
                        + "parent_id='item1' AND task_id=17 AND "
                        + "(id='sub-en' OR id='sub-ar')") != 2
                || !("external1".equals(readText(dl,
                    "SELECT external_id FROM diag_downloads WHERE task_id=17")))
                || readLong(cine, "SELECT task_id FROM diag_cinemana WHERE item_id='item1'") != 17) {
            throw new IllegalStateException("journal/source identity mismatch");
        }
        String beforeDl = readText(journal, "SELECT old_download FROM intents WHERE id=1");
        String beforeCine = readText(journal, "SELECT old_cinemana FROM intents WHERE id=1");
        String beforeSub = readText(journal, "SELECT old_subtitle FROM intents WHERE id=1");
        String beforeAr = readText(journal, "SELECT old_subtitle_ar FROM intents WHERE id=1");
        long beforeBytes = readLong(journal, "SELECT old_bytes FROM intents WHERE id=1");
        if (!OLD.equals(beforeDl) || !OLD.equals(beforeCine) || !OLD.equals(beforeSub)
                || !OLD_AR.equals(beforeAr) || beforeBytes != OLD_BYTES
                || !oneOf(dlPath(dl), beforeDl, NEW)
                || !oneOf(itemPath(cine), beforeCine, NEW)
                || !oneOf(subtitlePath(cine), beforeSub, NEW)
                || !oneOf(arabicSubtitlePath(cine), beforeAr, NEW_AR)
                || !(OLD.equals(dlPath(dl)) ? dlBytes(dl) == beforeBytes
                                           : dlBytes(dl) == NEW_BYTES)) {
            throw new IllegalStateException("unexpected third-party changes; fail closed");
        }
    }

    private static boolean allRestored(SQLiteDatabase dl, SQLiteDatabase cine) {
        return OLD.equals(dlPath(dl)) && dlBytes(dl) == OLD_BYTES
                && OLD.equals(itemPath(cine)) && OLD.equals(subtitlePath(cine))
                && OLD_AR.equals(arabicSubtitlePath(cine));
    }

    /**
     * Deliberately stop midway through compensation: restore Cinemana and its
     * subtitle in one database, but leave Downloads and the journal pending.
     * The emulator then force-stops Android before retrying in a new process.
     */
    public static String partiallyRecover(Context context, int expectedPhase) {
        Files files = new Files(context);
        try (SQLiteDatabase dl = open(files.downloads);
             SQLiteDatabase cine = open(files.cinemana);
             SQLiteDatabase journal = open(files.journal)) {
            if (journalStage(journal) != expectedPhase)
                throw new IllegalStateException("unexpected partial-recovery phase");
            verifyBeforeCompensation(dl, cine, journal);
            if (!NEW.equals(dlPath(dl)) || dlBytes(dl) != NEW_BYTES)
                throw new IllegalStateException("download not in expected partial state");
            cine.beginTransaction();
            try {
                setSubtitleFiles(cine, OLD, OLD_AR);
                setPath(cine, "diag_cinemana", "item_id='item1'", OLD, false);
                cine.setTransactionSuccessful();
            } finally {
                cine.endTransaction();
            }
            if (!OLD.equals(itemPath(cine)) || !OLD.equals(subtitlePath(cine))
                    || !journalPending(journal) || !NEW.equals(dlPath(dl))) {
                throw new IllegalStateException("midway recovery was not persisted");
            }
        }
        return "PARTIAL_REPLAY stage=" + expectedPhase;
    }

    /**
     * Replay is idempotent as long as the only states seen are the before/after
     * values and IDs stored in the journal. A failure between writes leaves
     * journal pending; a later process may safely retry.
     */
    public static String recover(Context context, int expectedPhase) {
        Files files = new Files(context);
        try (SQLiteDatabase dl = open(files.downloads);
             SQLiteDatabase cine = open(files.cinemana);
             SQLiteDatabase journal = open(files.journal)) {
            if (journalStage(journal) != expectedPhase)
                throw new IllegalStateException("unexpected pending journal phase");
            verifyBeforeCompensation(dl, cine, journal);
            // Separate DB transaction: Cinemana + subtitles are restored together.
            cine.beginTransaction();
            try {
                setSubtitleFiles(cine, OLD, OLD_AR);
                setPath(cine, "diag_cinemana", "item_id='item1'", OLD, false);
                cine.setTransactionSuccessful();
            } finally {
                cine.endTransaction();
            }
            // Downloads is an independent transaction, not globally atomic.
            dl.beginTransaction();
            try {
                setPath(dl, "diag_downloads", "task_id=17", OLD, true);
                dl.setTransactionSuccessful();
            } finally {
                dl.endTransaction();
            }
            if (!allRestored(dl, cine))
                throw new IllegalStateException("multi-db compensation readback failed");
        }

        // Important: verify via fresh read-only handles before deleting intent.
        try (SQLiteDatabase dl = SQLiteDatabase.openDatabase(
                    files.downloads.getAbsolutePath(), null, SQLiteDatabase.OPEN_READONLY);
             SQLiteDatabase cine = SQLiteDatabase.openDatabase(
                    files.cinemana.getAbsolutePath(), null, SQLiteDatabase.OPEN_READONLY)) {
            if (!allRestored(dl, cine))
                throw new IllegalStateException("multi-db persisted state mismatch");
        }
        try (SQLiteDatabase journal = open(files.journal)) {
            journal.beginTransaction();
            try {
                if (!journalPending(journal) || journalStage(journal) != expectedPhase)
                    throw new IllegalStateException("journal changed during recovery");
                if (journal.delete("intents", "id=1", null) != 1)
                    throw new IllegalStateException("journal delete failed");
                journal.setTransactionSuccessful();
            } finally {
                journal.endTransaction();
            }
        }
        try (SQLiteDatabase journal = open(files.journal);
             SQLiteDatabase dl = open(files.downloads);
             SQLiteDatabase cine = open(files.cinemana)) {
            if (journalPending(journal) || !allRestored(dl, cine))
                throw new IllegalStateException("incomplete recovery after journal cleanup");
        }
        files.delete();
        return "RECOVERED stage=" + expectedPhase;
    }
}
