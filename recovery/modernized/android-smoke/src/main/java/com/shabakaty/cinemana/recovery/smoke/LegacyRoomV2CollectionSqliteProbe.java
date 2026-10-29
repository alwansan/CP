package com.shabakaty.cinemana.recovery.smoke;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.shabakaty.cinemana.recovery.downloads.LegacyRoomV2CollectionPlanner;
import com.shabakaty.cinemana.recovery.downloads.LegacyRoomV2CollectionPlanner.Plan;
import com.shabakaty.cinemana.recovery.downloads.LegacyRoomV2EpisodeMetadata;
import com.shabakaty.cinemana.recovery.downloads.LegacyRoomV2EpisodeMetadata.Projection;
import com.shabakaty.cinemana.recovery.downloads.LegacyRoomV2RowWriteGuard;
import java.util.*;

/**
 * Disposable original Room 2->3 collection CREATE/COPY SQL plus safe root
 * inserts. SQL is literal it2$b/it2$l Smali, verified in Python CI. The old
 * CollectionItem is a minimal fixture, not an actual historical Room v2 DB.
 * Unlike original jt2, invalid/duplicate numeric roots are rejected.
 */
public final class LegacyRoomV2CollectionSqliteProbe {
    private LegacyRoomV2CollectionSqliteProbe() {}
    static final String ORIGINAL_COLLECTION_CREATE = "CREATE TABLE IF NOT EXISTS `DownloadsCollectionItem` (\n\t`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,\n\t`name` TEXT NOT NULL DEFAULT \"\",\n\t`image` TEXT NOT NULL DEFAULT \"\"\n)";
    static final String ORIGINAL_COLLECTION_COPY = "INSERT INTO DownloadsCollectionItem(\n\tid,\n         \tname,\n         \timage\n         )\nSELECT\n\tid,\n\tname,\n\timage\nFROM CollectionItem;";
    private static int checks;

    private static void need(boolean ok, String label) {
        checks++;
        if (!ok) throw new IllegalStateException("Room collection fixture: " + label);
    }

    private static String scalar(SQLiteDatabase db, String sql, String... args) {
        try (Cursor c = db.rawQuery(sql, args)) {
            return c.moveToFirst() ? c.getString(0) : null;
        }
    }

    private static int rows(SQLiteDatabase db) {
        return Integer.parseInt(scalar(db, "SELECT COUNT(*) FROM DownloadsCollectionItem"));
    }

    private static void setup(SQLiteDatabase db) {
        db.execSQL("CREATE TABLE CollectionItem("
                + "id INTEGER PRIMARY KEY NOT NULL,name TEXT NOT NULL,image TEXT NOT NULL)");
        ContentValues v = new ContentValues();
        v.put("id", 91);
        v.put("name", "Legacy favorites");
        v.put("image", "original.jpg");
        need(db.insertOrThrow("CollectionItem", null, v) > 0, "legacy source 91");
        v.put("id", 75);
        v.put("name", "Unrelated");
        v.put("image", "second.jpg");
        need(db.insertOrThrow("CollectionItem", null, v) > 0, "legacy source 75");
        db.execSQL(ORIGINAL_COLLECTION_CREATE);
        db.execSQL(ORIGINAL_COLLECTION_COPY);
        need(rows(db) == 2, "both legacy collection rows copied");
    }

    private static Set<Integer> snapshot(SQLiteDatabase db) {
        Set<Integer> ids = new HashSet<>();
        try (Cursor c = db.rawQuery("SELECT id FROM DownloadsCollectionItem", null)) {
            while (c.moveToNext()) need(ids.add(c.getInt(0)), "no duplicate legacy ids");
        }
        return ids;
    }

    private static Projection approved(String id, String root, String title) {
        Map<String,Object> model = new LinkedHashMap<>();
        model.put("kind", "2");
        model.put("nb", id);
        model.put("rootSeries", root);
        model.put("episodeNummer", "7");
        model.put("season", "1");
        Map<String,Object> json = new LinkedHashMap<>();
        json.put("title", title);
        json.put("videoModel", model);
        LegacyRoomV2EpisodeMetadata.Result decoded =
                LegacyRoomV2EpisodeMetadata.select(json);
        need(decoded.selected(), "series metadata selected");
        need(LegacyRoomV2RowWriteGuard.inspect(
                new LegacyRoomV2RowWriteGuard.Row(id, 17, true), decoded,
                new LegacyRoomV2RowWriteGuard.Target(id, 17))
                == LegacyRoomV2RowWriteGuard.Reason.READY,
                "source and copied target identity approved");
        return decoded.projection;
    }

    private static List<Projection> input() {
        return Arrays.asList(
                approved("old", "91", "Old Group Season One Ep 07"),
                approved("first", "101", "The Witcher Season One Ep 07"),
                approved("duplicate", "101", "The Witcher Season One Ep 08"),
                approved("numeric-alias", "00101", "Alias Season One Ep 09"),
                approved("other", "102", "Other Show Season Two Ep 08"),
                approved("invalid", "text", "Broken Show Season One Ep 08"),
                approved("negative", "-4", "Broken Show Season One Ep 08"),
                approved("overflow", "2147483648", "Broken Show Season One Ep 08"),
                approved("zero", "0", "Broken Show Season One Ep 08"),
                approved("short", "103", "Short"));
    }

    private static int write(SQLiteDatabase db, Plan plan) {
        int written = 0;
        for (LegacyRoomV2CollectionPlanner.CollectionCandidate c : plan.candidates) {
            ContentValues v = new ContentValues();
            v.put("id", c.id);
            v.put("name", c.name);
            long result = db.insertWithOnConflict("DownloadsCollectionItem", null, v,
                    SQLiteDatabase.CONFLICT_IGNORE);
            need(result != -1, "preverified candidate inserted without collision");
            written++;
        }
        return written;
    }

    public static String run() {
        checks = 0;
        List<Projection> items = input();
        try (SQLiteDatabase db = SQLiteDatabase.create(null)) {
            setup(db);
            Plan plan = LegacyRoomV2CollectionPlanner.prepare(items, snapshot(db));
            need(plan.candidates.size() == 2, "only valid roots 101,102 staged");
            need(plan.candidates.get(0).id == 101 && plan.candidates.get(1).id == 102,
                    "stable root order and numeric IDs");
            need("The Witcher".equals(plan.candidates.get(0).name),
                    "Kotlin dropLast(4) group name");
            need("Other Show".equals(plan.candidates.get(1).name),
                    "second group name");
            need(plan.duplicateRoots == 1 && plan.numericCollisions == 1,
                    "same and numeric alias roots refused");
            need(plan.alreadyPresent == 1 && plan.invalidIdentifiers == 4
                    && plan.emptyNames == 1, "legacy, invalid, empty groups refused");
            db.beginTransaction();
            try {
                need(write(db, plan) == 2, "two group records inserted");
                db.setTransactionSuccessful();
            } finally {
                db.endTransaction();
            }
            need(rows(db) == 4, "two originals plus two newly grouped series");
            need("Legacy favorites".equals(scalar(db,
                    "SELECT name FROM DownloadsCollectionItem WHERE id=91")),
                    "legacy collection name retained");
            need("original.jpg".equals(scalar(db,
                    "SELECT image FROM DownloadsCollectionItem WHERE id=91")),
                    "legacy cover retained");
            need("Unrelated".equals(scalar(db,
                    "SELECT name FROM DownloadsCollectionItem WHERE id=75")),
                    "neighbor collection retained");
            need("The Witcher".equals(scalar(db,
                    "SELECT name FROM DownloadsCollectionItem WHERE id=101")),
                    "series 101 copied exactly once");
            need("Other Show".equals(scalar(db,
                    "SELECT name FROM DownloadsCollectionItem WHERE id=102")),
                    "series 102 copied exactly once");
            need(LegacyRoomV2CollectionPlanner.prepare(items, snapshot(db))
                    .candidates.isEmpty(), "re-running plan is idempotent");
            need(rows(db) == 4, "idempotent planner is read-only");
        }
        try (SQLiteDatabase db = SQLiteDatabase.create(null)) {
            setup(db);
            Plan plan = LegacyRoomV2CollectionPlanner.prepare(items, snapshot(db));
            db.beginTransaction();
            try {
                need(write(db, plan) == 2, "staging changes before rollback");
                // no setTransactionSuccessful => rollback
            } finally {
                db.endTransaction();
            }
            need(rows(db) == 2, "uncommitted new collections rolled back");
            need(scalar(db, "SELECT name FROM DownloadsCollectionItem WHERE id=101")
                    == null, "no residual staged collection 101");
            need("original.jpg".equals(scalar(db,
                    "SELECT image FROM DownloadsCollectionItem WHERE id=91")),
                    "old image survives rollback");
        }
        return "PASS (" + checks + " original collection SQLite assertions)";
    }
}
