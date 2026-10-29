package com.shabakaty.downloader;

import com.shabakaty.cinemana.ca1.Continue106;
import com.shabakaty.cinemana.ca1.Ui7;
import com.shabakaty.cinemana.player.CinemanaPlayerView;

/* JADX INFO: compiled from: CinemanaPlayerView.kt */
/* JADX INFO: loaded from: classes.dex */
@pm0(c = "com.shabakaty.cinemana.player.CinemanaPlayerView$seekToLastPosition$1", f = "CinemanaPlayerView.kt", l = {240}, m = "invokeSuspend")
public final class k10 extends ui4 implements hn1<se0, ud0<? super qv4>, Object> {
    public int v;
    public /* synthetic */ Object w;
    public final /* synthetic */ CinemanaPlayerView x;

    /* JADX INFO: compiled from: CinemanaPlayerView.kt */
    @pm0(c = "com.shabakaty.cinemana.player.CinemanaPlayerView$seekToLastPosition$1$1$1", f = "CinemanaPlayerView.kt", l = {}, m = "invokeSuspend")
    public static final class a extends ui4 implements hn1<se0, ud0<? super qv4>, Object> {
        public final /* synthetic */ CinemanaPlayerView v;
        public final /* synthetic */ long w;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(CinemanaPlayerView cinemanaPlayerView, long j, ud0<? super a> ud0Var) {
            super(2, ud0Var);
            this.v = cinemanaPlayerView;
            this.w = j;
        }

        @Override // com.shabakaty.downloader.hn1
        public Object o(se0 se0Var, ud0<? super qv4> ud0Var) {
            CinemanaPlayerView cinemanaPlayerView = this.v;
            long j = this.w;
            new a(cinemanaPlayerView, j, ud0Var);
            qv4 qv4Var = qv4.a;
            j96.i(qv4Var);
            cinemanaPlayerView.getPlayer().q(j);
            return qv4Var;
        }

        @Override // com.shabakaty.downloader.bj
        public final ud0<qv4> r(Object obj, ud0<?> ud0Var) {
            return new a(this.v, this.w, ud0Var);
        }

        @Override // com.shabakaty.downloader.bj
        public final Object t(Object obj) {
            j96.i(obj);
            this.v.getPlayer().q(this.w);
            return qv4.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k10(CinemanaPlayerView cinemanaPlayerView, ud0<? super k10> ud0Var) {
        super(2, ud0Var);
        this.x = cinemanaPlayerView;
    }

    @Override // com.shabakaty.downloader.hn1
    public Object o(se0 se0Var, ud0<? super qv4> ud0Var) {
        k10 k10Var = new k10(this.x, ud0Var);
        k10Var.w = se0Var;
        return k10Var.t(qv4.a);
    }

    @Override // com.shabakaty.downloader.bj
    public final ud0<qv4> r(Object obj, ud0<?> ud0Var) {
        k10 k10Var = new k10(this.x, ud0Var);
        k10Var.w = obj;
        return k10Var;
    }

    @Override // com.shabakaty.downloader.bj
    public final Object t(Object obj) {
        se0 se0Var;
        if (Continue106.requested(this.x)) {
            return qv4.a;
        }
        te0 te0Var = te0.COROUTINE_SUSPENDED;
        int i = this.v;
        if (i == 0) {
            j96.i(obj);
            se0 se0Var2 = (se0) this.w;
            q10 viewModel = this.x.getViewModel();
            String str = this.x.getVideoModel().nb;
            this.w = se0Var2;
            this.v = 1;
            Object objW = viewModel.n.d.w(str, this);
            if (objW == te0Var) {
                return te0Var;
            }
            se0Var = se0Var2;
            obj = objW;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            se0Var = (se0) this.w;
            j96.i(obj);
        }
        Long l = (Long) obj;
        if (l == null) {
            Ui7.noProgress(this.x);
        } else {
            CinemanaPlayerView cinemanaPlayerView = this.x;
            long jResume = Ui7.resume(cinemanaPlayerView, l.longValue());
            pe0 pe0Var = hu0.a;
            nh3.y(se0Var, wl2.a, 0, new a(cinemanaPlayerView, jResume, null), 2, null);
        }
        return qv4.a;
    }
}
