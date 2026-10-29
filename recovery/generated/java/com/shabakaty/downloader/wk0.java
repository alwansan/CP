package com.shabakaty.downloader;

import android.app.NotificationManager;
import android.content.Context;
import com.liulishuo.filedownloader.FileDownloader;
import com.liulishuo.filedownloader.services.ForegroundServiceConfig;
import com.shabakaty.downloader.data.db.DownloadsDatabase;

/* JADX INFO: compiled from: DaggerDownloaderComponent.java */
/* JADX INFO: loaded from: classes.dex */
public final class wk0 implements uy0 {
    public oj3<Context> a;
    public oj3<ForegroundServiceConfig> b;
    public oj3<FileDownloader> c;
    public oj3<DownloadsDatabase> d;
    public oj3<kz0> e;
    public oj3<uz0> f;
    public oj3<qd4> g;
    public oj3<NotificationManager> h;
    public oj3<i13> i;
    public oj3<mc4> j;
    public oj3<ey0> k;
    public oj3<i44> l;
    public oj3<az0> m;

    public wk0(ow4 ow4Var, cp6 cp6Var, zl2 zl2Var, xl2 xl2Var, Context context, a aVar) {
        this.a = new x12(context);
        oj3<ForegroundServiceConfig> s30Var = new s30(xl2Var);
        Object obj = zu0.c;
        s30Var = s30Var instanceof zu0 ? s30Var : new zu0(s30Var);
        this.b = s30Var;
        oj3<FileDownloader> c81Var = new c81(xl2Var, this.a, s30Var);
        this.c = c81Var instanceof zu0 ? c81Var : new zu0(c81Var);
        oj3<DownloadsDatabase> kh0Var = new kh0(zl2Var, this.a, 1);
        kh0Var = kh0Var instanceof zu0 ? kh0Var : new zu0(kh0Var);
        this.d = kh0Var;
        oj3<kz0> kh0Var2 = new kh0(zl2Var, kh0Var, 0);
        kh0Var2 = kh0Var2 instanceof zu0 ? kh0Var2 : new zu0(kh0Var2);
        this.e = kh0Var2;
        oj3<uz0> q35Var = new q35(kh0Var2, 18);
        q35Var = q35Var instanceof zu0 ? q35Var : new zu0(q35Var);
        this.f = q35Var;
        oj3<qd4> n13Var = new n13(q35Var, this.a, 7);
        this.g = n13Var instanceof zu0 ? n13Var : new zu0(n13Var);
        oj3<NotificationManager> qd0Var = new qd0(cp6Var, this.a);
        qd0Var = qd0Var instanceof zu0 ? qd0Var : new zu0(qd0Var);
        this.h = qd0Var;
        oj3<i13> r5Var = new r5(this.f, this.a, qd0Var, 9);
        r5Var = r5Var instanceof zu0 ? r5Var : new zu0(r5Var);
        this.i = r5Var;
        r5 r5Var2 = new r5(this.g, r5Var, this.a, 8);
        oj3<mc4> zu0Var = r5Var2 instanceof zu0 ? r5Var2 : new zu0(r5Var2);
        this.j = zu0Var;
        oj3<ey0> px4Var = new px4(this.a, this.c, this.f, zu0Var, this.g, 2);
        px4Var = px4Var instanceof zu0 ? px4Var : new zu0(px4Var);
        this.k = px4Var;
        oj3<i44> wy0Var = new wy0(ow4Var, px4Var, 0);
        this.l = wy0Var instanceof zu0 ? wy0Var : new zu0(wy0Var);
        oj3<az0> wy0Var2 = new wy0(ow4Var, this.k, 1);
        this.m = wy0Var2 instanceof zu0 ? wy0Var2 : new zu0(wy0Var2);
    }
}
