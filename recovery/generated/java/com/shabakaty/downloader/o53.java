package com.shabakaty.downloader;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: ObservableTimer.java */
/* JADX INFO: loaded from: classes.dex */
public final class o53 extends t43<Long> {
    public final wx3 r;
    public final long s;
    public final TimeUnit t;

    /* JADX INFO: compiled from: ObservableTimer.java */
    public static final class a extends AtomicReference<mu0> implements mu0, Runnable {
        public final q53<? super Long> r;

        public a(q53<? super Long> q53Var) {
            this.r = q53Var;
        }

        @Override // com.shabakaty.downloader.mu0
        public void h() {
            pu0.f(this);
        }

        @Override // com.shabakaty.downloader.mu0
        public boolean n() {
            return get() == pu0.DISPOSED;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (n()) {
                return;
            }
            this.r.e(0L);
            lazySet(t21.INSTANCE);
            this.r.a();
        }
    }

    public o53(long j, TimeUnit timeUnit, wx3 wx3Var) {
        this.s = j;
        this.t = timeUnit;
        this.r = wx3Var;
    }

    @Override // com.shabakaty.downloader.t43
    public void j(q53<? super Long> q53Var) {
        a aVar = new a(q53Var);
        q53Var.c(aVar);
        pu0.F(aVar, this.r.c(aVar, this.s, this.t));
    }
}
