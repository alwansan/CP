package com.shabakaty.downloader;

import com.shabakaty.cinemana.ui.home_fragment.WideVerticalVideosView;

/* JADX INFO: compiled from: WideVerticalVideosView.kt */
/* JADX INFO: loaded from: classes.dex */
@pm0(c = "com.shabakaty.cinemana.ui.home_fragment.WideVerticalVideosView$enableAccessibilityLiveRegion$1", f = "WideVerticalVideosView.kt", l = {144, 146}, m = "invokeSuspend")
public final class m65 extends ui4 implements hn1<se0, ud0<? super qv4>, Object> {
    public int v;
    public final /* synthetic */ WideVerticalVideosView w;

    /* JADX INFO: compiled from: WideVerticalVideosView.kt */
    @pm0(c = "com.shabakaty.cinemana.ui.home_fragment.WideVerticalVideosView$enableAccessibilityLiveRegion$1$1", f = "WideVerticalVideosView.kt", l = {}, m = "invokeSuspend")
    public static final class a extends ui4 implements hn1<se0, ud0<? super qv4>, Object> {
        public final /* synthetic */ WideVerticalVideosView v;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(WideVerticalVideosView wideVerticalVideosView, ud0<? super a> ud0Var) {
            super(2, ud0Var);
            this.v = wideVerticalVideosView;
        }

        @Override // com.shabakaty.downloader.hn1
        public Object o(se0 se0Var, ud0<? super qv4> ud0Var) {
            a aVar = new a(this.v, ud0Var);
            qv4 qv4Var = qv4.a;
            aVar.t(qv4Var);
            return qv4Var;
        }

        @Override // com.shabakaty.downloader.bj
        public final ud0<qv4> r(Object obj, ud0<?> ud0Var) {
            return new a(this.v, ud0Var);
        }

        @Override // com.shabakaty.downloader.bj
        public final Object t(Object obj) {
            j96.i(obj);
            this.v.setImportantForAccessibility(1);
            this.v.getBinding().N.setAccessibilityLiveRegion(2);
            return qv4.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m65(WideVerticalVideosView wideVerticalVideosView, ud0<? super m65> ud0Var) {
        super(2, ud0Var);
        this.w = wideVerticalVideosView;
    }

    @Override // com.shabakaty.downloader.hn1
    public Object o(se0 se0Var, ud0<? super qv4> ud0Var) {
        return new m65(this.w, ud0Var).t(qv4.a);
    }

    @Override // com.shabakaty.downloader.bj
    public final ud0<qv4> r(Object obj, ud0<?> ud0Var) {
        return new m65(this.w, ud0Var);
    }

    @Override // com.shabakaty.downloader.bj
    public final Object t(Object obj) {
        te0 te0Var = te0.COROUTINE_SUSPENDED;
        int i = this.v;
        if (i != 0) {
            if (i == 1) {
                j96.i(obj);
            } else {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                j96.i(obj);
            }
            return qv4.a;
        }
        j96.i(obj);
        this.v = 1;
        if (rm3.f(1500L, this) == te0Var) {
            return te0Var;
        }
        if (this.w.isAttachedToWindow()) {
            pe0 pe0Var = hu0.a;
            vl2 vl2Var = wl2.a;
            a aVar = new a(this.w, null);
            this.v = 2;
            if (nh3.M(vl2Var, aVar, this) == te0Var) {
                return te0Var;
            }
        }
        return qv4.a;
    }
}
