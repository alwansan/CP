package com.shabakaty.cinemana.recovery.downloads;

import static com.shabakaty.cinemana.recovery.downloads.MkvPromotionPreflight.*;
import java.util.Objects;

public final class MkvPromotionPreflightTest {
    private static int tests;

    private static void is(Reason expected, Request request, DownloadRow d, CinemanaRow v) {
        tests++;
        Reason actual = MkvPromotionPreflight.evaluate(request,d,v).reason;
        if (actual != expected) throw new AssertionError("Expected " + expected + " but was " + actual);
    }

    private static Request req(String id,int task,String external,String from,String to,long bytes) {
        return new Request(id,task,external,from,to,bytes);
    }

    public static void main(String[] args) {
        Request valid = req("item-1",12,"external-4",
                "/sdcard/Cinemana/work/Episode.mp4",
                "/sdcard/Cinemana/work/Episode.mkv",2_000_000L);
        DownloadRow d = new DownloadRow(12,"external-4","Episode.mp4");
        CinemanaRow v = new CinemanaRow("item-1",12,"Episode.mp4");

        is(Reason.READY,valid,d,v);
        tests++;
        if (!Objects.equals("Episode.mkv",MkvPromotionPreflight.evaluate(valid,d,v).expectedMkvName))
            throw new AssertionError("Expected output basename");
        is(Reason.MISSING_IDENTITY,null,d,v);
        is(Reason.MISSING_IDENTITY,req("",12,"external-4","Episode.mp4","Episode.mkv",2048),d,v);
        is(Reason.MISSING_IDENTITY,req("item-1",-1,"external-4","Episode.mp4","Episode.mkv",2048),d,v);
        is(Reason.MISSING_IDENTITY,req("item-1",12,"","Episode.mp4","Episode.mkv",2048),d,v);
        is(Reason.INVALID_VIDEO_PATH,req("item-1",12,"external-4","Episode.mp4.temp","Episode.mkv",2048),d,v);
        is(Reason.INVALID_VIDEO_PATH,req("item-1",12,"external-4","Episode.mp4","Episode.mp4",2048),d,v);
        is(Reason.INVALID_VIDEO_SIZE,req("item-1",12,"external-4","Episode.mp4","Episode.mkv",100),d,v);
        is(Reason.UNEXPECTED_SOURCE,req("item-1",12,"external-4","Episode.mp4","Another.mkv",2048),d,v);
        is(Reason.DOWNLOAD_ROW_MISSING,valid,null,v);
        is(Reason.DOWNLOAD_IDENTITY_MISMATCH,valid,new DownloadRow(11,"external-4","Episode.mp4"),v);
        is(Reason.DOWNLOAD_IDENTITY_MISMATCH,valid,new DownloadRow(12,"different","Episode.mp4"),v);
        is(Reason.CINEMANA_ROW_MISSING,valid,d,null);
        is(Reason.CINEMANA_IDENTITY_MISMATCH,valid,d,new CinemanaRow("different",12,"Episode.mp4"));
        is(Reason.CINEMANA_IDENTITY_MISMATCH,valid,d,new CinemanaRow("item-1",11,"Episode.mp4"));
        is(Reason.AMBIGUOUS_SOURCE_PATH,valid,new DownloadRow(12,"external-4","different.mp4"),v);
        is(Reason.AMBIGUOUS_SOURCE_PATH,valid,d,new CinemanaRow("item-1",12,"other.mp4"));

        // A full-path Room row must never match a same-named video from a
        // different directory. Filename-only legacy rows retain old behavior.
        DownloadRow qualified = new DownloadRow(12, "external-4",
                "/sdcard/Cinemana/work/Episode.mp4");
        CinemanaRow qualifiedItem = new CinemanaRow("item-1", 12,
                "/sdcard/Cinemana/work/Episode.mp4");
        is(Reason.READY, valid, qualified, qualifiedItem);
        is(Reason.READY, valid, qualified, v);
        is(Reason.READY, valid, d, qualifiedItem);
        is(Reason.AMBIGUOUS_SOURCE_PATH, valid,
                new DownloadRow(12, "external-4",
                        "/sdcard/Other/work/Episode.mp4"), qualifiedItem);
        is(Reason.AMBIGUOUS_SOURCE_PATH, valid, qualified,
                new CinemanaRow("item-1", 12,
                        "/sdcard/Other/work/Episode.mp4"));
        is(Reason.AMBIGUOUS_SOURCE_PATH, valid,
                new DownloadRow(12, "external-4",
                        "/sdcard/Cinemana/other/../work/Episode.mp4"), qualifiedItem);
        is(Reason.AMBIGUOUS_SOURCE_PATH, valid,
                new DownloadRow(12, "external-4",
                        "work/Episode.mp4"), qualifiedItem);
        is(Reason.AMBIGUOUS_SOURCE_PATH, valid,
                new DownloadRow(12, "external-4",
                        "/sdcard/Cinemana/work/episode.mp4"), qualifiedItem);

        Request cased=req("item-1",12,"external-4","EPISODE.MP4","episode.MKV",2048);
        is(Reason.READY,cased,d,v);
        System.out.println("PASS: "+tests+" MKV database promotion non-mutating preflight cases");
    }
}
