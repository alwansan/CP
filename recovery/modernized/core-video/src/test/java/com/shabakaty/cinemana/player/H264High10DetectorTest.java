package com.shabakaty.cinemana.player;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public final class H264High10DetectorTest {
    private static int checked;

    private static void check(boolean got, boolean expected, String name) {
        checked++;
        if (got != expected) {
            throw new AssertionError(name + ": expected " + expected + ", got " + got);
        }
    }

    public static void main(String[] args) {
        check(H264High10Detector.isHigh10(null, "avc1.6e001f", null), false, "missing MIME");
        check(H264High10Detector.isHigh10("video/hevc", "avc1.6e001f", null), false, "non-AVC");
        check(H264High10Detector.isHigh10("video/avc", "avc1.6E001F", null), true, "avc1 case");
        check(H264High10Detector.isHigh10("video/avc", "mp4a.40.2, avc3.6e001f", null), true, "avc3 multi codec");
        check(H264High10Detector.isHigh10("video/avc", "avc1.64001f", null), false, "high profile but not high10");
        check(H264High10Detector.isHigh10("video/avc", null, null), false, "missing codec and SPS");
        List<byte[]> fourByte = Collections.singletonList(new byte[] {0, 0, 0, 1, 0x67, 110, 0, 0});
        check(H264High10Detector.isHigh10("video/avc", null, fourByte), true, "Annex-B 4-byte SPS");
        List<byte[]> threeByte = Collections.singletonList(new byte[] {0, 0, 1, 0x67, 110, 0});
        check(H264High10Detector.isHigh10("video/avc", null, threeByte), true, "Annex-B 3-byte SPS");
        List<byte[]> highProfile = Collections.singletonList(new byte[] {0, 0, 0, 1, 0x67, 100});
        check(H264High10Detector.isHigh10("video/avc", null, highProfile), false, "SPS profile 100");
        check(H264High10Detector.isHigh10("video/avc", null, Collections.singletonList(new byte[] {0, 0, 0})), false, "short data");
        check(H264High10Detector.isHigh10("video/avc", null, Arrays.asList(null, new byte[] {0, 0, 1, 0x67, 110})), true, "null entry");
        check(H264High10Detector.isHigh10("video/avc", "avc1.4d001f", Collections.singletonList(new byte[] {0, 0, 1, 0x67, 110})), true, "SPS wins over codec string");
        System.out.println("PASS: " + checked + " tests for H264High10Detector");
    }
}
