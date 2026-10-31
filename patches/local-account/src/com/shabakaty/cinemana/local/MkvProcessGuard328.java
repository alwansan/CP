package com.shabakaty.cinemana.local;

import android.os.SystemClock;
import android.util.Log;
import java.io.File;

/**
 * PATCH328: one daemon observer for the single active FFmpeg remux.
 * Never deletes, renames or opens the MP4, subtitles, manifest, database,
 * or output. An FFmpeg process that made zero stage-byte progress for
 * 120 seconds is terminated; the existing exporter/lease error path
 * preserves source and safely schedules a later full remux.
 */
public final class MkvProcessGuard328 {
    private static final String TAG = "CNM_MKV";
    private static final long POLL_MS = 5000L;
    private static final long STALL_MS = 120000L;

    private MkvProcessGuard328() {}

    private static boolean running(Process process) {
        try {
            process.exitValue();
            return false;
        } catch (IllegalThreadStateException alive) {
            return true;
        }
    }

    public static void watch(final Process process, final File stage) {
        if (process == null || stage == null) return;
        try {
            Thread thread = new Thread(new Runnable() {
                @Override public void run() {
                    long previous = Math.max(0L, stage.length());
                    long lastProgress = SystemClock.elapsedRealtime();
                    try {
                        while (running(process)) {
                            Thread.sleep(POLL_MS);
                            if (!running(process)) return;
                            long now = SystemClock.elapsedRealtime();
                            long size = Math.max(0L, stage.length());
                            if (size != previous) {
                                previous = size;
                                lastProgress = now;
                            } else if (now - lastProgress >= STALL_MS) {
                                // Do not include source path, token or URLs in logs.
                                Log.w(TAG, "PATCH328_FFMPEG_STALL no_stage_progress_ms=" + (now - lastProgress));
                                process.destroy();
                                Thread.sleep(2000L);
                                if (running(process)) {
                                    try {
                                        process.destroyForcibly();
                                    } catch (Throwable ignored) {
                                        process.destroy();
                                    }
                                }
                                return;
                            }
                        }
                    } catch (InterruptedException interrupted) {
                        Thread.currentThread().interrupt();
                    } catch (Throwable error) {
                        // Monitoring is advisory: never crash the real mux worker.
                        Log.w(TAG, "PATCH328_FFMPEG_WATCH_FAILED", error);
                    }
                }
            }, "cinemana-mkv-ffmpeg-stall-guard");
            thread.setDaemon(true);
            thread.setPriority(Thread.MIN_PRIORITY);
            thread.start();
        } catch (Throwable error) {
            Log.w(TAG, "PATCH328_FFMPEG_WATCH_START_FAILED", error);
        }
    }
}
