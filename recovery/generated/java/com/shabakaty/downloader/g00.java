package com.shabakaty.downloader;

import com.shabakaty.cinemana.CinemanaApplication;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class g00 implements xc0 {
    public static final /* synthetic */ g00 s = new g00(0);
    public static final /* synthetic */ g00 t = new g00(1);
    public static final /* synthetic */ g00 u = new g00(2);
    public static final /* synthetic */ g00 v = new g00(3);
    public final /* synthetic */ int r;

    public /* synthetic */ g00(int i) {
        this.r = i;
    }

    @Override // com.shabakaty.downloader.xc0
    public final void accept(Object obj) {
        switch (this.r) {
            case 0:
                Throwable th = (Throwable) obj;
                int i = CinemanaApplication.B;
                if ((th instanceof kv4) || (th instanceof o63)) {
                    th.printStackTrace();
                }
                break;
            case 1:
                Throwable th2 = (Throwable) obj;
                j32.d(th2, "it");
                wt2.j(th2);
                break;
            case 2:
                wt2.k((Throwable) obj);
                break;
            default:
                break;
        }
    }
}
