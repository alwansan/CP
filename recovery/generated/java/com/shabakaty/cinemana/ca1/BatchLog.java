package com.shabakaty.cinemana.ca1;

import android.content.Context;
import android.os.Environment;
import android.os.Process;
import android.os.SystemClock;
import android.util.Log;
import androidx.recyclerview.widget.RecyclerView;
import com.liulishuo.filedownloader.BuildConfig;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.net.URI;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class BatchLog {
    private static volatile Context context;
    private static final AtomicBoolean initialized = new AtomicBoolean();
    private static final ThreadPoolExecutor writer = new ThreadPoolExecutor(1, 1, 0, TimeUnit.MILLISECONDS, new ArrayBlockingQueue(RecyclerView.b0.FLAG_BOUNCED_FROM_HIDDEN_LIST), new ThreadFactory() { // from class: com.shabakaty.cinemana.ca1.BatchLog$$ExternalSyntheticLambda0
        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            return BatchLog.lambda$static$0(runnable);
        }
    });

    static /* synthetic */ Thread lambda$static$0(Runnable runnable) {
        Thread thread = new Thread(runnable, "CA1-log-writer");
        thread.setDaemon(true);
        return thread;
    }

    public static void init(Context context2) {
        if (context2.getApplicationContext() != null) {
            context2 = context2.getApplicationContext();
        }
        context = context2;
        if (initialized.compareAndSet(false, true)) {
            final Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
            Thread.setDefaultUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() { // from class: com.shabakaty.cinemana.ca1.BatchLog$$ExternalSyntheticLambda2
                @Override // java.lang.Thread.UncaughtExceptionHandler
                public final void uncaughtException(Thread thread, Throwable th) {
                    BatchLog.lambda$init$1(defaultUncaughtExceptionHandler, thread, th);
                }
            });
            event("app", "log_init", "build=CA1.6 external=" + new File(Environment.getExternalStorageDirectory(), "Cinemana/work/log/ca1_batch.jsonl") + " fallback=" + new File(context.getFilesDir(), "log/ca1_batch.jsonl"), null);
        }
    }

    /**
     * Restored from smali_classes6/ca1/BatchLog.smali.
     * Preserve the uncaught-exception delegation even if diagnostic logging fails.
     */
    static /* synthetic */ void lambda$init$1(Thread.UncaughtExceptionHandler prior,
                                               Thread thread, Throwable failure) {
        try {
            StringWriter out = new StringWriter();
            failure.printStackTrace(new PrintWriter(out));
            JSONObject event = new JSONObject();
            event.put("utc_ms", System.currentTimeMillis());
            event.put("stage", "uncaught_exception");
            event.put("session", BatchDownload.activeScreen == null
                    ? "none" : BatchDownload.activeScreen.session);
            event.put("thread", thread.getName());
            event.put("error", safe(out.toString()));
            String serialized = event.toString();
            append(new File(context.getFilesDir(), "log/ca1_batch.jsonl"), serialized);
            append(new File(Environment.getExternalStorageDirectory(),
                    "Cinemana/work/log/ca1_batch.jsonl"), serialized);
        } catch (Throwable ignored) {
            // Crash reporting is best effort; always delegate the original failure.
        }
        if (prior != null) {
            prior.uncaughtException(thread, failure);
        } else {
            thread.getThreadGroup().uncaughtException(thread, failure);
        }
    }

    static String safe(String str) {
        return str == null ? BuildConfig.FLAVOR : str.replaceAll("(https?://[^\\s?]+)\\?[^\\s]*", "$1?[redacted]");
    }

    static String url(String str) {
        try {
            URI uri = new URI(str);
            return uri.getScheme() + "://" + uri.getAuthority() + uri.getPath();
        } catch (Exception e) {
            return "invalid-url";
        }
    }

    public static void event(final String str, final String str2, final String str3, Throwable th) {
        if (Log94.enabled() && context != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("utc_ms", System.currentTimeMillis());
                jSONObject.put("elapsed_ms", SystemClock.elapsedRealtime());
                jSONObject.put("pid", Process.myPid());
                jSONObject.put("thread", Thread.currentThread().getName());
                jSONObject.put("session", str);
                jSONObject.put("stage", str2);
                jSONObject.put("detail", safe(str3));
                if (th != null) {
                    StringWriter stringWriter = new StringWriter();
                    th.printStackTrace(new PrintWriter(stringWriter));
                    jSONObject.put("error", safe(stringWriter.toString()));
                }
                final String string = jSONObject.toString();
                Log.i("CA1_BATCH", string);
                writer.execute(new Runnable() { // from class: com.shabakaty.cinemana.ca1.BatchLog$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        BatchLog.lambda$event$2(string, str2, str, str3);
                    }
                });
            } catch (Throwable th2) {
                Log.e("CA1_BATCH", "journal failure", th2);
            }
        }
    }

    static /* synthetic */ void lambda$event$2(String str, String str2, String str3, String str4) {
        if (!append(new File(Environment.getExternalStorageDirectory(), "Cinemana/work/log/ca1_batch.jsonl"), str)) {
            File file = new File(context.getFilesDir(), "log/ca1_batch.jsonl");
            Log.w("CA1_BATCH", "external journal unavailable; private_copy=" + file + " saved=" + append(file, str));
        }
        if (str2.startsWith("enqueue_") || str2.equals("guard_block")) {
            try {
                BatchDownload.call(BatchDownload.type("com.shabakaty.cinemana.features.DownloadTrace"), "log", context, "CA1 session=" + str3 + " stage=" + str2 + " " + safe(str4));
            } catch (Exception e) {
            }
        }
    }

    private static synchronized boolean append(File file, String str) {
        if (!Log94.enabled()) {
            return false;
        }
        synchronized (BatchLog.class) {
            try {
                File parentFile = file.getParentFile();
                if (parentFile.exists() || parentFile.mkdirs()) {
                    if (file.length() > 8388608) {
                        File file2 = new File(file.getPath() + ".1");
                        if ((file2.exists() && !file2.delete()) || !file.renameTo(file2)) {
                        }
                    }
                    OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file, true), "UTF-8");
                    try {
                        outputStreamWriter.write(str);
                        outputStreamWriter.write(10);
                        outputStreamWriter.close();
                        return true;
                    } catch (Throwable th) {
                        try {
                            outputStreamWriter.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
            } catch (Exception e) {
            }
            return false;
        }
    }
}
