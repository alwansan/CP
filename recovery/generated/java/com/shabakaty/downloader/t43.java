package com.shabakaty.downloader;

import java.util.Objects;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: Observable.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class t43<T> implements l53<T> {
    public static t43<Long> f(long j, TimeUnit timeUnit) {
        wx3 wx3Var = ay3.b;
        Objects.requireNonNull(timeUnit, "unit is null");
        Objects.requireNonNull(wx3Var, "scheduler is null");
        return new b53(Math.max(0L, j), Math.max(0L, j), timeUnit, wx3Var);
    }

    public final t43<T> d(xc0<? super T> xc0Var, xc0<? super Throwable> xc0Var2, j2 j2Var, j2 j2Var2) {
        Objects.requireNonNull(xc0Var, "onNext is null");
        Objects.requireNonNull(j2Var, "onComplete is null");
        return new x43(this, xc0Var, xc0Var2, j2Var, j2Var2);
    }

    public final t43<T> g(wx3 wx3Var) {
        int i = qf1.r;
        n43.a(i, "bufferSize");
        return new e53(this, wx3Var, false, i);
    }

    public final mu0 h(xc0<? super T> xc0Var, xc0<? super Throwable> xc0Var2, j2 j2Var, xc0<? super mu0> xc0Var3) {
        Objects.requireNonNull(xc0Var, "onNext is null");
        Objects.requireNonNull(xc0Var2, "onError is null");
        bf2 bf2Var = new bf2(xc0Var, xc0Var2, j2Var, xc0Var3);
        i(bf2Var);
        return bf2Var;
    }

    public final void i(q53<? super T> q53Var) {
        Objects.requireNonNull(q53Var, "observer is null");
        try {
            j(q53Var);
        } catch (NullPointerException e) {
            throw e;
        } catch (Throwable th) {
            kf5.m(th);
            xv3.b(th);
            NullPointerException nullPointerException = new NullPointerException("Actually not, but can't throw other exceptions due to RS");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }

    public abstract void j(q53<? super T> q53Var);

    public final t43<T> k(wx3 wx3Var) {
        Objects.requireNonNull(wx3Var, "scheduler is null");
        return new m53(this, wx3Var);
    }

    /* JADX WARN: Incorrect types in method signature: (Ljava/lang/Object;)Lcom/shabakaty/downloader/qf1<TT;>; */
    public final qf1 l(int i) {
        ig1 ig1Var = new ig1(this);
        int iK = su.k(i);
        if (iK == 0) {
            return ig1Var;
        }
        if (iK == 1) {
            return new pg1(ig1Var);
        }
        if (iK == 3) {
            return new og1(ig1Var);
        }
        if (iK == 4) {
            return new qg1(ig1Var);
        }
        int i2 = qf1.r;
        n43.a(i2, "capacity");
        return new ng1(ig1Var, i2, true, false, do1.c);
    }
}
