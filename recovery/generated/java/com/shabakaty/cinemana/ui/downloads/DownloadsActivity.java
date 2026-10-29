package com.shabakaty.cinemana.ui.downloads;

import android.os.Bundle;
import androidx.appcompat.widget.Toolbar;
import androidx.navigation.NavController;
import androidx.navigation.i;
import com.cinemana.pro.R;
import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.cinemana.features.DownloadTrace;
import com.shabakaty.downloader.af2;
import com.shabakaty.downloader.ax2;
import com.shabakaty.downloader.bz0;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.kf2;
import com.shabakaty.downloader.kl3;
import com.shabakaty.downloader.ng2;
import com.shabakaty.downloader.ol3;
import com.shabakaty.downloader.rm1;
import com.shabakaty.downloader.uo1;
import com.shabakaty.downloader.vj;
import com.shabakaty.downloader.w2;
import com.shabakaty.downloader.xi;
import kotlin.Metadata;

/* JADX INFO: compiled from: DownloadsActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00012\u00020\u0003B\u0007¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/shabakaty/cinemana/ui/downloads/DownloadsActivity;", "Lcom/shabakaty/downloader/xi;", "Lcom/shabakaty/downloader/w2;", BuildConfig.FLAVOR, "Lcom/shabakaty/downloader/bz0;", "<init>", "()V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final class DownloadsActivity extends xi<w2, Object, bz0> implements vj {
    private boolean modHasResumedBefore;
    public final kf2 v;

    /* JADX INFO: compiled from: DownloadsActivity.kt */
    public static final class a extends af2 implements rm1<NavController> {
        public a() {
            super(0);
        }

        @Override // com.shabakaty.downloader.rm1
        public NavController invoke() {
            return kl3.c(DownloadsActivity.this, R.id.downloads_fragment_container);
        }
    }

    public DownloadsActivity() {
        super(R.layout.activity_downloads);
        this.v = ng2.a(new a());
    }

    @Override // com.shabakaty.downloader.xi
    public Class<bz0> h0() {
        return bz0.class;
    }

    @Override // com.shabakaty.downloader.vj
    public void o() {
        j32.e(this, "this");
        j32.e(this, "this");
    }

    @Override // com.shabakaty.downloader.xi, com.shabakaty.downloader.ji1, androidx.activity.ComponentActivity, com.shabakaty.downloader.p80, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        DownloadTrace.log(this, "DOWNLOADS_ACTIVITY_CREATE");
        NavController navController = (NavController) this.v.getValue();
        j32.e(navController, "<this>");
        i iVar = navController.k;
        j32.b(iVar, "navigatorProvider");
        ax2 ax2Var = new ax2(iVar, R.id.downloads_fragment_container, 7101);
        uo1.j(ax2Var, this);
        navController.p(ax2Var.c(), null);
        T t = this.t;
        j32.c(t);
        Toolbar toolbar = ((w2) t).M;
        j32.d(toolbar, "binding.downloadsToolbar");
        ol3.h(toolbar, (NavController) this.v.getValue(), null, 2);
    }

    @Override // com.shabakaty.downloader.ji1, android.app.Activity
    public void onResume() {
        super.onResume();
        DownloadTrace.log(this, "DOWNLOADS_ACTIVITY_RESUME");
        if (!this.modHasResumedBefore) {
            this.modHasResumedBefore = true;
        } else {
            DownloadTrace.log(this, "DOWNLOADS_ACTIVITY_RECREATE");
            recreate();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.shabakaty.downloader.r9, com.shabakaty.downloader.ji1, android.app.Activity
    public void onStart() {
        super.onStart();
        DownloadTrace.log(this, "DOWNLOADS_ACTIVITY_START");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.shabakaty.downloader.r9, com.shabakaty.downloader.ji1, android.app.Activity
    public void onStop() {
        DownloadTrace.log(this, "DOWNLOADS_ACTIVITY_STOP");
        super.onStop();
    }

    @Override // com.shabakaty.downloader.vj
    public void q(int i) {
        j32.e(this, "this");
        vj.a.a(this, i);
    }

    @Override // com.shabakaty.downloader.xi
    public vj r() {
        return this;
    }
}
