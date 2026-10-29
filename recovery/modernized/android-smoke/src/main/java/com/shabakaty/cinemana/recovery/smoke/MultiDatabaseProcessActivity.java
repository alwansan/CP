package com.shabakaty.cinemana.recovery.smoke;

import android.app.Activity;
import android.os.Bundle;
import android.util.Log;
import android.widget.TextView;

/**
 * Two-process Android emulator fixture for multiple independent SQLite DBs.
 * The shell harness force-stops this package between prepare and recover.
 * The diagnostic file names never overlap a real Cinemana database.
 */
public final class MultiDatabaseProcessActivity extends Activity {
    @Override protected void onCreate(Bundle state) {
        super.onCreate(state);
        String mode = getIntent().getStringExtra("mode");
        int phase = getIntent().getIntExtra("phase", -1);
        String result;
        try {
            if ("prepare".equals(mode)) {
                result = MultiDatabaseJournalProbe.prepare(this, phase);
            } else if ("recover".equals(mode)) {
                result = MultiDatabaseJournalProbe.recover(this, phase);
            } else if ("partial-recover".equals(mode)) {
                result = MultiDatabaseJournalProbe.partiallyRecover(this, phase);
            } else {
                throw new IllegalArgumentException("missing multi-db diagnostic mode");
            }
        } catch (Throwable error) {
            Log.e("CinemanaMultiDbProbe", "Cross-database diagnostic failed", error);
            result = "FAIL (" + error.getClass().getSimpleName() + ")";
        }
        TextView status = new TextView(this);
        status.setPadding(40, 56, 40, 56);
        status.setText("Cross-DB restart: " + result
                + "\nThree disposable SQLite files; no Cinemana user data.");
        setContentView(status);
    }
}
