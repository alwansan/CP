package com.shabakaty.downloader;

/* JADX INFO: compiled from: EntityInsertionAdapter.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class x31<T> extends f54 {
    public x31(vt3 vt3Var) {
        super(vt3Var);
    }

    public abstract void e(ci4 ci4Var, T t);

    public final void f(T t) {
        ci4 ci4VarA = a();
        try {
            e(ci4VarA, t);
            ci4VarA.u1();
            if (ci4VarA == this.c) {
                this.a.set(false);
            }
        } catch (Throwable th) {
            d(ci4VarA);
            throw th;
        }
    }

    public final long g(T t) {
        ci4 ci4VarA = a();
        try {
            e(ci4VarA, t);
            long jU1 = ci4VarA.u1();
            if (ci4VarA == this.c) {
                this.a.set(false);
            }
            return jU1;
        } catch (Throwable th) {
            d(ci4VarA);
            throw th;
        }
    }
}
