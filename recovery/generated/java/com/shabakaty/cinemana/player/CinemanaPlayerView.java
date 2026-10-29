package com.shabakaty.cinemana.player;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.annotation.SuppressLint;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.SurfaceView;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityManager;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.cinemana.pro.R;
import com.facebook.drawee.generic.GenericDraweeHierarchy;
import com.google.android.exoplayer2.ui.PlayerView;
import com.google.android.exoplayer2.ui.SubtitleView;
import com.google.android.material.button.MaterialButton;
import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.cinemana.ca1.Continue106;
import com.shabakaty.cinemana.ca1.Player94;
import com.shabakaty.cinemana.ca1.Ui7;
import com.shabakaty.cinemana.domain.models.local.Quality;
import com.shabakaty.cinemana.domain.models.local.SkippingDurations;
import com.shabakaty.cinemana.domain.models.local.Subtitle;
import com.shabakaty.cinemana.domain.models.local.TranscodeFile;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import com.shabakaty.cinemana.features.LocalMkvResolver;
import com.shabakaty.cinemana.mod.PlayerEnhancements;
import com.shabakaty.cinemana.player.CinemanaPlayerView;
import com.shabakaty.cinemana.utils.extensions.ObserverWhileStartedImpl;
import com.shabakaty.downloader.FontTypefaceResolver;
import com.shabakaty.downloader.SubtitleStylePlayerCollector;
import com.shabakaty.downloader.ad3;
import com.shabakaty.downloader.af2;
import com.shabakaty.downloader.am4;
import com.shabakaty.downloader.b41;
import com.shabakaty.downloader.bi2;
import com.shabakaty.downloader.c10;
import com.shabakaty.downloader.d10;
import com.shabakaty.downloader.d4;
import com.shabakaty.downloader.do1;
import com.shabakaty.downloader.dp2;
import com.shabakaty.downloader.e10;
import com.shabakaty.downloader.ed3;
import com.shabakaty.downloader.ep0;
import com.shabakaty.downloader.f00;
import com.shabakaty.downloader.f10;
import com.shabakaty.downloader.ff3;
import com.shabakaty.downloader.g10;
import com.shabakaty.downloader.h00;
import com.shabakaty.downloader.h10;
import com.shabakaty.downloader.hl3;
import com.shabakaty.downloader.i50;
import com.shabakaty.downloader.iq6;
import com.shabakaty.downloader.is3;
import com.shabakaty.downloader.j10;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.ja3;
import com.shabakaty.downloader.k10;
import com.shabakaty.downloader.kf2;
import com.shabakaty.downloader.kf5;
import com.shabakaty.downloader.l10;
import com.shabakaty.downloader.ld0;
import com.shabakaty.downloader.lv;
import com.shabakaty.downloader.m10;
import com.shabakaty.downloader.m50;
import com.shabakaty.downloader.mu0;
import com.shabakaty.downloader.n10;
import com.shabakaty.downloader.ne4;
import com.shabakaty.downloader.ng2;
import com.shabakaty.downloader.nh3;
import com.shabakaty.downloader.o15;
import com.shabakaty.downloader.o84;
import com.shabakaty.downloader.p00;
import com.shabakaty.downloader.p10;
import com.shabakaty.downloader.q10;
import com.shabakaty.downloader.q5;
import com.shabakaty.downloader.qv4;
import com.shabakaty.downloader.rg4;
import com.shabakaty.downloader.rm1;
import com.shabakaty.downloader.rm3;
import com.shabakaty.downloader.s00;
import com.shabakaty.downloader.s45;
import com.shabakaty.downloader.s64;
import com.shabakaty.downloader.t10;
import com.shabakaty.downloader.tm1;
import com.shabakaty.downloader.tp6;
import com.shabakaty.downloader.uv3;
import com.shabakaty.downloader.vc3;
import com.shabakaty.downloader.vp1;
import com.shabakaty.downloader.w10;
import com.shabakaty.downloader.wc3;
import com.shabakaty.downloader.wt2;
import com.shabakaty.downloader.xc3;
import com.shabakaty.downloader.xv2;
import com.shabakaty.downloader.zc3;
import com.shabakaty.downloader.zi2;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import kotlin.Metadata;

/* JADX INFO: compiled from: CinemanaPlayerView.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0010\u0010\u000b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0002J\u000e\u0010\u000e\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\fJ\u000e\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0005J\u0006\u0010\u0011\u001a\u00020\u0005R\u001d\u0010\u0017\u001a\u00020\u00128B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u001d\u0010\u001c\u001a\u00020\u00188B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0019\u0010\u0014\u001a\u0004\b\u001a\u0010\u001bR\u001d\u0010!\u001a\u00020\u001d8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001e\u0010\u0014\u001a\u0004\b\u001f\u0010 R\u0016\u0010%\u001a\u00020\"8B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b#\u0010$R\u0016\u0010)\u001a\u00020&8B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b'\u0010(R$\u00100\u001a\u00020*2\u0006\u0010+\u001a\u00020*8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R\u001d\u00105\u001a\u0002018F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\b2\u0010\u0014\u001a\u0004\b3\u00104R\u001d\u0010:\u001a\u0002068F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\b7\u0010\u0014\u001a\u0004\b8\u00109R\u0013\u0010>\u001a\u00020;8F@\u0006¢\u0006\u0006\u001a\u0004\b<\u0010=R\u001d\u0010C\u001a\u00020?8F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\b@\u0010\u0014\u001a\u0004\bA\u0010B¨\u0006D"}, d2 = {"Lcom/shabakaty/cinemana/player/CinemanaPlayerView;", "Landroid/widget/FrameLayout;", "Lcom/shabakaty/downloader/zc3;", "Landroid/view/GestureDetector$OnGestureListener;", "Landroid/view/GestureDetector$OnDoubleTapListener;", BuildConfig.FLAVOR, "type", "Lcom/shabakaty/downloader/qv4;", "setSeekString", "Lcom/shabakaty/downloader/b41;", "episode", "setSelectedEpisode", "Lcom/shabakaty/downloader/p10;", "navigator", "setNavigator", "resizeMode", "setResizeMode", "getResizeMode", "Lcom/shabakaty/cinemana/player/VideoPlayerActivity;", "playerActivity$delegate", "Lcom/shabakaty/downloader/kf2;", "getPlayerActivity", "()Lcom/shabakaty/cinemana/player/VideoPlayerActivity;", "playerActivity", "Lcom/shabakaty/downloader/q10;", "viewModel$delegate", "getViewModel", "()Lcom/shabakaty/downloader/q10;", "viewModel", "Landroid/view/ScaleGestureDetector;", "scaleGestureDetector$delegate", "getScaleGestureDetector", "()Landroid/view/ScaleGestureDetector;", "scaleGestureDetector", "Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;", "getController", "()Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;", "controller", "Lcom/shabakaty/downloader/p00;", "getControllerBinding", "()Lcom/shabakaty/downloader/p00;", "controllerBinding", "Lcom/shabakaty/downloader/s64;", "value", "getPlayer", "()Lcom/shabakaty/downloader/s64;", "setPlayer", "(Lcom/shabakaty/downloader/s64;)V", "player", "Lcom/shabakaty/downloader/is3;", "scaleListener$delegate", "getScaleListener", "()Lcom/shabakaty/downloader/is3;", "scaleListener", "Lcom/shabakaty/downloader/wc3;", "playbackEventsHandler$delegate", "getPlaybackEventsHandler", "()Lcom/shabakaty/downloader/wc3;", "playbackEventsHandler", "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;", "getVideoModel", "()Lcom/shabakaty/cinemana/domain/models/local/VideoModel;", "videoModel", "Lcom/shabakaty/downloader/n10;", "binding$delegate", "getBinding", "()Lcom/shabakaty/downloader/n10;", "binding", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final class CinemanaPlayerView extends FrameLayout implements zc3, GestureDetector.OnGestureListener, GestureDetector.OnDoubleTapListener {
    public static final /* synthetic */ int z = 0;
    private boolean modLongPressSpeedActive;
    private float modPreviousSpeed;
    public vp1 r;
    public p10 s;
    private ObserverWhileStartedImpl subtitleStyleObserver;
    public final kf2 t;
    public final kf2 u;
    public final kf2 v;
    public final kf2 w;
    public final kf2 x;
    public final kf2 y;

    /* JADX INFO: compiled from: CinemanaPlayerView.kt */
    public static final class a extends af2 implements tm1<VideoModel, qv4> {
        public final /* synthetic */ int s;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i) {
            super(1);
            this.s = i;
        }

        @Override // com.shabakaty.downloader.tm1
        public qv4 invoke(VideoModel videoModel) {
            VideoModel videoModel2 = videoModel;
            j32.e(videoModel2, "videoModel");
            CinemanaPlayerView cinemanaPlayerView = CinemanaPlayerView.this;
            int i = this.s;
            int i2 = CinemanaPlayerView.z;
            Objects.requireNonNull(cinemanaPlayerView);
            new Handler(Looper.getMainLooper()).postDelayed(new d10(cinemanaPlayerView, i, 1), 100L);
            CinemanaPlayerView.this.z();
            SkippingDurations skippingDurations = videoModel2.skippingDurations;
            ja3 ja3VarC = CinemanaPlayerView.this.getPlaybackEventsHandler().c();
            List<String> list = skippingDurations.start;
            ArrayList arrayList = new ArrayList(i50.O(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(Double.valueOf(Double.parseDouble((String) it.next())));
            }
            List<String> list2 = skippingDurations.end;
            ArrayList arrayList2 = new ArrayList(i50.O(list2, 10));
            Iterator<T> it2 = list2.iterator();
            while (it2.hasNext()) {
                arrayList2.add(Double.valueOf(Double.parseDouble((String) it2.next())));
            }
            ja3VarC.c(arrayList, arrayList2);
            CinemanaPlayerView.this.s(null);
            VideoModel value = CinemanaPlayerView.this.getViewModel().z.getValue();
            if (value != null) {
                ed3 settingsBottomSheetController = CinemanaPlayerView.this.getController().getSettingsBottomSheetController();
                Objects.requireNonNull(settingsBottomSheetController);
                j32.e(value, "<set-?>");
                settingsBottomSheetController.a = value;
            }
            CinemanaPlayerView.this.getController().E();
            return qv4.a;
        }
    }

    /* JADX INFO: compiled from: CinemanaPlayerView.kt */
    public static final class b extends af2 implements rm1<qv4> {
        public b() {
            super(0);
        }

        @Override // com.shabakaty.downloader.rm1
        public qv4 invoke() {
            CinemanaPlayerView.this.getPlayerActivity().X1();
            return qv4.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CinemanaPlayerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        j32.e(context, "context");
        j32.e(context, "context");
        this.t = ng2.a(new g10(context));
        this.u = ng2.a(new m10(this));
        this.v = ng2.a(new j10(this));
        this.w = ng2.a(new h10(context, this));
        this.x = ng2.a(new f10(this, context));
        this.y = ng2.a(new e10(context, this));
        getBinding().B(getPlayerActivity());
        vp1 vp1Var = new vp1(context, this);
        this.r = vp1Var;
        ((vp1.b) vp1Var.a).a.setOnDoubleTapListener(this);
        PlayerView playerView = getBinding().O;
        playerView.setResizeMode(0);
        playerView.setControllerAutoShow(false);
    }

    private final void attachSubtitleStyleObserver() {
        if (this.subtitleStyleObserver != null) {
            return;
        }
        this.subtitleStyleObserver = new ObserverWhileStartedImpl(getPlayerActivity(), new rg4(getViewModel().i.h), new SubtitleStylePlayerCollector(this, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CinemanaPlayerControllerView getController() {
        CinemanaPlayerControllerView cinemanaPlayerControllerView = getBinding().N;
        j32.d(cinemanaPlayerControllerView, "binding.controllerView");
        return cinemanaPlayerControllerView;
    }

    private final p00 getControllerBinding() {
        return getController().getBinding();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final VideoPlayerActivity getPlayerActivity() {
        return (VideoPlayerActivity) this.t.getValue();
    }

    private final ScaleGestureDetector getScaleGestureDetector() {
        return (ScaleGestureDetector) this.w.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final q10 getViewModel() {
        return (q10) this.u.getValue();
    }

    public static void l(CinemanaPlayerView cinemanaPlayerView, int i) {
        j32.e(cinemanaPlayerView, "this$0");
        RecyclerView.m layoutManager = cinemanaPlayerView.getControllerBinding().P.getLayoutManager();
        Objects.requireNonNull(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager");
        LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
        cinemanaPlayerView.getControllerBinding().P.t0(((linearLayoutManager.l1() + linearLayoutManager.j1()) + i) / 3);
    }

    public static void m(CinemanaPlayerView cinemanaPlayerView, int i) {
        j32.e(cinemanaPlayerView, "this$0");
        cinemanaPlayerView.getViewModel().o = true;
        if (i == 1) {
            int iN = cinemanaPlayerView.getViewModel().n() * 1000;
            if (iN <= 0) {
                return;
            }
            cinemanaPlayerView.getPlayer().q(rm3.d(cinemanaPlayerView.getPlayer().C() + ((long) iN), cinemanaPlayerView.getPlayer().X()));
            return;
        }
        int iN2 = cinemanaPlayerView.getViewModel().n() * 1000;
        if (iN2 <= 0) {
            return;
        }
        long jC = cinemanaPlayerView.getPlayer().C() - ((long) iN2);
        if (jC < 0) {
            jC = 0;
        }
        cinemanaPlayerView.getPlayer().q(jC);
    }

    public static void n(CinemanaPlayerView cinemanaPlayerView) {
        j32.e(cinemanaPlayerView, "this$0");
        cinemanaPlayerView.getViewModel().o = false;
        cinemanaPlayerView.getBinding().P.setScaleX(1.0f);
        cinemanaPlayerView.getBinding().P.setScaleY(1.0f);
        cinemanaPlayerView.getBinding().S.setText(BuildConfig.FLAVOR);
        cinemanaPlayerView.getViewModel().p = 0;
    }

    public static final boolean r(CinemanaPlayerView cinemanaPlayerView) {
        return j32.a(cinemanaPlayerView.getViewModel().C.getValue(), Boolean.TRUE);
    }

    private final void setSeekString(int i) {
        int i2 = getViewModel().p;
        int iN = i == 1 ? getViewModel().n() + i2 : i2 - getViewModel().n();
        getViewModel().p = iN;
        getBinding().S.setText(iN + ' ' + getContext().getString(R.string.seconds_txt));
    }

    private final void setSelectedEpisode(b41 b41Var) {
        bi2<String, List<b41>> value = getViewModel().B.getValue();
        if (value != null) {
            Iterator<Map.Entry<String, List<b41>>> it = value.entrySet().iterator();
            while (it.hasNext()) {
                for (b41 b41Var2 : it.next().getValue()) {
                    b41Var2.a = j32.a(b41Var.c(), b41Var2.c());
                    getViewModel().z.setValue(b41Var.b);
                    zi2.f(getViewModel().z);
                }
            }
        }
        xv2<List<b41>> xv2Var = getViewModel().A;
        bi2<String, List<b41>> value2 = getViewModel().B.getValue();
        xv2Var.setValue(value2 == null ? null : value2.get(b41Var.e()));
        zi2.f(getViewModel().B);
        RecyclerView.e adapter = getControllerBinding().P.getAdapter();
        if (adapter != null) {
            adapter.notifyDataSetChanged();
        }
        VideoPlayerActivity playerActivity = getPlayerActivity();
        if ((playerActivity.isFinishing() || playerActivity.t == 0) ? false : true) {
            T t = getPlayerActivity().t;
            j32.c(t);
            ProgressBar progressBar = ((d4) t).N;
            j32.d(progressBar, "playerActivity.binding.playerProgressBar");
            s45.l(progressBar);
        }
    }

    public final void A(int i) {
        if (i == 1) {
            GenericDraweeHierarchy hierarchy = getBinding().R.getHierarchy();
            if (hierarchy != null) {
                hierarchy.r(R.drawable.ic_fast_forward);
            }
        } else {
            GenericDraweeHierarchy hierarchy2 = getBinding().R.getHierarchy();
            if (hierarchy2 != null) {
                hierarchy2.r(R.drawable.ic_rewind);
            }
        }
        setSeekString(i);
        getBinding().P.animate().alpha(1.0f).scaleX(1.4f).scaleY(1.4f).setDuration(150L).withStartAction(new d10(this, i, 0)).withEndAction(new c10(this, 0)).start();
    }

    public final void B() {
        long jC = getPlayer().C();
        if (getPlayer().h() == 3) {
            getViewModel().v(getVideoModel(), jC);
        }
        s64 player = getPlayer();
        View videoSurfaceView = getBinding().O.getVideoSurfaceView();
        Objects.requireNonNull(videoSurfaceView, "null cannot be cast to non-null type android.view.SurfaceView");
        player.H((SurfaceView) videoSurfaceView);
        s64 player2 = getPlayer();
        player2.d.r0(getPlaybackEventsHandler());
        getPlayer().z(false);
        getPlayer().t0(false);
        getBinding().O.setPlayer(null);
    }

    @Override // com.shabakaty.downloader.zc3
    public void a(xc3 xc3Var) {
        long jC = (getPlayer().C() + ((long) 500)) / ((long) 1000);
        Context context = getContext();
        j32.d(context, "context");
        if (q5.g == null) {
            synchronized (q5.class) {
                if (q5.g == null) {
                    new q5(context, null);
                }
            }
        }
        q5 q5Var = q5.g;
        if (q5Var != null) {
            q5Var.d(getVideoModel().nb, 4, Long.valueOf(jC));
        }
        getPlayerActivity().X1();
    }

    @Override // com.shabakaty.downloader.zc3
    public void b(boolean z2) {
        PlayerDiagnosticLog.value("player_loading_spinner_visible", Boolean.valueOf(z2));
        if (getPlayerActivity().isFinishing() || getPlayerActivity().isDestroyed()) {
            return;
        }
        T t = getPlayerActivity().t;
        j32.c(t);
        ProgressBar progressBar = ((d4) t).N;
        j32.d(progressBar, "playerActivity.binding.playerProgressBar");
        progressBar.setVisibility(z2 ? 0 : 8);
    }

    @Override // com.shabakaty.downloader.zc3
    public void c(long j, long j2) {
        VideoModel value;
        Continue106.sample(this, false);
        Long value2 = getViewModel().F.getValue();
        if (value2 == null) {
            value2 = 0L;
        }
        long jLongValue = value2.longValue();
        if (j > jLongValue * 0.95d) {
            getViewModel().l();
        } else {
            q10 viewModel = getViewModel();
            if (viewModel.l.isLoggedIn() && (value = viewModel.z.getValue()) != null) {
                nh3.y(viewModel.e(), null, 0, new t10(viewModel, value, null), 3, null);
            }
        }
        getViewModel().u.setValue(kf5.k(j));
        getViewModel().w.setValue(Long.valueOf(j));
        getViewModel().x.setValue(Boolean.valueOf(j >= jLongValue));
        getViewModel().E.setValue(Long.valueOf(j2));
        getViewModel().u();
        T t = getPlayerActivity().t;
        j32.c(t);
        MaterialButton materialButton = ((d4) t).O;
        j32.d(materialButton, "playerActivity.binding.playerRetryButton");
        s45.j(materialButton);
    }

    @Override // com.shabakaty.downloader.zc3
    public void d() {
        getController().G();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (!Player94.touch(this, motionEvent)) {
            return super.dispatchTouchEvent(motionEvent);
        }
        if (!Player94.takeCapture(this)) {
            return true;
        }
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        motionEventObtain.setAction(3);
        super.dispatchTouchEvent(motionEventObtain);
        motionEventObtain.recycle();
        return true;
    }

    @Override // com.shabakaty.downloader.zc3
    public void e() {
        getController().A();
    }

    @Override // com.shabakaty.downloader.zc3
    public void f(boolean z2) {
        if (z2) {
            getController().G();
        }
        getViewModel().y.setValue(Boolean.valueOf(z2));
    }

    @Override // com.shabakaty.downloader.zc3
    public void g() {
        getViewModel().C.setValue(Boolean.TRUE);
        Continue106.sample(this, false);
    }

    public final n10 getBinding() {
        return (n10) this.y.getValue();
    }

    public final wc3 getPlaybackEventsHandler() {
        return (wc3) this.x.getValue();
    }

    public final s64 getPlayer() {
        return getViewModel().k;
    }

    public final int getResizeMode() {
        return getViewModel().t();
    }

    public final is3 getScaleListener() {
        return (is3) this.v.getValue();
    }

    public final VideoModel getVideoModel() {
        VideoModel value = getViewModel().z.getValue();
        return value == null ? new VideoModel(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, false, null, 0, null, null, null, null, false, null, null, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, false, null, 0, 0L, null, null, false, null, null, null, null, false, -1, Integer.MAX_VALUE) : value;
    }

    @Override // com.shabakaty.downloader.zc3
    public void h(o84 o84Var, boolean z2) {
        j32.e(o84Var, "scene");
        if (z2) {
            getViewModel().l();
        }
        Button button = getControllerBinding().b0;
        j32.d(button, "controllerBinding.skipIntro");
        s45.l(button);
    }

    public final void hideSpeedBadge() {
        int identifier;
        View viewFindViewById;
        Context context = getContext();
        if (context == null || (identifier = context.getResources().getIdentifier("mod_speed_badge", "id", context.getPackageName())) == 0 || (viewFindViewById = findViewById(identifier)) == null) {
            return;
        }
        viewFindViewById.setVisibility(8);
    }

    @Override // com.shabakaty.downloader.zc3
    public void i(long j, long j2) {
        Continue106.sample(this, true);
        if (j32.a(getVideoModel().kind, "2")) {
            List<b41> value = getViewModel().A.getValue();
            boolean z2 = false;
            if (value != null && (!value.isEmpty())) {
                z2 = true;
            }
            if (!z2 || j <= 0 || j - j2 >= 20000 || !getViewModel().f.a.getBoolean("key_auto_play_next_episode", true)) {
                return;
            }
            u();
        }
    }

    @Override // com.shabakaty.downloader.zc3
    public void j(long j) {
        Continue106.sample(this, true);
        getViewModel().v(getVideoModel(), j);
    }

    @Override // com.shabakaty.downloader.zc3
    public void k(o84 o84Var) {
        Button button = getControllerBinding().b0;
        j32.d(button, "controllerBinding.skipIntro");
        s45.j(button);
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0036  */
    @Override // android.view.GestureDetector.OnDoubleTapListener
    public boolean onDoubleTap(MotionEvent motionEvent) {
        boolean z2;
        if (!x()) {
            return false;
        }
        float x = motionEvent == null ? 0.0f : motionEvent.getX();
        double d = x;
        if (d >= ((double) getWidth()) / 2.75d) {
            if (d > (((double) getWidth()) / 7.333d) + ((double) (getWidth() / 2))) {
                z2 = true;
            } else {
                z2 = false;
            }
        } else {
            z2 = true;
        }
        if (z2) {
            q10 viewModel = getViewModel();
            j32.d(viewModel, "viewModel");
            nh3.y(hl3.e(viewModel), null, 0, new l10(this, x, null), 3, null);
            return false;
        }
        s64 player = getPlayer();
        boolean z3 = !getPlayer().f();
        player.z(z3);
        CinemanaPlayerControllerView controller = getController();
        PlayerEnhancements.updateForPlayback(controller);
        if (z3) {
            controller.setVisibility(0);
            controller.B();
            PlayerEnhancements.hideAllPlayerUiDelayed(controller);
        } else {
            PlayerEnhancements.hideAllPlayerUi(controller);
        }
        return true;
    }

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public boolean onDoubleTapEvent(MotionEvent motionEvent) {
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x003f  */
    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onDown(MotionEvent motionEvent) {
        boolean z2;
        float x = motionEvent == null ? 0.0f : motionEvent.getX();
        if (j32.a(getViewModel().C.getValue(), Boolean.TRUE) && getViewModel().o) {
            if (Math.abs(getViewModel().p) >= getViewModel().n()) {
                z2 = true;
            } else {
                z2 = false;
            }
        } else {
            z2 = false;
        }
        if (!z2) {
            return false;
        }
        w(x);
        return true;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        return false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public void onLongPress(MotionEvent motionEvent) {
        q10 viewModel = getViewModel();
        if (viewModel != null) {
            this.modPreviousSpeed = viewModel.H;
            this.modLongPressSpeedActive = true;
            getPlayer().q0(new ad3(2.0f, 1.0f));
            showSpeedBadge();
        }
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        return false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public void onShowPress(MotionEvent motionEvent) {
    }

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
        mu0 mu0Var;
        Boolean value = getViewModel().D.getValue();
        if (value != null && (value.booleanValue() ^ true)) {
            getController().B();
        } else {
            if ((getController().getVisibility() == 0) && x()) {
                CinemanaPlayerControllerView controller = getController();
                mu0 mu0Var2 = controller.u;
                if ((mu0Var2 != null && (mu0Var2.n() ^ true)) && (mu0Var = controller.u) != null) {
                    mu0Var.h();
                }
                controller.animate().alpha(0.0f).setDuration(200L).withEndAction(new s00(controller, 2)).start();
            } else if (x()) {
                getController().F();
            }
        }
        return false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onSingleTapUp(MotionEvent motionEvent) {
        return false;
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (((vp1.b) this.r.a).a.onTouchEvent(motionEvent)) {
            return true;
        }
        Integer numValueOf = motionEvent == null ? null : Integer.valueOf(motionEvent.getAction());
        if (numValueOf == null || numValueOf.intValue() != 1) {
            return getScaleGestureDetector().onTouchEvent(motionEvent);
        }
        restoreSpeedIfNeeded();
        return performClick();
    }

    public final void restoreSpeedIfNeeded() {
        if (this.modLongPressSpeedActive) {
            this.modLongPressSpeedActive = false;
            getPlayer().q0(new ad3(this.modPreviousSpeed, 1.0f));
            hideSpeedBadge();
        }
    }

    public final void s(String str) {
        if (j32.a(str, "yes")) {
            q10 viewModel = getViewModel();
            Objects.requireNonNull(viewModel);
            viewModel.i(new w10(viewModel, true, null));
            getPlaybackEventsHandler().c().b(true);
        } else if (j32.a(str, "no")) {
            q10 viewModel2 = getViewModel();
            Objects.requireNonNull(viewModel2);
            viewModel2.i(new w10(viewModel2, false, null));
            getPlaybackEventsHandler().c().b(false);
        } else {
            getPlaybackEventsHandler().c().b(getViewModel().i.f());
        }
        long jC = (getPlayer().C() + ((long) 500)) / ((long) 1000);
        Context context = getContext();
        j32.d(context, "context");
        if (q5.g == null) {
            synchronized (q5.class) {
                if (q5.g == null) {
                    new q5(context, null);
                }
            }
        }
        q5 q5Var = q5.g;
        if (q5Var == null) {
            return;
        }
        String str2 = getVideoModel().nb;
        Long lValueOf = Long.valueOf(jC);
        j32.e(str2, "videoId");
        q5.c(q5Var, str2, "3", (!j32.a(str, "yes") && j32.a(str, "no")) ? 3 : 2, lValueOf, null, 16);
    }

    public final void setNavigator(p10 p10Var) {
        j32.e(p10Var, "navigator");
        this.s = p10Var;
        n10 binding = getBinding();
        p10 p10Var2 = this.s;
        if (p10Var2 != null) {
            binding.G(p10Var2);
        } else {
            j32.l("navigator");
            throw null;
        }
    }

    public final void setPlayer(s64 s64Var) {
        j32.e(s64Var, "value");
        q10 viewModel = getViewModel();
        Objects.requireNonNull(viewModel);
        j32.e(s64Var, "<set-?>");
        viewModel.k = s64Var;
        Player94.install(this, s64Var);
    }

    public final void setResizeMode(int i) {
        WindowManager.LayoutParams attributes;
        getViewModel().f.b.putInt("key_video_scale_mode", i).apply();
        if (getPlayerActivity().getRequestedOrientation() == 6) {
            getBinding().O.setResizeMode(i);
        }
        VideoPlayerActivity playerActivity = getPlayerActivity();
        int i2 = i == 4 ? R.string.zoom : R.string.fit;
        playerActivity.u0().cancel();
        playerActivity.u0().setText(i2);
        playerActivity.u0().show();
        if (Build.VERSION.SDK_INT >= 28) {
            if (i == 4) {
                Window window = getPlayerActivity().getWindow();
                attributes = window != null ? window.getAttributes() : null;
                if (attributes == null) {
                    return;
                }
                attributes.layoutInDisplayCutoutMode = 1;
                return;
            }
            Window window2 = getPlayerActivity().getWindow();
            attributes = window2 != null ? window2.getAttributes() : null;
            if (attributes == null) {
                return;
            }
            attributes.layoutInDisplayCutoutMode = 2;
        }
    }

    public final void showSpeedBadge() {
        int identifier;
        View viewFindViewById;
        Context context = getContext();
        if (context == null || (identifier = context.getResources().getIdentifier("mod_speed_badge", "id", context.getPackageName())) == 0 || (viewFindViewById = findViewById(identifier)) == null) {
            return;
        }
        viewFindViewById.setVisibility(0);
    }

    public final void t(b41 b41Var, int i) {
        if (b41Var == null) {
            return;
        }
        Continue106.sample(this, true);
        Ui7.navigation(this, b41Var);
        setSelectedEpisode(b41Var);
        getController().E();
        getControllerBinding().W.setText(getContext().getString(R.string.season_episode_txt, j32.j(getVideoModel().season, " "), getPlayerActivity().i1().a(getVideoModel())));
        q10 viewModel = getViewModel();
        a aVar = new a(i);
        b bVar = new b();
        Objects.requireNonNull(viewModel);
        j32.e(b41Var, "episodeItem");
        j32.e(aVar, "onSuccess");
        j32.e(bVar, "onError");
        List listD = b41Var.d();
        if (listD == null || listD.isEmpty()) {
            tp6.a(uv3.b(uv3.d(viewModel.g.b(b41Var.c()).p(viewModel.g.a(b41Var.c()), viewModel.r))).k(new o15(viewModel, aVar), new f00(bVar)), viewModel.b);
            return;
        }
        xv2<VideoModel> xv2Var = viewModel.z;
        VideoModel videoModel = b41Var.b;
        List<Quality> listD2 = b41Var.d();
        ArrayList arrayList = new ArrayList(i50.O(listD2, 10));
        for (Quality quality : listD2) {
            arrayList.add(new TranscodeFile(quality.name, quality.resolution, BuildConfig.FLAVOR, BuildConfig.FLAVOR, quality.url));
        }
        viewModel.m(videoModel, arrayList);
        aVar.invoke(videoModel);
        xv2Var.setValue(videoModel);
    }

    /* JADX WARN: Code duplicated, block: B:47:0x0107  */
    public final void u() {
        List list;
        b41 b41Var;
        String strE;
        List<b41> arrayList;
        int i;
        if (getControllerBinding().P.getAdapter() == null) {
            return;
        }
        int i2 = iq6.i(getViewModel().A.getValue());
        bi2<String, List<b41>> value = getViewModel().B.getValue();
        if (value == null) {
            strE = null;
        } else {
            j32.e(value, "<this>");
            Set<Map.Entry<String, List<b41>>> setEntrySet = value.entrySet();
            j32.d(setEntrySet, "entries");
            Map.Entry entry = (Map.Entry) m50.j0(setEntrySet);
            strE = (entry == null || (list = (List) entry.getValue()) == null || (b41Var = (b41) m50.b0(list)) == null) ? "0" : b41Var.e();
        }
        boolean zA = j32.a(strE, getVideoModel().season);
        int i3 = i2 + 1;
        List<b41> value2 = getViewModel().A.getValue();
        if (i3 < (value2 == null ? 0 : value2.size())) {
            List<b41> value3 = getViewModel().A.getValue();
            t(value3 != null ? value3.get(i3) : null, i3);
            return;
        }
        if (zA) {
            return;
        }
        xv2<List<b41>> xv2Var = getViewModel().A;
        bi2<String, List<b41>> value4 = getViewModel().B.getValue();
        String str = getVideoModel().season;
        j32.e(xv2Var, "<this>");
        j32.e(str, "currentSeason");
        j32.e(str, "currentSeason");
        if (value4 == null) {
            arrayList = null;
        } else {
            Set<Map.Entry<String, List<b41>>> setEntrySet2 = value4.entrySet();
            j32.d(setEntrySet2, "entries");
            List listX0 = m50.x0(setEntrySet2);
            j32.e(str, "currentSeason");
            Set<Map.Entry<String, List<b41>>> setEntrySet3 = value4.entrySet();
            if (setEntrySet3 == null) {
                i = 0;
                break;
            }
            Iterator<T> it = setEntrySet3.iterator();
            i = 0;
            while (true) {
                if (!it.hasNext()) {
                    i = 0;
                    break;
                }
                int i4 = i + 1;
                if (j32.a(((Map.Entry) it.next()).getKey(), str)) {
                    break;
                } else {
                    i = i4;
                }
            }
            Map.Entry entry2 = (Map.Entry) m50.c0(listX0, i + 1);
            if (entry2 == null) {
                arrayList = null;
            } else {
                arrayList = (List) entry2.getValue();
            }
        }
        if (arrayList == null) {
            arrayList = new ArrayList<>();
        }
        xv2Var.setValue(arrayList);
        List<b41> value5 = getViewModel().A.getValue();
        t(value5 != null ? (b41) m50.b0(value5) : null, 0);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0056  */
    /* JADX WARN: Code duplicated, block: B:45:0x00f5  */
    public final void v() {
        String strE;
        List<b41> arrayList;
        b41 b41Var;
        int i;
        List list;
        b41 b41Var2;
        if (getControllerBinding().P.getAdapter() == null) {
            return;
        }
        int i2 = iq6.i(getViewModel().A.getValue());
        String str = getVideoModel().season;
        bi2<String, List<b41>> value = getViewModel().B.getValue();
        if (value == null) {
            strE = "0";
        } else {
            Set<Map.Entry<String, List<b41>>> setEntrySet = value.entrySet();
            j32.d(setEntrySet, "entries");
            Map.Entry entry = (Map.Entry) m50.a0(setEntrySet);
            if (entry == null || (list = (List) entry.getValue()) == null || (b41Var2 = (b41) m50.b0(list)) == null) {
                strE = "0";
            } else {
                strE = b41Var2.e();
            }
        }
        boolean zA = j32.a(str, strE);
        if (i2 != 0) {
            List<b41> value2 = getViewModel().A.getValue();
            b41Var = value2 != null ? (b41) m50.c0(value2, i2 - 1) : null;
            Ui7.markPrevious(this, b41Var);
            t(b41Var, i2 - 1);
            return;
        }
        if (zA) {
            return;
        }
        xv2<List<b41>> xv2Var = getViewModel().A;
        bi2<String, List<b41>> value3 = getViewModel().B.getValue();
        String str2 = getVideoModel().season;
        j32.e(xv2Var, "<this>");
        j32.e(str2, "currentSeason");
        j32.e(str2, "currentSeason");
        if (value3 == null) {
            arrayList = null;
        } else {
            Set<Map.Entry<String, List<b41>>> setEntrySet2 = value3.entrySet();
            j32.d(setEntrySet2, "entries");
            List listX0 = m50.x0(setEntrySet2);
            j32.e(str2, "currentSeason");
            Set<Map.Entry<String, List<b41>>> setEntrySet3 = value3.entrySet();
            if (setEntrySet3 == null) {
                i = 0;
                break;
            }
            Iterator<T> it = setEntrySet3.iterator();
            i = 0;
            while (true) {
                if (!it.hasNext()) {
                    i = 0;
                    break;
                }
                int i3 = i + 1;
                if (j32.a(((Map.Entry) it.next()).getKey(), str2)) {
                    break;
                } else {
                    i = i3;
                }
            }
            Map.Entry entry2 = (Map.Entry) m50.c0(listX0, i - 1);
            if (entry2 == null) {
                arrayList = null;
            } else {
                arrayList = (List) entry2.getValue();
            }
        }
        if (arrayList == null) {
            arrayList = new ArrayList<>();
        }
        xv2Var.setValue(arrayList);
        List<b41> value4 = getViewModel().A.getValue();
        b41Var = value4 != null ? (b41) m50.k0(value4) : null;
        List<b41> value5 = getViewModel().A.getValue();
        int iH = value5 != null ? iq6.h(value5) : 0;
        Ui7.markPrevious(this, b41Var);
        t(b41Var, iH);
    }

    public final void w(float f) {
        if (f > ((float) (getWidth() / 2))) {
            getController().k();
        } else {
            getController().h();
        }
    }

    public final boolean x() {
        return !getViewModel().o;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0094  */
    public final void y() {
        String str;
        Object next;
        Quality quality;
        dp2 dp2VarA;
        String str2;
        String str3;
        PlayerDiagnosticLog.value("video_model_at_quality_switch", getVideoModel());
        Quality quality2 = (Quality) m50.b0(getVideoModel().qualities);
        Iterator<T> it = getVideoModel().qualities.iterator();
        do {
            str = null;
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            Quality quality3 = (Quality) next;
            str = quality3.url;
            str2 = quality3.resolution;
            ff3 ff3Var = getViewModel().f;
            Objects.requireNonNull(ff3Var);
            Quality quality4 = new Quality("240p", BuildConfig.FLAVOR, BuildConfig.FLAVOR);
            String string = ff3Var.a.getString("qualityName", BuildConfig.FLAVOR);
            j32.c(string);
            quality4.name = string;
            String string2 = ff3Var.a.getString("qualityUrl", BuildConfig.FLAVOR);
            j32.c(string2);
            quality4.url = string2;
            String string3 = ff3Var.a.getString("qualityResolution", BuildConfig.FLAVOR);
            str3 = string3 != null ? string3 : "240p";
            quality4.resolution = str3;
            if (j32.a(str, quality4.url)) {
                break;
            }
        } while (!j32.a(str2, str3));
        Quality quality5 = (Quality) next;
        if (quality5 != null) {
            PlayerDiagnosticLog.value("quality_switch_selected_quality", quality5);
            if (j32.a(quality5.name, BuildConfig.FLAVOR)) {
                PlayerDiagnosticLog.value("quality_switch_fallback_to_default_quality", quality2);
                getVideoModel().wantedQuality = quality2;
            } else {
                getVideoModel().wantedQuality = quality5;
            }
        } else {
            PlayerDiagnosticLog.value("quality_switch_fallback_to_default_quality", quality2);
            getVideoModel().wantedQuality = quality2;
        }
        q10 viewModel = getViewModel();
        VideoModel value = viewModel.z.getValue();
        if (value != null && (quality = value.wantedQuality) != null) {
            String str4 = quality.url;
            String strResolve = LocalMkvResolver.resolve(getContext(), getVideoModel());
            if (strResolve != null) {
                str4 = strResolve;
            }
            if (str4 != null) {
                PlayerDiagnosticLog.value("quality_switch_target_url", str4);
                if (!(!ne4.D(str4))) {
                    str4 = str;
                }
                if (str4 != null) {
                    Uri uri = Uri.parse(str4);
                    j32.d(uri, "parse(it)");
                    if (j32.a("production", "production")) {
                        int i = dp2.f;
                        dp2.c cVar = new dp2.c();
                        cVar.b = uri;
                        dp2VarA = cVar.a();
                    } else {
                        Uri uri2 = Uri.parse("https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4");
                        int i2 = dp2.f;
                        dp2.c cVar2 = new dp2.c();
                        cVar2.b = uri2;
                        dp2VarA = cVar2.a();
                    }
                    dp2.c cVarA = dp2VarA.a();
                    cVarA.c(viewModel.r());
                    s64 s64Var = viewModel.k;
                    dp2 dp2VarA2 = cVarA.a();
                    Objects.requireNonNull(s64Var);
                    s64Var.o(Collections.singletonList(dp2VarA2), true);
                    PlayerDiagnosticLog.event("quality_switch_source_and_subtitles_refresh_dispatched");
                }
            }
        }
        nh3.y(wt2.e(getPlayerActivity()), null, 0, new k10(this, null), 3, null);
    }

    /* JADX WARN: Code duplicated, block: B:19:0x00e3  */
    public final void z() {
        boolean z2;
        String str;
        wc3 playbackEventsHandler = getPlaybackEventsHandler();
        Objects.requireNonNull(playbackEventsHandler);
        playbackEventsHandler.u = this;
        mu0 mu0Var = playbackEventsHandler.D;
        if (mu0Var != null && !mu0Var.n()) {
            mu0Var.h();
        }
        playbackEventsHandler.D = playbackEventsHandler.E.h(new vc3(playbackEventsHandler, 0), h00.t, do1.c, do1.d);
        SeekBar seekBar = getControllerBinding().T;
        j32.d(seekBar, "controllerBinding.playerPlaybackSeekBar");
        seekBar.setOnSeekBarChangeListener(playbackEventsHandler);
        Object obj = null;
        s(null);
        s64 player = getPlayer();
        wc3 playbackEventsHandler2 = getPlaybackEventsHandler();
        Objects.requireNonNull(player);
        Objects.requireNonNull(playbackEventsHandler2);
        player.d.i0(playbackEventsHandler2);
        getPlayer().z(true);
        lv lvVar = new lv(getViewModel().i.g().a, getViewModel().i.g().c, 0, getViewModel().i.g().d.a, getViewModel().i.g().b, FontTypefaceResolver.a(getContext().getAssets(), getViewModel().i.g().f.b));
        SubtitleView subtitleView = getBinding().O.getSubtitleView();
        if (subtitleView != null) {
            subtitleView.setStyle(lvVar);
            attachSubtitleStyleObserver();
        }
        AccessibilityManager accessibilityManager = (AccessibilityManager) ld0.e(getContext(), AccessibilityManager.class);
        if (accessibilityManager != null && accessibilityManager.isEnabled()) {
            List<AccessibilityServiceInfo> enabledAccessibilityServiceList = accessibilityManager.getEnabledAccessibilityServiceList(1);
            j32.d(enabledAccessibilityServiceList, "serviceInfoList");
            z2 = enabledAccessibilityServiceList.isEmpty() ^ true;
        }
        if (z2) {
            TextView textView = getBinding().M;
            j32.d(textView, "binding.accessibilitySubtitles");
            s45.l(textView);
            SubtitleView subtitleView2 = getBinding().O.getSubtitleView();
            if (subtitleView2 != null) {
                s45.j(subtitleView2);
            }
            s64 player2 = getPlayer();
            Objects.requireNonNull(player2);
            player2.i.add(new am4() { // from class: com.shabakaty.downloader.b10
                @Override // com.shabakaty.downloader.am4
                public final void W(List list) {
                    CinemanaPlayerView cinemanaPlayerView = this.r;
                    int i = CinemanaPlayerView.z;
                    j32.e(cinemanaPlayerView, "this$0");
                    j32.e(list, "it");
                    TextView textView2 = cinemanaPlayerView.getBinding().M;
                    vg0 vg0Var = (vg0) m50.b0(list);
                    textView2.setText(vg0Var == null ? null : vg0Var.a);
                }
            });
        } else {
            SubtitleView subtitleView3 = getBinding().O.getSubtitleView();
            if (subtitleView3 != null) {
                s45.l(subtitleView3);
            }
            TextView textView2 = getBinding().M;
            j32.d(textView2, "binding.accessibilitySubtitles");
            s45.j(textView2);
        }
        q10 viewModel = getViewModel();
        for (Object obj2 : viewModel.s()) {
            if (j32.a(((Subtitle) obj2).type, viewModel.f.a())) {
                obj = obj2;
                break;
            }
        }
        if (obj != null) {
            ep0.e eVarA = viewModel.j.e().a();
            eVarA.g(viewModel.f.a());
            eVarA.e();
        } else {
            ep0.e eVarA2 = viewModel.j.e().a();
            Subtitle subtitle = (Subtitle) m50.b0(viewModel.s());
            if (subtitle == null || (str = subtitle.type) == null) {
                str = "ar";
            }
            eVarA2.g(str);
            eVarA2.e();
        }
        if (getPlayerActivity().getRequestedOrientation() == 6) {
            getBinding().O.setResizeMode(getViewModel().t());
        } else {
            getBinding().O.setResizeMode(0);
        }
        PlayerView playerView = getBinding().O;
        s64 player3 = getPlayer();
        playerView.setPlayer(player3);
        Player94.install(this, player3);
        y();
        getViewModel().u();
    }
}
