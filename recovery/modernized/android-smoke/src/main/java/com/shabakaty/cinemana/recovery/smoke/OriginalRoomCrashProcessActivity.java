package com.shabakaty.cinemana.recovery.smoke;

import android.app.Activity;
import android.os.Bundle;
import android.util.Log;
import android.widget.TextView;

/**
 * Force-stop/restart test entrypoint for ORIGINAL Room-schema SQLite fixtures.
 * No original user database or account data is ever opened.
 */
public final class OriginalRoomCrashProcessActivity extends Activity {
    @Override protected void onCreate(Bundle savedState) {
        super.onCreate(savedState);
        String mode = getIntent().getStringExtra("mode");
        int phase = getIntent().getIntExtra("phase", -1);
        String outcome;
        try {
            if ("prepare".equals(mode)) {
                outcome = OriginalRoomCrashJournalProbe.prepare(this, phase);
            } else if ("partial-recover".equals(mode)) {
                outcome = OriginalRoomCrashJournalProbe.partialRecover(this, phase);
            } else if ("recover".equals(mode)) {
                outcome = OriginalRoomCrashJournalProbe.recover(this, phase);
            } else {
                throw new IllegalArgumentException("unknown crash journal probe mode");
            }
        } catch (Throwable error) {
            Log.e("CinemanaRoomCrash", "Room schema crash-restart probe failed", error);
            outcome = "FAIL (" + error.getClass().getSimpleName() + ")";
        }
        TextView view = new TextView(this);
        view.setPadding(40, 56, 40, 56);
        view.setText("Room schema restart: " + outcome
                + "\nDisposable independent DB files. Not production Cinemana.");
        setContentView(view);
    }
}
