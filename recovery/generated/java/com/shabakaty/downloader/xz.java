package com.shabakaty.downloader;

import android.util.Log;
import com.cinemana.pro.R;
import com.google.android.material.floatingactionbutton.FloatingActionButton;

/* JADX INFO: compiled from: ChromeCastController.kt */
/* JADX INFO: loaded from: classes.dex */
public final class xz implements z14<xw> {
    public final /* synthetic */ yz a;

    public xz(yz yzVar) {
        this.a = yzVar;
    }

    @Override // com.shabakaty.downloader.z14
    public void a(s14 s14Var, int i) {
        f();
        Log.i("chromeCasteSession", j32.j("onSessionStartFailed : ", Integer.valueOf(i)));
    }

    public final void b(xw xwVar) {
        d15.A = true;
        yz yzVar = this.a;
        yzVar.c = xwVar;
        FloatingActionButton floatingActionButton = yzVar.b;
        if (floatingActionButton != null) {
            floatingActionButton.setImageResource(R.drawable.mr_button_connected_dark);
        } else {
            j32.l("castButton");
            throw null;
        }
    }

    @Override // com.shabakaty.downloader.z14
    public void c(s14 s14Var) {
        Log.i("session", "onSessionEnding : ");
    }

    @Override // com.shabakaty.downloader.z14
    public void d(s14 s14Var) {
        Log.i("chromeCasteSession", "onSessionStarting : ");
    }

    @Override // com.shabakaty.downloader.z14
    public void e(s14 s14Var, String str) {
        j32.e(str, "sessionId");
        b((xw) s14Var);
        Log.i("chromeCasteSession", j32.j("onSessionStarted : ", str));
    }

    public final void f() {
        d15.A = false;
        FloatingActionButton floatingActionButton = this.a.b;
        if (floatingActionButton != null) {
            floatingActionButton.setImageResource(R.drawable.ic_mr_button_disconnected_dark);
        } else {
            j32.l("castButton");
            throw null;
        }
    }

    @Override // com.shabakaty.downloader.z14
    public void g(s14 s14Var, int i) {
        Log.i("chromeCasteSession", j32.j("onSessionSuspended : ", Integer.valueOf(i)));
    }

    @Override // com.shabakaty.downloader.z14
    public void h(s14 s14Var, String str) {
        j32.e(str, "sessionId");
        Log.i("chromeCasteSession", "onSessionResuming : ");
    }

    @Override // com.shabakaty.downloader.z14
    public void i(s14 s14Var, int i) {
        f();
        Log.i("chromeCasteSession", j32.j("onSessionResumeFailed : ", Integer.valueOf(i)));
    }

    @Override // com.shabakaty.downloader.z14
    public void j(s14 s14Var, int i) {
        f();
        Log.i("chromeCasteSession", j32.j("onSessionEnded : ", Integer.valueOf(i)));
    }

    @Override // com.shabakaty.downloader.z14
    public void k(s14 s14Var, boolean z) {
        b((xw) s14Var);
        Log.i("chromeCasteSession", j32.j("onSessionResumed : ", Boolean.valueOf(z)));
    }
}
