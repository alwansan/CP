package com.shabakaty.downloader;

import java.util.Objects;

/* JADX INFO: compiled from: CinemanaVideoPlayerViewModel.kt */
/* JADX INFO: loaded from: classes.dex */
@pm0(c = "com.shabakaty.cinemana.player.CinemanaVideoPlayerViewModel$setShowSubtitles$1", f = "CinemanaVideoPlayerViewModel.kt", l = {317}, m = "invokeSuspend")
public final class v10 extends ui4 implements hn1<se0, ud0<? super qv4>, Object> {
    public int v;
    public final /* synthetic */ q10 w;
    public final /* synthetic */ boolean x;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v10(q10 q10Var, boolean z, ud0<? super v10> ud0Var) {
        super(2, ud0Var);
        this.w = q10Var;
        this.x = z;
    }

    @Override // com.shabakaty.downloader.hn1
    public Object o(se0 se0Var, ud0<? super qv4> ud0Var) {
        return new v10(this.w, this.x, ud0Var).t(qv4.a);
    }

    @Override // com.shabakaty.downloader.bj
    public final ud0<qv4> r(Object obj, ud0<?> ud0Var) {
        return new v10(this.w, this.x, ud0Var);
    }

    @Override // com.shabakaty.downloader.bj
    public final Object t(Object obj) {
        Object obj2 = te0.COROUTINE_SUSPENDED;
        int i = this.v;
        if (i == 0) {
            j96.i(obj);
            n24 n24Var = this.w.i;
            boolean z = this.x;
            this.v = 1;
            n34 n34Var = n24Var.a;
            String strH = n24Var.h();
            Objects.requireNonNull(n34Var);
            Object objG = j96.g(new w34(n34Var, z, strH, null), this);
            if (objG != obj2) {
                objG = qv4.a;
            }
            if (objG != obj2) {
                objG = qv4.a;
            }
            if (objG == obj2) {
                return obj2;
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
