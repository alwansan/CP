package com.shabakaty.downloader;

/* JADX INFO: compiled from: SingleDoAfterSuccess.java */
/* JADX INFO: loaded from: classes2.dex */
public final class m74<T> extends f74<T> {
    public final h84<T> a;
    public final xc0<? super T> b;

    /* JADX INFO: compiled from: SingleDoAfterSuccess.java */
    public static final class a<T> implements y74<T>, mu0 {
        public final y74<? super T> r;
        public final xc0<? super T> s;
        public mu0 t;

        public a(y74<? super T> y74Var, xc0<? super T> xc0Var) {
            this.r = y74Var;
            this.s = xc0Var;
        }

        @Override // com.shabakaty.downloader.y74
        public void b(Throwable th) {
            this.r.b(th);
        }

        @Override // com.shabakaty.downloader.y74
        public void c(mu0 mu0Var) {
            if (pu0.G(this.t, mu0Var)) {
                this.t = mu0Var;
                this.r.c(this);
            }
        }

        @Override // com.shabakaty.downloader.mu0
        public void h() {
            this.t.h();
        }

        @Override // com.shabakaty.downloader.mu0
        public boolean n() {
            return this.t.n();
        }

        @Override // com.shabakaty.downloader.y74
        public void onSuccess(T t) {
            this.r.onSuccess(t);
            try {
                this.s.accept(t);
            } catch (Throwable th) {
                kf5.m(th);
                xv3.b(th);
            }
        }
    }

    public m74(h84<T> h84Var, xc0<? super T> xc0Var) {
        this.a = h84Var;
        this.b = xc0Var;
    }

    @Override // com.shabakaty.downloader.f74
    public void l(y74<? super T> y74Var) {
        this.a.a(new a(y74Var, this.b));
    }
}
