package com.shabakaty.downloader;

import java.util.concurrent.Callable;

/* JADX INFO: compiled from: Schedulers.java */
/* JADX INFO: loaded from: classes2.dex */
public final class ay3 {
    public static final wx3 a = xv3.a(new h());
    public static final wx3 b = xv3.a(new b());
    public static final wx3 c = xv3.a(new c());

    /* JADX INFO: compiled from: Schedulers.java */
    public static final class a {
        public static final wx3 a = new k90();
    }

    /* JADX INFO: compiled from: Schedulers.java */
    public static final class b implements Callable<wx3> {
        @Override // java.util.concurrent.Callable
        public wx3 call() {
            return a.a;
        }
    }

    /* JADX INFO: compiled from: Schedulers.java */
    public static final class c implements Callable<wx3> {
        @Override // java.util.concurrent.Callable
        public wx3 call() {
            return d.a;
        }
    }

    /* JADX INFO: compiled from: Schedulers.java */
    public static final class d {
        public static final wx3 a = new z32();
    }

    /* JADX INFO: compiled from: Schedulers.java */
    public static final class e {
        public static final wx3 a = new gz2();
    }

    /* JADX INFO: compiled from: Schedulers.java */
    public static final class f implements Callable<wx3> {
        @Override // java.util.concurrent.Callable
        public wx3 call() {
            return e.a;
        }
    }

    /* JADX INFO: compiled from: Schedulers.java */
    public static final class g {
        public static final wx3 a = new g84();
    }

    /* JADX INFO: compiled from: Schedulers.java */
    public static final class h implements Callable<wx3> {
        @Override // java.util.concurrent.Callable
        public wx3 call() {
            return g.a;
        }
    }

    static {
        pp4 pp4Var = pp4.b;
        pp4 pp4Var2 = pp4.b;
        xv3.a(new f());
    }
}
