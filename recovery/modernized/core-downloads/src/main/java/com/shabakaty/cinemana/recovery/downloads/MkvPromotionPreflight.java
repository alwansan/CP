package com.shabakaty.cinemana.recovery.downloads;

import java.io.File;
import java.util.Locale;

/**
 * Non-mutating, fail-closed validation ahead of the legacy multi-table
 * MkvExporter.promoteDatabase migration. This does not replace the Smali
 * transaction. It provides explicit identity and path invariants so later
 * Android/Room adapters can only proceed after validating the source rows.
 */
public final class MkvPromotionPreflight {
    private MkvPromotionPreflight() {}

    public enum Reason {
        READY,
        MISSING_IDENTITY,
        INVALID_VIDEO_PATH,
        INVALID_VIDEO_SIZE,
        UNEXPECTED_SOURCE,
        DOWNLOAD_ROW_MISSING,
        DOWNLOAD_IDENTITY_MISMATCH,
        CINEMANA_ROW_MISSING,
        CINEMANA_IDENTITY_MISMATCH,
        AMBIGUOUS_SOURCE_PATH
    }

    public static final class Request {
        public final String itemId;
        public final int downloadTaskId;
        public final String externalId;
        public final String sourceMp4;
        public final String finalMkv;
        public final long bytes;

        public Request(String itemId, int downloadTaskId, String externalId,
                       String sourceMp4, String finalMkv, long bytes) {
            this.itemId = itemId;
            this.downloadTaskId = downloadTaskId;
            this.externalId = externalId;
            this.sourceMp4 = sourceMp4;
            this.finalMkv = finalMkv;
            this.bytes = bytes;
        }
    }

    public static final class DownloadRow {
        public final int taskId;
        public final String externalId;
        public final String path;
        // Original size is required for lossless rollback of Downloads.
        // -1 indicates that the legacy adapter did not capture it.
        public final long originalBytes;

        public DownloadRow(int taskId, String externalId, String path) {
            this(taskId, externalId, path, -1L);
        }

        public DownloadRow(int taskId, String externalId, String path, long originalBytes) {
            this.taskId = taskId;
            this.externalId = externalId;
            this.path = path;
            this.originalBytes = originalBytes;
        }
    }

    public static final class CinemanaRow {
        public final String itemId;
        public final int downloadTaskId;
        public final String path;

        public CinemanaRow(String itemId, int downloadTaskId, String path) {
            this.itemId = itemId;
            this.downloadTaskId = downloadTaskId;
            this.path = path;
        }
    }

    public static final class Decision {
        public final Reason reason;
        public final String expectedMkvName;

        private Decision(Reason reason, String expectedMkvName) {
            this.reason = reason;
            this.expectedMkvName = expectedMkvName;
        }

        public boolean ready() { return reason == Reason.READY; }
    }

    private static Decision reject(Reason reason) {
        return new Decision(reason, null);
    }

    private static boolean hasText(String s) {
        return s != null && !s.trim().isEmpty();
    }

    private static String name(String path) {
        if (!hasText(path)) return "";
        return new File(path).getName();
    }

    private static boolean isTemp(String path) {
        return path.toLowerCase(Locale.US).endsWith(".temp");
    }

    /**
     * Reject ambiguous or mismatched rows before any of the multi-table writes.
     * Task-ID recovery, database writes, and rollback still belong to the
     * original MkvExporter until the full migration passes integration tests.
     */
    public static Decision evaluate(Request request, DownloadRow download, CinemanaRow video) {
        if (request == null || !hasText(request.itemId)
                || request.downloadTaskId < 0 || !hasText(request.externalId)) {
            return reject(Reason.MISSING_IDENTITY);
        }
        if (!hasText(request.sourceMp4) || !hasText(request.finalMkv)
                || !request.sourceMp4.toLowerCase(Locale.US).endsWith(".mp4")
                || !request.finalMkv.toLowerCase(Locale.US).endsWith(".mkv")
                || isTemp(request.sourceMp4) || isTemp(request.finalMkv)) {
            return reject(Reason.INVALID_VIDEO_PATH);
        }
        if (request.bytes < 1024L) {
            return reject(Reason.INVALID_VIDEO_SIZE);
        }
        String sourceName = name(request.sourceMp4);
        String mkvName = name(request.finalMkv);
        if (!mkvName.substring(0, mkvName.length() - 4)
                .equalsIgnoreCase(sourceName.substring(0, sourceName.length() - 4))) {
            return reject(Reason.UNEXPECTED_SOURCE);
        }
        if (download == null) return reject(Reason.DOWNLOAD_ROW_MISSING);
        if (request.downloadTaskId != download.taskId
                || !request.externalId.equals(download.externalId)) {
            return reject(Reason.DOWNLOAD_IDENTITY_MISMATCH);
        }
        if (video == null) return reject(Reason.CINEMANA_ROW_MISSING);
        if (!request.itemId.equals(video.itemId)
                || request.downloadTaskId != video.downloadTaskId) {
            return reject(Reason.CINEMANA_IDENTITY_MISMATCH);
        }
        if (!sourceName.equalsIgnoreCase(name(download.path))
                || !sourceName.equalsIgnoreCase(name(video.path))) {
            return reject(Reason.AMBIGUOUS_SOURCE_PATH);
        }
        return new Decision(Reason.READY, mkvName);
    }
}
