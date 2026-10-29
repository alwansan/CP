package com.shabakaty.cinemana.player;

import android.os.Build;
import android.os.Environment;
import android.os.Process;
import android.os.SystemClock;
import android.util.Log;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter;

/* JADX INFO: loaded from: classes.dex */
public final class PlayerDiagnosticLog {
    private static final String TAG = "CinemanaPlayerDiag";
    private static boolean environmentLogged;

    private PlayerDiagnosticLog() {
    }

    public static synchronized void environmentOnce() {
        if (environmentLogged) {
            return;
        }
        environmentLogged = true;
        value("device_manufacturer", Build.MANUFACTURER);
        value("device_model", Build.MODEL);
        value("device_codename", Build.DEVICE);
        value("android_release", Build.VERSION.RELEASE);
        value("android_sdk_int", Integer.valueOf(Build.VERSION.SDK_INT));
        value("device_build_fingerprint", Build.FINGERPRINT);
    }

    public static synchronized void event(String str) {
        String str2 = "uptimeMs=" + SystemClock.elapsedRealtime() + " event=" + str;
        Log.i(TAG, str2);
        try {
            File file = new File(Environment.getExternalStorageDirectory(), "Cinemana/work/log");
            if (!file.exists()) {
                file.mkdirs();
            }
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(new File(file, "player_diagnostics.log"), true), "UTF-8"));
            bufferedWriter.write("UTC_MS=" + System.currentTimeMillis() + " PID=" + Process.myPid() + " THREAD=" + Thread.currentThread().getName() + " UPTIME_MS=" + SystemClock.elapsedRealtime() + " MESSAGE=" + str2);
            bufferedWriter.newLine();
            bufferedWriter.flush();
            bufferedWriter.close();
        } catch (Throwable th) {
            Log.e("CinemanaPlayerDiag", "file_write_failed", th);
        }
    }

    public static void value(String str, Object obj) {
        event(str + "=" + String.valueOf(obj));
    }
}
