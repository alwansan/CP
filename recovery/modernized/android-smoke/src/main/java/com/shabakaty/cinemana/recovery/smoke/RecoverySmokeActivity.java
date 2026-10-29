package com.shabakaty.cinemana.recovery.smoke;

import android.app.Activity;
import android.os.Bundle;
import android.widget.TextView;
import androidx.media3.common.Format;
import com.shabakaty.cinemana.recovery.bridge.Media3High10Adapter;

/**
 * Installable diagnostic-only host proving source-first Gradle Java, Media3 and
 * Android native .so packaging can coexist. Not the Cinemana application UI.
 */
public final class RecoverySmokeActivity extends Activity {
    @Override
    protected void onCreate(Bundle state) {
        super.onCreate(state);
        Format format = new Format.Builder()
                .setSampleMimeType("video/avc")
                .setCodecs("avc1.6e001f")
                .build();
        boolean high10 = Media3High10Adapter.isHigh10(format);
        TextView message = new TextView(this);
        message.setPadding(48, 64, 48, 64);
        message.setText("Cinemana source recovery diagnostic host\n"
                + "Media3 High 10 adapter: " + (high10 ? "PASS" : "FAIL") + "\n"
                + "This APK is NOT the original Cinemana application.");
        setContentView(message);
    }
}
