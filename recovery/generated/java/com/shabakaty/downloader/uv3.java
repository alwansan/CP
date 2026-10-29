package com.shabakaty.downloader;

/* JADX INFO: compiled from: RxExtensions.kt */
/* JADX INFO: loaded from: classes.dex */
public final class uv3 {
    public static final <T> t43<T> a(t43<T> t43Var) {
        return t43Var.g(n7.a());
    }

    public static final <T> f74<T> b(f74<T> f74Var) {
        return f74Var.j(n7.a());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v1, types: [T, com.shabakaty.downloader.mu0, com.shabakaty.downloader.y74, com.shabakaty.downloader.zc0] */
    public static final <T> mu0 c(f74<T> f74Var, final tm1<? super T, qv4> tm1Var, final tm1<? super Throwable, qv4> tm1Var2) {
        j32.e(f74Var, "<this>");
        j32.e(tm1Var, "success");
        j32.e(tm1Var2, "error");
        final lo3 lo3Var = new lo3();
        final int i = 0;
        xc0 xc0Var = new xc0() { // from class: com.shabakaty.downloader.rv3
            @Override // com.shabakaty.downloader.xc0
            public final void accept(Object obj) {
                switch (i) {
                    case 0:
                        tm1 tm1Var3 = tm1Var;
                        lo3 lo3Var2 = lo3Var;
                        j32.e(tm1Var3, "$success");
                        j32.e(lo3Var2, "$disposable");
                        tm1Var3.invoke(obj);
                        mu0 mu0Var = (mu0) lo3Var2.r;
                        if (mu0Var != null) {
                            mu0Var.h();
                        }
                        lo3Var2.r = null;
                        break;
                    default:
                        tm1 tm1Var4 = tm1Var;
                        lo3 lo3Var3 = lo3Var;
                        Throwable th = (Throwable) obj;
                        j32.e(tm1Var4, "$error");
                        j32.e(lo3Var3, "$disposable");
                        j32.d(th, "it");
                        wt2.j(th);
                        tm1Var4.invoke(th);
                        mu0 mu0Var2 = (mu0) lo3Var3.r;
                        if (mu0Var2 != null) {
                            mu0Var2.h();
                        }
                        lo3Var3.r = null;
                        break;
                }
            }
        };
        final int i2 = 1;
        ?? r5 = (T) new zc0(xc0Var, new xc0() { // from class: com.shabakaty.downloader.rv3
            @Override // com.shabakaty.downloader.xc0
            public final void accept(Object obj) {
                switch (i2) {
                    case 0:
                        tm1 tm1Var3 = tm1Var2;
                        lo3 lo3Var2 = lo3Var;
                        j32.e(tm1Var3, "$success");
                        j32.e(lo3Var2, "$disposable");
                        tm1Var3.invoke(obj);
                        mu0 mu0Var = (mu0) lo3Var2.r;
                        if (mu0Var != null) {
                            mu0Var.h();
                        }
                        lo3Var2.r = null;
                        break;
                    default:
                        tm1 tm1Var4 = tm1Var2;
                        lo3 lo3Var3 = lo3Var;
                        Throwable th = (Throwable) obj;
                        j32.e(tm1Var4, "$error");
                        j32.e(lo3Var3, "$disposable");
                        j32.d(th, "it");
                        wt2.j(th);
                        tm1Var4.invoke(th);
                        mu0 mu0Var2 = (mu0) lo3Var3.r;
                        if (mu0Var2 != null) {
                            mu0Var2.h();
                        }
                        lo3Var3.r = null;
                        break;
                }
            }
        });
        f74Var.a(r5);
        lo3Var.r = r5;
        return r5;
    }

    public static final <T> f74<T> d(f74<T> f74Var) {
        j32.e(f74Var, "<this>");
        return f74Var.m(new g54(ay3.c));
    }

    public static final <T> qf1<tj<T>> e(qf1<T> qf1Var) {
        qf1<R> qf1VarE = qf1Var.e(new gu1(qf1Var));
        xc0<? super Throwable> xc0Var = nx4.v;
        xc0<Object> xc0Var2 = do1.d;
        j2 j2Var = do1.c;
        return qf1VarE.c(xc0Var2, xc0Var, j2Var, j2Var);
    }

    public static final <T> f74<tj<T>> f(f74<T> f74Var) {
        j32.e(f74Var, "<this>");
        return f74Var.i(new gu1(f74Var)).f(uh0.w);
    }
}
