package com.shabakaty.downloader;

import com.shabakaty.cinemana.CinemanaApplication;

/* JADX INFO: compiled from: ApplicationDownloadActionsHandler.kt */
/* JADX INFO: loaded from: classes.dex */
public final class lc extends af2 implements tm1<oz0, qv4> {
    public final /* synthetic */ CinemanaApplication r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public lc(CinemanaApplication cinemanaApplication) {
        super(1);
        this.r = cinemanaApplication;
    }

    @Override // com.shabakaty.downloader.tm1
    public qv4 invoke(oz0 oz0Var) {
        oz0 oz0Var2 = oz0Var;
        j32.e(oz0Var2, "$this$null");
        oz0Var2.d(new yb(this.r));
        oz0Var2.h(new zb(this.r, null));
        oz0Var2.b(new bc(this.r));
        oz0Var2.f(new dc(this.r));
        oz0Var2.c(new fc(this.r));
        oz0Var2.g(new gc(this.r, null));
        oz0Var2.a(new ic(this.r));
        oz0Var2.e(new kc(this.r));
        return qv4.a;
    }
}
