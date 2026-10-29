package com.shabakaty.downloader;

import com.connectsdk.R;

/* JADX INFO: compiled from: Lifecycle.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class ih2 implements se0 {

    /* JADX INFO: compiled from: Lifecycle.kt */
    @pm0(c = "androidx.lifecycle.LifecycleCoroutineScope$launchWhenCreated$1", f = "Lifecycle.kt", l = {R.styleable.AppCompatTheme_listChoiceIndicatorMultipleAnimated}, m = "invokeSuspend")
    public static final class a extends ui4 implements hn1<se0, ud0<? super qv4>, Object> {
        public int v;
        public final /* synthetic */ hn1 x;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(hn1 hn1Var, ud0 ud0Var) {
            super(2, ud0Var);
            this.x = hn1Var;
        }

        @Override // com.shabakaty.downloader.hn1
        public final Object o(se0 se0Var, ud0<? super qv4> ud0Var) {
            ud0<? super qv4> ud0Var2 = ud0Var;
            j32.e(ud0Var2, "completion");
            return ih2.this.new a(this.x, ud0Var2).t(qv4.a);
        }

        @Override // com.shabakaty.downloader.bj
        public final ud0<qv4> r(Object obj, ud0<?> ud0Var) {
            j32.e(ud0Var, "completion");
            return ih2.this.new a(this.x, ud0Var);
        }

        @Override // com.shabakaty.downloader.bj
        public final Object t(Object obj) {
            te0 te0Var = te0.COROUTINE_SUSPENDED;
            int i = this.v;
            if (i == 0) {
                j96.i(obj);
                androidx.lifecycle.e r = ih2.this.getR();
                hn1 hn1Var = this.x;
                this.v = 1;
                if (kb3.a(r, androidx.lifecycle.e.c.CREATED, hn1Var, this) == te0Var) {
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

    /* JADX INFO: renamed from: a */
    public abstract androidx.lifecycle.e getR();

    public final e92 c(hn1<? super se0, ? super ud0<? super qv4>, ? extends Object> hn1Var) {
        return nh3.y(this, null, 0, new a(hn1Var, null), 3, null);
    }
}
