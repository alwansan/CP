package com.shabakaty.downloader;

import android.content.Context;
import com.connectsdk.R;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import com.shabakaty.cinemana.utils.download.DownloadActionsHandlerScope;

/* JADX INFO: compiled from: DownloadsActionsHandler.kt */
/* JADX INFO: loaded from: classes.dex */
@pm0(c = "com.shabakaty.cinemana.utils.download.DownloadActionsHandlerScope$downloadVideo$1", f = "DownloadsActionsHandler.kt", l = {R.styleable.AppCompatTheme_selectableItemBackground, R.styleable.AppCompatTheme_selectableItemBackgroundBorderless, R.styleable.AppCompatTheme_textAppearanceListItem}, m = "invokeSuspend")
public final class dv0 extends ui4 implements hn1<se0, ud0<? super qv4>, Object> {
    public int v;
    public final /* synthetic */ DownloadActionsHandlerScope w;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dv0(DownloadActionsHandlerScope downloadActionsHandlerScope, ud0<? super dv0> ud0Var) {
        super(2, ud0Var);
        this.w = downloadActionsHandlerScope;
    }

    @Override // com.shabakaty.downloader.hn1
    public Object o(se0 se0Var, ud0<? super qv4> ud0Var) {
        return new dv0(this.w, ud0Var).t(qv4.a);
    }

    @Override // com.shabakaty.downloader.bj
    public final ud0<qv4> r(Object obj, ud0<?> ud0Var) {
        return new dv0(this.w, ud0Var);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0052  */
    /* JADX WARN: Code duplicated, block: B:26:0x005d  */
    /* JADX WARN: Code duplicated, block: B:27:0x0061  */
    /* JADX WARN: Code duplicated, block: B:29:0x006b A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:31:0x006e  */
    @Override // com.shabakaty.downloader.bj
    public final Object t(Object obj) {
        Context contextF;
        te0 te0Var = te0.COROUTINE_SUSPENDED;
        int i = this.v;
        if (i != 0) {
            if (i == 1) {
                j96.i(obj);
            } else {
                if (i == 2) {
                    j96.i(obj);
                    if (this.w.i()) {
                        DownloadActionsHandlerScope downloadActionsHandlerScope = this.w;
                        downloadActionsHandlerScope.v = true;
                        contextF = downloadActionsHandlerScope.f();
                        if (contextF != null) {
                            wt2.l(contextF);
                        }
                    } else {
                        DownloadActionsHandlerScope downloadActionsHandlerScope2 = this.w;
                        this.v = 3;
                        obj = downloadActionsHandlerScope2.e(this);
                        if (obj == te0Var) {
                            return te0Var;
                        }
                    }
                    return qv4.a;
                }
                if (i != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                j96.i(obj);
            }
            if (obj == null) {
                i44 i44VarC = vy0.c();
                VideoModel videoModel = this.w.r;
                String str = videoModel.url;
                String strD = videoModel.d();
                DownloadActionsHandlerScope downloadActionsHandlerScope3 = this.w;
                VideoModel videoModel2 = downloadActionsHandlerScope3.r;
                i44.a.a(i44VarC, str, strD, videoModel2.imgMediumThumbObjUrl, null, videoModel2.nb, new mv0(downloadActionsHandlerScope3), 8, null);
            }
            return qv4.a;
        }
        j96.i(obj);
        DownloadActionsHandlerScope downloadActionsHandlerScope4 = this.w;
        VideoModel videoModel3 = downloadActionsHandlerScope4.r;
        this.v = 1;
        if (DownloadActionsHandlerScope.c(downloadActionsHandlerScope4, videoModel3, this) == te0Var) {
            return te0Var;
        }
        DownloadActionsHandlerScope downloadActionsHandlerScope5 = this.w;
        VideoModel videoModel4 = downloadActionsHandlerScope5.r;
        this.v = 2;
        Object objH = downloadActionsHandlerScope5.h(videoModel4, new ev0(videoModel4), this);
        if (objH != te0Var) {
            objH = qv4.a;
        }
        if (objH == te0Var) {
            return te0Var;
        }
        if (this.w.i()) {
            DownloadActionsHandlerScope downloadActionsHandlerScope6 = this.w;
            downloadActionsHandlerScope6.v = true;
            contextF = downloadActionsHandlerScope6.f();
            if (contextF != null) {
                wt2.l(contextF);
            }
        } else {
            DownloadActionsHandlerScope downloadActionsHandlerScope7 = this.w;
            this.v = 3;
            obj = downloadActionsHandlerScope7.e(this);
            if (obj == te0Var) {
                return te0Var;
            }
            if (obj == null) {
                i44 i44VarC2 = vy0.c();
                VideoModel videoModel5 = this.w.r;
                String str2 = videoModel5.url;
                String strD2 = videoModel5.d();
                DownloadActionsHandlerScope downloadActionsHandlerScope8 = this.w;
                VideoModel videoModel6 = downloadActionsHandlerScope8.r;
                i44.a.a(i44VarC2, str2, strD2, videoModel6.imgMediumThumbObjUrl, null, videoModel6.nb, new mv0(downloadActionsHandlerScope8), 8, null);
            }
        }
        return qv4.a;
    }
}
