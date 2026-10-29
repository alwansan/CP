package com.shabakaty.downloader;

import com.shabakaty.cinemana.helpers.casting.DLNAControlsActivity;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class o5 implements xc0 {
    public static final /* synthetic */ o5 s = new o5(0);
    public static final /* synthetic */ o5 t = new o5(1);
    public static final /* synthetic */ o5 u = new o5(2);
    public static final /* synthetic */ o5 v = new o5(3);
    public final /* synthetic */ int r;

    public /* synthetic */ o5(int i) {
        this.r = i;
    }

    @Override // com.shabakaty.downloader.xc0
    public final void accept(Object obj) {
        switch (this.r) {
            case 0:
                xs3 xs3Var = (xs3) obj;
                a63 a63Var = p5.f;
                j32.e(xs3Var, "result");
                if (xs3Var.a.v == 200) {
                    p5.h.clear();
                }
                break;
            case 1:
                int i = DLNAControlsActivity.E;
                break;
            case 2:
                wt2.k((Throwable) obj);
                break;
            default:
                Throwable th = (Throwable) obj;
                j32.d(th, "it");
                wt2.j(th);
                break;
        }
    }
}
