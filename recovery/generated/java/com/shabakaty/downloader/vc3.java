package com.shabakaty.downloader;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class vc3 implements xc0 {
    public final /* synthetic */ int r;
    public final /* synthetic */ wc3 s;

    public /* synthetic */ vc3(wc3 wc3Var, int i) {
        this.r = i;
        this.s = wc3Var;
    }

    @Override // com.shabakaty.downloader.xc0
    public final void accept(Object obj) {
        switch (this.r) {
            case 0:
                wc3 wc3Var = this.s;
                Long l = (Long) obj;
                j32.e(wc3Var, "this$0");
                j32.d(l, "progressMilliseconds");
                wc3Var.j(l.longValue());
                wc3Var.b();
                break;
            default:
                wc3.h(this.s, (Long) obj);
                break;
        }
    }
}
