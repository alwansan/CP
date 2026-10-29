package com.shabakaty.cinemana.utils.download;

import android.content.Context;
import android.os.Build;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.e;
import androidx.lifecycle.f;
import com.cinemana.pro.R;
import com.cinemana.pro.permissions.DownloadPermissionFlow;
import com.connectsdk.service.NetcastTVService;
import com.shabakaty.cinemana.data.db.downloads.CombinedDownloadItem;
import com.shabakaty.cinemana.data.db.downloads.SubtitleDb;
import com.shabakaty.cinemana.domain.models.local.Subtitle;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import com.shabakaty.cinemana.features.MkvPlanStore;
import com.shabakaty.downloader.af2;
import com.shabakaty.downloader.bn2;
import com.shabakaty.downloader.ck3;
import com.shabakaty.downloader.cv0;
import com.shabakaty.downloader.dv0;
import com.shabakaty.downloader.fv0;
import com.shabakaty.downloader.gz0;
import com.shabakaty.downloader.hn1;
import com.shabakaty.downloader.hu0;
import com.shabakaty.downloader.i44;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.j96;
import com.shabakaty.downloader.jv0;
import com.shabakaty.downloader.kf2;
import com.shabakaty.downloader.mz0;
import com.shabakaty.downloader.ne4;
import com.shabakaty.downloader.ng2;
import com.shabakaty.downloader.nh3;
import com.shabakaty.downloader.nv0;
import com.shabakaty.downloader.nz0;
import com.shabakaty.downloader.o84;
import com.shabakaty.downloader.ph0;
import com.shabakaty.downloader.pm0;
import com.shabakaty.downloader.pw0;
import com.shabakaty.downloader.qv4;
import com.shabakaty.downloader.rh2;
import com.shabakaty.downloader.rm1;
import com.shabakaty.downloader.se0;
import com.shabakaty.downloader.te0;
import com.shabakaty.downloader.tm1;
import com.shabakaty.downloader.ud0;
import com.shabakaty.downloader.views.DownloadButton;
import com.shabakaty.downloader.vy0;
import com.shabakaty.downloader.xd0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import zendesk.support.request.CellBase;

/* JADX INFO: compiled from: DownloadsActionsHandler.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b&\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;", "Landroidx/lifecycle/f;", "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;", "videoModel", "Landroidx/fragment/app/Fragment;", "fragment", "<init>", "(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Landroidx/fragment/app/Fragment;)V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public abstract class DownloadActionsHandlerScope implements f {
    public final VideoModel r;
    public Fragment s;
    public final kf2 t;
    public DownloadButton u;
    public boolean v;

    /* JADX INFO: compiled from: DownloadsActionsHandler.kt */
    @pm0(c = "com.shabakaty.cinemana.utils.download.DownloadActionsHandlerScope", f = "DownloadsActionsHandler.kt", l = {146}, m = "collectionExists")
    public static final class a extends xd0 {
        public /* synthetic */ Object u;
        public int w;

        public a(ud0<? super a> ud0Var) {
            super(ud0Var);
        }

        @Override // com.shabakaty.downloader.bj
        public final Object t(Object obj) {
            this.u = obj;
            this.w |= CellBase.GROUP_ID_SYSTEM_MESSAGE;
            return DownloadActionsHandlerScope.this.d(0, this);
        }
    }

    /* JADX INFO: compiled from: DownloadsActionsHandler.kt */
    public static final class b extends af2 implements rm1<se0> {
        public static final b r = new b();

        public b() {
            super(0);
        }

        @Override // com.shabakaty.downloader.rm1
        public se0 invoke() {
            return nh3.b(hu0.b);
        }
    }

    /* JADX INFO: compiled from: DownloadsActionsHandler.kt */
    public static final class c extends af2 implements tm1<DownloadButton, qv4> {
        public c() {
            super(1);
        }

        @Override // com.shabakaty.downloader.tm1
        public qv4 invoke(DownloadButton downloadButton) {
            j32.e(downloadButton, "it");
            DownloadActionsHandlerScope.this.m();
            return qv4.a;
        }
    }

    /* JADX INFO: compiled from: DownloadsActionsHandler.kt */
    @pm0(c = "com.shabakaty.cinemana.utils.download.DownloadActionsHandlerScope", f = "DownloadsActionsHandler.kt", l = {141}, m = "shouldCreateNewCollection")
    public static final class d extends xd0 {
        public Object u;
        public /* synthetic */ Object v;
        public int x;

        public d(ud0<? super d> ud0Var) {
            super(ud0Var);
        }

        @Override // com.shabakaty.downloader.bj
        public final Object t(Object obj) {
            this.v = obj;
            this.x |= CellBase.GROUP_ID_SYSTEM_MESSAGE;
            return DownloadActionsHandlerScope.this.h(null, null, this);
        }
    }

    public DownloadActionsHandlerScope(VideoModel videoModel, Fragment fragment) {
        e lifecycle;
        this.r = videoModel;
        this.s = fragment;
        if (fragment != null && (lifecycle = fragment.getLifecycle()) != null) {
            lifecycle.a(this);
        }
        this.t = ng2.a(b.r);
    }

    /* JADX WARN: Code duplicated, block: B:38:0x008f A[LOOP:0: B:36:0x0089->B:38:0x008f, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    public static final Object a(DownloadActionsHandlerScope downloadActionsHandlerScope, ud0 ud0Var) {
        cv0 cv0Var;
        DownloadActionsHandlerScope downloadActionsHandlerScope2;
        pw0 pw0Var;
        CombinedDownloadItem combinedDownloadItem;
        List<SubtitleDb> list;
        Objects.requireNonNull(downloadActionsHandlerScope);
        if (ud0Var instanceof cv0) {
            cv0Var = (cv0) ud0Var;
            int i = cv0Var.y;
            if ((i & CellBase.GROUP_ID_SYSTEM_MESSAGE) != 0) {
                cv0Var.y = i - CellBase.GROUP_ID_SYSTEM_MESSAGE;
            } else {
                cv0Var = new cv0(downloadActionsHandlerScope, ud0Var);
            }
        } else {
            cv0Var = new cv0(downloadActionsHandlerScope, ud0Var);
        }
        Object objE = cv0Var.w;
        te0 te0Var = te0.COROUTINE_SUSPENDED;
        int i2 = cv0Var.y;
        if (i2 != 0) {
            if (i2 == 1) {
                downloadActionsHandlerScope = (DownloadActionsHandlerScope) cv0Var.u;
                j96.i(objE);
            } else {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                pw0Var = (pw0) cv0Var.v;
                downloadActionsHandlerScope2 = (DownloadActionsHandlerScope) cv0Var.u;
                j96.i(objE);
            }
            combinedDownloadItem = (CombinedDownloadItem) objE;
            if (combinedDownloadItem != null && (list = combinedDownloadItem.subtitles) != null) {
                for (SubtitleDb subtitleDb : list) {
                    vy0.c().j(subtitleDb.downloadTaskId, subtitleDb.file);
                }
            }
            vy0.c().j(pw0Var.r, pw0Var.x);
            nz0.a.i(downloadActionsHandlerScope2.r.nb);
            return qv4.a;
        }
        j96.i(objE);
        String str = downloadActionsHandlerScope.r.nb;
        cv0Var.u = downloadActionsHandlerScope;
        cv0Var.y = 1;
        objE = vy0.b().e(str, cv0Var);
        if (objE == te0Var) {
            return te0Var;
        }
        pw0 pw0Var2 = (pw0) objE;
        if (pw0Var2 != null) {
            mz0 mz0Var = nz0.a;
            String str2 = pw0Var2.s;
            cv0Var.u = downloadActionsHandlerScope;
            cv0Var.v = pw0Var2;
            cv0Var.y = 2;
            hn1<? super String, ? super ud0<? super CombinedDownloadItem>, ? extends Object> hn1Var = mz0Var.f;
            Object objO = hn1Var == null ? null : hn1Var.o(str2, cv0Var);
            if (objO == te0Var) {
                return te0Var;
            }
            Object obj = objO;
            downloadActionsHandlerScope2 = downloadActionsHandlerScope;
            pw0Var = pw0Var2;
            objE = obj;
            combinedDownloadItem = (CombinedDownloadItem) objE;
            if (combinedDownloadItem != null) {
                while (r7.hasNext()) {
                    vy0.c().j(subtitleDb.downloadTaskId, subtitleDb.file);
                }
            }
            vy0.c().j(pw0Var.r, pw0Var.x);
            nz0.a.i(downloadActionsHandlerScope2.r.nb);
        }
        return qv4.a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    public static final Object c(DownloadActionsHandlerScope downloadActionsHandlerScope, VideoModel videoModel, ud0 ud0Var) {
        fv0 fv0Var;
        Objects.requireNonNull(downloadActionsHandlerScope);
        if (ud0Var instanceof fv0) {
            fv0Var = (fv0) ud0Var;
            int i = fv0Var.x;
            if ((i & CellBase.GROUP_ID_SYSTEM_MESSAGE) != 0) {
                fv0Var.x = i - CellBase.GROUP_ID_SYSTEM_MESSAGE;
            } else {
                fv0Var = new fv0(downloadActionsHandlerScope, ud0Var);
            }
        } else {
            fv0Var = new fv0(downloadActionsHandlerScope, ud0Var);
        }
        Object objO = fv0Var.v;
        te0 te0Var = te0.COROUTINE_SUSPENDED;
        int i2 = fv0Var.x;
        if (i2 == 0) {
            j96.i(objO);
            mz0 mz0Var = nz0.a;
            String str = videoModel.nb;
            fv0Var.u = videoModel;
            fv0Var.x = 1;
            hn1<? super String, ? super ud0<? super CombinedDownloadItem>, ? extends Object> hn1Var = mz0Var.f;
            objO = hn1Var == null ? null : hn1Var.o(str, fv0Var);
            if (objO == te0Var) {
                return te0Var;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            videoModel = (VideoModel) fv0Var.u;
            j96.i(objO);
        }
        if (objO == null) {
            mz0 mz0Var2 = nz0.a;
            j32.e(videoModel, "videoModel");
            hn1<? super VideoModel, ? super pw0, qv4> hn1Var2 = mz0Var2.d;
            if (hn1Var2 != null) {
                hn1Var2.o(videoModel, null);
            }
            for (o84 o84Var : videoModel.skippableScenes) {
                mz0 mz0Var3 = nz0.a;
                j32.e(o84Var, "scene");
                hn1<? super o84, ? super VideoModel, qv4> hn1Var3 = mz0Var3.c;
                if (hn1Var3 != null) {
                    hn1Var3.o(o84Var, videoModel);
                }
            }
        }
        return qv4.a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object d(int i, ud0<? super Boolean> ud0Var) {
        a aVar;
        if (ud0Var instanceof a) {
            aVar = (a) ud0Var;
            int i2 = aVar.w;
            if ((i2 & CellBase.GROUP_ID_SYSTEM_MESSAGE) != 0) {
                aVar.w = i2 - CellBase.GROUP_ID_SYSTEM_MESSAGE;
            } else {
                aVar = new a(ud0Var);
            }
        } else {
            aVar = new a(ud0Var);
        }
        Object objO = aVar.u;
        te0 te0Var = te0.COROUTINE_SUSPENDED;
        int i3 = aVar.w;
        if (i3 == 0) {
            j96.i(objO);
            mz0 mz0Var = nz0.a;
            aVar.w = 1;
            hn1<? super Integer, ? super ud0<? super gz0>, ? extends Object> hn1Var = mz0Var.b;
            objO = hn1Var == null ? null : hn1Var.o(new Integer(i), aVar);
            if (objO == te0Var) {
                return te0Var;
            }
        } else {
            if (i3 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            j96.i(objO);
        }
        return Boolean.valueOf(objO != null);
    }

    public final Object e(ud0<? super pw0> ud0Var) {
        return vy0.b().e(this.r.nb, ud0Var);
    }

    public abstract Context f();

    public final se0 g() {
        return (se0) this.t.getValue();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object h(VideoModel videoModel, rm1<qv4> rm1Var, ud0<? super qv4> ud0Var) {
        d dVar;
        if (ud0Var instanceof d) {
            dVar = (d) ud0Var;
            int i = dVar.x;
            if ((i & CellBase.GROUP_ID_SYSTEM_MESSAGE) != 0) {
                dVar.x = i - CellBase.GROUP_ID_SYSTEM_MESSAGE;
            } else {
                dVar = new d(ud0Var);
            }
        } else {
            dVar = new d(ud0Var);
        }
        Object objD = dVar.v;
        Object obj = te0.COROUTINE_SUSPENDED;
        int i2 = dVar.x;
        if (i2 == 0) {
            j96.i(objD);
            int i3 = videoModel.downloadCollectionID;
            boolean z = i3 != 0;
            if (j32.a(videoModel.kind, "2") && z) {
                dVar.u = rm1Var;
                dVar.x = 1;
                objD = d(i3, dVar);
                if (objD == obj) {
                    return obj;
                }
            }
            return qv4.a;
        }
        if (i2 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        rm1Var = (rm1) dVar.u;
        j96.i(objD);
        if (!((Boolean) objD).booleanValue()) {
            rm1Var.invoke();
        }
        return qv4.a;
    }

    public final boolean i() {
        return !DownloadPermissionFlow.isReady(f());
    }

    @Override // androidx.lifecycle.f
    public void j(rh2 rh2Var, e.b bVar) {
        e lifecycle;
        j32.e(rh2Var, "source");
        j32.e(bVar, NetcastTVService.UDAP_API_EVENT);
        if (bVar == e.b.ON_DESTROY) {
            Fragment fragment = this.s;
            if (fragment != null && (lifecycle = fragment.getLifecycle()) != null) {
                lifecycle.c(this);
            }
            this.s = null;
            return;
        }
        if (bVar == e.b.ON_RESUME) {
            nv0 nv0Var = new nv0(this, new c());
            j32.e(nv0Var, "block");
            if (Build.VERSION.SDK_INT >= 23) {
                nv0Var.invoke();
            }
        }
    }

    public final void l() {
        if (f() == null) {
            return;
        }
        Context contextF = f();
        j32.c(contextF);
        bn2 bn2Var = new bn2(contextF);
        bn2Var.p(R.string.msg_remove_file);
        bn2Var.k(R.string.msg_remove_message);
        bn2Var.n(R.string.txt_yes, new ph0(this)).l(R.string.txt_no, ck3.t).create().show();
    }

    public final void m() {
        List<Subtitle> list = this.r.subtitles;
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = list.iterator();
        while (true) {
            boolean z = false;
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            Subtitle subtitle = (Subtitle) next;
            if (!j32.a(subtitle.extention, "vtt") && (!ne4.D(subtitle.file))) {
                z = true;
            }
            if (z) {
                arrayList.add(next);
            }
        }
        MkvPlanStore.record(f(), this.r, arrayList.size());
        Iterator it2 = arrayList.iterator();
        while (true) {
            String string = null;
            if (!it2.hasNext()) {
                nh3.y(g(), null, 0, new dv0(this, null), 3, null);
                return;
            }
            Subtitle subtitle2 = (Subtitle) it2.next();
            i44 i44VarC = vy0.c();
            String str = subtitle2.file;
            String strD = this.r.d();
            Context contextF = f();
            if (contextF != null) {
                string = contextF.getString(R.string.subtitle_for_txt, subtitle2.name, strD);
            }
            i44.a.a(i44VarC, str, string, null, null, subtitle2.id, new jv0(this, subtitle2), 12, null);
        }
    }

    public final void n(DownloadActionsHandlerScope downloadActionsHandlerScope, DownloadButton downloadButton) {
        downloadActionsHandlerScope.u = downloadButton;
    }
}
