package com.shabakaty.downloader;

import com.connectsdk.R;

/* JADX INFO: compiled from: Lifecycle.kt */
/* JADX INFO: loaded from: classes.dex */
@pm0(c = "androidx.lifecycle.LifecycleCoroutineScope$launchWhenStarted$1", f = "Lifecycle.kt", l = {R.styleable.AppCompatTheme_panelMenuListTheme}, m = "invokeSuspend")
public final class kh2 extends ui4 implements hn1<se0, ud0<? super qv4>, Object> {
    public int v;
    public final /* synthetic */ ih2 w;
    public final /* synthetic */ hn1 x;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public kh2(ih2 ih2Var, hn1 hn1Var, ud0 ud0Var) {
        super(2, ud0Var);
        this.w = ih2Var;
        this.x = hn1Var;
    }

    @Override // com.shabakaty.downloader.hn1
    public final Object o(se0 se0Var, ud0<? super qv4> ud0Var) {
        ud0<? super qv4> ud0Var2 = ud0Var;
        j32.e(ud0Var2, "completion");
        return new kh2(this.w, this.x, ud0Var2).t(qv4.a);
    }

    @Override // com.shabakaty.downloader.bj
    public final ud0<qv4> r(Object obj, ud0<?> ud0Var) {
        j32.e(ud0Var, "completion");
        return new kh2(this.w, this.x, ud0Var);
    }

    @Override // com.shabakaty.downloader.bj
    public final Object t(Object obj) {
        te0 te0Var = te0.COROUTINE_SUSPENDED;
        int i = this.v;
        if (i == 0) {
            j96.i(obj);
            androidx.lifecycle.e r = this.w.getR();
            hn1 hn1Var = this.x;
            this.v = 1;
            if (kb3.a(r, androidx.lifecycle.e.c.STARTED, hn1Var, this) == te0Var) {
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
