package com.shabakaty.downloader;

import java.io.Serializable;

/* JADX INFO: compiled from: Tuples.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class x93<A, B> implements Serializable {
    public final A r;
    public final B s;

    public x93(A a, B b) {
        this.r = a;
        this.s = b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof x93)) {
            return false;
        }
        x93 x93Var = (x93) obj;
        return j32.a(this.r, x93Var.r) && j32.a(this.s, x93Var.s);
    }

    public int hashCode() {
        A a = this.r;
        int iHashCode = (a == null ? 0 : a.hashCode()) * 31;
        B b = this.s;
        return iHashCode + (b != null ? b.hashCode() : 0);
    }

    public String toString() {
        StringBuilder sbA = i61.a('(');
        sbA.append(this.r);
        sbA.append(", ");
        sbA.append(this.s);
        sbA.append(')');
        return sbA.toString();
    }
}
