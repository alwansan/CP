package com.shabakaty.downloader;

/* JADX INFO: compiled from: CinemanaVideoPlayerViewModel.kt */
/* JADX INFO: loaded from: classes.dex */
@pm0(c = "com.shabakaty.cinemana.player.CinemanaVideoPlayerViewModel$setSubtitleFontScale$1", f = "CinemanaVideoPlayerViewModel.kt", l = {321}, m = "invokeSuspend")
public final class x10 extends ui4 implements hn1<se0, ud0<? super qv4>, Object> {
    public int v;
    public final /* synthetic */ q10 w;
    public final /* synthetic */ hg4 x;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x10(q10 q10Var, hg4 hg4Var, ud0<? super x10> ud0Var) {
        super(2, ud0Var);
        this.w = q10Var;
        this.x = hg4Var;
    }

    @Override // com.shabakaty.downloader.hn1
    public Object o(se0 se0Var, ud0<? super qv4> ud0Var) {
        return new x10(this.w, this.x, ud0Var).t(qv4.a);
    }

    @Override // com.shabakaty.downloader.bj
    public final ud0<qv4> r(Object obj, ud0<?> ud0Var) {
        return new x10(this.w, this.x, ud0Var);
    }

    @Override // com.shabakaty.downloader.bj
    public final Object t(Object obj) {
        te0 te0Var = te0.COROUTINE_SUSPENDED;
        int i = this.v;
        if (i == 0) {
            j96.i(obj);
            n24 n24Var = this.w.i;
            hg4 hg4Var = this.x;
            this.v = 1;
            if (n24Var.o(hg4Var, this) == te0Var) {
                return te0Var;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            j96.i(obj);
        }
        return qv4.a;
    }
}
