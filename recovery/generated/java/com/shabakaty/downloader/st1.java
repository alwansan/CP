package com.shabakaty.downloader;

import androidx.fragment.app.Fragment;
import androidx.navigation.fragment.NavHostFragment;

/* JADX INFO: compiled from: NavigationActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class st1 implements ak1 {
    public final /* synthetic */ lo3 r;
    public final /* synthetic */ lo3 s;
    public final /* synthetic */ String t;

    /* JADX INFO: compiled from: NavigationActivity.kt */
    public static final class a implements ak1 {
        public final /* synthetic */ lo3 r;
        public final /* synthetic */ lo3 s;
        public final /* synthetic */ String t;

        public a(lo3 lo3Var, lo3 lo3Var2, String str) {
            this.r = lo3Var;
            this.s = lo3Var2;
            this.t = str;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.shabakaty.downloader.ak1
        public final void a(androidx.fragment.app.q qVar, Fragment fragment) {
            j32.e(qVar, "$noName_0");
            j32.e(fragment, "fragment");
            if (fragment instanceof yy3) {
                String str = this.t;
                T t = ((yy3) fragment).t;
                j32.c(t);
                ((fk1) t).Q.setQuery(str, true);
                lo3 lo3Var = this.r;
                ak1 ak1Var = (ak1) lo3Var.r;
                if (ak1Var == null) {
                    return;
                }
                lo3 lo3Var2 = this.s;
                androidx.fragment.app.q qVar2 = (androidx.fragment.app.q) lo3Var2.r;
                if (qVar2 != null) {
                    qVar2.p.remove(ak1Var);
                }
                lo3Var2.r = null;
                lo3Var.r = null;
            }
        }
    }

    public st1(lo3 lo3Var, lo3 lo3Var2, String str) {
        this.r = lo3Var;
        this.s = lo3Var2;
        this.t = str;
    }

    @Override // com.shabakaty.downloader.ak1
    public final void a(androidx.fragment.app.q qVar, Fragment fragment) {
        j32.e(qVar, "$noName_0");
        j32.e(fragment, "navHost");
        androidx.fragment.app.q childFragmentManager = ((NavHostFragment) fragment).getChildFragmentManager();
        childFragmentManager.p.add(new a(this.r, this.s, this.t));
    }
}
