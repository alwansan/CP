package com.shabakaty.cinemana.features;

import android.content.Context;
import android.os.Environment;
import android.os.Process;
import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.cinemana.local.ExpiredLink269;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes3.dex */
public final class DownloadTrace {
    private static final String DIR = "log";
    private static final String FILE = "downloads.log";
    private static final String ROOT = "Cinemana/work";
    private static final Object LOCK = new Object();
    private static final Map<Integer, Long> LAST_PROGRESS_MS = new HashMap();
    private static final Map<Integer, Integer> LAST_PERCENT = new HashMap();

    private static void diagnosticLocked(String str) {
        try {
            File file = new File(new File(Environment.getExternalStorageDirectory(), ROOT), DIR);
            if (!file.exists()) {
                file.mkdirs();
            }
            File file2 = new File(file, "diagnostics.log");
            long jCurrentTimeMillis = System.currentTimeMillis();
            String strReplace = UUID.randomUUID().toString().replace("-", BuildConfig.FLAVOR);
            String name = Thread.currentThread().getName();
            String str2 = "UTC_MS=" + jCurrentTimeMillis + " PID=" + Process.myPid() + " THREAD=" + name + " EVENT=" + strReplace + " MESSAGE=" + str;
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file2, true), "UTF-8"));
            bufferedWriter.write(str2);
            bufferedWriter.newLine();
            bufferedWriter.flush();
            bufferedWriter.close();
        } catch (Throwable th) {
        }
    }

    private DownloadTrace() {
    }

    /**
     * Recovered as Java by REA/JADX-headless, then cross-checked against
     * smali_classes3/DownloadTrace.smali. Keeps the original synchronized
     * append and diagnostic journal operations.
     */
    public static void log(Context context, String message) {
        if (!com.shabakaty.cinemana.ca1.Log94.enabled() || context == null) {
            return;
        }
        try {
            File logDir = new File(new File(Environment.getExternalStorageDirectory(), ROOT), DIR);
            if (!logDir.exists()) {
                logDir.mkdirs();
            }
            File file = new File(logDir, FILE);
            String timestamp = String.valueOf(System.currentTimeMillis());
            synchronized (LOCK) {
                BufferedWriter writer = new BufferedWriter(
                    new OutputStreamWriter(new FileOutputStream(file, true), "UTF-8"));
                String line = timestamp + " " + message;
                writer.write(line);
                writer.newLine();
                writer.flush();
                writer.close();
                diagnosticLocked(line);
            }
        } catch (Throwable ignored) {
            // Logging is intentionally best-effort as in the original Smali.
        }
    }

    public static void task(Context context, String str, Object obj, Throwable th) {
        ExpiredLink269.failed(context, obj, th);
        if (context == null || obj == null) {
            return;
        }
        try {
            Class<?> cls = obj.getClass();
            int iIntValue = ((Integer) cls.getMethod("getId", new Class[0]).invoke(obj, new Object[0])).intValue();
            String strValueOf = String.valueOf(cls.getMethod("getUrl", new Class[0]).invoke(obj, new Object[0]));
            String strValueOf2 = String.valueOf(cls.getMethod("getPath", new Class[0]).invoke(obj, new Object[0]));
            String strValueOf3 = BuildConfig.FLAVOR;
            try {
                strValueOf3 = String.valueOf(cls.getMethod("getTag", new Class[0]).invoke(obj, new Object[0]));
            } catch (Throwable th2) {
            }
            StringBuilder sb = new StringBuilder();
            sb.append("STATE=").append(str).append(" taskId=").append(iIntValue).append(" path=").append(strValueOf2).append(" tag=").append(strValueOf3).append(" url=").append(strValueOf);
            if (th != null) {
                sb.append(" error=").append(th);
            }
            log(context, sb.toString());
        } catch (Throwable th3) {
            log(context, "STATE=" + str + " reflectionError=" + th3);
        }
    }

    public static void progress(Context context, Object obj, int i, long j) {
        if (context == null || obj == null) {
            return;
        }
        try {
            Class<?> cls = obj.getClass();
            int iIntValue = ((Integer) cls.getMethod("getId", new Class[0]).invoke(obj, new Object[0])).intValue();
            long jCurrentTimeMillis = System.currentTimeMillis();
            int i2 = j > 0 ? (int) ((((long) i) * 100) / j) : -1;
            synchronized (LOCK) {
                Map<Integer, Long> map = LAST_PROGRESS_MS;
                Long l = map.get(Integer.valueOf(iIntValue));
                Map<Integer, Integer> map2 = LAST_PERCENT;
                Integer num = map2.get(Integer.valueOf(iIntValue));
                boolean z = true;
                boolean z2 = l == null || jCurrentTimeMillis - l.longValue() >= 5000;
                if (i2 < 0 || (num != null && i2 < num.intValue() + 5 && i2 != 100)) {
                    z = false;
                }
                if (z2 || z) {
                    map.put(Integer.valueOf(iIntValue), Long.valueOf(jCurrentTimeMillis));
                    if (i2 >= 0) {
                        map2.put(Integer.valueOf(iIntValue), Integer.valueOf(i2));
                    }
                    log(context, "STATE=DOWNLOAD_PROGRESS taskId=" + iIntValue + " bytes=" + i + " total=" + j + " percent=" + i2 + " path=" + String.valueOf(cls.getMethod("getPath", new Class[0]).invoke(obj, new Object[0])));
                }
            }
        } catch (Throwable th) {
        }
    }
}
