package com.shabakaty.downloader;

import com.shabakaty.cinemana.CinemanaApplication;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class h00 implements xc0 {
    public static final /* synthetic */ h00 s = new h00(0);
    public static final /* synthetic */ h00 t = new h00(1);
    public static final /* synthetic */ h00 u = new h00(2);
    public final /* synthetic */ int r;

    public /* synthetic */ h00(int i) {
        this.r = i;
    }

    @Override // com.shabakaty.downloader.xc0
    public final void accept(Object obj) {
        switch (this.r) {
            case 0:
                Throwable th = (Throwable) obj;
                int i = CinemanaApplication.B;
                j32.d(th, "it");
                wt2.j(th);
                break;
            case 1:
                Throwable th2 = (Throwable) obj;
                j32.d(th2, "it");
                wt2.j(th2);
                break;
            default:
                wt2.k((Throwable) obj);
                break;
        }
    }
}
