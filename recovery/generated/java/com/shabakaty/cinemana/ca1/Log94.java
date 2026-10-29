package com.shabakaty.cinemana.ca1;

import android.content.Context;
import android.os.Environment;
import com.connectsdk.discovery.provider.ssdp.SSDPPacket;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes6.dex */
public final class Log94 {
    static volatile Context app;
    static final ExecutorService worker = Executors.newSingleThreadExecutor();
    static final ConcurrentHashMap<String, Long> events = new ConcurrentHashMap<>();

    public static void init(Context context) {
        if (context != null) {
            app = context.getApplicationContext();
            Delete94.recover(app);
            if (enabled()) {
                return;
            }
            cleanup(app);
        }
    }

    public static boolean enabled() {
        Context context = app;
        if (context == null) {
            return true;
        }
        try {
            return !new File(context.getFilesDir(), "ca1_log_disabled").exists();
        } catch (Throwable th) {
            return true;
        }
    }

    public static void set(boolean z) {
        Context context = app;
        if (context == null) {
            return;
        }
        File file = new File(context.getFilesDir(), "ca1_log_disabled");
        try {
            if (z) {
                file.delete();
            } else {
                file.createNewFile();
            }
            context.getSharedPreferences("ca1_94", 0).edit().putBoolean("log", z).apply();
            if (z) {
                return;
            }
            cleanup(context);
        } catch (IOException e) {
        }
    }

    public static void event(Context context, String str, String str2) {
        if (context == null || !enabled()) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        Long lPut = events.put(str, Long.valueOf(jCurrentTimeMillis));
        if (lPut == null || jCurrentTimeMillis - lPut.longValue() >= 2000) {
            worker.execute(new Log94$$ExternalSyntheticLambda0(context.getApplicationContext(), jCurrentTimeMillis, str, str2));
        }
    }

    static /* synthetic */ void lambda$event$0(Context context, long j, String str, String str2) {
        if (enabled()) {
            File file = new File(Environment.getExternalStorageDirectory(), "Cinemana/work/log");
            if (!file.isDirectory() && !file.mkdirs()) {
                file = new File(context.getFilesDir(), "log");
            }
            if (file.isDirectory() || file.mkdirs()) {
                try {
                    FileWriter fileWriter = new FileWriter(new File(file, "ui95.log"), true);
                    try {
                        fileWriter.write(j + "\t" + str + "\t" + str2 + SSDPPacket.LF);
                        fileWriter.close();
                    } catch (Throwable th) {
                        try {
                            fileWriter.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                } catch (IOException e) {
                }
            }
        }
    }

    static void cleanup(final Context context) {
        worker.execute(new Runnable() { // from class: com.shabakaty.cinemana.ca1.Log94$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                Log94.lambda$cleanup$1(context);
            }
        });
    }

    static /* synthetic */ void lambda$cleanup$1(Context context) {
        clean(new File(context.getFilesDir(), "log"));
        clean(new File(Environment.getExternalStorageDirectory(), "Cinemana/log"));
        clean(new File(Environment.getExternalStorageDirectory(), "Cinemana/work/log"));
        clean(new File(context.getExternalFilesDir(null), "log"));
    }

    static void clean(File file) {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            return;
        }
        for (File file2 : fileArrListFiles) {
            String name = file2.getName();
            if (file2.isFile() && (name.endsWith(".log") || name.equals("ca1_batch.jsonl") || name.equals("tree.txt"))) {
                file2.delete();
            }
        }
    }
}
