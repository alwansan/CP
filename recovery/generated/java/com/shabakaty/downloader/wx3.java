package com.shabakaty.downloader;

import java.util.Objects;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: Scheduler.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class wx3 {
    public static final long a = TimeUnit.MINUTES.toNanos(Long.getLong("rx2.scheduler.drift-tolerance", 15).longValue());

    /* JADX INFO: compiled from: Scheduler.java */
    public static final class a implements mu0, Runnable {
        public final Runnable r;
        public final c s;
        public Thread t;

        public a(Runnable runnable, c cVar) {
            this.r = runnable;
            this.s = cVar;
        }

        @Override // com.shabakaty.downloader.mu0
        public void h() {
            if (this.t == Thread.currentThread()) {
                c cVar = this.s;
                if (cVar instanceof hz2) {
                    hz2 hz2Var = (hz2) cVar;
                    if (hz2Var.s) {
                        return;
                    }
                    hz2Var.s = true;
                    hz2Var.r.shutdown();
                    return;
                }
            }
            this.s.h();
        }

        @Override // com.shabakaty.downloader.mu0
        public boolean n() {
            return this.s.n();
        }

        @Override // java.lang.Runnable
        public void run() {
            this.t = Thread.currentThread();
            try {
                this.r.run();
            } finally {
                h();
                this.t = null;
            }
        }
    }

    /* JADX INFO: compiled from: Scheduler.java */
    public static final class b implements mu0, Runnable {
        public final Runnable r;
        public final c s;
        public volatile boolean t;

        public b(Runnable runnable, c cVar) {
            this.r = runnable;
            this.s = cVar;
        }

        @Override // com.shabakaty.downloader.mu0
        public void h() {
            this.t = true;
            this.s.h();
        }

        @Override // com.shabakaty.downloader.mu0
        public boolean n() {
            return this.t;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.t) {
                return;
            }
            try {
                this.r.run();
            } catch (Throwable th) {
                kf5.m(th);
                this.s.h();
                throw d61.d(th);
            }
        }
    }

    /* JADX INFO: compiled from: Scheduler.java */
    public static abstract class c implements mu0 {

        /* JADX INFO: compiled from: Scheduler.java */
        public final class a implements Runnable {
            public final Runnable r;
            public final v04 s;
            public final long t;
            public long u;
            public long v;
            public long w;

            public a(long j, Runnable runnable, long j2, v04 v04Var, long j3) {
                this.r = runnable;
                this.s = v04Var;
                this.t = j3;
                this.v = j2;
                this.w = j;
            }

            /* JADX WARN: Code duplicated, block: B:10:0x0035  */
            @Override // java.lang.Runnable
            public void run() {
                long j;
                this.r.run();
                if (this.s.n()) {
                    return;
                }
                c cVar = c.this;
                TimeUnit timeUnit = TimeUnit.NANOSECONDS;
                long jA = cVar.a(timeUnit);
                long j2 = wx3.a;
                long j3 = jA + j2;
                long j4 = this.v;
                if (j3 >= j4) {
                    long j5 = this.t;
                    if (jA >= j4 + j5 + j2) {
                        long j6 = this.t;
                        j = jA + j6;
                        long j7 = this.u + 1;
                        this.u = j7;
                        this.w = j - (j6 * j7);
                    } else {
                        long j8 = this.w;
                        long j9 = this.u + 1;
                        this.u = j9;
                        j = (j9 * j5) + j8;
                    }
                } else {
                    long j10 = this.t;
                    j = jA + j10;
                    long j11 = this.u + 1;
                    this.u = j11;
                    this.w = j - (j10 * j11);
                }
                this.v = jA;
                pu0.u(this.s, c.this.c(this, j - jA, timeUnit));
            }
        }

        public long a(TimeUnit timeUnit) {
            return timeUnit.convert(System.currentTimeMillis(), TimeUnit.MILLISECONDS);
        }

        public mu0 b(Runnable runnable) {
            return c(runnable, 0L, TimeUnit.NANOSECONDS);
        }

        public abstract mu0 c(Runnable runnable, long j, TimeUnit timeUnit);

        public mu0 d(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
            v04 v04Var = new v04();
            v04 v04Var2 = new v04(v04Var);
            Objects.requireNonNull(runnable, "run is null");
            long nanos = timeUnit.toNanos(j2);
            long jA = a(TimeUnit.NANOSECONDS);
            mu0 mu0VarC = c(new a(timeUnit.toNanos(j) + jA, runnable, jA, v04Var2, nanos), j, timeUnit);
            if (mu0VarC == t21.INSTANCE) {
                return mu0VarC;
            }
            pu0.u(v04Var, mu0VarC);
            return v04Var2;
        }
    }

    public abstract c a();

    public mu0 b(Runnable runnable) {
        return c(runnable, 0L, TimeUnit.NANOSECONDS);
    }

    public mu0 c(Runnable runnable, long j, TimeUnit timeUnit) {
        c cVarA = a();
        Objects.requireNonNull(runnable, "run is null");
        a aVar = new a(runnable, cVarA);
        cVarA.c(aVar, j, timeUnit);
        return aVar;
    }

    public mu0 d(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        c cVarA = a();
        Objects.requireNonNull(runnable, "run is null");
        b bVar = new b(runnable, cVarA);
        mu0 mu0VarD = cVarA.d(bVar, j, j2, timeUnit);
        return mu0VarD == t21.INSTANCE ? mu0VarD : bVar;
    }
}
