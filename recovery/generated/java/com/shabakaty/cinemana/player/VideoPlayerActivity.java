package com.shabakaty.cinemana.player;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.opengl.GLSurfaceView;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import androidx.fragment.app.q;
import com.cinemana.pro.R;
import com.connectsdk.service.airplay.PListParser;
import com.facebook.drawee.generic.GenericDraweeHierarchy;
import com.google.android.material.button.MaterialButton;
import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.cinemana.ca1.Continue106;
import com.shabakaty.cinemana.ca1.Episodes107;
import com.shabakaty.cinemana.ca1.Ui8;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import com.shabakaty.cinemana.features.SequentialSubtitleManager;
import com.shabakaty.cinemana.local.LocalRuntime;
import com.shabakaty.cinemana.player.VideoPlayerActivity;
import com.shabakaty.downloader.SubtitleImportCallback;
import com.shabakaty.downloader.ad3;
import com.shabakaty.downloader.af2;
import com.shabakaty.downloader.b41;
import com.shabakaty.downloader.d4;
import com.shabakaty.downloader.do1;
import com.shabakaty.downloader.e12;
import com.shabakaty.downloader.ed3;
import com.shabakaty.downloader.hl3;
import com.shabakaty.downloader.j2;
import com.shabakaty.downloader.j25;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.kf2;
import com.shabakaty.downloader.mu0;
import com.shabakaty.downloader.n10;
import com.shabakaty.downloader.n5;
import com.shabakaty.downloader.ng2;
import com.shabakaty.downloader.nh3;
import com.shabakaty.downloader.o5;
import com.shabakaty.downloader.p00;
import com.shabakaty.downloader.p10;
import com.shabakaty.downloader.p3;
import com.shabakaty.downloader.q10;
import com.shabakaty.downloader.q5;
import com.shabakaty.downloader.rm1;
import com.shabakaty.downloader.s10;
import com.shabakaty.downloader.s3;
import com.shabakaty.downloader.s45;
import com.shabakaty.downloader.t43;
import com.shabakaty.downloader.uh0;
import com.shabakaty.downloader.uj2;
import com.shabakaty.downloader.uv3;
import com.shabakaty.downloader.vj;
import com.shabakaty.downloader.wc3;
import com.shabakaty.downloader.xc0;
import com.shabakaty.downloader.xi;
import com.shabakaty.downloader.y25;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import zendesk.support.request.CellBase;

/* JADX INFO: compiled from: VideoPlayerActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00012\u00020\u00052\u00020\u0003B\u0007¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/shabakaty/cinemana/player/VideoPlayerActivity;", "Lcom/shabakaty/downloader/xi;", "Lcom/shabakaty/downloader/d4;", "Lcom/shabakaty/downloader/p10;", "Lcom/shabakaty/downloader/q10;", "Lcom/shabakaty/downloader/e12$a;", "<init>", "()V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final class VideoPlayerActivity extends xi<d4, p10, q10> implements e12.a, p10 {
    public static final /* synthetic */ int A = 0;
    public final kf2 v;
    public s3<String[]> w;
    public boolean x;
    public y25 y;
    public mu0 z;

    /* JADX INFO: compiled from: VideoPlayerActivity.kt */
    public static final class a extends af2 implements rm1<Toast> {
        public a() {
            super(0);
        }

        @Override // com.shabakaty.downloader.rm1
        public Toast invoke() {
            return Toast.makeText(VideoPlayerActivity.this, BuildConfig.FLAVOR, 0);
        }
    }

    public VideoPlayerActivity() {
        super(R.layout.activity_video_player);
        this.v = ng2.a(new a());
        t43 t43VarA = uv3.a(t43.f(2L, TimeUnit.SECONDS));
        j25 j25Var = new j25(this, 1);
        xc0<? super Throwable> xc0Var = do1.d;
        j2 j2Var = do1.c;
        this.z = t43VarA.d(j25Var, xc0Var, j2Var, j2Var).h(n5.v, uh0.t, j2Var, xc0Var);
    }

    public final void E1(int i) {
        m0().getScaleListener().b = i;
        if (i == 1) {
            F().G.setValue(Boolean.TRUE);
            GenericDraweeHierarchy hierarchy = q0().e0.getHierarchy();
            if (hierarchy != null) {
                hierarchy.r(R.drawable.ic_fullscreen);
            }
            v0().O.setResizeMode(0);
            return;
        }
        F().G.setValue(Boolean.FALSE);
        GenericDraweeHierarchy hierarchy2 = q0().e0.getHierarchy();
        if (hierarchy2 != null) {
            hierarchy2.r(R.drawable.ic_fullscreen_exit);
        }
        v0().O.setResizeMode(F().t());
    }

    public final void I1() {
        this.x = false;
        T t = this.t;
        j32.c(t);
        ProgressBar progressBar = ((d4) t).N;
        j32.d(progressBar, "binding.playerProgressBar");
        s45.l(progressBar);
        T t2 = this.t;
        j32.c(t2);
        MaterialButton materialButton = ((d4) t2).O;
        j32.d(materialButton, "binding.playerRetryButton");
        s45.j(materialButton);
        F().k.q0(new ad3(1.0f, 1.0f));
        m0().z();
    }

    @Override // com.shabakaty.downloader.p10
    public void L0() {
        p0().C();
    }

    public final void R1() {
        String[] strArr = {"*/*"};
        s3<String[]> s3Var = this.w;
        if (s3Var == null) {
            return;
        }
        s3Var.a(strArr, null);
    }

    @Override // com.shabakaty.downloader.e12.a
    public void U1(b41 b41Var) {
        j32.e(b41Var, "episodeItem");
        F().C.setValue(Boolean.FALSE);
        m0().t(b41Var, Integer.parseInt(b41Var.a()));
    }

    public final void X1() {
        if ((isFinishing() || this.t == 0) ? false : true) {
            T t = this.t;
            j32.c(t);
            ProgressBar progressBar = ((d4) t).N;
            j32.d(progressBar, "binding.playerProgressBar");
            s45.j(progressBar);
            TextView textView = q0().f0;
            j32.d(textView, "controllerBinding.videoTitle");
            s45.l(textView);
        }
    }

    public final void Y1() {
        getWindow().setFlags(201327616, 201327616);
        getWindow().getDecorView().setSystemUiVisibility(5895);
        if (Build.VERSION.SDK_INT >= 26) {
            getWindow().getDecorView().setSystemUiVisibility(getWindow().getDecorView().getSystemUiVisibility() | 16);
        }
    }

    public void ca1OnCreateBase(Bundle bundle) {
        super.onCreate(bundle);
        Y1();
        F().z.setValue((VideoModel) getIntent().getParcelableExtra("VideoModelArg"));
        q10 q10VarF = F();
        nh3.y(hl3.e(q10VarF), null, 0, new s10(i1(), q10VarF, null), 3, null);
        I1();
        Episodes107.onPlayer(this);
    }

    @Override // com.shabakaty.downloader.xi
    public Class<q10> h0() {
        return q10.class;
    }

    public final y25 i1() {
        y25 y25Var = this.y;
        if (y25Var != null) {
            return y25Var;
        }
        j32.l("videoUtils");
        throw null;
    }

    public final void k0() {
        mu0 mu0Var;
        if (this.x) {
            return;
        }
        this.x = true;
        m0().B();
        CinemanaPlayerControllerView cinemanaPlayerControllerViewP0 = p0();
        cinemanaPlayerControllerViewP0.getSettingsBottomSheetController().d = null;
        mu0 mu0Var2 = cinemanaPlayerControllerViewP0.u;
        if ((mu0Var2 != null && (mu0Var2.n() ^ true)) && (mu0Var = cinemanaPlayerControllerViewP0.u) != null) {
            mu0Var.h();
        }
        wc3 playbackEventsHandler = m0().getPlaybackEventsHandler();
        playbackEventsHandler.u = null;
        mu0 mu0Var3 = playbackEventsHandler.D;
        if (mu0Var3 != null && !mu0Var3.n()) {
            mu0Var3.h();
        }
        Context applicationContext = getApplicationContext();
        j32.d(applicationContext, "applicationContext");
        j32.e(applicationContext, "context");
        if (q5.g == null) {
            synchronized (q5.class) {
                if (q5.g == null) {
                    new q5(applicationContext, null);
                }
            }
        }
        q5 q5Var = q5.g;
        if (q5Var != null) {
            q5Var.b();
        }
        this.z.h();
    }

    public final CinemanaPlayerView m0() {
        T t = this.t;
        j32.c(t);
        CinemanaPlayerView cinemanaPlayerView = ((d4) t).M;
        j32.d(cinemanaPlayerView, "binding.cinemenaPlayerView");
        return cinemanaPlayerView;
    }

    @Override // com.shabakaty.downloader.vj
    public void o() {
        I1();
    }

    @Override // com.shabakaty.downloader.ji1, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        SequentialSubtitleManager.onActivityResult(this, i, i2, intent);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        q supportFragmentManager = getSupportFragmentManager();
        if (supportFragmentManager.I("subtitle_style_settings") != null) {
            supportFragmentManager.Y();
        } else {
            k0();
            super.onBackPressed();
        }
    }

    @Override // com.shabakaty.downloader.r9, com.shabakaty.downloader.ji1, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        j32.e(configuration, "newConfig");
        E1(configuration.orientation);
        uj2.b bVar = uj2.c;
        Resources resources = getApplicationContext().getResources();
        j32.d(resources, "applicationContext.resources");
        Locale localeB = bVar.b(resources);
        Resources resources2 = getResources();
        j32.d(resources2, "resources");
        if (j32.a(localeB, bVar.b(resources2))) {
            super.onConfigurationChanged(configuration);
        } else {
            super.onConfigurationChanged(bVar.a().a().getResources().getConfiguration());
        }
    }

    @Override // com.shabakaty.downloader.xi, com.shabakaty.downloader.ji1, androidx.activity.ComponentActivity, com.shabakaty.downloader.p80, android.app.Activity
    public void onCreate(Bundle bundle) {
        ca1OnCreateBase(bundle);
        Ui8.landscape(this, bundle);
    }

    @Override // com.shabakaty.downloader.xi, com.shabakaty.downloader.r9, com.shabakaty.downloader.ji1, android.app.Activity
    public void onDestroy() {
        PlayerDiagnosticLog.event("activity_on_destroy");
        k0();
        SequentialSubtitleManager.stopEpisodePolling(this);
        super.onDestroy();
    }

    @Override // com.shabakaty.downloader.ji1, android.app.Activity
    public void onPause() {
        PlayerDiagnosticLog.event("activity_on_pause");
        Continue106.pause(this);
        View view = v0().O.u;
        if (view instanceof GLSurfaceView) {
            ((GLSurfaceView) view).onPause();
        }
        super.onPause();
        LocalRuntime.flushProgressAsync();
    }

    @Override // com.shabakaty.downloader.ji1, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        j32.e(strArr, "permissions");
        j32.e(iArr, "grantResults");
        if (i != 0) {
            super.onRequestPermissionsResult(i, strArr, iArr);
            return;
        }
        if ((!(iArr.length == 0)) && iArr[0] == 0) {
            R1();
        }
    }

    @Override // com.shabakaty.downloader.ji1, android.app.Activity
    public void onResume() {
        PlayerDiagnosticLog.event("activity_on_resume");
        if (F().k.C() != 0 && F().k.C() != CellBase.ID_SYSTEM_MESSAGE_REQUEST_CLOSED) {
            q10 q10VarF = F();
            VideoModel value = F().z.getValue();
            if (value == null) {
                value = new VideoModel(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, false, null, 0, null, null, null, null, false, null, null, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, false, null, 0, 0L, null, null, false, null, null, null, null, false, -1, Integer.MAX_VALUE);
            }
            q10VarF.v(value, F().k.C());
        }
        if (this.x) {
            I1();
        }
        View view = v0().O.u;
        if (view instanceof GLSurfaceView) {
            ((GLSurfaceView) view).onResume();
        }
        if (this.z.n()) {
            t43 t43VarA = uv3.a(t43.f(2L, TimeUnit.SECONDS));
            j25 j25Var = new j25(this, 0);
            xc0<? super Throwable> xc0Var = do1.d;
            j2 j2Var = do1.c;
            this.z = t43VarA.d(j25Var, xc0Var, j2Var, j2Var).h(new xc0() { // from class: com.shabakaty.downloader.k25
                @Override // com.shabakaty.downloader.xc0
                public final void accept(Object obj) {
                    int i = VideoPlayerActivity.A;
                }
            }, o5.u, j2Var, xc0Var);
        }
        ed3 settingsBottomSheetController = p0().getSettingsBottomSheetController();
        CinemanaPlayerControllerView cinemanaPlayerControllerViewP0 = p0();
        Objects.requireNonNull(settingsBottomSheetController);
        settingsBottomSheetController.d = cinemanaPlayerControllerViewP0;
        p0().A();
        super.onResume();
    }

    @Override // com.shabakaty.downloader.r9, com.shabakaty.downloader.ji1, android.app.Activity
    public void onStart() {
        PlayerDiagnosticLog.event("activity_on_start");
        this.w = registerForActivityResult(new p3(), new SubtitleImportCallback(this));
        super.onStart();
        SequentialSubtitleManager.installObserver(this, F().z);
        F().k.z(true);
    }

    @Override // com.shabakaty.downloader.r9, com.shabakaty.downloader.ji1, android.app.Activity
    public void onStop() {
        PlayerDiagnosticLog.event("activity_on_stop");
        SequentialSubtitleManager.stopEpisodePolling(this);
        F().k.z(false);
        super.onStop();
    }

    public final CinemanaPlayerControllerView p0() {
        CinemanaPlayerControllerView cinemanaPlayerControllerView = v0().N;
        j32.d(cinemanaPlayerControllerView, "playerViewBinding.controllerView");
        return cinemanaPlayerControllerView;
    }

    @Override // com.shabakaty.downloader.vj
    public void q(int i) {
        j32.e(this, "this");
        vj.a.a(this, i);
    }

    public final p00 q0() {
        return v0().N.getBinding();
    }

    @Override // com.shabakaty.downloader.xi
    public vj r() {
        return this;
    }

    @Override // android.app.Activity
    public void setRequestedOrientation(int i) {
        super.setRequestedOrientation(i);
        E1(i);
    }

    public final Toast u0() {
        return (Toast) this.v.getValue();
    }

    public final n10 v0() {
        T t = this.t;
        j32.c(t);
        return ((d4) t).M.getBinding();
    }

    @Override // com.shabakaty.downloader.vj
    public void z0(String str) {
        j32.e(this, "this");
        j32.e(str, PListParser.TAG_STRING);
        vj.a.b(this, str);
    }
}
