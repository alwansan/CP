package com.shabakaty.downloader;

import com.shabakaty.downloader.vj;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: BaseViewModel.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class xk<N extends vj> extends o35 {
    public WeakReference<N> c;
    public final u43 a = new u43(false);
    public c90 b = new c90();
    public final xv2<tj.a> d = new xv2<>(tj.a.LOADING);
    public final List<Integer> e = new ArrayList();

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: BaseViewModel.kt */
    public static final class a<T> extends af2 implements tm1<T, qv4> {
        public static final a r = new a();

        public a() {
            super(1);
        }

        @Override // com.shabakaty.downloader.tm1
        public /* bridge */ /* synthetic */ qv4 invoke(Object obj) {
            return qv4.a;
        }
    }

    /* JADX INFO: compiled from: BaseViewModel.kt */
    public static final class b extends af2 implements tm1<Throwable, qv4> {
        public static final b r = new b();

        public b() {
            super(1);
        }

        @Override // com.shabakaty.downloader.tm1
        public qv4 invoke(Throwable th) {
            j32.e(th, "it");
            return qv4.a;
        }
    }

    public static /* synthetic */ mu0 d(xk xkVar, f74 f74Var, tm1 tm1Var, tm1 tm1Var2, int i, Object obj) {
        if ((i & 1) != 0) {
            tm1Var = a.r;
        }
        return xkVar.b(f74Var, tm1Var, (i & 2) != 0 ? b.r : null);
    }

    public final <T> mu0 a(f74<tj<T>> f74Var, tm1<? super T, qv4> tm1Var, tm1<? super Throwable, qv4> tm1Var2) {
        this.e.add(Integer.valueOf(f74Var.hashCode()));
        zi2.i(this.d);
        this.a.g(true);
        bo2 bo2Var = new bo2(f74Var, new rv(this, f74Var));
        f00 f00Var = new f00(tm1Var);
        xc0<Object> xc0Var = do1.d;
        j2 j2Var = do1.c;
        eo2 eo2Var = new eo2(new eo2(bo2Var, xc0Var, f00Var, xc0Var, j2Var, j2Var, j2Var), xc0Var, xc0Var, new sk(tm1Var2, this, f74Var), j2Var, j2Var, j2Var);
        ao2 ao2Var = new ao2(uh0.u, nx4.u, j2Var);
        eo2Var.a(ao2Var);
        return ao2Var;
    }

    public final <T> mu0 b(f74<tj<T>> f74Var, tm1<? super T, qv4> tm1Var, tm1<? super Throwable, qv4> tm1Var2) {
        j32.e(f74Var, "<this>");
        j32.e(tm1Var, "onSuccess");
        j32.e(tm1Var2, "onError");
        mu0 mu0VarA = a(k(f74Var), tm1Var, tm1Var2);
        tp6.a(mu0VarA, this.b);
        return mu0VarA;
    }

    public final <T> mu0 c(f74<tj<T>> f74Var, xv2<tj<T>> xv2Var) {
        j32.e(xv2Var, "consumerObject");
        f74<tj<T>> f74VarK = k(f74Var);
        this.e.add(Integer.valueOf(f74VarK.hashCode()));
        n74 n74Var = new n74(new p74(new o74(f74VarK, new o15(xv2Var, this)), new sk(xv2Var, this, f74VarK, 0)), new sk(xv2Var, this, f74VarK, 1));
        zc0 zc0Var = new zc0(g00.v, h00.u);
        n74Var.a(zc0Var);
        tp6.a(zc0Var, this.b);
        return zc0Var;
    }

    public final se0 e() {
        se0 se0VarE = hl3.e(this);
        return new rd0(se0VarE.getS().plus(hu0.b));
    }

    public final N f() {
        WeakReference<N> weakReference = this.c;
        N n = weakReference == null ? null : weakReference.get();
        j32.c(n);
        return n;
    }

    public final <T> void g(f74<tj<T>> f74Var, rm1<qv4> rm1Var) {
        this.e.remove(Integer.valueOf(f74Var.hashCode()));
        if (this.e.isEmpty()) {
            rm1Var.invoke();
            this.a.g(false);
        }
    }

    public final e92 h(hn1<? super se0, ? super ud0<? super qv4>, ? extends Object> hn1Var) {
        return nh3.y(hl3.e(this), null, 0, hn1Var, 3, null);
    }

    public final e92 i(hn1<? super se0, ? super ud0<? super qv4>, ? extends Object> hn1Var) {
        return nh3.y(hl3.e(this), hu0.b, 0, hn1Var, 2, null);
    }

    public final void j(N n) {
        j32.e(n, "navigator");
        this.c = new WeakReference<>(n);
    }

    public final <T> f74<tj<T>> k(f74<tj<T>> f74Var) {
        return uv3.b(uv3.d(f74Var));
    }

    @Override // com.shabakaty.downloader.o35
    public void onCleared() {
        c90 c90Var = this.b;
        if (c90Var != null && !c90Var.s) {
            synchronized (c90Var) {
                if (!c90Var.s) {
                    v73<mu0> v73Var = c90Var.r;
                    c90Var.r = null;
                    c90Var.d(v73Var);
                }
            }
        }
        this.b = null;
        WeakReference<N> weakReference = this.c;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.c = null;
        vd5.u(j32.j(getClass().getSimpleName(), " is cleared"), "ViewModel");
        super.onCleared();
    }
}
