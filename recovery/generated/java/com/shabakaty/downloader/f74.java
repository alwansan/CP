package com.shabakaty.downloader;

import io.reactivex.SingleSource;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: Single.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class f74<T> implements h84<T> {
    public static <T, R> f74<R> o(in1<? super Object[], ? extends R> in1Var, SingleSource<? extends T>... singleSourceArr) {
        return singleSourceArr.length == 0 ? new r74(new do1.i(new NoSuchElementException()), 0) : new k84(singleSourceArr, in1Var);
    }

    @Override // com.shabakaty.downloader.h84
    public final void a(y74<? super T> y74Var) {
        Objects.requireNonNull(y74Var, "observer is null");
        try {
            l(y74Var);
        } catch (NullPointerException e) {
            throw e;
        } catch (Throwable th) {
            kf5.m(th);
            NullPointerException nullPointerException = new NullPointerException("subscribeActual failed");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }

    public final f74<T> c(long j, TimeUnit timeUnit) {
        wx3 wx3Var = ay3.b;
        Objects.requireNonNull(timeUnit, "unit is null");
        Objects.requireNonNull(wx3Var, "scheduler is null");
        return new k74(this, j, timeUnit, wx3Var, false);
    }

    public final f74<T> d(long j, TimeUnit timeUnit) {
        wx3 wx3Var = ay3.b;
        Objects.requireNonNull(timeUnit, "unit is null");
        Objects.requireNonNull(wx3Var, "scheduler is null");
        return new l74(this, new o53(Math.max(j, 0L), timeUnit, wx3Var));
    }

    public final f74<T> e(xc0<? super T> xc0Var) {
        return new m74(this, xc0Var);
    }

    public final f74<T> f(xc0<? super Throwable> xc0Var) {
        return new n74(this, xc0Var);
    }

    public final f74<T> g(xc0<? super T> xc0Var) {
        return new p74(this, xc0Var);
    }

    public final <U> qf1<U> h(in1<? super T, ? extends Iterable<? extends U>> in1Var) {
        return new s74(this, in1Var);
    }

    public final <R> f74<R> i(in1<? super T, ? extends R> in1Var) {
        return new v74(this, in1Var);
    }

    public final f74<T> j(wx3 wx3Var) {
        Objects.requireNonNull(wx3Var, "scheduler is null");
        return new x74(this, wx3Var);
    }

    public final mu0 k(xc0<? super T> xc0Var, xc0<? super Throwable> xc0Var2) {
        Objects.requireNonNull(xc0Var, "onSuccess is null");
        zc0 zc0Var = new zc0(xc0Var, xc0Var2);
        a(zc0Var);
        return zc0Var;
    }

    public abstract void l(y74<? super T> y74Var);

    public final f74<T> m(wx3 wx3Var) {
        Objects.requireNonNull(wx3Var, "scheduler is null");
        return new i84(this, wx3Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final qf1<T> n() {
        return this instanceof fo1 ? ((fo1) this).b() : new j84(this);
    }

    public final <U, R> f74<R> p(h84<U> h84Var, wl<? super T, ? super U, ? extends R> wlVar) {
        Objects.requireNonNull(wlVar, "f is null");
        return o(new do1.a(wlVar), this, h84Var);
    }
}
