package com.shabakaty.cinemana.utils.download;

import android.content.Context;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.q;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import com.shabakaty.downloader.ac1;
import com.shabakaty.downloader.af2;
import com.shabakaty.downloader.hn1;
import com.shabakaty.downloader.j96;
import com.shabakaty.downloader.kf2;
import com.shabakaty.downloader.ng2;
import com.shabakaty.downloader.nh3;
import com.shabakaty.downloader.pm0;
import com.shabakaty.downloader.pw0;
import com.shabakaty.downloader.qv4;
import com.shabakaty.downloader.rm1;
import com.shabakaty.downloader.se0;
import com.shabakaty.downloader.te0;
import com.shabakaty.downloader.ud0;
import com.shabakaty.downloader.ui4;
import com.shabakaty.downloader.xb1;
import java.util.Objects;
import kotlin.Metadata;
import zendesk.support.request.CellBase;

/* JADX INFO: compiled from: FinishedDownloadHandler.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/shabakaty/cinemana/utils/download/FinishedDownloadScope;", "Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;", "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;", "videoModel", "Landroidx/fragment/app/Fragment;", "fragment", "<init>", "(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Landroidx/fragment/app/Fragment;)V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final class FinishedDownloadScope extends DownloadActionsHandlerScope {
    public Fragment w;
    public rm1<qv4> x;
    public rm1<qv4> y;
    public final kf2 z;

    /* JADX INFO: compiled from: FinishedDownloadHandler.kt */
    @pm0(c = "com.shabakaty.cinemana.utils.download.FinishedDownloadScope$1", f = "FinishedDownloadHandler.kt", l = {23}, m = "invokeSuspend")
    public static final class a extends ui4 implements hn1<se0, ud0<? super qv4>, Object> {
        public int v;

        public a(ud0<? super a> ud0Var) {
            super(2, ud0Var);
        }

        @Override // com.shabakaty.downloader.hn1
        public Object o(se0 se0Var, ud0<? super qv4> ud0Var) {
            return FinishedDownloadScope.this.new a(ud0Var).t(qv4.a);
        }

        @Override // com.shabakaty.downloader.bj
        public final ud0<qv4> r(Object obj, ud0<?> ud0Var) {
            return FinishedDownloadScope.this.new a(ud0Var);
        }

        @Override // com.shabakaty.downloader.bj
        public final Object t(Object obj) {
            te0 te0Var = te0.COROUTINE_SUSPENDED;
            int i = this.v;
            if (i == 0) {
                j96.i(obj);
                FinishedDownloadScope finishedDownloadScope = FinishedDownloadScope.this;
                this.v = 1;
                if (FinishedDownloadScope.p(finishedDownloadScope, this) == te0Var) {
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

    /* JADX INFO: compiled from: FinishedDownloadHandler.kt */
    public static final class b extends af2 implements rm1<q> {
        public b() {
            super(0);
        }

        @Override // com.shabakaty.downloader.rm1
        public q invoke() {
            Fragment fragment = FinishedDownloadScope.this.w;
            if (fragment == null) {
                return null;
            }
            return fragment.getChildFragmentManager();
        }
    }

    public FinishedDownloadScope(VideoModel videoModel, Fragment fragment) {
        super(videoModel, fragment);
        this.w = fragment;
        this.z = ng2.a(new b());
        nh3.y(g(), null, 0, new a(null), 3, null);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    public static final Object p(FinishedDownloadScope finishedDownloadScope, ud0 ud0Var) {
        xb1 xb1Var;
        Object obj;
        Objects.requireNonNull(finishedDownloadScope);
        if (ud0Var instanceof xb1) {
            xb1Var = (xb1) ud0Var;
            int i = xb1Var.x;
            if ((i & CellBase.GROUP_ID_SYSTEM_MESSAGE) != 0) {
                xb1Var.x = i - CellBase.GROUP_ID_SYSTEM_MESSAGE;
            } else {
                xb1Var = new xb1(finishedDownloadScope, ud0Var);
            }
        } else {
            xb1Var = new xb1(finishedDownloadScope, ud0Var);
        }
        Object objE = xb1Var.v;
        te0 te0Var = te0.COROUTINE_SUSPENDED;
        int i2 = xb1Var.x;
        if (i2 != 0) {
            if (i2 == 1) {
                finishedDownloadScope = (FinishedDownloadScope) xb1Var.u;
                j96.i(objE);
            } else {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                j96.i(objE);
            }
            return qv4.a;
        }
        j96.i(objE);
        xb1Var.u = finishedDownloadScope;
        xb1Var.x = 1;
        objE = finishedDownloadScope.e(xb1Var);
        if (objE == te0Var) {
            return te0Var;
        }
        pw0 pw0Var = (pw0) objE;
        if (pw0Var != null) {
            xb1Var.u = pw0Var;
            xb1Var.x = 2;
            Objects.requireNonNull(finishedDownloadScope);
            if (pw0Var.c()) {
                ac1 ac1Var = new ac1(finishedDownloadScope, xb1Var);
                obj = qv4.a;
                Object objT = ac1Var.t(obj);
                if (objT == te0Var) {
                    obj = objT;
                }
            } else {
                obj = qv4.a;
            }
            if (obj == te0Var) {
                return te0Var;
            }
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

    public final void q(FinishedDownloadScope finishedDownloadScope, rm1<qv4> rm1Var) {
        finishedDownloadScope.y = rm1Var;
    }

    public final void r(FinishedDownloadScope finishedDownloadScope, rm1<qv4> rm1Var) {
        finishedDownloadScope.x = rm1Var;
    }
}
