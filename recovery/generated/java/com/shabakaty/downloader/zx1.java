package com.shabakaty.downloader;

import android.content.Context;
import com.shabakaty.cinemana.domain.models.local.Quality;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import com.shabakaty.cinemana.utils.download.IdleDownloadScope;
import com.shabakaty.downloader.views.DownloadButton;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: IdleDownloadHandler.kt */
/* JADX INFO: loaded from: classes.dex */
public final class zx1 extends af2 implements tm1<lk3.a, qv4> {
    public final /* synthetic */ IdleDownloadScope r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zx1(IdleDownloadScope idleDownloadScope) {
        super(1);
        this.r = idleDownloadScope;
    }

    @Override // com.shabakaty.downloader.tm1
    public qv4 invoke(lk3.a aVar) {
        lk3.a aVar2 = aVar;
        j32.e(aVar2, "$this$qualitiesBottomSheet");
        List<Quality> list = this.r.w.qualities;
        j32.e(list, "value");
        aVar2.a.a = list;
        final IdleDownloadScope idleDownloadScope = this.r;
        nk3 nk3Var = new nk3() { // from class: com.shabakaty.downloader.wx1
            @Override // com.shabakaty.downloader.nk3
            public final void a(Quality quality) {
                IdleDownloadScope idleDownloadScope2 = idleDownloadScope;
                j32.e(idleDownloadScope2, "this$0");
                DownloadButton downloadButton = idleDownloadScope2.u;
                if (downloadButton != null) {
                    downloadButton.c();
                }
                rm1<qv4> rm1Var = idleDownloadScope2.y;
                if (rm1Var != null) {
                    rm1Var.invoke();
                }
                VideoModel videoModel = idleDownloadScope2.w;
                String str = quality.url;
                String str2 = quality.resolution;
                String str3 = quality.name;
                Objects.requireNonNull(videoModel);
                j32.e(str, "<set-?>");
                videoModel.url = str;
                videoModel.wantedQuality = new Quality(str2, str3, str);
                if (!idleDownloadScope2.i()) {
                    idleDownloadScope2.m();
                    return;
                }
                idleDownloadScope2.v = true;
                Context contextF = idleDownloadScope2.f();
                if (contextF == null) {
                    return;
                }
                wt2.l(contextF);
            }
        };
        j32.e(aVar2, "<this>");
        j32.e(nk3Var, "listener");
        aVar2.a.b = new kk3(nk3Var);
        xx1 xx1Var = new xx1(this.r);
        j32.e(aVar2, "<this>");
        j32.e(xx1Var, "listener");
        lk3 lk3Var = aVar2.a;
        new jk3(xx1Var);
        Objects.requireNonNull(lk3Var);
        yx1 yx1Var = new yx1(this.r);
        j32.e(aVar2, "<this>");
        j32.e(yx1Var, "scope");
        yx1Var.invoke(aVar2.a);
        return qv4.a;
    }
}
