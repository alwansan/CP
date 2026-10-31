package com.shabakaty.cinemana.local;

import android.content.Context;
import android.util.Log;
import java.io.File;
import java.lang.reflect.Method;
import java.util.Locale;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/**
 * PATCH312: bridge a real native DOWNLOAD_COMPLETED video callback to the
 * durable recovery receipt and coalesced MKV audit. No conversion is performed
 * here. The existing manifest/DB/substring safety gates decide if remux may run.
 *
 * Never fires for subtitles, incomplete .mp4.temp files, or arbitrary files.
 * No raw paths, URLs, tokens or task identifiers are logged.
 */
public final class MkvCompletion312 {
    private static final String TAG = "CinemanaMkvBridge";
    private static final AtomicInteger DROPPED = new AtomicInteger();
    private static final ThreadPoolExecutor EXECUTOR = new ThreadPoolExecutor(
        1, 1, 15L, TimeUnit.SECONDS,
        new ArrayBlockingQueue<Runnable>(128),
        r -> {
            Thread t = new Thread(r, "cinemana-mkv-complete");
            t.setPriority(Thread.MIN_PRIORITY);
            return t;
        },
        (r, e) -> {
            int n = DROPPED.incrementAndGet();
            if (n == 1 || n % 64 == 0) Log.w(TAG, "completion_queue_saturated count=" + n);
            // Repeated on-disk audits can recover completed files independently.
        });

    private MkvCompletion312() {}

    /** Called from an existing native terminal callback. Never block its caller. */
    public static void completed(Context context, Object nativeTask) {
        if (context == null || nativeTask == null) return;
        try {
            // Cheap callback-side suffix filter; do not let thousands of
            // completed .srt/.ass tasks saturate the bounded video queue.
            Object raw = nativeTask.getClass().getMethod("getPath").invoke(nativeTask);
            if (!(raw instanceof String)) return;
            final String path = (String)raw;
            String name = path.toLowerCase(Locale.ROOT);
            if (!name.endsWith(".mp4") || name.endsWith(".tmp.mp4")) return;
            final Context app = context.getApplicationContext() != null
                ? context.getApplicationContext() : context;
            EXECUTOR.execute(() -> process(app, nativeTask, path));
        } catch (Throwable error) {
            Log.w(TAG, "enqueue_failed type=" + error.getClass().getSimpleName());
        }
    }

    private static void process(Context app, Object task, String path) {
        try {
            // Same storage root as MkvReconciler; never touch external downloads.
            File root = new File(android.os.Environment.getExternalStorageDirectory(), "Cinemana/work");
            File file = new File(path);
            if (!file.getCanonicalFile().getParentFile().equals(root.getCanonicalFile())) return;
            String lower = file.getName().toLowerCase(Locale.ROOT);
            if (!lower.endsWith(".mp4") || lower.endsWith(".tmp.mp4")
                    || lower.endsWith(".cnm-recovery.tmp.mp4")) return;
            if (!file.isFile() || file.length() <= 1024L) return;
            Method getId = task.getClass().getMethod("getId");
            Object id = getId.invoke(task);
            if (!(id instanceof Number)) return;
            // The completion callback must come from the native completed state;
            // only then mark the sidecar as complete, never from file existence.
            Class<?> capsule = Class.forName("com.shabakaty.cinemana.ca1.RecoveryCapsule");
            capsule.getMethod("completeDownload", Object.class, int.class)
                .invoke(null, task, ((Number)id).intValue());
            Class<?> reconciler = Class.forName("com.shabakaty.cinemana.features.MkvReconciler");
            reconciler.getMethod("start", Context.class).invoke(null, app);
            // The watcher/audit will enforce exact database and subtitle plan
            // verification. Never invoke ffmpeg directly.
            reconciler.getMethod("requestAudit").invoke(null);
            Log.i(TAG, "verified_native_video_completion_audit_requested");
        } catch (Throwable error) {
            Log.w(TAG, "completion_bridge_failed type=" + error.getClass().getSimpleName());
        }
    }
}
