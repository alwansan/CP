package com.shabakaty.cinemana.recovery.bridge;

import androidx.media3.common.Format;
import com.shabakaty.cinemana.player.H264High10Detector;

/**
 * The first real Android integration point for recovered source-first code.
 *
 * The original app uses an obfuscated Format type (wh1), while future Gradle
 * code can use Media3's public Format model. No APK production paths are
 * replaced until an integration test demonstrates parity on device.
 */
public final class Media3High10Adapter {
    private Media3High10Adapter() {}

    public static boolean isHigh10(Format format) {
        return format != null &&
            H264High10Detector.isHigh10(
                format.sampleMimeType,
                format.codecs,
                format.initializationData);
    }
}
