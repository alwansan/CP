package com.shabakaty.downloader;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class uh0 implements xc0 {
    public static final /* synthetic */ uh0 s = new uh0(0);
    public static final /* synthetic */ uh0 t = new uh0(1);
    public static final /* synthetic */ uh0 u = new uh0(2);
    public static final /* synthetic */ uh0 v = new uh0(3);
    public static final /* synthetic */ uh0 w = new uh0(4);
    public final /* synthetic */ int r;

    public /* synthetic */ uh0(int i) {
        this.r = i;
    }

    @Override // com.shabakaty.downloader.xc0
    public final void accept(Object obj) {
        switch (this.r) {
            case 0:
            case 1:
            case 3:
                wt2.k((Throwable) obj);
                break;
            case 2:
                break;
            default:
                break;
        }
    }
}
