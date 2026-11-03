package com.shabakaty.cinemana.recovery.downloads;

import static com.shabakaty.cinemana.recovery.downloads.MkvPromotionPreflight.*;
import static com.shabakaty.cinemana.recovery.downloads.MkvPromotionCoordinator.*;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class MkvPromotionCoordinatorTest {
    private static int tests;
    private static final Request REQUEST = new Request("item1", 17, "external1",
            "/sdcard/Cinemana/work/Episode.mp4",
            "/sdcard/Cinemana/work/Episode.mkv", 5000L);

    static final class FakePort implements IdentitySnapshotPort {
        List<LegacyDownloadIdentityResolver.Candidate> identityRows = Arrays.asList(
                new LegacyDownloadIdentityResolver.Candidate(17, "external1",
                        "/sdcard/Cinemana/work/Episode.mp4", "Episode", 4200L));
        @Override public List<LegacyDownloadIdentityResolver.Candidate> readAllDownloads() throws Exception {
            step("readAllDownloads");
            return identityRows;
        }
        String download = "Episode.mp4";
        String item = "Episode.mp4";
        String subtitle = "Episode.mp4";
        long size = 4200L;
        boolean silentRestore;
        boolean failRestoreReadback;
        String fail;
        String restoreFail;
        boolean readback = true;
        boolean noSubtitles;
        boolean wrongIdentity;
        boolean staleIdentityRead;
        boolean wrongDownloadDirectory;
        boolean wrongCinemanaDirectory;
        final List<String> calls = new ArrayList<>();

        void step(String name) throws Exception {
            calls.add(name);
            if (name.equals(fail)) throw new Exception("injected failure: " + name);
        }

        @Override public DownloadRow readDownload() throws Exception {
            step("readDownload");
            return new DownloadRow(wrongIdentity ? 18 : 17, "external1",
                    wrongDownloadDirectory ? "/sdcard/Other/work/Episode.mp4"
                            : staleIdentityRead ? "/sdcard/Cinemana/work/Changed.mp4" : download, size);
        }

        @Override public CinemanaRow readCinemanaItem() throws Exception {
            step("readCinemana");
            return new CinemanaRow("item1", 17,
                    wrongCinemanaDirectory ? "/sdcard/Other/work/Episode.mp4" : item);
        }

        @Override public Object snapshotSubtitles() throws Exception {
            step("snapshotSubtitles");
            return noSubtitles ? null : subtitle;
        }

        @Override public void writeDownload(String name, long bytes) throws Exception {
            download = name;
            size = bytes;
            step("writeDownload"); // Can throw AFTER mutating.
        }

        @Override public void writeCinemana(String name) throws Exception {
            item = name;
            step("writeCinemana");
        }

        @Override public void writeSubtitles(String name) throws Exception {
            subtitle = name;
            step("writeSubtitles");
        }

        @Override public boolean verify(String name, long bytes) throws Exception {
            step("verify");
            return readback && name.equals(download) && name.equals(item)
                    && name.equals(subtitle) && bytes == size;
        }

        @Override public void restoreSubtitles(Object previous) throws Exception {
            calls.add("restoreSubtitles");
            if ("restoreSubtitles".equals(restoreFail)) throw new Exception("rollback refused");
            subtitle = (String) previous;
        }

        @Override public void restoreCinemana(CinemanaRow previous) throws Exception {
            calls.add("restoreCinemana");
            if ("restoreCinemana".equals(restoreFail)) throw new Exception("rollback refused");
            item = previous.path;
        }

        @Override public void restoreDownload(DownloadRow previous) throws Exception {
            calls.add("restoreDownload");
            if ("restoreDownload".equals(restoreFail)) throw new Exception("rollback refused");
            if (!silentRestore) {
                download = previous.path;
                size = previous.originalBytes;
            }
        }

        @Override public boolean verifyRestored(DownloadRow previousDownload,
                CinemanaRow previousCinemana, Object previousSubtitles) throws Exception {
            calls.add("verifyRestored");
            if (failRestoreReadback) throw new Exception("readback unavailable");
            return download.equals(previousDownload.path)
                    && size == previousDownload.originalBytes
                    && item.equals(previousCinemana.path)
                    && subtitle.equals(previousSubtitles);
        }
    }

    private static void ok(boolean value, String message) {
        tests++;
        if (!value) throw new AssertionError(message);
    }

    private static void restored(FakePort port) {
        ok("Episode.mp4".equals(port.download), "download restored");
        ok(port.size == 4200L, "original download byte count restored");
        ok("Episode.mp4".equals(port.item), "Cinemana item restored");
        ok("Episode.mp4".equals(port.subtitle), "subtitles restored");
    }

    public static void main(String[] args) {
        FakePort port = new FakePort();
        Result result = promote(REQUEST, port);
        ok(result.status == Status.SUCCESS && result.safeSuccess(), "successful verified promotion");
        ok("verified".equals(result.phase), "success only after readback");
        ok(result.preflightReason == Reason.READY, "valid identity retained");
        ok("Episode.mkv".equals(port.download), "Downloads promoted");
        ok("Episode.mkv".equals(port.item), "Cinemana item promoted");
        ok("Episode.mkv".equals(port.subtitle), "subtitle path promoted");
        ok(port.calls.contains("verify"), "verified by independent readback");
        ok(result.rollbackErrors.isEmpty(), "no rollback errors on success");

        for (String failing : Arrays.asList("writeDownload", "writeCinemana", "writeSubtitles", "verify")) {
            port = new FakePort(); port.fail = failing;
            result = promote(REQUEST, port);
            ok(result.status == Status.ROLLED_BACK, "rollback after " + failing);
            ok(!result.safeSuccess(), "never report success after " + failing);
            restored(port);
            ok(result.rollbackErrors.isEmpty(), "no rollback errors after " + failing);
        }

        port = new FakePort();
        port.readback = false;
        result = promote(REQUEST, port);
        ok(result.status == Status.ROLLED_BACK, "readback mismatch must rollback");
        restored(port);
        ok("readback".equals(result.phase), "readback failure phase");

        for (String failing : Arrays.asList("readDownload","readCinemana","snapshotSubtitles")) {
            port = new FakePort(); port.fail = failing;
            result = promote(REQUEST, port);
            ok(result.status == Status.REJECTED, "snapshot failure rejected: " + failing);
            ok(!port.calls.contains("writeDownload"), "no writes if snapshot fails: " + failing);
        }

        port = new FakePort(); port.noSubtitles=true;
        result = promote(REQUEST, port);
        ok(result.status == Status.REJECTED, "no available subtitle snapshot rejected");
        ok(!port.calls.contains("writeDownload"), "no writes if no subtitle snapshot");

        port = new FakePort(); port.wrongIdentity=true;
        result = promote(REQUEST, port);
        ok(result.status == Status.REJECTED, "wrong identity rejected");
        ok(result.preflightReason == Reason.DOWNLOAD_IDENTITY_MISMATCH, "reason reported");
        ok(!port.calls.contains("writeDownload"), "wrong identity no write");

        for (boolean wrongDownload : new boolean[]{true, false}) {
            port = new FakePort();
            port.wrongDownloadDirectory = wrongDownload;
            port.wrongCinemanaDirectory = !wrongDownload;
            result = promote(REQUEST, port);
            ok(result.status == Status.REJECTED, "cross-directory source rejected");
            ok(result.preflightReason == Reason.AMBIGUOUS_SOURCE_PATH,
                    "preflight reports cross-directory conflict");
            ok(!port.calls.contains("writeDownload") && !port.calls.contains("writeCinemana"),
                    "no database writes after cross-directory source conflict");
        }

        result = promote(REQUEST, null);
        ok(result.status == Status.REJECTED, "null adapter rejected");

        for (String failing : Arrays.asList("restoreSubtitles","restoreCinemana","restoreDownload")) {
            port = new FakePort();port.fail = "verify";port.restoreFail = failing;
            result = promote(REQUEST, port);
            ok(result.status == Status.ROLLBACK_FAILED, "rollback failure surfaced: " + failing);
            ok(result.rollbackErrors.stream().anyMatch(e ->
                    e.startsWith(failing.substring("restore".length()).toLowerCase() + ":")),
                    "specific rollback failure reported " + failing);
            ok(result.rollbackErrors.contains("readback:restored_state_mismatch"),
                    "incomplete rollback also flagged by persisted readback " + failing);
            ok(port.calls.contains("restoreSubtitles") && port.calls.contains("restoreCinemana")
                    && port.calls.contains("restoreDownload"), "all compensations attempted even after failure");
        }

        port = new FakePort();port.fail="writeCinemana";
        result = promote(REQUEST, port);
        ok(port.calls.indexOf("restoreCinemana") < port.calls.indexOf("restoreDownload"),
                "reverse order compensation");
        ok(!port.calls.contains("restoreSubtitles"), "no need to restore untouched subtitles");

        port = new FakePort();
        port.fail = "verify";
        port.silentRestore = true;
        result = promote(REQUEST, port);
        ok(result.status == Status.ROLLBACK_FAILED, "silently ignored DAO restore must be failure");
        ok(result.rollbackErrors.contains("readback:restored_state_mismatch"),
                "detected silent persisted rollback mismatch");
        ok(port.calls.contains("verifyRestored"), "rollback verified via readback");

        port = new FakePort();
        port.fail = "verify";
        port.failRestoreReadback = true;
        result = promote(REQUEST, port);
        ok(result.status == Status.ROLLBACK_FAILED, "failed readback never reports rollback success");
        ok(result.rollbackErrors.contains("readback:Exception"), "readback exception recorded");

        port = new FakePort();
        port.size = -1L;
        result = promote(REQUEST, port);
        ok(result.status == Status.REJECTED && "download_size_snapshot".equals(result.phase),
                "incomplete byte count snapshot rejected before writes");
        ok(!port.calls.contains("writeDownload"), "incomplete download snapshot never mutates DB");

        port = new FakePort();
        result = promoteWithIdentitySnapshot(REQUEST, port);
        ok(result.status == Status.SUCCESS, "unique composite Downloads identity promotes");
        ok(port.calls.indexOf("readAllDownloads") < port.calls.indexOf("writeDownload"),
                "full identity snapshot checked before writes");

        port = new FakePort();
        port.staleIdentityRead = true;
        result = promoteWithIdentitySnapshot(REQUEST, port);
        ok(result.status == Status.REJECTED && "identity_snapshot_changed".equals(result.phase),
                "changed DAO source after full-row selection rejected");
        ok(!port.calls.contains("writeDownload"), "changed DAO source cannot mutate");

        port = new FakePort();
        port.size = 4300L;
        result = promoteWithIdentitySnapshot(REQUEST, port);
        ok(result.status == Status.REJECTED && "identity_snapshot_changed".equals(result.phase),
                "changed byte count after selection rejected");
        ok(!port.calls.contains("writeDownload"), "changed size cannot mutate");

        port = new FakePort();
        port.identityRows = Arrays.asList(
                new LegacyDownloadIdentityResolver.Candidate(17, "external1",
                        "/sdcard/Cinemana/work/Episode.mp4", "Episode", 4200L),
                new LegacyDownloadIdentityResolver.Candidate(19, "other",
                        "/sdcard/Cinemana/work/Episode.mp4", "Other", 4000L));
        result = promoteWithIdentitySnapshot(REQUEST, port);
        ok(result.status == Status.REJECTED &&
                result.phase.equals("identity_SOURCE_PATH_COLLISION"),
                "competing row sharing source path rejected");
        ok(!port.calls.contains("writeDownload"), "collision cannot mutate Downloads");

        port = new FakePort();
        port.identityRows = Arrays.asList(
                new LegacyDownloadIdentityResolver.Candidate(18, "external1",
                        "/sdcard/Cinemana/work/Episode.mp4", "Episode", 4200L));
        result = promoteWithIdentitySnapshot(REQUEST, port);
        ok(result.status == Status.REJECTED && !port.calls.contains("writeDownload"),
                "possible recovered task ID requires review, not automatic promotion");

        System.out.println("PASS: " + tests
                + " MKV promotion coordinator rollback, isolation, verification and failure-injection checks");
    }
}
