package com.shabakaty.downloader;

import androidx.fragment.app.Fragment;

/* JADX INFO: compiled from: NavigationActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class tt1 implements ak1 {
    public final /* synthetic */ lo3 r;
    public final /* synthetic */ lo3 s;
    public final /* synthetic */ lo3 t;
    public final /* synthetic */ hx2 u;

    public tt1(lo3 lo3Var, lo3 lo3Var2, lo3 lo3Var3, hx2 hx2Var) {
        this.r = lo3Var;
        this.s = lo3Var2;
        this.t = lo3Var3;
        this.u = hx2Var;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [T, androidx.fragment.app.q] */
    @Override // com.shabakaty.downloader.ak1
    public final void a(androidx.fragment.app.q qVar, Fragment fragment) {
        j32.e(qVar, "$noName_0");
        j32.e(fragment, "root");
        if (fragment instanceof du3) {
            ek ekVar = (ek) fragment;
            this.r.r = ekVar.getChildFragmentManager();
            androidx.fragment.app.q childFragmentManager = ekVar.getChildFragmentManager();
            T t = this.s.r;
            j32.c(t);
            childFragmentManager.p.add((ak1) t);
            lo3 lo3Var = this.t;
            ak1 ak1Var = (ak1) lo3Var.r;
            if (ak1Var == null) {
                return;
            }
            this.u.getSupportFragmentManager().p.remove(ak1Var);
            lo3Var.r = null;
        }
    }
}
