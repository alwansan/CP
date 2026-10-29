package com.shabakaty.cinemana.player;

import java.util.List;
import java.util.Locale;

/**
 * Clean Java extraction of the High 10 profile check found in
 * H26410SoftwareRenderer.isHigh10 (classes10.dex).
 *
 * This pure Java component has no dependency on obfuscated app types, Android
 * runtime, FileDownloader constants or FFmpeg. It is a candidate for reuse in
 * a future source-first Android player. The running APK is not changed.
 */
public final class H264High10Detector {
    private static final int HIGH_10_PROFILE_IDC = 110;
    private static final int SPS_NAL_UNIT_TYPE = 7;

    private H264High10Detector() {}

    public static boolean isHigh10(String mimeType, String codecs, List<byte[]> initializationData) {
        if (!"video/avc".equals(mimeType)) {
            return false;
        }
        if (codecs != null) {
            for (String part : codecs.toLowerCase(Locale.ROOT).split(",")) {
                String codec = part.trim();
                if (codec.length() >= 8 &&
                    (codec.startsWith("avc1.6e") || codec.startsWith("avc3.6e"))) {
                    return true;
                }
            }
        }
        if (initializationData == null) {
            return false;
        }
        for (byte[] bytes : initializationData) {
            if (bytes == null) {
                continue;
            }
            for (int i = 0; i + 4 < bytes.length; i++) {
                int startSize;
                if (bytes[i] == 0 && bytes[i + 1] == 0 && bytes[i + 2] == 1) {
                    startSize = 3;
                } else if (i + 4 < bytes.length &&
                    bytes[i] == 0 && bytes[i + 1] == 0 && bytes[i + 2] == 0 && bytes[i + 3] == 1) {
                    startSize = 4;
                } else {
                    continue;
                }
                int nal = i + startSize;
                if (nal + 1 < bytes.length
                    && (bytes[nal] & 0x1f) == SPS_NAL_UNIT_TYPE
                    && (bytes[nal + 1] & 0xff) == HIGH_10_PROFILE_IDC) {
                    return true;
                }
            }
        }
        return false;
    }
}
