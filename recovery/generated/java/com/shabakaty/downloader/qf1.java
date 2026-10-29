package com.shabakaty.downloader;

import androidx.recyclerview.widget.RecyclerView;
import java.util.Objects;

/* JADX INFO: compiled from: Flowable.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class qf1<T> implements wj3<T> {
    public static final int r = Math.max(1, Integer.getInteger("rx2.buffer-size", RecyclerView.b0.FLAG_IGNORE).intValue());

    public static <T> qf1<T> d(T t) {
        Objects.requireNonNull(t, "item is null");
        return new kg1(t);
    }

    @Override // com.shabakaty.downloader.wj3
    public final void a(ef4<? super T> ef4Var) {
        if (ef4Var instanceof wg1) {
            h((wg1) ef4Var);
        } else {
            Objects.requireNonNull(ef4Var, "s is null");
            h(new be4(ef4Var));
        }
    }

    public final qf1<T> b() {
        return new wf1(this, do1.a, n43.a);
    }

    public final qf1<T> c(xc0<? super T> xc0Var, xc0<? super Throwable> xc0Var2, j2 j2Var, j2 j2Var2) {
        Objects.requireNonNull(xc0Var, "onNext is null");
        Objects.requireNonNull(xc0Var2, "onError is null");
        Objects.requireNonNull(j2Var, "onComplete is null");
        return new xf1(this, xc0Var, xc0Var2, j2Var, j2Var2);
    }

    public final <R> qf1<R> e(in1<? super T, ? extends R> in1Var) {
        Objects.requireNonNull(in1Var, "mapper is null");
        return new lg1(this, in1Var);
    }

    public final qf1<T> f(wx3 wx3Var) {
        int i = r;
        n43.a(i, "bufferSize");
        return new mg1(this, wx3Var, false, i);
    }

    public final mu0 g(xc0<? super T> xc0Var, xc0<? super Throwable> xc0Var2, j2 j2Var, xc0<? super lf4> xc0Var3) {
        Objects.requireNonNull(xc0Var, "onNext is null");
        Objects.requireNonNull(xc0Var2, "onError is null");
        cf2 cf2Var = new cf2(xc0Var, xc0Var2, j2Var, xc0Var3);
        h(cf2Var);
        return cf2Var;
    }

    public final void h(wg1<? super T> wg1Var) {
        Objects.requireNonNull(wg1Var, "s is null");
        try {
            i(wg1Var);
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

    public abstract void i(ef4<? super T> ef4Var);

    public final qf1<T> j(wx3 wx3Var) {
        Objects.requireNonNull(wx3Var, "scheduler is null");
        return new vg1(this, wx3Var, true);
    }
}
