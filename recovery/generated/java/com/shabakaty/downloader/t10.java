package com.shabakaty.downloader;

import com.shabakaty.cinemana.domain.models.local.VideoModel;
import com.shabakaty.cinemana.domain.models.local.user.LogoutResponse;

/* JADX INFO: compiled from: CinemanaVideoPlayerViewModel.kt */
/* JADX INFO: loaded from: classes.dex */
@pm0(c = "com.shabakaty.cinemana.player.CinemanaVideoPlayerViewModel$removeFromHistory$1$1", f = "CinemanaVideoPlayerViewModel.kt", l = {}, m = "invokeSuspend")
public final class t10 extends ui4 implements hn1<se0, ud0<? super qv4>, Object> {
    public final /* synthetic */ q10 v;
    public final /* synthetic */ VideoModel w;

    /* JADX INFO: compiled from: CinemanaVideoPlayerViewModel.kt */
    public static final class a extends af2 implements tm1<LogoutResponse, qv4> {
        public final /* synthetic */ q10 r;
        public final /* synthetic */ VideoModel s;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(q10 q10Var, VideoModel videoModel) {
            super(1);
            this.r = q10Var;
            this.s = videoModel;
        }

        @Override // com.shabakaty.downloader.tm1
        public qv4 invoke(LogoutResponse logoutResponse) {
            this.r.q.remove(this.s.nb);
            return qv4.a;
        }
    }

    /* JADX INFO: compiled from: CinemanaVideoPlayerViewModel.kt */
    public /* synthetic */ class b extends co1 implements tm1<Throwable, qv4> {
        public static final b r = new b();

        public b() {
            super(1, wt2.class, "logE", "logE(Ljava/lang/Throwable;)V", 1);
        }

        @Override // com.shabakaty.downloader.tm1
        public qv4 invoke(Throwable th) {
            Throwable th2 = th;
            j32.e(th2, "p0");
            wt2.k(th2);
            return qv4.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t10(q10 q10Var, VideoModel videoModel, ud0<? super t10> ud0Var) {
        super(2, ud0Var);
        this.v = q10Var;
        this.w = videoModel;
    }

    @Override // com.shabakaty.downloader.hn1
    public Object o(se0 se0Var, ud0<? super qv4> ud0Var) {
        t10 t10Var = new t10(this.v, this.w, ud0Var);
        qv4 qv4Var = qv4.a;
        t10Var.t(qv4Var);
        return qv4Var;
    }

    @Override // com.shabakaty.downloader.bj
    public final ud0<qv4> r(Object obj, ud0<?> ud0Var) {
        return new t10(this.v, this.w, ud0Var);
    }

    @Override // com.shabakaty.downloader.bj
    public final Object t(Object obj) {
        j96.i(obj);
        if (this.v.q.contains(this.w.nb) && this.v.n.d(this.w.nb)) {
            q10 q10Var = this.v;
            ox4 ox4Var = q10Var.n;
            VideoModel videoModel = this.w;
            j32.d(videoModel, "videoModel");
            q10Var.b(ox4Var.g(videoModel), new a(this.v, this.w), b.r);
        }
        return qv4.a;
    }
}
