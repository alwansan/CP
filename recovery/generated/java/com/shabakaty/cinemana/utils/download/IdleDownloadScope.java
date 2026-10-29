package com.shabakaty.cinemana.utils.download;

import android.content.Context;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.q;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import com.shabakaty.downloader.af2;
import com.shabakaty.downloader.kf2;
import com.shabakaty.downloader.lk3;
import com.shabakaty.downloader.ng2;
import com.shabakaty.downloader.qv4;
import com.shabakaty.downloader.rm1;
import com.shabakaty.downloader.zx1;
import kotlin.Metadata;

/* JADX INFO: compiled from: IdleDownloadHandler.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/shabakaty/cinemana/utils/download/IdleDownloadScope;", "Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;", "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;", "videoModel", "Landroidx/fragment/app/Fragment;", "fragment", "<init>", "(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Landroidx/fragment/app/Fragment;)V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final class IdleDownloadScope extends DownloadActionsHandlerScope {
    public final kf2 A;
    public final VideoModel w;
    public Fragment x;
    public rm1<qv4> y;
    public rm1<qv4> z;

    /* JADX INFO: compiled from: IdleDownloadHandler.kt */
    public static final class a extends af2 implements rm1<q> {
        public a() {
            super(0);
        }

        @Override // com.shabakaty.downloader.rm1
        public q invoke() {
            Fragment fragment = IdleDownloadScope.this.x;
            if (fragment == null) {
                return null;
            }
            return fragment.getChildFragmentManager();
        }
    }

    public IdleDownloadScope(VideoModel videoModel, Fragment fragment) {
        super(videoModel, fragment);
        this.w = videoModel;
        this.x = fragment;
        this.A = ng2.a(new a());
        new zx1(this).invoke(new lk3.a());
    }

    @Override // com.shabakaty.cinemana.utils.download.DownloadActionsHandlerScope
    public Context f() {
        Fragment fragment = this.x;
        if (fragment == null) {
            return null;
        }
        return fragment.getContext();
    }
}
