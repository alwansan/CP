package com.shabakaty.cinemana.local;

import android.os.Looper;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;

/**
 * R2 DIAGNOSTIC ONLY: asynchronous, bounded observation of synthetic Room-row
 * shaped events. Never dispatched by Queue110/Room/service in normal runtime.
 * Reject and count overload; never discard actual durable admission work.
 */
public final class RustShadowEventWorker implements AutoCloseable {
    public static final int MAX_PENDING = 16;
    private final AtomicLong rejected = new AtomicLong();
    private final ThreadPoolExecutor executor;

    static {
        System.loadLibrary("cp_rust_core");
    }

    public RustShadowEventWorker() {
        ThreadFactory factory = job -> {
            Thread thread = new Thread(job, "CPRustShadowDiagnostic");
            thread.setDaemon(true);
            return thread;
        };
        executor = new ThreadPoolExecutor(
                1, 1, 0L, TimeUnit.MILLISECONDS,
                new ArrayBlockingQueue<Runnable>(MAX_PENDING),
                factory,
                (job, pool) -> {
                    rejected.incrementAndGet();
                    throw new RejectedExecutionException("R2 shadow audit overloaded");
                });
    }

    public Future<Long> audit(int[] taskIds, String[] externalIds, long[] generations, int[] roles) {
        if (taskIds == null || externalIds == null || generations == null || roles == null
                || taskIds.length != externalIds.length
                || taskIds.length != generations.length
                || taskIds.length != roles.length
                || taskIds.length > 1000) {
            throw new IllegalArgumentException("R2 malformed synthetic batch");
        }
        // Snapshots prevent mutations of caller-owned arrays after submitting.
        final int[] ids = taskIds.clone();
        final String[] external = externalIds.clone();
        final long[] gens = generations.clone();
        final int[] processes = roles.clone();
        return executor.submit(() -> {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                throw new IllegalStateException("R2 JNI may not run on the Android UI thread");
            }
            return nativeAudit(ids, external, gens, processes);
        });
    }

    public long rejectedCount() {
        return rejected.get();
    }

    /**
     * CI-only deterministic queue saturation gate. Not used by real app.
     * Kept in the diagnostic class in the experimental branch only.
     */
    public Future<?> diagnosticBlock(CountDownLatch entered, CountDownLatch release) {
        if (entered == null || release == null) throw new IllegalArgumentException();
        return executor.submit(() -> {
            entered.countDown();
            try {
                release.await();
            } catch (InterruptedException interrupted) {
                Thread.currentThread().interrupt();
            }
        });
    }

    @Override
    public void close() {
        executor.shutdownNow();
    }

    private static native long nativeAudit(
            int[] taskIds, String[] externalIds, long[] generations, int[] roles);
}
