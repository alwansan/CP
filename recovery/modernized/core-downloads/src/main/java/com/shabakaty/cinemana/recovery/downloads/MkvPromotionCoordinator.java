package com.shabakaty.cinemana.recovery.downloads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * Source-first testable coordinator for future migration of
 * MkvExporter.promoteDatabase. NO production database adapter is attached.
 *
 * The original Smali uses compensating updates across Downloads,
 * CinemanaDownloadItem and subtitles. This class models that order, snapshots
 * and verified rollback, without assuming multi-DB atomic transactions.
 *
 * It is NOT crash-atomic or a replacement for the legacy Smali method. Before
 * production use it needs real DAO adapters, failure/kill/restart testing,
 * serialized updates, and a durable transaction journal.
 */
public final class MkvPromotionCoordinator {
    private MkvPromotionCoordinator() {}

    public interface Port {
        MkvPromotionPreflight.DownloadRow readDownload() throws Exception;
        MkvPromotionPreflight.CinemanaRow readCinemanaItem() throws Exception;
        Object snapshotSubtitles() throws Exception;

        void writeDownload(String mkvName, long size) throws Exception;
        void writeCinemana(String mkvName) throws Exception;
        void writeSubtitles(String mkvName) throws Exception;
        boolean verify(String mkvName, long size) throws Exception;

        void restoreSubtitles(Object snapshot) throws Exception;
        void restoreCinemana(MkvPromotionPreflight.CinemanaRow snapshot) throws Exception;
        void restoreDownload(MkvPromotionPreflight.DownloadRow snapshot) throws Exception;
        /** Read back all three stores after compensating writes. */
        boolean verifyRestored(MkvPromotionPreflight.DownloadRow download,
                               MkvPromotionPreflight.CinemanaRow cinemana,
                               Object subtitleSnapshot) throws Exception;
    }

    public enum Status {
        REJECTED,
        SUCCESS,
        ROLLED_BACK,
        ROLLBACK_FAILED
    }

    public static final class Result {
        public final Status status;
        public final MkvPromotionPreflight.Reason preflightReason;
        public final String phase;
        public final List<String> rollbackErrors;

        private Result(Status status, MkvPromotionPreflight.Reason reason, String phase,
                       List<String> errors) {
            this.status = status;
            this.preflightReason = reason;
            this.phase = phase;
            this.rollbackErrors = Collections.unmodifiableList(new ArrayList<>(errors));
        }

        public boolean safeSuccess() { return status == Status.SUCCESS; }
    }

    /**
     * Returns success ONLY after all writes and an independent readback check.
     * Write intent is recorded before each operation, so a partially applied
     * write that throws will still be restored.
     */
    public static synchronized Result promote(MkvPromotionPreflight.Request request, Port port) {
        if (port == null) {
            return new Result(Status.REJECTED, null, "no_port", Collections.emptyList());
        }
        MkvPromotionPreflight.DownloadRow download;
        MkvPromotionPreflight.CinemanaRow cinemana;
        Object subtitles;
        try {
            download = port.readDownload();
            cinemana = port.readCinemanaItem();
            subtitles = port.snapshotSubtitles();
        } catch (Exception error) {
            return new Result(Status.REJECTED, null, "snapshot", Collections.emptyList());
        }
        // A null snapshot cannot prove that subtitle restoration is possible.
        if (subtitles == null) {
            return new Result(Status.REJECTED, null, "subtitle_snapshot", Collections.emptyList());
        }
        // Without the prior file size restoring only its filename would leave
        // a corrupted Downloads row after a failed promotion.
        if (download == null || download.originalBytes < 0) {
            return new Result(Status.REJECTED, null, "download_size_snapshot", Collections.emptyList());
        }

        MkvPromotionPreflight.Decision decision =
                MkvPromotionPreflight.evaluate(request, download, cinemana);
        if (!decision.ready()) {
            return new Result(Status.REJECTED, decision.reason, "preflight",
                    Collections.emptyList());
        }

        String phase = "download";
        boolean attemptedDownload = false;
        boolean attemptedCinemana = false;
        boolean attemptedSubtitles = false;
        try {
            attemptedDownload = true;
            port.writeDownload(decision.expectedMkvName, request.bytes);
            phase = "cinemana";
            attemptedCinemana = true;
            port.writeCinemana(decision.expectedMkvName);
            phase = "subtitles";
            attemptedSubtitles = true;
            port.writeSubtitles(decision.expectedMkvName);
            phase = "readback";
            if (!port.verify(decision.expectedMkvName, request.bytes)) {
                throw new IllegalStateException("post-write identity verification failed");
            }
            return new Result(Status.SUCCESS, decision.reason, "verified",
                    Collections.emptyList());
        } catch (Exception failure) {
            List<String> rollback = new ArrayList<>();
            // Reverse order; each compensating action is attempted even if
            // another restore fails, and failures must never report success.
            if (attemptedSubtitles) {
                try {
                    port.restoreSubtitles(subtitles);
                } catch (Exception error) {
                    rollback.add("subtitles:" + error.getClass().getSimpleName());
                }
            }
            if (attemptedCinemana) {
                try {
                    port.restoreCinemana(cinemana);
                } catch (Exception error) {
                    rollback.add("cinemana:" + error.getClass().getSimpleName());
                }
            }
            if (attemptedDownload) {
                try {
                    port.restoreDownload(download);
                } catch (Exception error) {
                    rollback.add("download:" + error.getClass().getSimpleName());
                }
            }
            // A DAO may acknowledge an UPDATE while changing zero rows. Never
            // call a rollback successful without independent persisted readback.
            try {
                if (!port.verifyRestored(download, cinemana, subtitles)) {
                    rollback.add("readback:restored_state_mismatch");
                }
            } catch (Exception error) {
                rollback.add("readback:" + error.getClass().getSimpleName());
            }
            return new Result(rollback.isEmpty() ? Status.ROLLED_BACK : Status.ROLLBACK_FAILED,
                    decision.reason, phase, rollback);
        }
    }
}
