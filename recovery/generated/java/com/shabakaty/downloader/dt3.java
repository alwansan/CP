package com.shabakaty.downloader;

import java.io.Serializable;

/* JADX INFO: compiled from: Result.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class dt3<T> implements Serializable {

    /* JADX INFO: compiled from: Result.kt */
    public static final class a implements Serializable {
        public final Throwable r;

        public a(Throwable th) {
            this.r = th;
        }

        public boolean equals(Object obj) {
            return (obj instanceof a) && j32.a(this.r, ((a) obj).r);
        }

        public int hashCode() {
            return this.r.hashCode();
        }

        public String toString() {
            StringBuilder sbA = um3.a("Failure(");
            sbA.append(this.r);
            sbA.append(')');
            return sbA.toString();
        }
    }

    public static final Throwable a(Object obj) {
        if (obj instanceof a) {
            return ((a) obj).r;
        }
        return null;
    }
}
