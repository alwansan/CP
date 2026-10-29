package com.shabakaty.cinemana.recovery.smoke;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteConstraintException;
import android.database.sqlite.SQLiteDatabase;

/**
 * Disposable in-memory SQLite fixture using exact CREATE TABLE SQL taken
 * from the ORIGINAL Room-generated Smali for DownloadsDatabase and AppDatabase.
 * This is NOT connected to any original Cinemana or FileDownloader database.
 * Test only: field contracts, compound Download identity and two subtitle rows.
 */
public final class OriginalRoomSchemaProbe {
    private OriginalRoomSchemaProbe() {}

    private static final String CREATE_DOWNLOADS = "CREATE TABLE IF NOT EXISTS `Downloads` (`task_id` INTEGER NOT NULL, `external_id` TEXT NOT NULL, `progress_bytes` INTEGER NOT NULL, `title` TEXT NOT NULL, `url` TEXT NOT NULL, `img` TEXT NOT NULL, `path` TEXT NOT NULL, `size_bytes` INTEGER NOT NULL, `status` INTEGER NOT NULL, `last_updated` TEXT NOT NULL, PRIMARY KEY(`task_id`, `external_id`))";
    private static final String CREATE_CINEMANA = "CREATE TABLE IF NOT EXISTS `CinemanaDownloadItem` (`id` TEXT NOT NULL, `downloadTaskId` INTEGER NOT NULL, `title` TEXT NOT NULL, `stars` TEXT NOT NULL, `kind` TEXT NOT NULL, `sizeMB` INTEGER NOT NULL, `season` TEXT NOT NULL, `imgObjUrl` TEXT NOT NULL, `filmRating` TEXT NOT NULL, `tvShowRating` TEXT NOT NULL, `path` TEXT NOT NULL, `episodeNumber` TEXT NOT NULL, `special` TEXT NOT NULL, `useParentImg` TEXT NOT NULL, `parentSkipping` TEXT NOT NULL, `collectionID` INTEGER NOT NULL, `imgThumbObjUrl` TEXT NOT NULL, `qualityName` TEXT NOT NULL, `rootEpisode` TEXT NOT NULL, `hasIntroSkipping` INTEGER NOT NULL, `episodeFlag` TEXT NOT NULL, `lastUpdated` TEXT NOT NULL, `skippingDurations_start` TEXT NOT NULL, `skippingDurations_end` TEXT NOT NULL, PRIMARY KEY(`id`))";
    private static final String CREATE_SUBTITLES = "CREATE TABLE IF NOT EXISTS `SubtitleDb` (`id` TEXT NOT NULL, `parentId` TEXT NOT NULL, `downloadTaskId` INTEGER NOT NULL, `name` TEXT NOT NULL, `type` TEXT NOT NULL, `extension` TEXT NOT NULL, `file` TEXT NOT NULL, PRIMARY KEY(`id`))";

    private static final String[] DOWNLOADS_COLUMNS = {
            "task_id", "external_id", "progress_bytes", "title", "url",
            "img", "path", "size_bytes", "status", "last_updated"
    };
    private static final String[] CINEMANA_COLUMNS = {
            "id", "downloadTaskId", "title", "stars", "kind", "sizeMB",
            "season", "imgObjUrl", "filmRating", "tvShowRating", "path",
            "episodeNumber", "special", "useParentImg", "parentSkipping",
            "collectionID", "imgThumbObjUrl", "qualityName", "rootEpisode",
            "hasIntroSkipping", "episodeFlag", "lastUpdated",
            "skippingDurations_start", "skippingDurations_end"
    };
    private static final String[] SUBTITLE_COLUMNS = {
            "id", "parentId", "downloadTaskId", "name",
            "type", "extension", "file"
    };

    private static void require(boolean value, String name) {
        if (!value) throw new IllegalStateException("original Room schema: " + name);
    }

    private static void verifyColumns(SQLiteDatabase db, String table,
                                      String[] expected, int[] pk) {
        int rows = 0;
        try (Cursor c = db.rawQuery("PRAGMA table_info(\u0060" + table + "\u0060)", null)) {
            while (c.moveToNext()) {
                require(rows < expected.length, "extra column in " + table);
                require(expected[rows].equals(c.getString(1)),
                        table + " column " + rows + " name");
                require(c.getInt(3) == 1, table + " NOT NULL " + rows);
                int expectedPk = pk == null ? 0 : pk[rows];
                require(c.getInt(5) == expectedPk, table + " primary key " + rows);
                rows++;
            }
        }
        require(rows == expected.length, table + " column count");
    }

    private static ContentValues defaultValues(SQLiteDatabase db, String table) {
        ContentValues values = new ContentValues();
        try (Cursor c = db.rawQuery("PRAGMA table_info(\u0060" + table + "\u0060)", null)) {
            while (c.moveToNext()) {
                String name = c.getString(1);
                String type = c.getString(2);
                if ("INTEGER".equals(type)) values.put(name, 0L);
                else if ("REAL".equals(type)) values.put(name, 0.0d);
                else values.put(name, "");
            }
        }
        return values;
    }

    private static String readText(SQLiteDatabase db, String sql, String[] args) {
        try (Cursor c = db.rawQuery(sql, args)) {
            require(c.moveToFirst() && !c.isNull(0), "missing string result");
            return c.getString(0);
        }
    }
    private static long readLong(SQLiteDatabase db, String sql, String[] args) {
        try (Cursor c = db.rawQuery(sql, args)) {
            require(c.moveToFirst() && !c.isNull(0), "missing numeric result");
            return c.getLong(0);
        }
    }

    private static void change(SQLiteDatabase db, String table,
                               ContentValues fields, String where, String[] args) {
        require(db.update(table, fields, where, args) == 1,
                table + " identity-scoped update");
    }

    public static String run() {
        try (SQLiteDatabase dl = SQLiteDatabase.create(null);
             SQLiteDatabase cine = SQLiteDatabase.create(null)) {
            dl.execSQL(CREATE_DOWNLOADS);
            dl.execSQL("CREATE UNIQUE INDEX IF NOT EXISTS \u0060id\u0060 ON "
                    + "\u0060Downloads\u0060 (\u0060task_id\u0060, \u0060external_id\u0060)");
            cine.execSQL(CREATE_CINEMANA);
            cine.execSQL(CREATE_SUBTITLES);
            verifyColumns(dl, "Downloads", DOWNLOADS_COLUMNS,
                    new int[]{1, 2, 0, 0, 0, 0, 0, 0, 0, 0});
            verifyColumns(cine, "CinemanaDownloadItem", CINEMANA_COLUMNS,
                    new int[]{1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0});
            verifyColumns(cine, "SubtitleDb", SUBTITLE_COLUMNS,
                    new int[]{1, 0, 0, 0, 0, 0, 0});

            ContentValues first = defaultValues(dl, "Downloads");
            first.put("task_id", 17);
            first.put("external_id", "external1");
            first.put("path", "Episode.mp4");
            first.put("size_bytes", 4200L);
            require(dl.insertOrThrow("Downloads", null, first) > 0, "download inserted");

            // Same task ID, different external ID is allowed by the real
            // composite PK. Never update by task_id alone.
            ContentValues neighbor = new ContentValues(first);
            neighbor.put("external_id", "other-download");
            neighbor.put("path", "Other.mp4");
            neighbor.put("size_bytes", 8800L);
            require(dl.insertOrThrow("Downloads", null, neighbor) > 0,
                    "compound-key neighbor inserted");
            boolean rejected = false;
            try {
                dl.insertOrThrow("Downloads", null, first);
            } catch (SQLiteConstraintException expected) {
                rejected = true;
            }
            require(rejected, "duplicate Downloads compound identity rejected");

            ContentValues item = defaultValues(cine, "CinemanaDownloadItem");
            item.put("id", "item1");
            item.put("downloadTaskId", 17);
            item.put("path", "Episode.mp4");
            item.put("sizeMB", 4);
            require(cine.insertOrThrow("CinemanaDownloadItem", null, item) > 0,
                    "Cinemana item inserted");

            for (String id : new String[]{"sub-en", "sub-ar"}) {
                ContentValues subtitle = defaultValues(cine, "SubtitleDb");
                subtitle.put("id", id);
                subtitle.put("parentId", "item1");
                subtitle.put("downloadTaskId", 17);
                subtitle.put("extension", "srt");
                subtitle.put("file", id.equals("sub-en") ? "Episode.en.srt" : "Episode.ar.srt");
                require(cine.insertOrThrow("SubtitleDb", null, subtitle) > 0,
                        "subtitle " + id + " inserted");
            }
            ContentValues updateDl = new ContentValues();
            updateDl.put("path", "Episode.mkv");
            updateDl.put("size_bytes", 5000L);
            change(dl, "Downloads", updateDl, "task_id=? AND external_id=?",
                    new String[]{"17", "external1"});
            require(readLong(dl,
                    "SELECT size_bytes FROM Downloads WHERE task_id=? AND external_id=?",
                    new String[]{"17", "external1"}) == 5000L, "bytes updated");
            require("Other.mp4".equals(readText(dl,
                    "SELECT path FROM Downloads WHERE task_id=? AND external_id=?",
                    new String[]{"17", "other-download"})), "unrelated download untouched");

            ContentValues updateItem = new ContentValues();
            updateItem.put("path", "Episode.mkv");
            updateItem.put("sizeMB", 5);
            change(cine, "CinemanaDownloadItem", updateItem,
                    "id=? AND downloadTaskId=?", new String[]{"item1", "17"});

            // A partially failed Room transaction must not lose one subtitle.
            cine.beginTransaction();
            try {
                ContentValues testUpdate = new ContentValues();
                testUpdate.put("file", "uncommitted.file");
                change(cine, "SubtitleDb", testUpdate,
                        "id=? AND parentId=? AND downloadTaskId=?",
                        new String[]{"sub-en", "item1", "17"});
                // Deliberately omit setTransactionSuccessful.
            } finally {
                cine.endTransaction();
            }
            require("Episode.en.srt".equals(readText(cine,
                    "SELECT file FROM SubtitleDb WHERE id='sub-en'", null)),
                    "subtitle transaction abort restored before-image");

            cine.beginTransaction();
            try {
                for (String[] pair : new String[][]{
                        {"sub-en", "Episode.mkv.en.srt"},
                        {"sub-ar", "Episode.mkv.ar.srt"}}) {
                    ContentValues values = new ContentValues();
                    values.put("file", pair[1]);
                    change(cine, "SubtitleDb", values,
                            "id=? AND parentId=? AND downloadTaskId=?",
                            new String[]{pair[0], "item1", "17"});
                }
                cine.setTransactionSuccessful();
            } finally {
                cine.endTransaction();
            }
            require("Episode.mkv.en.srt".equals(readText(cine,
                    "SELECT file FROM SubtitleDb WHERE id='sub-en'", null)),
                    "English subtitle path updated");
            require("Episode.mkv.ar.srt".equals(readText(cine,
                    "SELECT file FROM SubtitleDb WHERE id='sub-ar'", null)),
                    "Arabic subtitle path updated");
            require(readLong(cine,
                    "SELECT COUNT(*) FROM SubtitleDb WHERE parentId='item1' "
                    + "AND downloadTaskId=17", null) == 2L,
                    "two distinct SubtitleDb identities retained");
            require(readLong(cine,
                    "SELECT sizeMB FROM CinemanaDownloadItem WHERE id='item1'", null) == 5L,
                    "original Cinemana sizeMB column updated");
        } catch (Exception error) {
            throw new IllegalStateException("original Room schema diagnostics failed", error);
        }
        return "PASS (3 original Room tables, 2 subtitle rows)";
    }
}
