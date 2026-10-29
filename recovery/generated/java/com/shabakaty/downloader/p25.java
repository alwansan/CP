package com.shabakaty.downloader;

/* JADX INFO: compiled from: VideoSize.java */
/* JADX INFO: loaded from: classes.dex */
public final class p25 {
    public static final p25 e = new p25(0, 0);
    public final int a;
    public final int b;
    public final int c;
    public final float d;

    public p25(int i, int i2) {
        this.a = i;
        this.b = i2;
        this.c = 0;
        this.d = 1.0f;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof p25)) {
            return false;
        }
        p25 p25Var = (p25) obj;
        return this.a == p25Var.a && this.b == p25Var.b && this.c == p25Var.c && this.d == p25Var.d;
    }

    public int hashCode() {
        return Float.floatToRawIntBits(this.d) + ((((((217 + this.a) * 31) + this.b) * 31) + this.c) * 31);
    }

    public p25(int i, int i2, int i3, float f) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = f;
    }
}
