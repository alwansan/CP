package com.shabakaty.cinemana.recovery.downloads;

/**
 * Conservative, non-mutating identity check before the separate Room 2->3
 * diagnostic adapter tries to overlay episode fields on the copied row.
 *
 * Legacy jt2 iterates *all* DownloadItem.videoFile rows, while it2$m copies
 * only finished=1 rows to CinemanaDownloadItem. jt2's update filters by id
 * alone, so a videoModel.nb alias can point to another row. This guard
 * intentionally rejects such writes; that is safer but not yet fully
 * behavior-equivalent to the historical migration. It is NOT a production
 * migration approval or replacement for original Room transactions.
 */
public final class LegacyRoomV2RowWriteGuard {
    private LegacyRoomV2RowWriteGuard() {}

    public enum Reason {
        READY,
        SOURCE_MISSING,
        INVALID_SOURCE_IDENTITY,
        SOURCE_NOT_COPIED,
        PROJECTION_NOT_SELECTED,
        JSON_ID_MISMATCH,
        TARGET_ROW_MISSING,
        TARGET_ID_MISMATCH,
        TARGET_TASK_MISMATCH
    }

    public static final class Row {
        public final String id;
        public final int taskId;
        public final boolean finished;

        public Row(String id, int taskId, boolean finished) {
            this.id = id;
            this.taskId = taskId;
            this.finished = finished;
        }
    }

    public static final class Target {
        public final String id;
        public final int taskId;
        public Target(String id, int taskId) {
            this.id = id;
            this.taskId = taskId;
        }
    }

    private static boolean hasId(String id) {
        return id != null && !id.isEmpty();
    }

    public static Reason inspect(Row source,
                                 LegacyRoomV2EpisodeMetadata.Result selected,
                                 Target copiedTarget) {
        if (source == null) return Reason.SOURCE_MISSING;
        if (!hasId(source.id) || source.taskId <= 0)
            return Reason.INVALID_SOURCE_IDENTITY;
        if (!source.finished) return Reason.SOURCE_NOT_COPIED;
        if (selected == null || !selected.selected())
            return Reason.PROJECTION_NOT_SELECTED;
        if (!hasId(selected.projection.id) ||
                !source.id.equals(selected.projection.id))
            return Reason.JSON_ID_MISMATCH;
        if (copiedTarget == null) return Reason.TARGET_ROW_MISSING;
        if (!source.id.equals(copiedTarget.id))
            return Reason.TARGET_ID_MISMATCH;
        if (source.taskId != copiedTarget.taskId)
            return Reason.TARGET_TASK_MISMATCH;
        return Reason.READY;
    }
}
