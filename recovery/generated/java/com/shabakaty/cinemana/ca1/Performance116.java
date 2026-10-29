package com.shabakaty.cinemana.ca1;

import java.util.List;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes6.dex */
public final class Performance116 {
    static Object handler;
    static Thread main;
    static final ScheduledExecutorService monitor = Executors.newSingleThreadScheduledExecutor(new ThreadFactory() { // from class: com.shabakaty.cinemana.ca1.Performance116$$ExternalSyntheticLambda0
        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            return Performance116.lambda$static$0(runnable);
        }
    });
    static volatile long pending;
    static long reported;
    static boolean started;

    static /* synthetic */ Thread lambda$static$0(Runnable runnable) {
        Thread thread = new Thread(runnable, "performance116");
        thread.setDaemon(true);
        return thread;
    }

    static synchronized void start() {
        if (started) {
            return;
        }
        started = true;
        monitor.execute(new Runnable() { // from class: com.shabakaty.cinemana.ca1.Performance116$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                Performance116.lambda$start$1();
            }
        });
    }

    static /* synthetic */ void lambda$start$1() {
        try {
            Object objCall = Restart108.call(Class.forName("android.os.Looper"), "getMainLooper", new Object[0]);
            main = (Thread) Restart108.call(objCall, "getThread", new Object[0]);
            handler = Continue106.make("android.os.Handler", objCall);
            exits();
            monitor.scheduleWithFixedDelay(new Runnable() { // from class: com.shabakaty.cinemana.ca1.Performance116$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    Performance116.probe();
                }
            }, 2L, 2L, TimeUnit.SECONDS);
        } catch (Exception e) {
            Restart108.log("performance116_unavailable", e);
        }
    }

    static void exits() {
        try {
            for (Object obj : (List) Restart108.call(Restart108.call(Restart108.context, "getSystemService", "activity"), "getHistoricalProcessExitReasons", null, 0, 5)) {
                Restart108.trace("PERF116_EXIT time=" + Restart108.call(obj, "getTimestamp", new Object[0]) + " reason=" + Restart108.call(obj, "getReason", new Object[0]) + " status=" + Restart108.call(obj, "getStatus", new Object[0]) + " importance=" + Restart108.call(obj, "getImportance", new Object[0]));
            }
        } catch (NoSuchMethodException e) {
        } catch (Exception e2) {
            Restart108.log("performance116_exit_history", e2);
        }
    }

    static void probe() {
        try {
            long jNanoTime = System.nanoTime();
            if (pending == 0) {
                pending = jNanoTime;
                if (Boolean.TRUE.equals(Restart108.call(handler, "post", new Runnable() { // from class: com.shabakaty.cinemana.ca1.Performance116$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        Performance116.pending = 0L;
                    }
                }))) {
                    return;
                }
                pending = 0L;
                return;
            }
            long millis = TimeUnit.NANOSECONDS.toMillis(jNanoTime - pending);
            if (millis >= 2000 && jNanoTime - reported >= TimeUnit.SECONDS.toNanos(30L)) {
                reported = jNanoTime;
                StringBuilder sb = new StringBuilder();
                StackTraceElement[] stackTrace = main.getStackTrace();
                for (int i = 0; i < Math.min(20, stackTrace.length); i++) {
                    sb.append(" | ").append(stackTrace[i]);
                }
                Restart108.trace("PERF116_UI_STALL_MS=" + millis + " state=" + main.getState() + ((Object) sb));
            }
        } catch (Exception e) {
            pending = 0L;
        }
    }
}
