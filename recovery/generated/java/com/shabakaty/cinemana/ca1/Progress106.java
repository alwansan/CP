package com.shabakaty.cinemana.ca1;

/* JADX INFO: loaded from: classes6.dex */
public final class Progress106 {
    public static boolean valid(long j, long j2) {
        return j2 > 0 && j >= 0 && j2 < 604800000 && j <= j2 + 1000;
    }

    public static boolean completed(long j, long j2, boolean z) {
        return valid(j, j2) && (z || ((double) j) >= ((double) j2) * 0.95d);
    }

    public static boolean member(long j, long j2) {
        return valid(j, j2) && j > 0 && !completed(j, j2, false);
    }

    public static int percent(long j, long j2) {
        if (j2 <= 0) {
            return 0;
        }
        return (int) Math.max(0.0d, Math.min(100.0d, (j * 100.0d) / j2));
    }

    public static long resume(long j, long j2) {
        if (member(j, j2)) {
            return Math.min(j, Math.max(0L, j2 - 1000));
        }
        return 0L;
    }
}
