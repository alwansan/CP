package com.shabakaty.cinemana.recovery.smoke;

import android.app.Activity;
import android.content.Intent;
import android.widget.Button;
import android.widget.LinearLayout;
import android.content.res.XmlResourceParser;
import android.os.Bundle;
import android.widget.TextView;
import androidx.media3.common.Format;
import com.shabakaty.cinemana.recovery.bridge.Media3High10Adapter;
import com.shabakaty.cinemana.recovery.downloads.MkvPromotionPreflight;
import com.cinemana.pro.R;
import org.xmlpull.v1.XmlPullParser;

/**
 * Installable, independent verification host. Does not replace the Cinemana app.
 * Tests the Java/Media3 bridge, original compiled search XML, and fail-closed
 * database preflight without altering any real account, download, or DB.
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
        MkvPromotionPreflight.Request req = new MkvPromotionPreflight.Request(
                "diagnostic-item", 12, "diagnostic-external",
                "/sdcard/Cinemana/work/Sample.mp4",
                "/sdcard/Cinemana/work/Sample.mkv", 2048);
        boolean preflight = MkvPromotionPreflight.evaluate(req,
                new MkvPromotionPreflight.DownloadRow(12, "diagnostic-external", "Sample.mp4"),
                new MkvPromotionPreflight.CinemanaRow("diagnostic-item", 12, "Sample.mp4")).ready();
        boolean searchXml = verifyOriginalSearchXml();
        TextView message = new TextView(this);
        message.setPadding(48, 64, 48, 64);
        message.setText("Cinemana source recovery diagnostic host\n"
                + "Media3 High 10 adapter: " + (high10 ? "PASS" : "FAIL") + "\n"
                + "MKV promotion preflight: " + (preflight ? "PASS" : "FAIL") + "\n"
                + "Original search layout: " + (searchXml ? "PASS" : "FAIL") + "\n"
                + "This APK is NOT the original Cinemana application.");
        LinearLayout container = new LinearLayout(this);
        container.setOrientation(LinearLayout.VERTICAL);
        container.addView(message);
        Button openSearch = new Button(this);
        openSearch.setText("Open search flow diagnostic");
        openSearch.setOnClickListener(view ->
                startActivity(new Intent(this, SearchFlowActivity.class)));
        container.addView(openSearch);
        setContentView(container);
    }

    private boolean verifyOriginalSearchXml() {
        XmlResourceParser parser = null;
        try {
            parser = getResources().getXml(R.layout.fragment_search);
            int found = 0;
            int event = parser.getEventType();
            while (event != XmlPullParser.END_DOCUMENT) {
                if (event == XmlPullParser.START_TAG) {
                    String tag = parser.getAttributeValue(
                            "http://schemas.android.com/apk/res/android", "tag");
                    for (int i = 1; i <= 7; i++) {
                        if (("binding_" + i).equals(tag)) {
                            found |= 1 << (i - 1);
                        }
                    }
                }
                event = parser.next();
            }
            return found == 0x7f;
        } catch (Exception ignored) {
            return false;
        } finally {
            if (parser != null) parser.close();
        }
    }
}
