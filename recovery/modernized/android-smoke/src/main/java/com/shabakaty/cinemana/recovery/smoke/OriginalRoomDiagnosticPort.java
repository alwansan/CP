package com.shabakaty.cinemana.recovery.smoke;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.shabakaty.cinemana.recovery.downloads.MkvPromotionCoordinator;
import com.shabakaty.cinemana.recovery.downloads.MkvPromotionPreflight;
import com.shabakaty.cinemana.recovery.downloads.LegacyDownloadIdentityResolver;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * Explicitly diagnostic MkvPromotionCoordinator.Port over TWO SQLite handles
 * whose tables use the exact Room-generated Cinemana/Downloads schemas.
 *
 * Does not open any production databases, never bypasses Room in the app, and
 * does not provide the durable journal required for production migration.
 * Missing or unexpected rows fail closed, including same-task/different-
 * external-id neighbors and all identity-scoped SubtitleDb rows.
 */
final class OriginalRoomDiagnosticPort implements MkvPromotionCoordinator.Port {
    static final class SubtitleSnapshot {
        final String id;
        final String parentId;
        final int taskId;
        final String originalFile;
        final String newFile;

        SubtitleSnapshot(String id, String parentId, int taskId, String file, String newFile) {
            this.id = id;
            this.parentId = parentId;
            this.taskId = taskId;
            this.originalFile = file;
            this.newFile = newFile;
        }
    }

    private final SQLiteDatabase downloads;
    private final SQLiteDatabase cinemana;
    private final MkvPromotionPreflight.Request request;
    private final boolean failAfterFirstSubtitle;
    private String oldDownloadPath;
    private long oldBytes = -1L;
    private String oldCinemanaPath;
    private int oldSizeMb = -1;
    private List<SubtitleSnapshot> subtitleSnapshot;

    OriginalRoomDiagnosticPort(SQLiteDatabase downloads, SQLiteDatabase cinemana,
                               MkvPromotionPreflight.Request request,
                               boolean failAfterFirstSubtitle) {
        this.downloads = downloads;
        this.cinemana = cinemana;
        this.request = request;
        this.failAfterFirstSubtitle = failAfterFirstSubtitle;
    }

    private static void need(boolean condition, String reason) {
        if (!condition) throw new IllegalStateException("original Room port: " + reason);
    }

    private static String[] key(int taskId, String externalId) {
        return new String[]{Integer.toString(taskId), externalId};
    }

    private static ContentValues values(String column, String value) {
        ContentValues out = new ContentValues();
        out.put(column, value);
        return out;
    }

    private static int update(SQLiteDatabase db, String table, ContentValues values,
                              String where, String[] args) {
        int changed = db.update(table, values, where, args);
        need(changed == 1, "expected one row update in " + table);
        return changed;
    }

    private static List<String[]> query(SQLiteDatabase db, String sql,
                                        String[] args, int columns) {
        ArrayList<String[]> rows = new ArrayList<>();
        try (Cursor c = db.rawQuery(sql, args)) {
            while (c.moveToNext()) {
                String[] row = new String[columns];
                for (int i = 0; i < columns; i++) {
                    need(!c.isNull(i), "NULL in source identity/snapshot");
                    row[i] = c.getString(i);
                }
                rows.add(row);
            }
        }
        return rows;
    }

    private List<String[]> downloadRows() {
        return query(downloads,
                "SELECT task_id, external_id, path, size_bytes FROM Downloads "
                + "WHERE task_id=? AND external_id=?",
                key(request.downloadTaskId, request.externalId), 4);
    }

    private List<String[]> itemRows() {
        return query(cinemana,
                "SELECT id, downloadTaskId, path, sizeMB FROM CinemanaDownloadItem "
                + "WHERE id=?",
                new String[]{request.itemId}, 4);
    }

    private List<String[]> subtitleRows() {
        return query(cinemana,
                "SELECT id, parentId, downloadTaskId, file FROM SubtitleDb "
                + "WHERE parentId=? ORDER BY id",
                new String[]{request.itemId}, 4);
    }

    @Override public MkvPromotionPreflight.DownloadRow readDownload() {
        List<String[]> rows = downloadRows();
        need(rows.size() == 1, "Downloads composite key missing/duplicated");
        String[] row = rows.get(0);
        // The legacy exporter scans all Downloads, and sometimes rewrites
        // task IDs using a fuzzy best-score match. A full row snapshot lets
        // the modernized adapter reject identical paths across other keys.
        List<String[]> all = query(downloads,
                "SELECT task_id,external_id,path,title,size_bytes FROM Downloads",
                null, 5);
        List<LegacyDownloadIdentityResolver.Candidate> candidates = new ArrayList<>();
        for (String[] candidate : all) {
            candidates.add(new LegacyDownloadIdentityResolver.Candidate(
                    Integer.parseInt(candidate[0]), candidate[1], candidate[2],
                    candidate[3], Long.parseLong(candidate[4])));
        }
        LegacyDownloadIdentityResolver.Selection selection =
                LegacyDownloadIdentityResolver.resolve(
                        request.downloadTaskId, request.externalId, row[2], candidates);
        need(selection.canWrite(), "Downloads identity rejected: " + selection.reason);
        if (oldDownloadPath == null) {
            oldDownloadPath = row[2];
            oldBytes = Long.parseLong(row[3]);
        }
        return new MkvPromotionPreflight.DownloadRow(
                Integer.parseInt(row[0]), row[1], row[2], Long.parseLong(row[3]));
    }

    @Override public MkvPromotionPreflight.CinemanaRow readCinemanaItem() {
        List<String[]> rows = itemRows();
        need(rows.size() == 1, "CinemanaDownloadItem identity missing/duplicated");
        String[] row = rows.get(0);
        if (oldCinemanaPath == null) {
            oldCinemanaPath = row[2];
            oldSizeMb = Integer.parseInt(row[3]);
        }
        return new MkvPromotionPreflight.CinemanaRow(
                row[0], Integer.parseInt(row[1]), row[2]);
    }

    private String newSubtitleName(String oldName) {
        String source = request.sourceMp4.substring(
                request.sourceMp4.lastIndexOf('/') + 1);
        String stem = source.substring(0, source.length() - 4);
        need(oldName.startsWith(stem + "."), "unrecognized subtitle filename");
        return stem + ".mkv" + oldName.substring(stem.length());
    }

    @Override public Object snapshotSubtitles() {
        List<String[]> rows = subtitleRows();
        need(!rows.isEmpty(), "test fixture has no subtitle rows");
        List<SubtitleSnapshot> result = new ArrayList<>();
        for (String[] row : rows) {
            int task = Integer.parseInt(row[2]);
            need(task == request.downloadTaskId, "unrelated subtitle task");
            result.add(new SubtitleSnapshot(row[0], row[1], task,
                    row[3], newSubtitleName(row[3])));
        }
        subtitleSnapshot = Collections.unmodifiableList(result);
        return subtitleSnapshot;
    }

    @Override public void writeDownload(String mkvName, long bytes) {
        need(oldDownloadPath != null && oldBytes >= 0, "download not snapshotted");
        ContentValues changes = values("path", mkvName);
        changes.put("size_bytes", bytes);
        update(downloads, "Downloads", changes,
                "task_id=? AND external_id=? AND path=? AND size_bytes=?",
                new String[]{Integer.toString(request.downloadTaskId), request.externalId,
                        oldDownloadPath, Long.toString(oldBytes)});
    }

    private int newSizeMb() {
        return (int)Math.min(Integer.MAX_VALUE, request.bytes / 1048000L);
    }

    @Override public void writeCinemana(String mkvName) {
        need(oldCinemanaPath != null && oldSizeMb >= 0, "item not snapshotted");
        ContentValues changes = values("path", mkvName);
        changes.put("sizeMB", newSizeMb());
        update(cinemana, "CinemanaDownloadItem", changes,
                "id=? AND downloadTaskId=? AND path=? AND sizeMB=?",
                new String[]{request.itemId, Integer.toString(request.downloadTaskId),
                        oldCinemanaPath, Integer.toString(oldSizeMb)});
    }

    @Override public void writeSubtitles(String mkvName) {
        need(subtitleSnapshot != null, "subtitles not snapshotted");
        cinemana.beginTransaction();
        try {
            int count = 0;
            for (SubtitleSnapshot subtitle : subtitleSnapshot) {
                update(cinemana, "SubtitleDb", values("file", subtitle.newFile),
                        "id=? AND parentId=? AND downloadTaskId=? AND file=?",
                        new String[]{subtitle.id, subtitle.parentId,
                                Integer.toString(subtitle.taskId), subtitle.originalFile});
                if (++count == 1 && failAfterFirstSubtitle)
                    throw new IllegalStateException("injected after first subtitle write");
            }
            cinemana.setTransactionSuccessful();
        } finally {
            cinemana.endTransaction();
        }
    }

    private boolean subtitleMatches(boolean original) {
        if (subtitleSnapshot == null) return false;
        List<String[]> current = subtitleRows();
        if (current.size() != subtitleSnapshot.size()) return false;
        for (int i = 0; i < current.size(); i++) {
            String[] row = current.get(i);
            SubtitleSnapshot before = subtitleSnapshot.get(i);
            if (!before.id.equals(row[0]) || !before.parentId.equals(row[1])
                    || before.taskId != Integer.parseInt(row[2])
                    || !(original ? before.originalFile : before.newFile).equals(row[3]))
                return false;
        }
        return true;
    }

    @Override public boolean verify(String mkvName, long size) {
        List<String[]> dl = downloadRows(), video = itemRows();
        return dl.size() == 1 && video.size() == 1
                && request.downloadTaskId == Integer.parseInt(dl.get(0)[0])
                && request.externalId.equals(dl.get(0)[1])
                && mkvName.equals(dl.get(0)[2])
                && Long.parseLong(dl.get(0)[3]) == size
                && request.itemId.equals(video.get(0)[0])
                && request.downloadTaskId == Integer.parseInt(video.get(0)[1])
                && mkvName.equals(video.get(0)[2])
                && Integer.parseInt(video.get(0)[3]) == newSizeMb()
                && subtitleMatches(false);
    }

    @Override public void restoreSubtitles(Object snapshot) {
        need(snapshot == subtitleSnapshot && subtitleSnapshot != null,
                "subtitle snapshot token mismatch");
        List<String[]> current = subtitleRows();
        need(current.size() == subtitleSnapshot.size(),
                "subtitle cardinality changed during promotion");
        cinemana.beginTransaction();
        try {
            for (int i = 0; i < current.size(); i++) {
                String[] row = current.get(i);
                SubtitleSnapshot old = subtitleSnapshot.get(i);
                need(old.id.equals(row[0]) && old.parentId.equals(row[1])
                        && old.taskId == Integer.parseInt(row[2]),
                        "subtitle identity changed");
                need(old.originalFile.equals(row[3]) || old.newFile.equals(row[3]),
                        "third-party subtitle update");
                update(cinemana, "SubtitleDb", values("file", old.originalFile),
                        "id=? AND parentId=? AND downloadTaskId=? AND file=?",
                        new String[]{old.id, old.parentId, Integer.toString(old.taskId), row[3]});
            }
            cinemana.setTransactionSuccessful();
        } finally {
            cinemana.endTransaction();
        }
    }

    @Override public void restoreCinemana(MkvPromotionPreflight.CinemanaRow snapshot) {
        need(snapshot != null && request.itemId.equals(snapshot.itemId)
                && request.downloadTaskId == snapshot.downloadTaskId
                && oldSizeMb >= 0, "invalid Cinemana snapshot");
        List<String[]> current = itemRows();
        need(current.size() == 1, "Cinemana item disappeared");
        String[] row = current.get(0);
        String mkvName = request.finalMkv.substring(request.finalMkv.lastIndexOf('/') + 1);
        need(snapshot.path.equals(row[2]) || mkvName.equals(row[2]),
                "third-party Cinemana update");
        int size = Integer.parseInt(row[3]);
        need(size == oldSizeMb || size == newSizeMb(),
                "third-party Cinemana size change");
        ContentValues changes = values("path", snapshot.path);
        changes.put("sizeMB", oldSizeMb);
        update(cinemana, "CinemanaDownloadItem", changes,
                "id=? AND downloadTaskId=? AND path=? AND sizeMB=?",
                new String[]{request.itemId, Integer.toString(request.downloadTaskId),
                        row[2], row[3]});
    }

    @Override public void restoreDownload(MkvPromotionPreflight.DownloadRow snapshot) {
        need(snapshot != null && request.downloadTaskId == snapshot.taskId
                && request.externalId.equals(snapshot.externalId)
                && snapshot.originalBytes >= 0, "invalid Downloads snapshot");
        List<String[]> current = downloadRows();
        need(current.size() == 1, "Downloads row disappeared");
        String[] row = current.get(0);
        String mkvName = request.finalMkv.substring(request.finalMkv.lastIndexOf('/') + 1);
        need(snapshot.path.equals(row[2]) || mkvName.equals(row[2]),
                "third-party Downloads update");
        long bytes = Long.parseLong(row[3]);
        need(bytes == snapshot.originalBytes || bytes == request.bytes,
                "third-party Downloads byte change");
        ContentValues changes = values("path", snapshot.path);
        changes.put("size_bytes", snapshot.originalBytes);
        update(downloads, "Downloads", changes,
                "task_id=? AND external_id=? AND path=? AND size_bytes=?",
                new String[]{Integer.toString(snapshot.taskId), snapshot.externalId,
                        row[2], row[3]});
    }

    @Override public boolean verifyRestored(MkvPromotionPreflight.DownloadRow download,
                         MkvPromotionPreflight.CinemanaRow item, Object subtitleSnapshot) {
        List<String[]> dl = downloadRows(), video = itemRows();
        return dl.size() == 1 && video.size() == 1
                && download.taskId == Integer.parseInt(dl.get(0)[0])
                && download.externalId.equals(dl.get(0)[1])
                && download.path.equals(dl.get(0)[2])
                && Long.parseLong(dl.get(0)[3]) == download.originalBytes
                && item.itemId.equals(video.get(0)[0])
                && item.downloadTaskId == Integer.parseInt(video.get(0)[1])
                && item.path.equals(video.get(0)[2])
                && Integer.parseInt(video.get(0)[3]) == oldSizeMb
                && subtitleSnapshot == this.subtitleSnapshot && subtitleMatches(true);
    }
}
