package com.shabakaty.cinemana.utils.download;

import android.content.Context;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.q;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import com.shabakaty.downloader.af2;
import com.shabakaty.downloader.db3;
import com.shabakaty.downloader.dv0;
import com.shabakaty.downloader.gb3;
import com.shabakaty.downloader.hn1;
import com.shabakaty.downloader.hu0;
import com.shabakaty.downloader.j96;
import com.shabakaty.downloader.kf2;
import com.shabakaty.downloader.ng2;
import com.shabakaty.downloader.nh3;
import com.shabakaty.downloader.pe0;
import com.shabakaty.downloader.pm0;
import com.shabakaty.downloader.pw0;
import com.shabakaty.downloader.qv4;
import com.shabakaty.downloader.rm1;
import com.shabakaty.downloader.se0;
import com.shabakaty.downloader.te0;
import com.shabakaty.downloader.ud0;
import com.shabakaty.downloader.ui4;
import com.shabakaty.downloader.wl2;
import java.util.Objects;
import kotlin.Metadata;
import zendesk.support.request.CellBase;

/* JADX INFO: compiled from: PausedDownloadHandler.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/shabakaty/cinemana/utils/download/PausedDownloadHandler;", "Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;", "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;", "videoModel", "Landroidx/fragment/app/Fragment;", "fragment", "<init>", "(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Landroidx/fragment/app/Fragment;)V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final class PausedDownloadHandler extends DownloadActionsHandlerScope {
    public Fragment w;
    public final kf2 x;

    /* JADX INFO: compiled from: PausedDownloadHandler.kt */
    @pm0(c = "com.shabakaty.cinemana.utils.download.PausedDownloadHandler$1", f = "PausedDownloadHandler.kt", l = {21}, m = "invokeSuspend")
    public static final class a extends ui4 implements hn1<se0, ud0<? super qv4>, Object> {
        public int v;

        public a(ud0<? super a> ud0Var) {
            super(2, ud0Var);
        }

        @Override // com.shabakaty.downloader.hn1
        public Object o(se0 se0Var, ud0<? super qv4> ud0Var) {
            return PausedDownloadHandler.this.new a(ud0Var).t(qv4.a);
        }

        @Override // com.shabakaty.downloader.bj
        public final ud0<qv4> r(Object obj, ud0<?> ud0Var) {
            return PausedDownloadHandler.this.new a(ud0Var);
        }

        @Override // com.shabakaty.downloader.bj
        public final Object t(Object obj) {
            te0 te0Var = te0.COROUTINE_SUSPENDED;
            int i = this.v;
            if (i == 0) {
                j96.i(obj);
                PausedDownloadHandler pausedDownloadHandler = PausedDownloadHandler.this;
                this.v = 1;
                if (PausedDownloadHandler.p(pausedDownloadHandler, this) == te0Var) {
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

    /* JADX INFO: compiled from: PausedDownloadHandler.kt */
    public static final class b extends af2 implements rm1<q> {
        public b() {
            super(0);
        }

        @Override // com.shabakaty.downloader.rm1
        public q invoke() {
            Fragment fragment = PausedDownloadHandler.this.w;
            if (fragment == null) {
                return null;
            }
            return fragment.getChildFragmentManager();
        }
    }

    public PausedDownloadHandler(VideoModel videoModel, Fragment fragment) {
        super(videoModel, fragment);
        this.w = fragment;
        this.x = ng2.a(new b());
        nh3.y(g(), null, 0, new a(null), 3, null);
    }

    /* JADX WARN: Code duplicated, block: B:30:0x007c  */
    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    public static final Object p(PausedDownloadHandler pausedDownloadHandler, ud0 ud0Var) {
        db3 db3Var;
        pw0 pw0Var;
        PausedDownloadHandler pausedDownloadHandler2;
        pw0 pw0Var2;
        Objects.requireNonNull(pausedDownloadHandler);
        if (ud0Var instanceof db3) {
            db3Var = (db3) ud0Var;
            int i = db3Var.y;
            if ((i & CellBase.GROUP_ID_SYSTEM_MESSAGE) != 0) {
                db3Var.y = i - CellBase.GROUP_ID_SYSTEM_MESSAGE;
            } else {
                db3Var = new db3(pausedDownloadHandler, ud0Var);
            }
        } else {
            db3Var = new db3(pausedDownloadHandler, ud0Var);
        }
        Object objE = db3Var.w;
        te0 te0Var = te0.COROUTINE_SUSPENDED;
        int i2 = db3Var.y;
        if (i2 != 0) {
            if (i2 == 1) {
                pausedDownloadHandler = (PausedDownloadHandler) db3Var.u;
                j96.i(objE);
            } else {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                pw0Var2 = (pw0) db3Var.v;
                pausedDownloadHandler2 = (PausedDownloadHandler) db3Var.u;
                j96.i(objE);
            }
            pw0Var = pw0Var2;
            pausedDownloadHandler = pausedDownloadHandler2;
            if (pw0Var == null) {
                nh3.y(pausedDownloadHandler.g(), null, 0, new dv0(pausedDownloadHandler, null), 3, null);
            }
            return qv4.a;
        }
        j96.i(objE);
        db3Var.u = pausedDownloadHandler;
        db3Var.y = 1;
        objE = pausedDownloadHandler.e(db3Var);
        if (objE == te0Var) {
            return te0Var;
        }
        pw0Var = (pw0) objE;
        if (pw0Var == null) {
            pw0Var = null;
        } else if (pw0Var.d()) {
            gb3 gb3Var = new gb3(pausedDownloadHandler, null);
            db3Var.u = pausedDownloadHandler;
            db3Var.v = pw0Var;
            db3Var.y = 2;
            pe0 pe0Var = hu0.a;
            if (nh3.M(wl2.a, gb3Var, db3Var) == te0Var) {
                return te0Var;
            }
            pausedDownloadHandler2 = pausedDownloadHandler;
            pw0Var2 = pw0Var;
            pw0Var = pw0Var2;
            pausedDownloadHandler = pausedDownloadHandler2;
        }
        if (pw0Var == null) {
            nh3.y(pausedDownloadHandler.g(), null, 0, new dv0(pausedDownloadHandler, null), 3, null);
        }
        return qv4.a;
    }

    @Override // com.shabakaty.cinemana.utils.download.DownloadActionsHandlerScope
    public Context f() {
        Fragment fragment = this.w;
        if (fragment == null) {
            return null;
        }
        return fragment.getContext();
    }
}
