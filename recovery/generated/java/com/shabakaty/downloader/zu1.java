package com.shabakaty.downloader;

import android.content.Context;
import com.connectsdk.R;
import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.usermanagement.UserManagement;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: HomeViewModel.kt */
/* JADX INFO: loaded from: classes.dex */
public final class zu1 extends yx2<eu1> {
    public final vu1 i;
    public final UserManagement j;
    public final ff3 k;
    public final sx4 l;
    public final WeakReference<Context> m;
    public final n24 n;

    /* JADX INFO: compiled from: HomeViewModel.kt */
    @pm0(c = "com.shabakaty.cinemana.ui.home_activity.HomeViewModel$1", f = "HomeViewModel.kt", l = {R.styleable.AppCompatTheme_colorAccent}, m = "invokeSuspend")
    public static final class a extends ui4 implements hn1<se0, ud0<? super qv4>, Object> {
        public int v;

        /* JADX INFO: renamed from: com.shabakaty.downloader.zu1$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: HomeViewModel.kt */
        @pm0(c = "com.shabakaty.cinemana.ui.home_activity.HomeViewModel$1$1", f = "HomeViewModel.kt", l = {51}, m = "invokeSuspend")
        public static final class C0229a extends ui4 implements hn1<tx4, ud0<? super qv4>, Object> {
            public int v;
            public /* synthetic */ Object w;
            public final /* synthetic */ zu1 x;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0229a(zu1 zu1Var, ud0<? super C0229a> ud0Var) {
                super(2, ud0Var);
                this.x = zu1Var;
            }

            @Override // com.shabakaty.downloader.hn1
            public Object o(tx4 tx4Var, ud0<? super qv4> ud0Var) {
                C0229a c0229a = new C0229a(this.x, ud0Var);
                c0229a.w = tx4Var;
                return c0229a.t(qv4.a);
            }

            @Override // com.shabakaty.downloader.bj
            public final ud0<qv4> r(Object obj, ud0<?> ud0Var) {
                C0229a c0229a = new C0229a(this.x, ud0Var);
                c0229a.w = obj;
                return c0229a;
            }

            @Override // com.shabakaty.downloader.bj
            public final Object t(Object obj) {
                tx4 tx4Var;
                te0 te0Var = te0.COROUTINE_SUSPENDED;
                int i = this.v;
                if (i == 0) {
                    j96.i(obj);
                    tx4 tx4Var2 = (tx4) this.w;
                    this.w = tx4Var2;
                    this.v = 1;
                    if (rm3.f(1000L, this) == te0Var) {
                        return te0Var;
                    }
                    tx4Var = tx4Var2;
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    tx4Var = (tx4) this.w;
                    j96.i(obj);
                }
                if (!j32.a(tx4Var.a, ((eu1) this.x.f()).c())) {
                    ((eu1) this.x.f()).z();
                }
                return qv4.a;
            }
        }

        public a(ud0<? super a> ud0Var) {
            super(2, ud0Var);
        }

        @Override // com.shabakaty.downloader.hn1
        public Object o(se0 se0Var, ud0<? super qv4> ud0Var) {
            return zu1.this.new a(ud0Var).t(qv4.a);
        }

        @Override // com.shabakaty.downloader.bj
        public final ud0<qv4> r(Object obj, ud0<?> ud0Var) {
            return zu1.this.new a(ud0Var);
        }

        @Override // com.shabakaty.downloader.bj
        public final Object t(Object obj) {
            te0 te0Var = te0.COROUTINE_SUSPENDED;
            int i = this.v;
            if (i == 0) {
                j96.i(obj);
                zu1 zu1Var = zu1.this;
                te1<tx4> te1Var = zu1Var.n.i;
                C0229a c0229a = new C0229a(zu1Var, null);
                this.v = 1;
                if (zy.e(te1Var, c0229a, this) == te0Var) {
                    return te0Var;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                j96.i(obj);
            }
            return qv4.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zu1(vu1 vu1Var, UserManagement userManagement, ff3 ff3Var, sx4 sx4Var, WeakReference<Context> weakReference, n24 n24Var, al2 al2Var) {
        super(al2Var);
        j32.e(vu1Var, "homeRepository");
        j32.e(userManagement, "userManagement");
        j32.e(ff3Var, "prefsManager");
        j32.e(sx4Var, "userInfoUseCases");
        j32.e(weakReference, "weakContext");
        j32.e(n24Var, "settings");
        j32.e(al2Var, "loginStateObserver");
        this.i = vu1Var;
        this.j = userManagement;
        this.k = ff3Var;
        this.l = sx4Var;
        this.m = weakReference;
        this.n = n24Var;
        nh3.y(hl3.e(this), null, 0, new av1(this, null), 3, null);
        nh3.y(hl3.e(this), null, 0, new a(null), 3, null);
    }

    @Override // com.shabakaty.downloader.cl2
    public void l() {
        nh3.y(hl3.e(this), null, 0, new av1(this, null), 3, null);
    }

    @Override // com.shabakaty.downloader.cl2
    public void m() {
        ((eu1) f()).H0(BuildConfig.FLAVOR);
    }

    @Override // com.shabakaty.downloader.cl2
    public void o(Throwable th) {
        ((eu1) f()).H0(BuildConfig.FLAVOR);
    }

    @Override // com.shabakaty.downloader.xk, com.shabakaty.downloader.o35
    public void onCleared() {
        this.m.clear();
        super.onCleared();
    }
}
