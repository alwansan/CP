package com.shabakaty.downloader;

import com.shabakaty.cinemana.player.CinemanaPlayerView;

/* JADX INFO: compiled from: CinemanaPlayerView.kt */
/* JADX INFO: loaded from: classes.dex */
@pm0(c = "com.shabakaty.cinemana.player.CinemanaPlayerView$startDoubleTapSeeking$1", f = "CinemanaPlayerView.kt", l = {598}, m = "invokeSuspend")
public final class l10 extends ui4 implements hn1<se0, ud0<? super qv4>, Object> {
    public int v;
    public final /* synthetic */ CinemanaPlayerView w;
    public final /* synthetic */ float x;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l10(CinemanaPlayerView cinemanaPlayerView, float f, ud0<? super l10> ud0Var) {
        super(2, ud0Var);
        this.w = cinemanaPlayerView;
        this.x = f;
    }

    @Override // com.shabakaty.downloader.hn1
    public Object o(se0 se0Var, ud0<? super qv4> ud0Var) {
        return new l10(this.w, this.x, ud0Var).t(qv4.a);
    }

    @Override // com.shabakaty.downloader.bj
    public final ud0<qv4> r(Object obj, ud0<?> ud0Var) {
        return new l10(this.w, this.x, ud0Var);
    }

    @Override // com.shabakaty.downloader.bj
    public final Object t(Object obj) {
        te0 te0Var = te0.COROUTINE_SUSPENDED;
        int i = this.v;
        if (i == 0) {
            j96.i(obj);
            this.v = 1;
            if (rm3.f(100L, this) == te0Var) {
                return te0Var;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            j96.i(obj);
        }
        if (CinemanaPlayerView.r(this.w)) {
            this.w.w(this.x);
        }
        return qv4.a;
    }
}
