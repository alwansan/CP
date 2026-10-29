package com.shabakaty.downloader;

import com.liulishuo.filedownloader.BuildConfig;
import java.io.IOException;

/* JADX INFO: compiled from: NetworkInformation.kt */
/* JADX INFO: loaded from: classes.dex */
public final class iy2 implements wq {
    public final /* synthetic */ gy2 a;

    public iy2(gy2 gy2Var) {
        this.a = gy2Var;
    }

    @Override // com.shabakaty.downloader.wq
    public void onFailure(mq mqVar, IOException iOException) {
        j32.e(mqVar, "call");
        j32.e(iOException, "e");
        gy2 gy2Var = this.a;
        gy2Var.c = BuildConfig.FLAVOR;
        gy2.a(gy2Var);
    }

    @Override // com.shabakaty.downloader.wq
    public void onResponse(mq mqVar, ws3 ws3Var) {
        j32.e(mqVar, "call");
        j32.e(ws3Var, "response");
        gy2 gy2Var = this.a;
        ys3 ys3Var = ws3Var.y;
        j32.c(ys3Var);
        gy2Var.c = ys3Var.g();
        gy2.a(this.a);
    }
}
