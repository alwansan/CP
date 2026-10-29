package com.shabakaty.downloader;

import com.shabakaty.cinemana.utils.download.PausedDownloadHandler;

/* JADX INFO: compiled from: PausedDownloadHandler.kt */
/* JADX INFO: loaded from: classes.dex */
@pm0(c = "com.shabakaty.cinemana.utils.download.PausedDownloadHandler$handlePauseClick$2$1", f = "PausedDownloadHandler.kt", l = {}, m = "invokeSuspend")
public final class gb3 extends ui4 implements hn1<se0, ud0<? super qv4>, Object> {
    public final /* synthetic */ PausedDownloadHandler v;

    /* JADX INFO: compiled from: PausedDownloadHandler.kt */
    public static final class a extends af2 implements tm1<cb3.a, qv4> {
        public final /* synthetic */ PausedDownloadHandler r;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(PausedDownloadHandler pausedDownloadHandler) {
            super(1);
            this.r = pausedDownloadHandler;
        }

        @Override // com.shabakaty.downloader.tm1
        public qv4 invoke(cb3.a aVar) {
            cb3.a aVar2 = aVar;
            j32.e(aVar2, "$this$pausedDownloadBottomSheet");
            final PausedDownloadHandler pausedDownloadHandler = this.r;
            final int i = 0;
            wb1 wb1Var = new wb1() { // from class: com.shabakaty.downloader.eb3
                @Override // com.shabakaty.downloader.gj
                public final void b() {
                    switch (i) {
                        case 0:
                            PausedDownloadHandler pausedDownloadHandler2 = pausedDownloadHandler;
                            j32.e(pausedDownloadHandler2, "this$0");
                            nh3.y(pausedDownloadHandler2.g(), null, 0, new hb3(pausedDownloadHandler2, null), 3, null);
                            break;
                        default:
                            PausedDownloadHandler pausedDownloadHandler3 = pausedDownloadHandler;
                            j32.e(pausedDownloadHandler3, "this$0");
                            pausedDownloadHandler3.l();
                            break;
                    }
                }
            };
            j32.e(aVar2, "<this>");
            j32.e(wb1Var, "listener");
            aVar2.a.a = new bb3(wb1Var);
            final PausedDownloadHandler pausedDownloadHandler2 = this.r;
            final int i2 = 1;
            wb1 wb1Var2 = new wb1() { // from class: com.shabakaty.downloader.eb3
                @Override // com.shabakaty.downloader.gj
                public final void b() {
                    switch (i2) {
                        case 0:
                            PausedDownloadHandler pausedDownloadHandler3 = pausedDownloadHandler2;
                            j32.e(pausedDownloadHandler3, "this$0");
                            nh3.y(pausedDownloadHandler3.g(), null, 0, new hb3(pausedDownloadHandler3, null), 3, null);
                            break;
                        default:
                            PausedDownloadHandler pausedDownloadHandler4 = pausedDownloadHandler2;
                            j32.e(pausedDownloadHandler4, "this$0");
                            pausedDownloadHandler4.l();
                            break;
                    }
                }
            };
            j32.e(aVar2, "<this>");
            j32.e(wb1Var2, "listener");
            aVar2.a.b = new ab3(wb1Var2);
            fb3 fb3Var = new fb3(this.r);
            j32.e(aVar2, "<this>");
            j32.e(fb3Var, "scope");
            fb3Var.invoke(aVar2.a);
            return qv4.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gb3(PausedDownloadHandler pausedDownloadHandler, ud0<? super gb3> ud0Var) {
        super(2, ud0Var);
        this.v = pausedDownloadHandler;
    }

    @Override // com.shabakaty.downloader.hn1
    public Object o(se0 se0Var, ud0<? super qv4> ud0Var) {
        gb3 gb3Var = new gb3(this.v, ud0Var);
        qv4 qv4Var = qv4.a;
        gb3Var.t(qv4Var);
        return qv4Var;
    }

    @Override // com.shabakaty.downloader.bj
    public final ud0<qv4> r(Object obj, ud0<?> ud0Var) {
        return new gb3(this.v, ud0Var);
    }

    @Override // com.shabakaty.downloader.bj
    public final Object t(Object obj) {
        j96.i(obj);
        a aVar = new a(this.v);
        j32.e(aVar, "builder");
        aVar.invoke(new cb3.a());
        return qv4.a;
    }
}
