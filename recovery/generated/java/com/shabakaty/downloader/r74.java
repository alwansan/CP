package com.shabakaty.downloader;

import java.util.Objects;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: SingleError.java */
/* JADX INFO: loaded from: classes2.dex */
public final class r74<T> extends f74<T> {
    public final /* synthetic */ int a;
    public final Callable<? extends Throwable> b;

    /* JADX WARN: Multi-variable type inference failed */
    public r74(Object obj) {
        this.a = 2;
        this.b = obj;
    }

    @Override // com.shabakaty.downloader.f74
    public void l(y74 y74Var) {
        mu0 mu0Var = t21.INSTANCE;
        switch (this.a) {
            case 0:
                try {
                    Throwable thCall = this.b.call();
                    Objects.requireNonNull(thCall, "Callable returned null throwable. Null values are generally not allowed in 2.x operators and sources.");
                    th = thCall;
                } catch (Throwable th) {
                    th = th;
                    kf5.m(th);
                }
                y74Var.c(mu0Var);
                y74Var.b(th);
                break;
            case 1:
                mu0 mu0VarH = vd5.h();
                y74Var.c(mu0VarH);
                no3 no3Var = (no3) mu0VarH;
                if (!no3Var.n()) {
                    try {
                        Throwable thCall2 = this.b.call();
                        Objects.requireNonNull(thCall2, "The callable returned a null value");
                        if (!no3Var.n()) {
                            y74Var.onSuccess(thCall2);
                        }
                        break;
                    } catch (Throwable th2) {
                        kf5.m(th2);
                        if (!no3Var.n()) {
                            y74Var.b(th2);
                            return;
                        }
                        xv3.b(th2);
                    }
                }
                break;
            default:
                y74Var.c(mu0Var);
                y74Var.onSuccess(this.b);
                break;
        }
    }

    public r74(Callable callable, int i) {
        this.a = i;
        if (i != 1) {
            this.b = callable;
        } else {
            this.b = callable;
        }
    }
}
