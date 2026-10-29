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

    /* JADX WARN: Bottom block not found for handler: all -> 0x0074 */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0076, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void log(android.content.Context r5, java.lang.String r6) {
        /*
            boolean r0 = com.shabakaty.cinemana.ca1.Log94.enabled()
            if (r0 != 0) goto L7
            return
        L7:
            if (r5 != 0) goto La
            return
        La:
            java.io.File r5 = new java.io.File     // Catch: java.lang.Throwable -> L74
            java.io.File r0 = android.os.Environment.getExternalStorageDirectory()     // Catch: java.lang.Throwable -> L74
            java.lang.String r1 = "Cinemana/work"
            r5.<init>(r0, r1)     // Catch: java.lang.Throwable -> L74
            java.io.File r0 = new java.io.File     // Catch: java.lang.Throwable -> L74
            java.lang.String r1 = "log"
            r0.<init>(r5, r1)     // Catch: java.lang.Throwable -> L74
            boolean r5 = r0.exists()     // Catch: java.lang.Throwable -> L74
            if (r5 != 0) goto L25
            r0.mkdirs()     // Catch: java.lang.Throwable -> L74
        L25:
            java.io.File r5 = new java.io.File     // Catch: java.lang.Throwable -> L74
            java.lang.String r1 = "downloads.log"
            r5.<init>(r0, r1)     // Catch: java.lang.Throwable -> L74
            long r0 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L74
            java.lang.String r0 = java.lang.String.valueOf(r0)     // Catch: java.lang.Throwable -> L74
            java.lang.Object r1 = com.shabakaty.cinemana.features.DownloadTrace.LOCK     // Catch: java.lang.Throwable -> L74
            monitor-enter(r1)     // Catch: java.lang.Throwable -> L74
            java.io.FileOutputStream r2 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L71
            r3 = 1
            r2.<init>(r5, r3)     // Catch: java.lang.Throwable -> L71
            java.io.BufferedWriter r5 = new java.io.BufferedWriter     // Catch: java.lang.Throwable -> L71
            java.io.OutputStreamWriter r3 = new java.io.OutputStreamWriter     // Catch: java.lang.Throwable -> L71
            java.lang.String r4 = "UTF-8"
            r3.<init>(r2, r4)     // Catch: java.lang.Throwable -> L71
            r5.<init>(r3)     // Catch: java.lang.Throwable -> L71
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L71
            r2.<init>()     // Catch: java.lang.Throwable -> L71
            java.lang.StringBuilder r0 = r2.append(r0)     // Catch: java.lang.Throwable -> L71
            java.lang.String r2 = " "
            java.lang.StringBuilder r0 = r0.append(r2)     // Catch: java.lang.Throwable -> L71
            java.lang.StringBuilder r6 = r0.append(r6)     // Catch: java.lang.Throwable -> L71
            java.lang.String r6 = r6.toString()     // Catch: java.lang.Throwable -> L71
            r5.write(r6)     // Catch: java.lang.Throwable -> L71
            r5.newLine()     // Catch: java.lang.Throwable -> L71
            r5.flush()     // Catch: java.lang.Throwable -> L71
            r5.close()     // Catch: java.lang.Throwable -> L71
            diagnosticLocked(r6)     // Catch: java.lang.Throwable -> L71
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L71
            goto L75
        L71:
            r5 = move-exception
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L71
            throw r5     // Catch: java.lang.Throwable -> L74
        L74:
            r5 = move-exception
        L75:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.shabakaty.cinemana.features.DownloadTrace.log(android.content.Context, java.lang.String):void");
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
