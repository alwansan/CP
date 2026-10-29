package com.shabakaty.cinemana.player;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.b;
import androidx.fragment.app.q;
import androidx.recyclerview.widget.RecyclerView;
import com.cinemana.pro.R;
import com.facebook.drawee.view.SimpleDraweeView;
import com.google.android.exoplayer2.ui.SubtitleView;
import com.google.android.material.chip.Chip;
import com.google.android.material.chip.ChipGroup;
import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.cinemana.ca1.I18n161;
import com.shabakaty.cinemana.ca1.RenderSubtitles;
import com.shabakaty.cinemana.domain.models.local.Quality;
import com.shabakaty.cinemana.domain.models.local.Subtitle;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import com.shabakaty.cinemana.mod.PlayerEnhancements;
import com.shabakaty.cinemana.mod.PlayerSettingsAction;
import com.shabakaty.cinemana.mod.SrtSettingsHelper;
import com.shabakaty.cinemana.mod.SubtitlePreviewAction;
import com.shabakaty.cinemana.mod.SubtitleSyncAction;
import com.shabakaty.cinemana.mod.SubtitleSyncHelper;
import com.shabakaty.cinemana.mod.XPlayerHelper;
import com.shabakaty.downloader.a10;
import com.shabakaty.downloader.ad3;
import com.shabakaty.downloader.af2;
import com.shabakaty.downloader.aj4;
import com.shabakaty.downloader.ay3;
import com.shabakaty.downloader.b41;
import com.shabakaty.downloader.bi2;
import com.shabakaty.downloader.c53;
import com.shabakaty.downloader.cl3;
import com.shabakaty.downloader.cu;
import com.shabakaty.downloader.d4;
import com.shabakaty.downloader.do1;
import com.shabakaty.downloader.e12;
import com.shabakaty.downloader.ed3;
import com.shabakaty.downloader.ep0;
import com.shabakaty.downloader.ff3;
import com.shabakaty.downloader.gn;
import com.shabakaty.downloader.hd3;
import com.shabakaty.downloader.hg4;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.jd3;
import com.shabakaty.downloader.kd3;
import com.shabakaty.downloader.kf2;
import com.shabakaty.downloader.kf5;
import com.shabakaty.downloader.l92;
import com.shabakaty.downloader.ld3;
import com.shabakaty.downloader.m50;
import com.shabakaty.downloader.mu0;
import com.shabakaty.downloader.nd3;
import com.shabakaty.downloader.ng2;
import com.shabakaty.downloader.nh3;
import com.shabakaty.downloader.o53;
import com.shabakaty.downloader.o84;
import com.shabakaty.downloader.od3;
import com.shabakaty.downloader.on;
import com.shabakaty.downloader.p00;
import com.shabakaty.downloader.p10;
import com.shabakaty.downloader.pd3;
import com.shabakaty.downloader.pl4;
import com.shabakaty.downloader.q10;
import com.shabakaty.downloader.q5;
import com.shabakaty.downloader.qv4;
import com.shabakaty.downloader.r00;
import com.shabakaty.downloader.s00;
import com.shabakaty.downloader.s45;
import com.shabakaty.downloader.s64;
import com.shabakaty.downloader.sd3;
import com.shabakaty.downloader.t00;
import com.shabakaty.downloader.t43;
import com.shabakaty.downloader.tm1;
import com.shabakaty.downloader.u00;
import com.shabakaty.downloader.ud3;
import com.shabakaty.downloader.uv3;
import com.shabakaty.downloader.v00;
import com.shabakaty.downloader.v10;
import com.shabakaty.downloader.w00;
import com.shabakaty.downloader.w43;
import com.shabakaty.downloader.wc3;
import com.shabakaty.downloader.wt2;
import com.shabakaty.downloader.wx3;
import com.shabakaty.downloader.x00;
import com.shabakaty.downloader.x10;
import com.shabakaty.downloader.xc0;
import com.shabakaty.downloader.xv2;
import com.shabakaty.downloader.y00;
import com.shabakaty.downloader.z00;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;

/* JADX INFO: compiled from: CinemanaPlayerControllerView.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u000e\u0010\n\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bJ\b\u0010\f\u001a\u00020\u000bH\u0016R\u001d\u0010\u0012\u001a\u00020\r8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u001d\u0010\u0017\u001a\u00020\u00138B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0014\u0010\u000f\u001a\u0004\b\u0015\u0010\u0016R\u001d\u0010\u001c\u001a\u00020\u00188B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0019\u0010\u000f\u001a\u0004\b\u001a\u0010\u001bR\u0016\u0010 \u001a\u00020\u001d8B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u001fR\u001f\u0010%\u001a\u0004\u0018\u00010!8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\"\u0010\u000f\u001a\u0004\b#\u0010$R\u001d\u0010*\u001a\u00020&8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b'\u0010\u000f\u001a\u0004\b(\u0010)R\u001d\u0010/\u001a\u00020+8F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\b,\u0010\u000f\u001a\u0004\b-\u0010.R\u001d\u00104\u001a\u0002008F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\b1\u0010\u000f\u001a\u0004\b2\u00103R\u001d\u00109\u001a\u0002058F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\b6\u0010\u000f\u001a\u0004\b7\u00108R\u0013\u0010=\u001a\u00020:8F@\u0006¢\u0006\u0006\u001a\u0004\b;\u0010<¨\u0006>"}, d2 = {"Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;", "Landroid/widget/FrameLayout;", "Lcom/shabakaty/downloader/ud3;", "Lcom/shabakaty/downloader/sd3;", BuildConfig.FLAVOR, "fontScale", "Lcom/shabakaty/downloader/qv4;", "setFontSize", "Lcom/shabakaty/downloader/p10;", "navigator", "setNavigator", BuildConfig.FLAVOR, "getOrientation", "Lcom/shabakaty/downloader/wc3;", "playbackEventsHandler$delegate", "Lcom/shabakaty/downloader/kf2;", "getPlaybackEventsHandler", "()Lcom/shabakaty/downloader/wc3;", "playbackEventsHandler", "Lcom/shabakaty/cinemana/player/VideoPlayerActivity;", "playerActivity$delegate", "getPlayerActivity", "()Lcom/shabakaty/cinemana/player/VideoPlayerActivity;", "playerActivity", "Lcom/shabakaty/downloader/q10;", "viewModel$delegate", "getViewModel", "()Lcom/shabakaty/downloader/q10;", "viewModel", "Lcom/shabakaty/downloader/on$a;", "getSettingsBottomSheetList", "()Lcom/shabakaty/downloader/on$a;", "settingsBottomSheetList", "Lcom/google/android/exoplayer2/ui/SubtitleView;", "subtitleLayout$delegate", "getSubtitleLayout", "()Lcom/google/android/exoplayer2/ui/SubtitleView;", "subtitleLayout", "Lcom/shabakaty/cinemana/player/CinemanaPlayerView;", "cinemanaPlayerView$delegate", "getCinemanaPlayerView", "()Lcom/shabakaty/cinemana/player/CinemanaPlayerView;", "cinemanaPlayerView", "Lcom/shabakaty/downloader/ed3;", "settingsBottomSheetController$delegate", "getSettingsBottomSheetController", "()Lcom/shabakaty/downloader/ed3;", "settingsBottomSheetController", "Lcom/shabakaty/downloader/p00;", "binding$delegate", "getBinding", "()Lcom/shabakaty/downloader/p00;", "binding", "Lcom/shabakaty/downloader/s64;", "player$delegate", "getPlayer", "()Lcom/shabakaty/downloader/s64;", "player", "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;", "getVideoModel", "()Lcom/shabakaty/cinemana/domain/models/local/VideoModel;", "videoModel", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final class CinemanaPlayerControllerView extends FrameLayout implements ud3, sd3 {
    public static final /* synthetic */ int E = 0;
    public final kf2 A;
    public final kf2 B;
    public final kf2 C;
    public final t43<Integer> D;
    public e12 r;
    public p10 s;
    public long t;
    public mu0 u;
    public final kf2 v;
    public final kf2 w;
    public final kf2 x;
    public final kf2 y;
    public final kf2 z;

    /* JADX INFO: compiled from: CinemanaPlayerControllerView.kt */
    public static final class a extends af2 implements tm1<Throwable, qv4> {
        public a() {
            super(1);
        }

        @Override // com.shabakaty.downloader.tm1
        public qv4 invoke(Throwable th) {
            nh3.y(cl3.e(CinemanaPlayerControllerView.this.getPlayerActivity()), null, 0, new com.shabakaty.cinemana.player.a(CinemanaPlayerControllerView.this, null), 3, null);
            return qv4.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CinemanaPlayerControllerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        j32.e(context, "context");
        j32.e(context, "context");
        this.t = 4000L;
        this.v = ng2.a(new v00(this));
        this.w = ng2.a(new x00(context));
        this.x = ng2.a(new a10(this));
        this.y = ng2.a(new y00(this));
        this.z = ng2.a(new z00(this));
        this.A = ng2.a(new u00(this));
        this.B = ng2.a(new t00(context, this));
        this.C = ng2.a(new w00(this));
        Objects.requireNonNull(0, "item is null");
        c53 c53Var = new c53(0);
        long j = this.t;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        wx3 wx3Var = ay3.b;
        Objects.requireNonNull(timeUnit, "unit is null");
        Objects.requireNonNull(wx3Var, "scheduler is null");
        t43 t43VarA = uv3.a(new w43(c53Var, new o53(Math.max(j, 0L), timeUnit, wx3Var)));
        r00 r00Var = new r00(this);
        xc0<? super Throwable> xc0Var = do1.d;
        this.D = t43VarA.d(xc0Var, xc0Var, r00Var, do1.c);
        getBinding().B(getPlayerActivity());
        A();
        getBinding().O.getLayoutTransition().enableTransitionType(4);
    }

    private final wc3 getPlaybackEventsHandler() {
        return (wc3) this.v.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final VideoPlayerActivity getPlayerActivity() {
        return (VideoPlayerActivity) this.w.getValue();
    }

    private final on.a getSettingsBottomSheetList() {
        String str;
        String string;
        ed3 settingsBottomSheetController = getSettingsBottomSheetController();
        Objects.requireNonNull(settingsBottomSheetController);
        ArrayList<gn> arrayList = new ArrayList<>();
        Quality quality = settingsBottomSheetController.a.wantedQuality;
        if (quality == null || (str = quality.resolution) == null) {
            str = BuildConfig.FLAVOR;
        }
        settingsBottomSheetController.b(arrayList, R.string.video_quality, str, R.drawable.ic_quality, new jd3(settingsBottomSheetController));
        if (!settingsBottomSheetController.a.subtitles.isEmpty()) {
            settingsBottomSheetController.b(arrayList, R.string.subtitles_txt, settingsBottomSheetController.f(), R.drawable.ic_caption, new nd3(settingsBottomSheetController));
        }
        String strT = I18n161.t("معاينة الترجمة");
        SubtitlePreviewAction subtitlePreviewAction = new SubtitlePreviewAction(this);
        pl4 pl4Var = new pl4();
        pl4Var.a = getContext().getDrawable(R.drawable.ic_ca1_preview);
        pl4Var.b = strT;
        pl4Var.c = subtitlePreviewAction;
        pl4Var.d = BuildConfig.FLAVOR;
        pl4Var.e = true;
        arrayList.add(pl4Var);
        String strT2 = I18n161.t("التخطي المتعدد");
        PlayerSettingsAction playerSettingsAction = new PlayerSettingsAction(this);
        pl4 pl4Var2 = new pl4();
        pl4Var2.a = getContext().getDrawable(R.drawable.ic_fast_forward);
        pl4Var2.b = strT2;
        pl4Var2.c = playerSettingsAction;
        pl4Var2.d = BuildConfig.FLAVOR;
        pl4Var2.e = true;
        arrayList.add(pl4Var2);
        String strT3 = I18n161.t("المزامنة");
        SubtitleSyncAction subtitleSyncAction = new SubtitleSyncAction(this);
        pl4 pl4Var3 = new pl4();
        pl4Var3.a = getContext().getDrawable(R.drawable.ic_ca1_sync);
        pl4Var3.b = strT3;
        pl4Var3.c = subtitleSyncAction;
        pl4Var3.d = BuildConfig.FLAVOR;
        pl4Var3.e = true;
        arrayList.add(pl4Var3);
        q10 q10Var = settingsBottomSheetController.c;
        String string2 = q10Var != null && q10Var.t() == 0 ? settingsBottomSheetController.b.getString(R.string.fit) : settingsBottomSheetController.b.getString(R.string.zoom);
        j32.d(string2, "if (viewModel?.videoScal….getString(R.string.zoom)");
        settingsBottomSheetController.b(arrayList, R.string.scale, string2, R.drawable.ic_scale_mode, new kd3(settingsBottomSheetController));
        q10 q10Var2 = settingsBottomSheetController.c;
        Integer numValueOf = q10Var2 == null ? null : Integer.valueOf(q10Var2.n());
        String quantityString = settingsBottomSheetController.b.getResources().getQuantityString(R.plurals.duration_seconds, numValueOf == null ? 0 : numValueOf.intValue(), numValueOf);
        j32.d(quantityString, "context.resources.getQua…\t\t\t\t?: 0, seekPeriod\n\t\t\t)");
        settingsBottomSheetController.b(arrayList, R.string.seek_period_txt, quantityString, R.drawable.ic_fast_forward, new ld3(settingsBottomSheetController));
        q10 q10Var3 = settingsBottomSheetController.c;
        Float fValueOf = q10Var3 != null ? Float.valueOf(q10Var3.H) : null;
        if (fValueOf != null && fValueOf.floatValue() == 1.0f) {
            string = settingsBottomSheetController.b.getString(R.string.default_txt);
        } else {
            StringBuilder sb = new StringBuilder();
            sb.append(fValueOf);
            sb.append('x');
            string = sb.toString();
        }
        String str2 = string;
        j32.d(str2, "if (speed == 1f)\n\t\t\tcont…t_txt)\n\t\telse \"${speed}x\"");
        settingsBottomSheetController.b(arrayList, R.string.playback_speed_txt, str2, R.drawable.ic_speed, new hd3(settingsBottomSheetController));
        if (j32.a(settingsBottomSheetController.a.parentSkipping, "1")) {
            od3 od3Var = new od3(settingsBottomSheetController);
            q10 q10Var4 = settingsBottomSheetController.c;
            boolean z = q10Var4 != null && q10Var4.i.f();
            String string3 = settingsBottomSheetController.b.getString(R.string.parental_skipping);
            j32.d(string3, "context.getString(R.string.parental_skipping)");
            arrayList.add(new aj4(od3Var, z, string3, 0, 8));
        }
        if (j32.a(settingsBottomSheetController.a.kind, "2")) {
            pd3 pd3Var = new pd3(settingsBottomSheetController);
            q10 q10Var5 = settingsBottomSheetController.c;
            boolean z2 = q10Var5 == null ? false : q10Var5.f.a.getBoolean("key_auto_play_next_episode", true);
            String string4 = settingsBottomSheetController.b.getString(R.string.auto_play_next_episode_txt);
            j32.d(string4, "context.getString(R.stri…to_play_next_episode_txt)");
            arrayList.add(new aj4(pd3Var, z2, string4, 0, 8));
        }
        on.a aVar = new on.a();
        aVar.a(arrayList);
        return aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final q10 getViewModel() {
        return (q10) this.x.getValue();
    }

    private final void setFontSize(float f) {
        hg4 hg4Var;
        if (!getViewModel().o()) {
            H();
        }
        float f2 = getPlayerActivity().getRequestedOrientation() == 6 ? 0.7f : 1.0f;
        SubtitleView subtitleLayout = getSubtitleLayout();
        if (subtitleLayout != null) {
            subtitleLayout.setFractionalTextSize(0.0533f * f * f2);
        }
        q10 viewModel = getViewModel();
        if (f == 1.2f) {
            hg4Var = hg4.e.c;
        } else {
            if (f == 1.6f) {
                hg4Var = hg4.c.c;
            } else {
                if (f == 2.2f) {
                    hg4Var = hg4.b.c;
                } else {
                    hg4Var = f == 3.0f ? hg4.a.c : hg4.d.c;
                }
            }
        }
        Objects.requireNonNull(viewModel);
        j32.e(hg4Var, "scale");
        viewModel.i(new x10(viewModel, hg4Var, null));
    }

    public static void u(CinemanaPlayerControllerView cinemanaPlayerControllerView, ChipGroup chipGroup, int i) {
        j32.e(cinemanaPlayerControllerView, "this$0");
        if (i != -1) {
            xv2<List<b41>> xv2Var = cinemanaPlayerControllerView.getViewModel().A;
            bi2<String, List<b41>> value = cinemanaPlayerControllerView.getViewModel().B.getValue();
            List<b41> arrayList = value == null ? null : value.get(String.valueOf(i));
            if (arrayList == null) {
                arrayList = new ArrayList<>();
            }
            xv2Var.setValue(arrayList);
        }
    }

    public static void v(CinemanaPlayerControllerView cinemanaPlayerControllerView) {
        mu0 mu0Var;
        j32.e(cinemanaPlayerControllerView, "this$0");
        mu0 mu0Var2 = cinemanaPlayerControllerView.u;
        boolean z = false;
        if (mu0Var2 != null && (!mu0Var2.n())) {
            z = true;
        }
        if (z && (mu0Var = cinemanaPlayerControllerView.u) != null) {
            mu0Var.h();
        }
        if (cinemanaPlayerControllerView.t == -3 || j32.a(cinemanaPlayerControllerView.getViewModel().y.getValue(), Boolean.TRUE)) {
            return;
        }
        cinemanaPlayerControllerView.A();
    }

    public final void A() {
        this.t = 4000L;
        mu0 mu0Var = this.u;
        if (mu0Var != null) {
            mu0Var.h();
        }
        t43<Integer> t43Var = this.D;
        xc0<? super Integer> xc0Var = do1.d;
        this.u = t43Var.h(xc0Var, do1.e, do1.c, xc0Var);
    }

    public final void B() {
        getViewModel().D.setValue(Boolean.TRUE);
        D();
        b bVar = new b();
        bVar.d(getBinding().V);
        bVar.e(R.id.inner_episodes_constraint, 3, R.id.player_root_controls_layout, 4, 0);
        bVar.c(R.id.inner_episodes_constraint, 4);
        bVar.a(getBinding().V);
        View view = getBinding().M;
        j32.d(view, "binding.controllerOverlayView");
        s45.j(view);
    }

    /* JADX WARN: Code duplicated, block: B:32:0x0090 A[EDGE_INSN: B:32:0x0090->B:33:0x0091 BREAK  A[LOOP:0: B:26:0x007b->B:31:0x008e]] */
    public final void C() {
        int i;
        bi2<String, List<b41>> value;
        Set<String> setKeySet;
        b41 b41Var;
        if (!j32.a(getVideoModel().kind, "2")) {
            SimpleDraweeView simpleDraweeView = getBinding().S;
            j32.d(simpleDraweeView, "binding.playerEpisodes");
            s45.j(simpleDraweeView);
            RecyclerView recyclerView = getBinding().P;
            j32.d(recyclerView, "binding.innerEpisodesRecycler");
            s45.j(recyclerView);
            TextView textView = getBinding().W;
            j32.d(textView, "binding.playerSeasonAndEpisode");
            s45.j(textView);
            return;
        }
        bi2<String, List<b41>> value2 = getViewModel().B.getValue();
        if (value2 == null || value2.isEmpty()) {
            return;
        }
        this.r = new e12(getPlayerActivity());
        getBinding().P.setAdapter(this.r);
        bi2<String, List<b41>> value3 = getViewModel().B.getValue();
        if (value3 == null) {
            i = 0;
            break;
        }
        List<b41> value4 = getViewModel().A.getValue();
        List<b41> list = value3.get((value4 == null || (b41Var = (b41) m50.b0(value4)) == null) ? null : b41Var.e());
        if (list == null) {
            i = 0;
            break;
        }
        Iterator<T> it = list.iterator();
        i = 0;
        while (true) {
            if (!it.hasNext()) {
                i = 0;
                break;
            }
            int i2 = i + 1;
            if (((b41) it.next()).a) {
                break;
            } else {
                i = i2;
            }
        }
        getBinding().P.q0(i);
        if (getBinding().Z.getChildCount() == 0 && (value = getViewModel().B.getValue()) != null && (setKeySet = value.keySet()) != null) {
            for (String str : setKeySet) {
                Chip chip = new Chip(getBinding().Z.getContext(), null);
                j32.d(str, "it");
                ChipGroup chipGroup = getBinding().Z;
                j32.d(chipGroup, "binding.seasonsChipGroup");
                String str2 = getVideoModel().season;
                j32.e(chip, "<this>");
                j32.e(str, "season");
                j32.e(chipGroup, "chipGroup");
                j32.e(str2, "selectedSeason");
                chip.setTextAppearanceResource(R.style.VideoInfoSeasonsTabTextAppearance);
                chip.setChipBackgroundColorResource(R.color.cin_player_season_chip_background);
                chip.setChipStrokeWidth(kf5.e(1));
                chip.setChipStrokeColorResource(R.color.cin_player_season_chip_stroke);
                Context context = chipGroup.getContext();
                chip.setTextColor(context == null ? null : wt2.g(context, R.color.season_chip_text_color));
                chip.setLayoutParams(new ChipGroup.c(-2, -2));
                chip.setText(chip.getContext().getString(R.string.season_chip_txt, str));
                chip.setTag(str);
                chip.setId(Integer.parseInt(str));
                chip.setTextAlignment(4);
                chip.setCheckable(true);
                chip.setCheckedIconVisible(false);
                chipGroup.addView(chip);
                if (j32.a(str, str2)) {
                    chipGroup.d();
                    chipGroup.c(chip.getId());
                }
            }
        }
        getBinding().Z.setOnCheckedChangeListener(new cu(this));
        E();
    }

    public final void D() {
        mu0 mu0Var = this.u;
        if (mu0Var != null) {
            mu0Var.h();
        }
        A();
    }

    public final void E() {
        int i;
        Set<Map.Entry<String, List<b41>>> setEntrySet;
        Map.Entry entry;
        List list;
        b41 b41Var;
        b41 b41Var2;
        b41 b41Var3;
        Set<Map.Entry<String, List<b41>>> setEntrySet2;
        Map.Entry entry2;
        List list2;
        b41 b41Var4;
        if (j32.a(getVideoModel().kind, "2")) {
            List<b41> value = getViewModel().A.getValue();
            if (value != null) {
                Iterator<T> it = value.iterator();
                i = 0;
                while (true) {
                    if (!it.hasNext()) {
                        i = 0;
                        break;
                    }
                    int i2 = i + 1;
                    if (((b41) it.next()).a) {
                        break;
                    } else {
                        i = i2;
                    }
                }
            } else {
                i = 0;
                break;
            }
            int i3 = i + 1;
            List<b41> value2 = getViewModel().A.getValue();
            boolean z = i3 == (value2 == null ? 0 : value2.size());
            bi2<String, List<b41>> value3 = getViewModel().B.getValue();
            String strE = null;
            String strE2 = (value3 == null || (setEntrySet2 = value3.entrySet()) == null || (entry2 = (Map.Entry) m50.j0(setEntrySet2)) == null || (list2 = (List) entry2.getValue()) == null || (b41Var4 = (b41) m50.b0(list2)) == null) ? null : b41Var4.e();
            List<b41> value4 = getViewModel().A.getValue();
            boolean zA = j32.a(strE2, (value4 == null || (b41Var3 = (b41) m50.b0(value4)) == null) ? null : b41Var3.e());
            boolean z2 = i == 0;
            List<b41> value5 = getViewModel().A.getValue();
            String strE3 = (value5 == null || (b41Var2 = (b41) m50.b0(value5)) == null) ? null : b41Var2.e();
            bi2<String, List<b41>> value6 = getViewModel().B.getValue();
            if (value6 != null && (setEntrySet = value6.entrySet()) != null && (entry = (Map.Entry) m50.a0(setEntrySet)) != null && (list = (List) entry.getValue()) != null && (b41Var = (b41) m50.b0(list)) != null) {
                strE = b41Var.e();
            }
            boolean zA2 = j32.a(strE3, strE);
            getViewModel().s.setValue(Boolean.valueOf((z && zA) ? false : true));
            getViewModel().t.setValue(Boolean.valueOf((z2 && zA2) ? false : true));
        }
    }

    public final void F() {
        PlayerEnhancements.updateForPlayback(this);
        animate().alpha(1.0f).setDuration(1L).withStartAction(new s00(this, 0)).withEndAction(new s00(this, 1)).start();
    }

    public final void G() {
        this.t = -3L;
        F();
    }

    public final void H() {
        SubtitleView subtitleView = getCinemanaPlayerView().getBinding().O.getSubtitleView();
        if (subtitleView != null) {
            s45.l(subtitleView);
        }
        q10 viewModel = getViewModel();
        Objects.requireNonNull(viewModel);
        viewModel.i(new v10(viewModel, true, null));
    }

    @Override // com.shabakaty.downloader.ud3
    public void a() {
        D();
        getViewModel().v(getVideoModel(), getPlayer().C());
        getCinemanaPlayerView().v();
    }

    @Override // com.shabakaty.downloader.sd3
    public void b(Quality quality) {
        j32.e(quality, "quality");
        q10 viewModel = getViewModel();
        Objects.requireNonNull(viewModel);
        j32.e(quality, "value");
        ff3 ff3Var = viewModel.f;
        Objects.requireNonNull(ff3Var);
        j32.e(quality, "quality");
        ff3Var.b.putString("qualityName", quality.name).putString("qualityUrl", quality.url).putString("qualityResolution", quality.resolution).apply();
        ((l92) getViewModel().v(getVideoModel(), getPlayer().C())).x(false, true, new a());
    }

    @Override // com.shabakaty.downloader.ud3
    public void c() {
        D();
        on.a settingsBottomSheetList = getSettingsBottomSheetList();
        q supportFragmentManager = getPlayerActivity().getSupportFragmentManager();
        j32.d(supportFragmentManager, "playerActivity.supportFragmentManager");
        settingsBottomSheetList.b(supportFragmentManager);
    }

    @Override // com.shabakaty.downloader.ud3
    public void d() {
        D();
        getPlayer().z(!getPlayer().f());
        if (getPlayer().f()) {
            return;
        }
        long jC = (getPlayer().C() + ((long) 500)) / ((long) 1000);
        Context context = getContext();
        j32.d(context, "context");
        j32.e(context, "context");
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
        q5Var.d(getVideoModel().nb, 2, Long.valueOf(jC));
    }

    @Override // com.shabakaty.downloader.ud3
    public void e() {
        D();
        getPlayer().q(0L);
    }

    @Override // com.shabakaty.downloader.sd3
    public void f(Subtitle subtitle) {
        int i;
        j32.e(subtitle, "subtitle");
        q10 viewModel = getViewModel();
        String str = subtitle.type;
        Objects.requireNonNull(viewModel);
        j32.e(str, "value");
        ff3 ff3Var = viewModel.f;
        Objects.requireNonNull(ff3Var);
        j32.e(str, "lang");
        ff3Var.b.putString("key_preferred_subtitle_language", str).apply();
        q10 viewModel2 = getViewModel();
        Objects.requireNonNull(viewModel2);
        j32.e(subtitle, "subtitle");
        ep0.e eVarA = viewModel2.j.e().a();
        eVarA.g(subtitle.type);
        viewModel2.j.j(eVarA);
        RenderSubtitles.switching(this);
        H();
        if (j32.a(subtitle.type, "en")) {
            Context context = getContext();
            j32.d(context, "context");
            j32.e(context, "context");
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
            String str3 = subtitle.type;
            j32.e(str2, "videoId");
            j32.e(str3, "translationStr");
            if (j32.a(str3, "ar")) {
                i = 1;
            } else {
                i = j32.a(str3, "en") ? 2 : 3;
            }
            q5.c(q5Var, str2, "1", i, null, null, 24);
        }
    }

    @Override // com.shabakaty.downloader.ud3
    public void g() {
        D();
        getViewModel().v(getVideoModel(), getPlayer().C());
        getCinemanaPlayerView().u();
    }

    public final p00 getBinding() {
        return (p00) this.B.getValue();
    }

    public final CinemanaPlayerView getCinemanaPlayerView() {
        return (CinemanaPlayerView) this.A.getValue();
    }

    public int getOrientation() {
        return getPlayerActivity().getRequestedOrientation();
    }

    public final s64 getPlayer() {
        return (s64) this.C.getValue();
    }

    public final ed3 getSettingsBottomSheetController() {
        return (ed3) this.y.getValue();
    }

    public final SubtitleView getSubtitleLayout() {
        return (SubtitleView) this.z.getValue();
    }

    public final VideoModel getVideoModel() {
        VideoModel value = getViewModel().z.getValue();
        return value == null ? new VideoModel(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, false, null, 0, null, null, null, null, false, null, null, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, false, null, 0, 0L, null, null, false, null, null, null, null, false, -1, Integer.MAX_VALUE) : value;
    }

    @Override // com.shabakaty.downloader.ud3
    public void h() {
        D();
        getCinemanaPlayerView().A(2);
    }

    @Override // com.shabakaty.downloader.sd3
    public void i(boolean z) {
        SubtitleView subtitleLayout = getSubtitleLayout();
        if (subtitleLayout != null) {
            subtitleLayout.setVisibility(z ? 0 : 8);
        }
        q10 viewModel = getViewModel();
        Objects.requireNonNull(viewModel);
        viewModel.i(new v10(viewModel, z, null));
    }

    @Override // com.shabakaty.downloader.ud3
    public void j() {
        D();
        if (!j32.a(getViewModel().D.getValue(), Boolean.TRUE)) {
            B();
            return;
        }
        getViewModel().D.setValue(Boolean.FALSE);
        b bVar = new b();
        bVar.d(getBinding().V);
        bVar.c(R.id.inner_episodes_constraint, 3);
        bVar.e(R.id.inner_episodes_constraint, 4, R.id.player_root_controls_layout, 4, 0);
        bVar.a(getBinding().V);
        G();
        View view = getBinding().M;
        j32.d(view, "binding.controllerOverlayView");
        s45.l(view);
    }

    @Override // com.shabakaty.downloader.ud3
    public void k() {
        D();
        getCinemanaPlayerView().A(1);
    }

    @Override // com.shabakaty.downloader.ud3
    public void l() {
        D();
        if (getVideoModel().hasIntroSkipping) {
            o84 o84Var = getPlaybackEventsHandler().H;
            if (o84Var != null) {
                getPlayer().q(o84Var.s);
            }
            Button button = getBinding().b0;
            j32.d(button, "binding.skipIntro");
            s45.j(button);
        }
    }

    @Override // com.shabakaty.downloader.sd3
    public void m() {
        VideoPlayerActivity playerActivity = getPlayerActivity();
        if (Build.VERSION.SDK_INT < 23) {
            playerActivity.R1();
        } else if (playerActivity.getApplicationContext().checkSelfPermission("android.permission.READ_EXTERNAL_STORAGE") != 0) {
            playerActivity.requestPermissions(new String[]{"android.permission.READ_EXTERNAL_STORAGE"}, 0);
        } else {
            playerActivity.R1();
        }
    }

    @Override // com.shabakaty.downloader.sd3
    public void n(float f) {
        getPlayer().q0(new ad3(f, 1.0f));
    }

    @Override // com.shabakaty.downloader.sd3
    public void o(int i, String str) {
        getCinemanaPlayerView().s(str);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        SubtitleView subtitleView;
        Context applicationContext;
        super.onAttachedToWindow();
        PlayerEnhancements.init(this);
        SrtSettingsHelper.init(this);
        SubtitleSyncHelper.init(this);
        XPlayerHelper.init(this);
        TextView textView = getBinding().W;
        Context context = getContext();
        String string = null;
        if (context != null && (applicationContext = context.getApplicationContext()) != null) {
            string = applicationContext.getString(R.string.season_episode_txt, j32.j(getVideoModel().season, " "), getPlayerActivity().i1().a(getVideoModel()));
        }
        textView.setText(string);
        if (getVideoModel().hasIntroSkipping) {
            wc3 playbackEventsHandler = getPlaybackEventsHandler();
            List<o84> listZ0 = m50.z0(getVideoModel().skippableScenes);
            Objects.requireNonNull(playbackEventsHandler);
            j32.e(listZ0, "<set-?>");
            playbackEventsHandler.G = listZ0;
        }
        SubtitleView subtitleLayout = getSubtitleLayout();
        if (subtitleLayout != null) {
            subtitleLayout.setFractionalTextSize(getViewModel().p().a * 0.0533f);
        }
        if (!getViewModel().o() && (subtitleView = getCinemanaPlayerView().getBinding().O.getSubtitleView()) != null) {
            s45.j(subtitleView);
        }
        C();
        E();
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        SrtSettingsHelper.applySavedFontSize(this);
        SrtSettingsHelper.applySavedTranslationY(this);
    }

    @Override // com.shabakaty.downloader.sd3
    public void p(boolean z) {
        getViewModel().f.b.putBoolean("key_auto_play_next_episode", z).apply();
    }

    @Override // com.shabakaty.downloader.sd3
    public void q(on.a aVar) {
        j32.e(aVar, "builder");
        q supportFragmentManager = getPlayerActivity().getSupportFragmentManager();
        j32.d(supportFragmentManager, "playerActivity.supportFragmentManager");
        aVar.b(supportFragmentManager);
    }

    @Override // com.shabakaty.downloader.ud3
    public void r() {
        D();
        if (getPlayerActivity().getRequestedOrientation() == 6) {
            z(2);
            getPlayerActivity().setRequestedOrientation(1);
            SubtitleView subtitleLayout = getSubtitleLayout();
            if (subtitleLayout == null) {
                return;
            }
            subtitleLayout.setFractionalTextSize(getViewModel().p().a * 0.0533f);
            return;
        }
        if (getCinemanaPlayerView().getResizeMode() == 4) {
            z(1);
        }
        getPlayerActivity().setRequestedOrientation(6);
        SubtitleView subtitleLayout2 = getSubtitleLayout();
        if (subtitleLayout2 == null) {
            return;
        }
        subtitleLayout2.setFractionalTextSize(getViewModel().p().a * 0.7f * 0.0533f);
    }

    @Override // com.shabakaty.downloader.sd3
    public void s(int i, float f) {
        setFontSize(f);
    }

    public final void setNavigator(p10 p10Var) {
        j32.e(p10Var, "navigator");
        this.s = p10Var;
        getBinding().G(this);
    }

    @Override // com.shabakaty.downloader.sd3
    public void t(int i, int i2) {
        T t = getPlayerActivity().t;
        j32.c(t);
        ((d4) t).M.setResizeMode(i2);
    }

    public final void z(int i) {
        Window window = getPlayerActivity().getWindow();
        if (Build.VERSION.SDK_INT >= 28) {
            WindowManager.LayoutParams attributes = window == null ? null : window.getAttributes();
            if (attributes == null) {
                return;
            }
            attributes.layoutInDisplayCutoutMode = i;
        }
    }
}
