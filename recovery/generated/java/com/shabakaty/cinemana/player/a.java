package com.shabakaty.cinemana.player;

import com.shabakaty.downloader.hn1;
import com.shabakaty.downloader.j96;
import com.shabakaty.downloader.pm0;
import com.shabakaty.downloader.qv4;
import com.shabakaty.downloader.se0;
import com.shabakaty.downloader.ud0;
import com.shabakaty.downloader.ui4;

/* JADX INFO: compiled from: CinemanaPlayerControllerView.kt */
/* JADX INFO: loaded from: classes.dex */
@pm0(c = "com.shabakaty.cinemana.player.CinemanaPlayerControllerView$onQualitySelected$1$1", f = "CinemanaPlayerControllerView.kt", l = {}, m = "invokeSuspend")
public final class a extends ui4 implements hn1<se0, ud0<? super qv4>, Object> {
    public final /* synthetic */ CinemanaPlayerControllerView v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(CinemanaPlayerControllerView cinemanaPlayerControllerView, ud0<? super a> ud0Var) {
        super(2, ud0Var);
        this.v = cinemanaPlayerControllerView;
    }

    @Override // com.shabakaty.downloader.hn1
    public Object o(se0 se0Var, ud0<? super qv4> ud0Var) {
        CinemanaPlayerControllerView cinemanaPlayerControllerView = this.v;
        new a(cinemanaPlayerControllerView, ud0Var);
        qv4 qv4Var = qv4.a;
        j96.i(qv4Var);
        cinemanaPlayerControllerView.getCinemanaPlayerView().y();
        return qv4Var;
    }

    @Override // com.shabakaty.downloader.bj
    public final ud0<qv4> r(Object obj, ud0<?> ud0Var) {
        return new a(this.v, ud0Var);
    }

    @Override // com.shabakaty.downloader.bj
    public final Object t(Object obj) {
        j96.i(obj);
        this.v.getCinemanaPlayerView().y();
        return qv4.a;
    }
}
