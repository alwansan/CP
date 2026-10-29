package com.shabakaty.cinemana.recovery.smoke;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.shabakaty.cinemana.recovery.downloads.MkvPromotionPreflight;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

/**
 * Crash-recovery test using the EXACT source Room CREATE TABLE definitions for
 * Downloads, CinemanaDownloadItem and SubtitleDb, in TWO independent files.
 * A THIRD independent SQLite file contains durable before-images.
 *
 * All files are disposable fixtures under this DIAGNOSTIC package only.
 * Never open, migrate, replace or manipulate real Cinemana databases.
 *
 * Deliberately simulated kill points happen BETWEEN SQLite transactions, not
 * inside a transaction or during physical power loss. This is not a
 * distributed atomic transaction and not a production crash-recovery adapter.
 */
public final class OriginalRoomCrashJournalProbe {
    private OriginalRoomCrashJournalProbe() {}

    private static final int TASK = 17;
    private static final String ITEM = "item1";
    private static final String EXTERNAL = "external1";
    private static final String BEFORE = "Episode.mp4";
    private static final String AFTER = "Episode.mkv";
    private static final long BEFORE_BYTES = 4200000L;
    private static final long AFTER_BYTES = 6300000L;
    private static final int BEFORE_MB = 4;
    private static final int AFTER_MB = 6;
    private static final MkvPromotionPreflight.Request REQUEST =
            new MkvPromotionPreflight.Request(ITEM, TASK, EXTERNAL,
                    "/diagnostic/Episode.mp4", "/diagnostic/Episode.mkv", AFTER_BYTES);

    private static final class Files {
        final File dl;
        final File cine;
        final File journal;

        Files(Context context) {
            File directory = new File(context.getFilesDir(), "room-schema-restart-diagnostics");
            if (!directory.isDirectory() && !directory.mkdirs())
                throw new IllegalStateException("cannot create diagnostic files directory");
            dl = new File(directory, "room-downloads.db");
            cine = new File(directory, "room-cinemana.db");
            journal = new File(directory, "compensation.db");
        }
        void reset() {
            SQLiteDatabase.deleteDatabase(dl);
            SQLiteDatabase.deleteDatabase(cine);
            SQLiteDatabase.deleteDatabase(journal);
        }
    }

    private static void require(boolean ok, String why) {
        if (!ok) throw new IllegalStateException("Room crash journal: " + why);
    }

    private static SQLiteDatabase openExisting(File file) {
        require(file.isFile(), "missing persistent " + file.getName());
        return SQLiteDatabase.openDatabase(
                file.getAbsolutePath(), null, SQLiteDatabase.OPEN_READWRITE);
    }

    private static List<String[]> query(SQLiteDatabase db, String sql,
                                        String[] args, int fields) {
        ArrayList<String[]> found = new ArrayList<>();
        try (Cursor rows = db.rawQuery(sql, args)) {
            while (rows.moveToNext()) {
                String[] out = new String[fields];
                for (int i = 0; i < fields; i++) {
                    require(!rows.isNull(i), "unexpected null in persisted row");
                    out[i] = rows.getString(i);
                }
                found.add(out);
            }
        }
        return found;
    }

    private static String[] one(SQLiteDatabase db, String sql, String[] args, int fields) {
        List<String[]> rows = query(db, sql, args, fields);
        require(rows.size() == 1, "expected exactly one row in: " + sql);
        return rows.get(0);
    }

    private static long count(SQLiteDatabase db, String sql) {
        return Long.parseLong(one(db, sql, null, 1)[0]);
    }

    private static String[] download(SQLiteDatabase db) {
        return one(db, "SELECT task_id,external_id,path,size_bytes FROM Downloads "
                + "WHERE task_id=? AND external_id=?",
                new String[]{"17", EXTERNAL}, 4);
    }

    private static String[] video(SQLiteDatabase db) {
        return one(db, "SELECT id,downloadTaskId,path,sizeMB "
                + "FROM CinemanaDownloadItem WHERE id=?",
                new String[]{ITEM}, 4);
    }

    private static List<String[]> subtitles(SQLiteDatabase db) {
        return query(db, "SELECT id,parentId,downloadTaskId,file FROM SubtitleDb "
                + "WHERE parentId=? ORDER BY id", new String[]{ITEM}, 4);
    }

    private static String[] intent(SQLiteDatabase journal, int phase) {
        String[] row = one(journal, "SELECT id,phase,task_id,external_id,item_id,"
                + "old_download,old_bytes,old_item,old_mb FROM intents WHERE id=1",
                null, 9);
        require("1".equals(row[0]) && Integer.parseInt(row[1]) == phase
                && Integer.parseInt(row[2]) == TASK && EXTERNAL.equals(row[3])
                && ITEM.equals(row[4]), "invalid persisted journal identity");
        return row;
    }

    private static void stageJournal(SQLiteDatabase journal) {
        journal.execSQL("CREATE TABLE intents(id INTEGER PRIMARY KEY, "
                + "phase INTEGER NOT NULL, task_id INTEGER NOT NULL, "
                + "external_id TEXT NOT NULL, item_id TEXT NOT NULL, "
                + "old_download TEXT NOT NULL, old_bytes INTEGER NOT NULL, "
                + "old_item TEXT NOT NULL, old_mb INTEGER NOT NULL)");
        journal.execSQL("CREATE TABLE subtitle_snapshots(id TEXT PRIMARY KEY, "
                + "parent_id TEXT NOT NULL, task_id INTEGER NOT NULL, "
                + "old_file TEXT NOT NULL, new_file TEXT NOT NULL)");
    }

    private static List<String[]> subtitleIntent(SQLiteDatabase journal) {
        return query(journal, "SELECT id,parent_id,task_id,old_file,new_file "
                + "FROM subtitle_snapshots ORDER BY id", null, 5);
    }

    private static void writeIntent(SQLiteDatabase journal, SQLiteDatabase dl,
                                    SQLiteDatabase cine, int phase,
                                    List<OriginalRoomDiagnosticPort.SubtitleSnapshot> snaps) {
        String[] dlRow = download(dl), itemRow = video(cine);
        require(TASK == Integer.parseInt(dlRow[0]) && EXTERNAL.equals(dlRow[1])
                && BEFORE.equals(dlRow[2])
                && BEFORE_BYTES == Long.parseLong(dlRow[3]), "original Downloads values");
        require(ITEM.equals(itemRow[0])
                && TASK == Integer.parseInt(itemRow[1])
                && BEFORE.equals(itemRow[2])
                && BEFORE_MB == Integer.parseInt(itemRow[3]), "original Cinemana values");
        require(snaps.size() == 2, "must snapshot both subtitle identities");
        journal.beginTransaction();
        try {
            journal.execSQL("INSERT INTO intents VALUES(1,?,?,?,?,?,?,?,?)",
                    new Object[]{phase, TASK, EXTERNAL, ITEM, dlRow[2],
                            Long.parseLong(dlRow[3]), itemRow[2],
                            Integer.parseInt(itemRow[3])});
            for (OriginalRoomDiagnosticPort.SubtitleSnapshot snapshot : snaps) {
                require(ITEM.equals(snapshot.parentId) && snapshot.taskId == TASK,
                        "wrong subtitle owner");
                journal.execSQL("INSERT INTO subtitle_snapshots VALUES(?,?,?,?,?)",
                        new Object[]{snapshot.id, snapshot.parentId, snapshot.taskId,
                                snapshot.originalFile, snapshot.newFile});
            }
            journal.setTransactionSuccessful();
        } finally {
            journal.endTransaction();
        }
    }

    private static boolean isBeforeOrAfter(String path, String old, String next) {
        return old.equals(path) || next.equals(path);
    }

    private static void verifyIntegrity(SQLiteDatabase dl, SQLiteDatabase cine,
                                        SQLiteDatabase journal, int phase) {
        String[] saved = intent(journal, phase);
        String[] currentDownload = download(dl), currentVideo = video(cine);
        require(TASK == Integer.parseInt(currentDownload[0])
                && EXTERNAL.equals(currentDownload[1])
                && ITEM.equals(currentVideo[0])
                && TASK == Integer.parseInt(currentVideo[1]), "live row identities");
        require(BEFORE.equals(saved[5]) && BEFORE_BYTES == Long.parseLong(saved[6])
                && BEFORE.equals(saved[7]) && BEFORE_MB == Integer.parseInt(saved[8]),
                "journal before-image changed");
        require((BEFORE.equals(currentDownload[2])
                        && BEFORE_BYTES == Long.parseLong(currentDownload[3]))
                || (AFTER.equals(currentDownload[2])
                        && AFTER_BYTES == Long.parseLong(currentDownload[3])),
                "foreign Downloads mutation");
        require((BEFORE.equals(currentVideo[2])
                        && BEFORE_MB == Integer.parseInt(currentVideo[3]))
                || (AFTER.equals(currentVideo[2])
                        && AFTER_MB == Integer.parseInt(currentVideo[3])),
                "foreign Cinemana mutation");
        List<String[]> savedSubs = subtitleIntent(journal);
        List<String[]> liveSubs = subtitles(cine);
        require(savedSubs.size() == 2 && liveSubs.size() == savedSubs.size(),
                "subtitle cardinality changed");
        for (int i = 0; i < savedSubs.size(); i++) {
            String[] before = savedSubs.get(i), now = liveSubs.get(i);
            require(before[0].equals(now[0]) && ITEM.equals(before[1])
                    && TASK == Integer.parseInt(before[2])
                    && before[1].equals(now[1]) && before[2].equals(now[2])
                    && isBeforeOrAfter(now[3], before[3], before[4]),
                    "foreign subtitle mutation");
        }
        require(count(dl, "SELECT COUNT(*) FROM Downloads") == 2,
                "unexpected Downloads row count");
        require("Other.mp4".equals(one(dl,
                "SELECT path FROM Downloads WHERE task_id=17 "
                        + "AND external_id='other-download'", null, 1)[0]),
                "unrelated composite-key neighbor changed");
        require(count(cine, "SELECT COUNT(*) FROM CinemanaDownloadItem") == 1,
                "unexpected Cinemana rows");
        require(count(cine, "SELECT COUNT(*) FROM SubtitleDb") == 2,
                "unexpected SubtitleDb rows");
    }

    private static void set(SQLiteDatabase db, String table, ContentValues changes,
                            String predicate, String[] args) {
        require(db.update(table, changes, predicate, args) == 1,
                "identity-scoped update failed in " + table);
    }

    private static ContentValues value(String column, String text) {
        ContentValues v = new ContentValues();
        v.put(column, text);
        return v;
    }

    private static void restoreCinemana(SQLiteDatabase cine, SQLiteDatabase journal) {
        String[] old = intent(journal, Integer.parseInt(
                one(journal, "SELECT phase FROM intents WHERE id=1", null, 1)[0]));
        cine.beginTransaction();
        try {
            for (String[] sub : subtitleIntent(journal)) {
                String current = one(cine,
                        "SELECT file FROM SubtitleDb WHERE id=? AND parentId=? "
                                + "AND downloadTaskId=?",
                        new String[]{sub[0], sub[1], sub[2]}, 1)[0];
                require(isBeforeOrAfter(current, sub[3], sub[4]),
                        "subtitle changed before restoring");
                set(cine, "SubtitleDb", value("file", sub[3]),
                        "id=? AND parentId=? AND downloadTaskId=? AND file=?",
                        new String[]{sub[0], sub[1], sub[2], current});
            }
            String[] current = video(cine);
            ContentValues v = value("path", old[7]);
            v.put("sizeMB", Integer.parseInt(old[8]));
            set(cine, "CinemanaDownloadItem", v,
                    "id=? AND downloadTaskId=? AND path=? AND sizeMB=?",
                    new String[]{ITEM, "17", current[2], current[3]});
            cine.setTransactionSuccessful();
        } finally {
            cine.endTransaction();
        }
    }

    private static void restoreDownloads(SQLiteDatabase dl, SQLiteDatabase journal) {
        String[] old = intent(journal, Integer.parseInt(
                one(journal, "SELECT phase FROM intents WHERE id=1", null, 1)[0]));
        dl.beginTransaction();
        try {
            String[] current = download(dl);
            ContentValues v = value("path", old[5]);
            v.put("size_bytes", Long.parseLong(old[6]));
            set(dl, "Downloads", v,
                    "task_id=? AND external_id=? AND path=? AND size_bytes=?",
                    new String[]{"17", EXTERNAL, current[2], current[3]});
            dl.setTransactionSuccessful();
        } finally {
            dl.endTransaction();
        }
    }

    private static void checkRestored(SQLiteDatabase dl, SQLiteDatabase cine,
                                      SQLiteDatabase journal, int phase) {
        verifyIntegrity(dl, cine, journal, phase);
        String[] download = download(dl), item = video(cine);
        require(BEFORE.equals(download[2])
                && BEFORE_BYTES == Long.parseLong(download[3])
                && BEFORE.equals(item[2]) && BEFORE_MB == Integer.parseInt(item[3]),
                "base rows did not persist restored state");
        List<String[]> expected = subtitleIntent(journal), actual = subtitles(cine);
        for (int i = 0; i < expected.size(); i++) {
            require(expected.get(i)[3].equals(actual.get(i)[3]),
                    "subtitle did not persist restored state");
        }
    }

    /**
     * Process A creates the three files and journals complete before-images.
     * It commits up to 3 independent writes, then the harness force-stops.
     */
    public static String prepare(Context context, int phase) {
        require(phase >= 1 && phase <= 3, "invalid phase");
        Files files = new Files(context);
        files.reset();
        try (SQLiteDatabase dl = SQLiteDatabase.openOrCreateDatabase(files.dl, null);
             SQLiteDatabase cine = SQLiteDatabase.openOrCreateDatabase(files.cine, null);
             SQLiteDatabase journal = SQLiteDatabase.openOrCreateDatabase(files.journal, null)) {
            OriginalRoomCoordinatorProbe.fill(dl, cine);
            stageJournal(journal);
            OriginalRoomDiagnosticPort port =
                    new OriginalRoomDiagnosticPort(dl, cine, REQUEST, false);
            MkvPromotionPreflight.DownloadRow download = port.readDownload();
            MkvPromotionPreflight.CinemanaRow video = port.readCinemanaItem();
            @SuppressWarnings("unchecked")
            List<OriginalRoomDiagnosticPort.SubtitleSnapshot> snapshots =
                    (List<OriginalRoomDiagnosticPort.SubtitleSnapshot>) port.snapshotSubtitles();
            require(MkvPromotionPreflight.evaluate(REQUEST, download, video).ready(),
                    "preflight rejected initial real-schema fixture");
            writeIntent(journal, dl, cine, phase, snapshots);
        }
        // Explicit independent reopen is the journal durability barrier.
        try (SQLiteDatabase journal = openExisting(files.journal)) {
            require(subtitleIntent(journal).size() == 2, "journal not persisted");
            intent(journal, phase);
        }
        try (SQLiteDatabase dl = openExisting(files.dl);
             SQLiteDatabase cine = openExisting(files.cine)) {
            OriginalRoomDiagnosticPort port =
                    new OriginalRoomDiagnosticPort(dl, cine, REQUEST, false);
            port.readDownload();
            port.readCinemanaItem();
            port.snapshotSubtitles();
            port.writeDownload(AFTER, AFTER_BYTES);
            if (phase >= 2) port.writeCinemana(AFTER);
            if (phase >= 3) port.writeSubtitles(AFTER);
        }
        try (SQLiteDatabase dl = openExisting(files.dl);
             SQLiteDatabase cine = openExisting(files.cine);
             SQLiteDatabase journal = openExisting(files.journal)) {
            verifyIntegrity(dl, cine, journal, phase);
            require(AFTER.equals(download(dl)[2]), "first DB write not committed");
            require((phase >= 2 ? AFTER : BEFORE).equals(video(cine)[2]),
                    "second DB write state wrong");
            require((phase >= 3 ? "Episode.mkv.ar.srt" : "Episode.ar.srt")
                    .equals(one(cine, "SELECT file FROM SubtitleDb WHERE id='sub-ar'",
                            null, 1)[0]), "subtitle write state wrong");
        }
        return "PREPARED stage=" + phase;
    }

    /**
     * Deliberate second kill point: the Cinemana transaction commits, but
     * the independent Downloads row is still promoted and journal still open.
     */
    public static String partialRecover(Context context, int phase) {
        Files files = new Files(context);
        try (SQLiteDatabase dl = openExisting(files.dl);
             SQLiteDatabase cine = openExisting(files.cine);
             SQLiteDatabase journal = openExisting(files.journal)) {
            verifyIntegrity(dl, cine, journal, phase);
            require(AFTER.equals(download(dl)[2]), "Downloads was not promoted");
            restoreCinemana(cine, journal);
            verifyIntegrity(dl, cine, journal, phase);
            require(BEFORE.equals(video(cine)[2]), "Cinemana compensation missing");
            require(AFTER.equals(download(dl)[2]), "Downloads should remain promoted");
        }
        return "PARTIAL_REPLAY stage=" + phase;
    }

    /** Process B/C: compensate both independent DBs, verify, then clear intent. */
    public static String recover(Context context, int phase) {
        Files files = new Files(context);
        try (SQLiteDatabase dl = openExisting(files.dl);
             SQLiteDatabase cine = openExisting(files.cine);
             SQLiteDatabase journal = openExisting(files.journal)) {
            verifyIntegrity(dl, cine, journal, phase);
            restoreCinemana(cine, journal);
            restoreDownloads(dl, journal);
            checkRestored(dl, cine, journal, phase);
        }
        // New read-only handles must agree before deleting the durable intent.
        try (SQLiteDatabase dl = SQLiteDatabase.openDatabase(
                     files.dl.getAbsolutePath(), null, SQLiteDatabase.OPEN_READONLY);
             SQLiteDatabase cine = SQLiteDatabase.openDatabase(
                     files.cine.getAbsolutePath(), null, SQLiteDatabase.OPEN_READONLY);
             SQLiteDatabase journal = SQLiteDatabase.openDatabase(
                     files.journal.getAbsolutePath(), null, SQLiteDatabase.OPEN_READONLY)) {
            checkRestored(dl, cine, journal, phase);
        }
        try (SQLiteDatabase journal = openExisting(files.journal)) {
            journal.beginTransaction();
            try {
                intent(journal, phase);
                require(journal.delete("intents", "id=1", null) == 1,
                        "journal intent could not be removed");
                require(journal.delete("subtitle_snapshots", null, null) == 2,
                        "journal subtitle snapshots could not be removed");
                journal.setTransactionSuccessful();
            } finally {
                journal.endTransaction();
            }
        }
        try (SQLiteDatabase journal = openExisting(files.journal);
             SQLiteDatabase dl = openExisting(files.dl);
             SQLiteDatabase cine = openExisting(files.cine)) {
            require(count(journal, "SELECT COUNT(*) FROM intents") == 0
                    && count(journal, "SELECT COUNT(*) FROM subtitle_snapshots") == 0,
                    "journal not deleted");
            require(BEFORE.equals(download(dl)[2]) && BEFORE.equals(video(cine)[2]),
                    "restored rows not preserved");
        }
        files.reset();
        return "RECOVERED stage=" + phase;
    }
}
