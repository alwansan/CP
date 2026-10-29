package com.shabakaty.downloader;

/* JADX INFO: compiled from: SeekParameters.java */
/* JADX INFO: loaded from: classes.dex */
public final class wz3 {
    public static final wz3 c;
    public final long a;
    public final long b;

    static {
        wz3 wz3Var = new wz3(0L, 0L);
        new wz3(Long.MAX_VALUE, Long.MAX_VALUE);
        new wz3(Long.MAX_VALUE, 0L);
        new wz3(0L, Long.MAX_VALUE);
        c = wz3Var;
    }

    public wz3(long j, long j2) {
        md.b(j >= 0);
        md.b(j2 >= 0);
        this.a = j;
        this.b = j2;
    }

    public long a(long j, long j2, long j3) {
        long j4 = this.a;
        if (j4 == 0 && this.b == 0) {
            return j;
        }
        int i = sy4.a;
        long j5 = j - j4;
        long j6 = ((j4 ^ j) & (j ^ j5)) >= 0 ? j5 : Long.MIN_VALUE;
        long j7 = this.b;
        long j8 = j + j7;
        long j9 = ((j7 ^ j8) & (j ^ j8)) >= 0 ? j8 : Long.MAX_VALUE;
        boolean z = false;
        boolean z2 = j6 <= j2 && j2 <= j9;
        if (j6 <= j3 && j3 <= j9) {
            z = true;
        }
        if (z2 && z) {
            return Math.abs(j2 - j) <= Math.abs(j3 - j) ? j2 : j3;
        }
        if (z2) {
            return j2;
        }
        return z ? j3 : j6;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || wz3.class != obj.getClass()) {
            return false;
        }
        wz3 wz3Var = (wz3) obj;
        return this.a == wz3Var.a && this.b == wz3Var.b;
    }

    public int hashCode() {
        return (((int) this.a) * 31) + ((int) this.b);
    }
}
