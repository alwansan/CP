package com.shabakaty.downloader;

/* JADX INFO: compiled from: PlaybackParameters.java */
/* JADX INFO: loaded from: classes.dex */
public final class ad3 {
    public static final ad3 d = new ad3(1.0f, 1.0f);
    public final float a;
    public final float b;
    public final int c;

    public ad3(float f, float f2) {
        md.b(f > 0.0f);
        md.b(f2 > 0.0f);
        this.a = f;
        this.b = f2;
        this.c = Math.round(f * 1000.0f);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ad3.class != obj.getClass()) {
            return false;
        }
        ad3 ad3Var = (ad3) obj;
        return this.a == ad3Var.a && this.b == ad3Var.b;
    }

    public int hashCode() {
        return Float.floatToRawIntBits(this.b) + ((Float.floatToRawIntBits(this.a) + 527) * 31);
    }

    public String toString() {
        return sy4.n("PlaybackParameters(speed=%.2f, pitch=%.2f)", Float.valueOf(this.a), Float.valueOf(this.b));
    }
}
