package com.shabakaty.cinemana.ca1;

/* JADX INFO: loaded from: classes6.dex */
public final class SeekGesture95 {
    public static long target(long j, float f, int i, int i2, long j2) {
        long jMax = j + ((long) ((f / Math.max(1, i)) * i2 * 1000.0f));
        if (j2 > 0) {
            jMax = Math.min(j2 - 1, jMax);
        }
        return Math.max(0L, jMax);
    }
}
