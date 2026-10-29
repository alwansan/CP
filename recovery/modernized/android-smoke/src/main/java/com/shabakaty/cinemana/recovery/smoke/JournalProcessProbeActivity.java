package com.shabakaty.cinemana.recovery.smoke;

import android.app.Activity;
import android.os.Bundle;
import android.util.Log;
import android.widget.TextView;

/**
 * Emulator-driven two-process SQLite journal diagnostic.
 *
 * The host explicitly force-stops the diagnostic package after "prepare"
 * and starts this Activity in a new process with "recover".
 * NEVER touches Cinemana's account, download files, or production databases.
 */
public final class JournalProcessProbeActivity extends Activity {
    @Override
    protected void onCreate(Bundle state) {
        super.onCreate(state);
        String mode = getIntent().getStringExtra("mode");
        String status;
        try {
            if ("prepare".equals(mode)) {
                status = SqliteJournalProbe.prepareProcessRestart(this);
            } else if ("recover".equals(mode)) {
                status = SqliteJournalProbe.recoverProcessRestart(this);
            } else {
                throw new IllegalArgumentException("invalid diagnostic mode");
            }
        } catch (Throwable failure) {
            Log.e("CinemanaJournalProbe", "Android process-restart diagnostic failed", failure);
            status = "FAIL (" + failure.getClass().getSimpleName() + ")";
        }
        TextView view = new TextView(this);
        view.setPadding(40, 56, 40, 56);
        view.setText("Process restart journal: " + status
                + "\nDiagnostic SQLite file only; not Cinemana production.");
        setContentView(view);
    }
}
