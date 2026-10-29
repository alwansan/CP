package com.shabakaty.cinemana.ca1;

import android.content.Context;
import android.os.SystemClock;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes6.dex */
public final class Reset101 {
    private static final WeakHashMap<Object, Long> pending = new WeakHashMap<>();

    public static void reset(Context context, Object obj, long j) {
        pending.put(obj, Long.valueOf(SystemClock.elapsedRealtime()));
        Log94.event(context, "video_position_reset102", "renderer_target_us=" + j + " source_preserved=true");
    }

    public static void output(Context context, Object obj, long j) {
        Long lRemove = pending.remove(obj);
        if (lRemove != null) {
            Log94.event(context, "video_first_output101", "frame_us=" + j + " elapsed_ms=" + (SystemClock.elapsedRealtime() - lRemove.longValue()));
        }
    }
}
