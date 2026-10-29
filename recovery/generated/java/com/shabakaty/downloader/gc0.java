package com.shabakaty.downloader;

import android.os.Build;

/* JADX INFO: compiled from: Constraints.java */
/* JADX INFO: loaded from: classes.dex */
public final class gc0 {
    public static final gc0 i = new gc0(new a());
    public androidx.work.c a;
    public boolean b;
    public boolean c;
    public boolean d;
    public boolean e;
    public long f;
    public long g;
    public id0 h;

    /* JADX INFO: compiled from: Constraints.java */
    public static final class a {
        public androidx.work.c a = androidx.work.c.NOT_REQUIRED;
        public boolean b = false;
        public boolean c = false;
        public id0 d = new id0();
    }

    public gc0() {
        this.a = androidx.work.c.NOT_REQUIRED;
        this.f = -1L;
        this.g = -1L;
        this.h = new id0();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || gc0.class != obj.getClass()) {
            return false;
        }
        gc0 gc0Var = (gc0) obj;
        if (this.b == gc0Var.b && this.c == gc0Var.c && this.d == gc0Var.d && this.e == gc0Var.e && this.f == gc0Var.f && this.g == gc0Var.g && this.a == gc0Var.a) {
            return this.h.equals(gc0Var.h);
        }
        return false;
    }

    public int hashCode() {
        int iHashCode = ((((((((this.a.hashCode() * 31) + (this.b ? 1 : 0)) * 31) + (this.c ? 1 : 0)) * 31) + (this.d ? 1 : 0)) * 31) + (this.e ? 1 : 0)) * 31;
        long j = this.f;
        int i2 = (iHashCode + ((int) (j ^ (j >>> 32)))) * 31;
        long j2 = this.g;
        return this.h.hashCode() + ((i2 + ((int) (j2 ^ (j2 >>> 32)))) * 31);
    }

    public gc0(a aVar) {
        this.a = androidx.work.c.NOT_REQUIRED;
        this.f = -1L;
        this.g = -1L;
        this.h = new id0();
        this.b = false;
        int i2 = Build.VERSION.SDK_INT;
        this.c = false;
        this.a = aVar.a;
        this.d = aVar.b;
        this.e = aVar.c;
        if (i2 >= 24) {
            this.h = aVar.d;
            this.f = -1L;
            this.g = -1L;
        }
    }

    public gc0(gc0 gc0Var) {
        this.a = androidx.work.c.NOT_REQUIRED;
        this.f = -1L;
        this.g = -1L;
        this.h = new id0();
        this.b = gc0Var.b;
        this.c = gc0Var.c;
        this.a = gc0Var.a;
        this.d = gc0Var.d;
        this.e = gc0Var.e;
        this.h = gc0Var.h;
    }
}
