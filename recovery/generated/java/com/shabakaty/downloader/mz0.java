package com.shabakaty.downloader;

import com.shabakaty.cinemana.data.db.downloads.CombinedDownloadItem;
import com.shabakaty.cinemana.domain.models.local.Subtitle;
import com.shabakaty.cinemana.domain.models.local.VideoModel;

/* JADX INFO: compiled from: DownloadsDbActionsHandler.kt */
/* JADX INFO: loaded from: classes.dex */
public final class mz0 implements oz0 {
    public hn1<? super Integer, ? super String, qv4> a;
    public hn1<? super Integer, ? super ud0<? super gz0>, ? extends Object> b;
    public hn1<? super o84, ? super VideoModel, qv4> c;
    public hn1<? super VideoModel, ? super pw0, qv4> d;
    public hn1<? super VideoModel, ? super pw0, qv4> e;
    public hn1<? super String, ? super ud0<? super CombinedDownloadItem>, ? extends Object> f;
    public tm1<? super String, qv4> g;
    public jn1<? super Subtitle, ? super pw0, ? super VideoModel, qv4> h;

    @Override // com.shabakaty.downloader.oz0
    public void a(tm1<? super String, qv4> tm1Var) {
        this.g = tm1Var;
    }

    @Override // com.shabakaty.downloader.oz0
    public void b(hn1<? super o84, ? super VideoModel, qv4> hn1Var) {
        this.c = hn1Var;
    }

    @Override // com.shabakaty.downloader.oz0
    public void c(hn1<? super VideoModel, ? super pw0, qv4> hn1Var) {
        this.e = hn1Var;
    }

    @Override // com.shabakaty.downloader.oz0
    public void d(hn1<? super Integer, ? super String, qv4> hn1Var) {
        this.a = hn1Var;
    }

    @Override // com.shabakaty.downloader.oz0
    public void e(jn1<? super Subtitle, ? super pw0, ? super VideoModel, qv4> jn1Var) {
        this.h = jn1Var;
    }

    @Override // com.shabakaty.downloader.oz0
    public void f(hn1<? super VideoModel, ? super pw0, qv4> hn1Var) {
        this.d = hn1Var;
    }

    @Override // com.shabakaty.downloader.oz0
    public void g(hn1<? super String, ? super ud0<? super CombinedDownloadItem>, ? extends Object> hn1Var) {
        this.f = hn1Var;
    }

    @Override // com.shabakaty.downloader.oz0
    public void h(hn1<? super Integer, ? super ud0<? super gz0>, ? extends Object> hn1Var) {
        this.b = hn1Var;
    }

    public final void i(String str) {
        j32.e(str, "nb");
        tm1<? super String, qv4> tm1Var = this.g;
        if (tm1Var == null) {
            return;
        }
        tm1Var.invoke(str);
    }
}
