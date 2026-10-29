package com.shabakaty.downloader;

/* JADX INFO: compiled from: ObservableDelaySubscriptionOther.java */
/* JADX INFO: loaded from: classes.dex */
public final class w43<T, U> extends t43<T> {
    public final l53<? extends T> r;
    public final l53<U> s;

    /* JADX INFO: compiled from: ObservableDelaySubscriptionOther.java */
    public final class a implements q53<U> {
        public final v04 r;
        public final q53<? super T> s;
        public boolean t;

        /* JADX INFO: renamed from: com.shabakaty.downloader.w43$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: ObservableDelaySubscriptionOther.java */
        public final class C0206a implements q53<T> {
            public C0206a() {
            }

            @Override // com.shabakaty.downloader.q53
            public void a() {
                a.this.s.a();
            }

            @Override // com.shabakaty.downloader.q53
            public void b(Throwable th) {
                a.this.s.b(th);
            }

            @Override // com.shabakaty.downloader.q53
            public void c(mu0 mu0Var) {
                pu0.D(a.this.r, mu0Var);
            }

            @Override // com.shabakaty.downloader.q53
            public void e(T t) {
                a.this.s.e(t);
            }
        }

        public a(v04 v04Var, q53<? super T> q53Var) {
            this.r = v04Var;
            this.s = q53Var;
        }

        @Override // com.shabakaty.downloader.q53
        public void a() {
            if (this.t) {
                return;
            }
            this.t = true;
            ((t43) w43.this.r).i(new C0206a());
        }

        @Override // com.shabakaty.downloader.q53
        public void b(Throwable th) {
            if (this.t) {
                xv3.b(th);
            } else {
                this.t = true;
                this.s.b(th);
            }
        }

        @Override // com.shabakaty.downloader.q53
        public void c(mu0 mu0Var) {
            pu0.D(this.r, mu0Var);
        }

        @Override // com.shabakaty.downloader.q53
        public void e(U u) {
            a();
        }
    }

    public w43(l53<? extends T> l53Var, l53<U> l53Var2) {
        this.r = l53Var;
        this.s = l53Var2;
    }

    @Override // com.shabakaty.downloader.t43
    public void j(q53<? super T> q53Var) {
        v04 v04Var = new v04();
        q53Var.c(v04Var);
        ((t43) this.s).i(new a(v04Var, q53Var));
    }
}
