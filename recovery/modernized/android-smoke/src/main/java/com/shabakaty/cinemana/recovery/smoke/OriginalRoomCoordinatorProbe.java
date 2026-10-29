package com.shabakaty.cinemana.recovery.smoke;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.shabakaty.cinemana.recovery.downloads.MkvPromotionCoordinator;
import com.shabakaty.cinemana.recovery.downloads.MkvPromotionPreflight;

/** Runs the safe coordinator against disposable in-memory, real-schema tables. */
public final class OriginalRoomCoordinatorProbe {
    private OriginalRoomCoordinatorProbe() {}

    private static final MkvPromotionPreflight.Request REQUEST =
            new MkvPromotionPreflight.Request("item1", 17, "external1",
                    "/diagnostic/Episode.mp4", "/diagnostic/Episode.mkv", 6300000L);

    private static void check(boolean condition, String label) {
        if (!condition) throw new IllegalStateException("room coordinator: " + label);
    }

    private static ContentValues values(Object... args) {
        ContentValues v = new ContentValues();
        for (int i = 0; i < args.length; i += 2) {
            String key = (String) args[i];
            Object value = args[i + 1];
            if (value instanceof Integer) v.put(key, (Integer) value);
            else if (value instanceof Long) v.put(key, (Long) value);
            else v.put(key, (String) value);
        }
        return v;
    }

    private static void fill(SQLiteDatabase downloads, SQLiteDatabase cine) {
        downloads.execSQL(OriginalRoomSchemaProbe.CREATE_DOWNLOADS);
        cine.execSQL(OriginalRoomSchemaProbe.CREATE_CINEMANA);
        cine.execSQL(OriginalRoomSchemaProbe.CREATE_SUBTITLES);
        ContentValues d = new ContentValues();
        d.put("task_id", 17);
        d.put("external_id", "external1");
        d.put("progress_bytes", 4200000L);
        d.put("title", "Episode");
        d.put("url", "https://diagnostic.invalid/episode");
        d.put("img", "");
        d.put("path", "Episode.mp4");
        d.put("size_bytes", 4200000L);
        d.put("status", 3);
        d.put("last_updated", "");
        downloads.insertOrThrow("Downloads", null, d);
        ContentValues neighbor = new ContentValues(d);
        neighbor.put("external_id", "other-download");
        neighbor.put("path", "Other.mp4");
        downloads.insertOrThrow("Downloads", null, neighbor);

        ContentValues c = new ContentValues();
        try (Cursor columns = cine.rawQuery("PRAGMA table_info(CinemanaDownloadItem)", null)) {
            while (columns.moveToNext()) {
                String name = columns.getString(1);
                if ("INTEGER".equals(columns.getString(2))) c.put(name, 0L);
                else c.put(name, "");
            }
        }
        c.put("id", "item1");
        c.put("downloadTaskId", 17);
        c.put("path", "Episode.mp4");
        c.put("sizeMB", 4);
        cine.insertOrThrow("CinemanaDownloadItem", null, c);

        for (String code : new String[]{"en", "ar"}) {
            ContentValues sub = values(
                    "id", "sub-" + code,
                    "parentId", "item1",
                    "downloadTaskId", 17,
                    "name", code,
                    "type", "text",
                    "extension", "srt",
                    "file", "Episode." + code + ".srt");
            cine.insertOrThrow("SubtitleDb", null, sub);
        }
    }

    private static String scalar(SQLiteDatabase db, String sql) {
        try (Cursor c = db.rawQuery(sql, null)) {
            check(c.moveToFirst() && !c.isNull(0), "missing scalar");
            return c.getString(0);
        }
    }

    private static void checkRows(SQLiteDatabase dl, SQLiteDatabase cine, boolean promoted) {
        String path = promoted ? "Episode.mkv" : "Episode.mp4";
        String size = promoted ? "6300000" : "4200000";
        check(path.equals(scalar(dl,
                "SELECT path FROM Downloads WHERE task_id=17 AND external_id='external1'")),
                "selected Downloads path");
        check(size.equals(scalar(dl,
                "SELECT size_bytes FROM Downloads WHERE task_id=17 AND external_id='external1'")),
                "selected Downloads bytes");
        check("Other.mp4".equals(scalar(dl,
                "SELECT path FROM Downloads WHERE task_id=17 AND external_id='other-download'")),
                "unrelated composite-key download retained");
        check(path.equals(scalar(cine,
                "SELECT path FROM CinemanaDownloadItem WHERE id='item1'")),
                "Cinemana path");
        check((promoted ? "6" : "4").equals(scalar(cine,
                "SELECT sizeMB FROM CinemanaDownloadItem WHERE id='item1'")),
                "Cinemana sizeMB restored/promoted");
        for (String code : new String[]{"en", "ar"}) {
            String file = "Episode." + code + ".srt";
            if (promoted) file = "Episode.mkv." + code + ".srt";
            check(file.equals(scalar(cine,
                    "SELECT file FROM SubtitleDb WHERE id='sub-" + code + "'")),
                    code + " subtitle restored/promoted");
        }
        check("2".equals(scalar(dl, "SELECT COUNT(*) FROM Downloads")),
                "both Downloads rows retained");
        check("2".equals(scalar(cine, "SELECT COUNT(*) FROM SubtitleDb")),
                "both SubtitleDb rows retained");
    }

    public static String run() {
        int cases = 0;
        for (int scenario = 0; scenario < 4; scenario++) {
            try (SQLiteDatabase dl = SQLiteDatabase.create(null);
                 SQLiteDatabase cine = SQLiteDatabase.create(null)) {
                fill(dl, cine);
                if (scenario == 3) {
                    // An item row moved to a different task must not be
                    // overwritten, even if the item id and filenames match.
                    ContentValues foreignTask = new ContentValues();
                    foreignTask.put("downloadTaskId", 99);
                    check(cine.update("CinemanaDownloadItem", foreignTask,
                            "id=?", new String[]{"item1"}) == 1,
                            "fixture task identity changed");
                }
                OriginalRoomDiagnosticPort port =
                        new OriginalRoomDiagnosticPort(dl, cine, REQUEST, scenario == 1);
                MkvPromotionCoordinator.Result result =
                        MkvPromotionCoordinator.promote(REQUEST, port);
                if (scenario == 0) {
                    check(result.status == MkvPromotionCoordinator.Status.SUCCESS,
                            "two-database coordinator success");
                    checkRows(dl, cine, true);
                } else if (scenario == 1) {
                    check(result.status == MkvPromotionCoordinator.Status.ROLLED_BACK,
                            "subtitle write failure compensated across databases");
                    checkRows(dl, cine, false);
                } else if (scenario == 3) {
                    check(result.status == MkvPromotionCoordinator.Status.REJECTED,
                            "wrong Cinemana task identity rejected");
                    check("Episode.mp4".equals(scalar(dl,
                            "SELECT path FROM Downloads WHERE task_id=17 AND external_id='external1'")),
                            "Downloads row untouched after Cinemana mismatch");
                    check("Episode.mp4".equals(scalar(cine,
                            "SELECT path FROM CinemanaDownloadItem WHERE id='item1'")),
                            "Cinemana path untouched after task mismatch");
                    check("99".equals(scalar(cine,
                            "SELECT downloadTaskId FROM CinemanaDownloadItem WHERE id='item1'")),
                            "third-party task identity not clobbered");
                } else {
                    // Scenario 2 uses a mutated request's identity, so no write
                    // can be accepted against a different composite-key row.
                    check(result.status == MkvPromotionCoordinator.Status.SUCCESS,
                            "independent test fixture promotion works");
                    checkRows(dl, cine, true);
                    MkvPromotionPreflight.Request bad =
                            new MkvPromotionPreflight.Request("item1", 17, "missing-external",
                                    REQUEST.sourceMp4, REQUEST.finalMkv, REQUEST.bytes);
                    OriginalRoomDiagnosticPort missing =
                            new OriginalRoomDiagnosticPort(dl, cine, bad, false);
                    check(MkvPromotionCoordinator.promote(bad, missing).status
                            == MkvPromotionCoordinator.Status.REJECTED,
                            "wrong composite key rejected");
                    checkRows(dl, cine, true);
                }
                cases++;
            } catch (Exception failure) {
                throw new IllegalStateException(
                        "original Room coordinator diagnostic scenario=" + scenario, failure);
            }
        }
        return "PASS (" + cases + " Room coordinator scenarios)";
    }
}
