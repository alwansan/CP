package com.shabakaty.cinemana.helpers.casting;

import android.graphics.PorterDuff;
import android.os.Bundle;
import android.view.View;
import android.widget.SeekBar;
import android.widget.TextView;
import com.cinemana.pro.R;
import com.connectsdk.service.DLNAService;
import com.connectsdk.service.NetcastTVService;
import com.connectsdk.service.capability.MediaControl;
import com.connectsdk.service.command.ServiceCommandError;
import com.facebook.drawee.view.SimpleDraweeView;
import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.cinemana.domain.models.local.Quality;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import com.shabakaty.cinemana.helpers.casting.DLNAControlsActivity;
import com.shabakaty.downloader.bn4;
import com.shabakaty.downloader.cf4;
import com.shabakaty.downloader.cl3;
import com.shabakaty.downloader.do1;
import com.shabakaty.downloader.f00;
import com.shabakaty.downloader.hn1;
import com.shabakaty.downloader.j2;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.j51;
import com.shabakaty.downloader.j96;
import com.shabakaty.downloader.ld0;
import com.shabakaty.downloader.mu0;
import com.shabakaty.downloader.n24;
import com.shabakaty.downloader.n5;
import com.shabakaty.downloader.nh3;
import com.shabakaty.downloader.o5;
import com.shabakaty.downloader.pm0;
import com.shabakaty.downloader.qv4;
import com.shabakaty.downloader.se0;
import com.shabakaty.downloader.t43;
import com.shabakaty.downloader.te0;
import com.shabakaty.downloader.tu0;
import com.shabakaty.downloader.u2;
import com.shabakaty.downloader.ud0;
import com.shabakaty.downloader.ui4;
import com.shabakaty.downloader.uv3;
import com.shabakaty.downloader.vd5;
import com.shabakaty.downloader.vj;
import com.shabakaty.downloader.xc0;
import com.shabakaty.downloader.xi;
import com.shabakaty.downloader.xk;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;

/* JADX INFO: compiled from: DLNAControlsActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u001a\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00040\u00012\u00020\u0003B\u0007¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0007¨\u0006\u000b"}, d2 = {"Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;", "Lcom/shabakaty/downloader/xi;", "Lcom/shabakaty/downloader/u2;", "Lcom/shabakaty/downloader/vj;", "Lcom/shabakaty/downloader/xk;", "Lcom/shabakaty/downloader/tu0;", NetcastTVService.UDAP_API_EVENT, "Lcom/shabakaty/downloader/qv4;", "onDlnaNotificationEvent", "<init>", "()V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final class DLNAControlsActivity extends xi<u2, vj, xk<vj>> implements vj {
    public static final /* synthetic */ int E = 0;
    public VideoModel A;
    public MediaControl B;
    public DLNAService C;
    public boolean D;
    public n24 v;
    public mu0 w;
    public long x;
    public long y;
    public String z;

    /* JADX INFO: compiled from: DLNAControlsActivity.kt */
    @pm0(c = "com.shabakaty.cinemana.helpers.casting.DLNAControlsActivity$applySkippingLevel$1", f = "DLNAControlsActivity.kt", l = {202}, m = "invokeSuspend")
    public static final class a extends ui4 implements hn1<se0, ud0<? super qv4>, Object> {
        public int v;

        public a(ud0<? super a> ud0Var) {
            super(2, ud0Var);
        }

        @Override // com.shabakaty.downloader.hn1
        public Object o(se0 se0Var, ud0<? super qv4> ud0Var) {
            return DLNAControlsActivity.this.new a(ud0Var).t(qv4.a);
        }

        @Override // com.shabakaty.downloader.bj
        public final ud0<qv4> r(Object obj, ud0<?> ud0Var) {
            return DLNAControlsActivity.this.new a(ud0Var);
        }

        @Override // com.shabakaty.downloader.bj
        public final Object t(Object obj) {
            te0 te0Var = te0.COROUTINE_SUSPENDED;
            int i = this.v;
            if (i == 0) {
                j96.i(obj);
                n24 n24VarM0 = DLNAControlsActivity.this.m0();
                this.v = 1;
                if (n24VarM0.n(true, this) == te0Var) {
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

    /* JADX INFO: compiled from: DLNAControlsActivity.kt */
    @pm0(c = "com.shabakaty.cinemana.helpers.casting.DLNAControlsActivity$applySkippingLevel$2", f = "DLNAControlsActivity.kt", l = {210}, m = "invokeSuspend")
    public static final class b extends ui4 implements hn1<se0, ud0<? super qv4>, Object> {
        public int v;

        public b(ud0<? super b> ud0Var) {
            super(2, ud0Var);
        }

        @Override // com.shabakaty.downloader.hn1
        public Object o(se0 se0Var, ud0<? super qv4> ud0Var) {
            return DLNAControlsActivity.this.new b(ud0Var).t(qv4.a);
        }

        @Override // com.shabakaty.downloader.bj
        public final ud0<qv4> r(Object obj, ud0<?> ud0Var) {
            return DLNAControlsActivity.this.new b(ud0Var);
        }

        @Override // com.shabakaty.downloader.bj
        public final Object t(Object obj) {
            te0 te0Var = te0.COROUTINE_SUSPENDED;
            int i = this.v;
            if (i == 0) {
                j96.i(obj);
                n24 n24VarM0 = DLNAControlsActivity.this.m0();
                this.v = 1;
                if (n24VarM0.n(false, this) == te0Var) {
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

    /* JADX INFO: compiled from: DLNAControlsActivity.kt */
    public static final class c implements SeekBar.OnSeekBarChangeListener {
        public c() {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
            DLNAControlsActivity dLNAControlsActivity;
            MediaControl mediaControl;
            j32.e(seekBar, "seekBar");
            if (!z || (mediaControl = (dLNAControlsActivity = DLNAControlsActivity.this).B) == null) {
                return;
            }
            mediaControl.seek((((long) i) * dLNAControlsActivity.x) / ((long) 100), null);
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStartTrackingTouch(SeekBar seekBar) {
            j32.e(seekBar, "seekBar");
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStopTrackingTouch(SeekBar seekBar) {
            j32.e(seekBar, "seekBar");
        }
    }

    /* JADX INFO: compiled from: DLNAControlsActivity.kt */
    public static final class d implements MediaControl.DurationListener {
        public d() {
        }

        @Override // com.connectsdk.service.capability.listeners.ErrorListener
        public void onError(ServiceCommandError serviceCommandError) {
        }

        @Override // com.connectsdk.service.capability.listeners.ResponseListener
        public void onSuccess(Long l) {
            long jLongValue = l.longValue();
            DLNAControlsActivity dLNAControlsActivity = DLNAControlsActivity.this;
            dLNAControlsActivity.x = jLongValue;
            cl3.e(dLNAControlsActivity).c(new com.shabakaty.cinemana.helpers.casting.b(DLNAControlsActivity.this, null));
            DLNAControlsActivity.this.p0();
        }
    }

    public DLNAControlsActivity() {
        super(R.layout.activity_dlna_controls);
    }

    @Override // com.shabakaty.downloader.xi
    public Class<xk<vj>> h0() {
        return null;
    }

    public final void k0() {
        String str = this.z;
        if (j32.a(str, getResources().getString(R.string.key_skipping_yes))) {
            T t = this.t;
            j32.c(t);
            ((u2) t).V.setAlpha(1.0f);
            nh3.y(cl3.e(this), null, 0, new a(null), 3, null);
            return;
        }
        if (j32.a(str, getResources().getString(R.string.key_skipping_no))) {
            T t2 = this.t;
            j32.c(t2);
            ((u2) t2).V.setAlpha(0.75f);
            nh3.y(cl3.e(this), null, 0, new b(null), 3, null);
            return;
        }
        if (str == null) {
            this.z = m0().e().a;
            k0();
        }
    }

    public final n24 m0() {
        n24 n24Var = this.v;
        if (n24Var != null) {
            return n24Var;
        }
        j32.l("settings");
        throw null;
    }

    @Override // com.shabakaty.downloader.vj
    public void o() {
        j32.e(this, "this");
    }

    @Override // com.shabakaty.downloader.xi, com.shabakaty.downloader.ji1, androidx.activity.ComponentActivity, com.shabakaty.downloader.p80, android.app.Activity
    public void onCreate(Bundle bundle) {
        vd5.p(this);
        super.onCreate(bundle);
        setContentView(R.layout.activity_dlna_controls);
        VideoModel videoModel = (VideoModel) getIntent().getParcelableExtra("VideoModelArg");
        if (videoModel != null) {
            this.A = videoModel;
            getIntent().getStringExtra("VIDEO_URL");
            T t = this.t;
            j32.c(t);
            TextView textView = ((u2) t).Y;
            VideoModel videoModel2 = this.A;
            String str = null;
            textView.setText(videoModel2 == null ? null : videoModel2.c());
            T t2 = this.t;
            j32.c(t2);
            SimpleDraweeView simpleDraweeView = ((u2) t2).P;
            VideoModel videoModel3 = this.A;
            simpleDraweeView.setImageURI(videoModel3 == null ? null : videoModel3.imgObjUrl);
            if (m0().i()) {
                VideoModel videoModel4 = this.A;
                if (videoModel4 != null) {
                    str = videoModel4.enTitle;
                }
            } else {
                VideoModel videoModel5 = this.A;
                if (videoModel5 != null) {
                    str = videoModel5.arTitle;
                }
            }
            T t3 = this.t;
            j32.c(t3);
            ((u2) t3).Y.setText(str);
            T t4 = this.t;
            j32.c(t4);
            ((u2) t4).S.setOnSeekBarChangeListener(new c());
        }
        T t5 = this.t;
        j32.c(t5);
        final int i = 0;
        ((u2) t5).O.setOnClickListener(new View.OnClickListener(this, i) { // from class: com.shabakaty.downloader.ai0
            public final /* synthetic */ int r;
            public final /* synthetic */ DLNAControlsActivity s;

            /* JADX WARN: Failed to find 'out' block for switch in B:3:0x0002. Please report as an issue. */
            {
                this.r = i;
                switch (i) {
                }
                this.s = this;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r2v0 */
            /* JADX WARN: Type inference failed for: r2v3 */
            /* JADX WARN: Type inference failed for: r2v4, types: [java.util.Collection] */
            /* JADX WARN: Type inference failed for: r2v5, types: [com.shabakaty.downloader.w21] */
            /* JADX WARN: Type inference failed for: r2v6, types: [java.util.ArrayList] */
            /* JADX WARN: Type inference failed for: r2v7 */
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                List<Quality> list;
                int i2 = 0;
                ?? arrayList = 0;
                arrayList = 0;
                switch (this.r) {
                    case 0:
                        DLNAControlsActivity dLNAControlsActivity = this.s;
                        int i3 = DLNAControlsActivity.E;
                        j32.e(dLNAControlsActivity, "this$0");
                        MediaControl mediaControl = dLNAControlsActivity.B;
                        if (mediaControl != null) {
                            mediaControl.seek(dLNAControlsActivity.y + ((long) 10000), null);
                            break;
                        }
                        break;
                    case 1:
                        DLNAControlsActivity dLNAControlsActivity2 = this.s;
                        int i4 = DLNAControlsActivity.E;
                        j32.e(dLNAControlsActivity2, "this$0");
                        MediaControl mediaControl2 = dLNAControlsActivity2.B;
                        if (mediaControl2 != null) {
                            mediaControl2.seek(dLNAControlsActivity2.y - ((long) 10000), null);
                            break;
                        }
                        break;
                    case 2:
                        DLNAControlsActivity dLNAControlsActivity3 = this.s;
                        int i5 = DLNAControlsActivity.E;
                        j32.e(dLNAControlsActivity3, "this$0");
                        if (!dLNAControlsActivity3.D) {
                            dLNAControlsActivity3.D = true;
                            Object obj = dLNAControlsActivity3.t;
                            j32.c(obj);
                            ((u2) obj).Q.setImageResource(R.drawable.ic_vol_mute);
                            DLNAService dLNAService = dLNAControlsActivity3.C;
                            if (dLNAService != null) {
                                dLNAService.setMute(true, null);
                                break;
                            }
                        } else {
                            dLNAControlsActivity3.D = false;
                            Object obj2 = dLNAControlsActivity3.t;
                            j32.c(obj2);
                            ((u2) obj2).Q.setImageResource(R.drawable.quantum_ic_volume_up_white_36);
                            DLNAService dLNAService2 = dLNAControlsActivity3.C;
                            if (dLNAService2 != null) {
                                dLNAService2.setMute(false, null);
                                break;
                            }
                        }
                        break;
                    case 3:
                        DLNAControlsActivity dLNAControlsActivity4 = this.s;
                        int i6 = DLNAControlsActivity.E;
                        j32.e(dLNAControlsActivity4, "this$0");
                        new Thread(new bi0(dLNAControlsActivity4, i2)).start();
                        break;
                    case 4:
                        DLNAControlsActivity dLNAControlsActivity5 = this.s;
                        int i7 = DLNAControlsActivity.E;
                        j32.e(dLNAControlsActivity5, "this$0");
                        String str2 = dLNAControlsActivity5.z;
                        if (j32.a(str2, "yes")) {
                            dLNAControlsActivity5.z = "no";
                        } else if (j32.a(str2, "no")) {
                            dLNAControlsActivity5.z = "yes";
                        }
                        dLNAControlsActivity5.k0();
                        break;
                    case 5:
                        DLNAControlsActivity dLNAControlsActivity6 = this.s;
                        int i8 = DLNAControlsActivity.E;
                        j32.e(dLNAControlsActivity6, "this$0");
                        VideoModel videoModel6 = dLNAControlsActivity6.A;
                        if (videoModel6 != null && (list = videoModel6.qualities) != null) {
                            arrayList = new ArrayList(i50.O(list, 10));
                            for (Quality quality : list) {
                                String str3 = quality.resolution;
                                j32.e(str3, "text");
                                arrayList.add(new pl4(null, str3, new fi0(dLNAControlsActivity6, quality), BuildConfig.FLAVOR, false));
                            }
                        }
                        if (arrayList == 0) {
                            arrayList = w21.r;
                        }
                        on onVar = new on();
                        String string = dLNAControlsActivity6.getString(R.string.choose_quality);
                        j32.d(string, "getString(R.string.choose_quality)");
                        androidx.fragment.app.q supportFragmentManager = dLNAControlsActivity6.getSupportFragmentManager();
                        j32.d(supportFragmentManager, "supportFragmentManager");
                        onVar.O = string;
                        onVar.N = m50.z0(arrayList);
                        onVar.c2(supportFragmentManager, "listBottomSheet");
                        break;
                    default:
                        DLNAControlsActivity dLNAControlsActivity7 = this.s;
                        int i9 = DLNAControlsActivity.E;
                        j32.e(dLNAControlsActivity7, "this$0");
                        dLNAControlsActivity7.finish();
                        break;
                }
            }
        });
        T t6 = this.t;
        j32.c(t6);
        final int i2 = 1;
        ((u2) t6).U.setOnClickListener(new View.OnClickListener(this, i2) { // from class: com.shabakaty.downloader.ai0
            public final /* synthetic */ int r;
            public final /* synthetic */ DLNAControlsActivity s;

            /* JADX WARN: Failed to find 'out' block for switch in B:3:0x0002. Please report as an issue. */
            {
                this.r = i2;
                switch (i2) {
                }
                this.s = this;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r2v0 */
            /* JADX WARN: Type inference failed for: r2v3 */
            /* JADX WARN: Type inference failed for: r2v4, types: [java.util.Collection] */
            /* JADX WARN: Type inference failed for: r2v5, types: [com.shabakaty.downloader.w21] */
            /* JADX WARN: Type inference failed for: r2v6, types: [java.util.ArrayList] */
            /* JADX WARN: Type inference failed for: r2v7 */
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                List<Quality> list;
                int i3 = 0;
                ?? arrayList = 0;
                arrayList = 0;
                switch (this.r) {
                    case 0:
                        DLNAControlsActivity dLNAControlsActivity = this.s;
                        int i4 = DLNAControlsActivity.E;
                        j32.e(dLNAControlsActivity, "this$0");
                        MediaControl mediaControl = dLNAControlsActivity.B;
                        if (mediaControl != null) {
                            mediaControl.seek(dLNAControlsActivity.y + ((long) 10000), null);
                            break;
                        }
                        break;
                    case 1:
                        DLNAControlsActivity dLNAControlsActivity2 = this.s;
                        int i5 = DLNAControlsActivity.E;
                        j32.e(dLNAControlsActivity2, "this$0");
                        MediaControl mediaControl2 = dLNAControlsActivity2.B;
                        if (mediaControl2 != null) {
                            mediaControl2.seek(dLNAControlsActivity2.y - ((long) 10000), null);
                            break;
                        }
                        break;
                    case 2:
                        DLNAControlsActivity dLNAControlsActivity3 = this.s;
                        int i6 = DLNAControlsActivity.E;
                        j32.e(dLNAControlsActivity3, "this$0");
                        if (!dLNAControlsActivity3.D) {
                            dLNAControlsActivity3.D = true;
                            Object obj = dLNAControlsActivity3.t;
                            j32.c(obj);
                            ((u2) obj).Q.setImageResource(R.drawable.ic_vol_mute);
                            DLNAService dLNAService = dLNAControlsActivity3.C;
                            if (dLNAService != null) {
                                dLNAService.setMute(true, null);
                                break;
                            }
                        } else {
                            dLNAControlsActivity3.D = false;
                            Object obj2 = dLNAControlsActivity3.t;
                            j32.c(obj2);
                            ((u2) obj2).Q.setImageResource(R.drawable.quantum_ic_volume_up_white_36);
                            DLNAService dLNAService2 = dLNAControlsActivity3.C;
                            if (dLNAService2 != null) {
                                dLNAService2.setMute(false, null);
                                break;
                            }
                        }
                        break;
                    case 3:
                        DLNAControlsActivity dLNAControlsActivity4 = this.s;
                        int i7 = DLNAControlsActivity.E;
                        j32.e(dLNAControlsActivity4, "this$0");
                        new Thread(new bi0(dLNAControlsActivity4, i3)).start();
                        break;
                    case 4:
                        DLNAControlsActivity dLNAControlsActivity5 = this.s;
                        int i8 = DLNAControlsActivity.E;
                        j32.e(dLNAControlsActivity5, "this$0");
                        String str2 = dLNAControlsActivity5.z;
                        if (j32.a(str2, "yes")) {
                            dLNAControlsActivity5.z = "no";
                        } else if (j32.a(str2, "no")) {
                            dLNAControlsActivity5.z = "yes";
                        }
                        dLNAControlsActivity5.k0();
                        break;
                    case 5:
                        DLNAControlsActivity dLNAControlsActivity6 = this.s;
                        int i9 = DLNAControlsActivity.E;
                        j32.e(dLNAControlsActivity6, "this$0");
                        VideoModel videoModel6 = dLNAControlsActivity6.A;
                        if (videoModel6 != null && (list = videoModel6.qualities) != null) {
                            arrayList = new ArrayList(i50.O(list, 10));
                            for (Quality quality : list) {
                                String str3 = quality.resolution;
                                j32.e(str3, "text");
                                arrayList.add(new pl4(null, str3, new fi0(dLNAControlsActivity6, quality), BuildConfig.FLAVOR, false));
                            }
                        }
                        if (arrayList == 0) {
                            arrayList = w21.r;
                        }
                        on onVar = new on();
                        String string = dLNAControlsActivity6.getString(R.string.choose_quality);
                        j32.d(string, "getString(R.string.choose_quality)");
                        androidx.fragment.app.q supportFragmentManager = dLNAControlsActivity6.getSupportFragmentManager();
                        j32.d(supportFragmentManager, "supportFragmentManager");
                        onVar.O = string;
                        onVar.N = m50.z0(arrayList);
                        onVar.c2(supportFragmentManager, "listBottomSheet");
                        break;
                    default:
                        DLNAControlsActivity dLNAControlsActivity7 = this.s;
                        int i10 = DLNAControlsActivity.E;
                        j32.e(dLNAControlsActivity7, "this$0");
                        dLNAControlsActivity7.finish();
                        break;
                }
            }
        });
        T t7 = this.t;
        j32.c(t7);
        final int i3 = 2;
        ((u2) t7).Q.setOnClickListener(new View.OnClickListener(this, i3) { // from class: com.shabakaty.downloader.ai0
            public final /* synthetic */ int r;
            public final /* synthetic */ DLNAControlsActivity s;

            /* JADX WARN: Failed to find 'out' block for switch in B:3:0x0002. Please report as an issue. */
            {
                this.r = i3;
                switch (i3) {
                }
                this.s = this;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r2v0 */
            /* JADX WARN: Type inference failed for: r2v3 */
            /* JADX WARN: Type inference failed for: r2v4, types: [java.util.Collection] */
            /* JADX WARN: Type inference failed for: r2v5, types: [com.shabakaty.downloader.w21] */
            /* JADX WARN: Type inference failed for: r2v6, types: [java.util.ArrayList] */
            /* JADX WARN: Type inference failed for: r2v7 */
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                List<Quality> list;
                int i4 = 0;
                ?? arrayList = 0;
                arrayList = 0;
                switch (this.r) {
                    case 0:
                        DLNAControlsActivity dLNAControlsActivity = this.s;
                        int i5 = DLNAControlsActivity.E;
                        j32.e(dLNAControlsActivity, "this$0");
                        MediaControl mediaControl = dLNAControlsActivity.B;
                        if (mediaControl != null) {
                            mediaControl.seek(dLNAControlsActivity.y + ((long) 10000), null);
                            break;
                        }
                        break;
                    case 1:
                        DLNAControlsActivity dLNAControlsActivity2 = this.s;
                        int i6 = DLNAControlsActivity.E;
                        j32.e(dLNAControlsActivity2, "this$0");
                        MediaControl mediaControl2 = dLNAControlsActivity2.B;
                        if (mediaControl2 != null) {
                            mediaControl2.seek(dLNAControlsActivity2.y - ((long) 10000), null);
                            break;
                        }
                        break;
                    case 2:
                        DLNAControlsActivity dLNAControlsActivity3 = this.s;
                        int i7 = DLNAControlsActivity.E;
                        j32.e(dLNAControlsActivity3, "this$0");
                        if (!dLNAControlsActivity3.D) {
                            dLNAControlsActivity3.D = true;
                            Object obj = dLNAControlsActivity3.t;
                            j32.c(obj);
                            ((u2) obj).Q.setImageResource(R.drawable.ic_vol_mute);
                            DLNAService dLNAService = dLNAControlsActivity3.C;
                            if (dLNAService != null) {
                                dLNAService.setMute(true, null);
                                break;
                            }
                        } else {
                            dLNAControlsActivity3.D = false;
                            Object obj2 = dLNAControlsActivity3.t;
                            j32.c(obj2);
                            ((u2) obj2).Q.setImageResource(R.drawable.quantum_ic_volume_up_white_36);
                            DLNAService dLNAService2 = dLNAControlsActivity3.C;
                            if (dLNAService2 != null) {
                                dLNAService2.setMute(false, null);
                                break;
                            }
                        }
                        break;
                    case 3:
                        DLNAControlsActivity dLNAControlsActivity4 = this.s;
                        int i8 = DLNAControlsActivity.E;
                        j32.e(dLNAControlsActivity4, "this$0");
                        new Thread(new bi0(dLNAControlsActivity4, i4)).start();
                        break;
                    case 4:
                        DLNAControlsActivity dLNAControlsActivity5 = this.s;
                        int i9 = DLNAControlsActivity.E;
                        j32.e(dLNAControlsActivity5, "this$0");
                        String str2 = dLNAControlsActivity5.z;
                        if (j32.a(str2, "yes")) {
                            dLNAControlsActivity5.z = "no";
                        } else if (j32.a(str2, "no")) {
                            dLNAControlsActivity5.z = "yes";
                        }
                        dLNAControlsActivity5.k0();
                        break;
                    case 5:
                        DLNAControlsActivity dLNAControlsActivity6 = this.s;
                        int i10 = DLNAControlsActivity.E;
                        j32.e(dLNAControlsActivity6, "this$0");
                        VideoModel videoModel6 = dLNAControlsActivity6.A;
                        if (videoModel6 != null && (list = videoModel6.qualities) != null) {
                            arrayList = new ArrayList(i50.O(list, 10));
                            for (Quality quality : list) {
                                String str3 = quality.resolution;
                                j32.e(str3, "text");
                                arrayList.add(new pl4(null, str3, new fi0(dLNAControlsActivity6, quality), BuildConfig.FLAVOR, false));
                            }
                        }
                        if (arrayList == 0) {
                            arrayList = w21.r;
                        }
                        on onVar = new on();
                        String string = dLNAControlsActivity6.getString(R.string.choose_quality);
                        j32.d(string, "getString(R.string.choose_quality)");
                        androidx.fragment.app.q supportFragmentManager = dLNAControlsActivity6.getSupportFragmentManager();
                        j32.d(supportFragmentManager, "supportFragmentManager");
                        onVar.O = string;
                        onVar.N = m50.z0(arrayList);
                        onVar.c2(supportFragmentManager, "listBottomSheet");
                        break;
                    default:
                        DLNAControlsActivity dLNAControlsActivity7 = this.s;
                        int i11 = DLNAControlsActivity.E;
                        j32.e(dLNAControlsActivity7, "this$0");
                        dLNAControlsActivity7.finish();
                        break;
                }
            }
        });
        T t8 = this.t;
        j32.c(t8);
        final int i4 = 3;
        ((u2) t8).R.setOnClickListener(new View.OnClickListener(this, i4) { // from class: com.shabakaty.downloader.ai0
            public final /* synthetic */ int r;
            public final /* synthetic */ DLNAControlsActivity s;

            /* JADX WARN: Failed to find 'out' block for switch in B:3:0x0002. Please report as an issue. */
            {
                this.r = i4;
                switch (i4) {
                }
                this.s = this;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r2v0 */
            /* JADX WARN: Type inference failed for: r2v3 */
            /* JADX WARN: Type inference failed for: r2v4, types: [java.util.Collection] */
            /* JADX WARN: Type inference failed for: r2v5, types: [com.shabakaty.downloader.w21] */
            /* JADX WARN: Type inference failed for: r2v6, types: [java.util.ArrayList] */
            /* JADX WARN: Type inference failed for: r2v7 */
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                List<Quality> list;
                int i5 = 0;
                ?? arrayList = 0;
                arrayList = 0;
                switch (this.r) {
                    case 0:
                        DLNAControlsActivity dLNAControlsActivity = this.s;
                        int i6 = DLNAControlsActivity.E;
                        j32.e(dLNAControlsActivity, "this$0");
                        MediaControl mediaControl = dLNAControlsActivity.B;
                        if (mediaControl != null) {
                            mediaControl.seek(dLNAControlsActivity.y + ((long) 10000), null);
                            break;
                        }
                        break;
                    case 1:
                        DLNAControlsActivity dLNAControlsActivity2 = this.s;
                        int i7 = DLNAControlsActivity.E;
                        j32.e(dLNAControlsActivity2, "this$0");
                        MediaControl mediaControl2 = dLNAControlsActivity2.B;
                        if (mediaControl2 != null) {
                            mediaControl2.seek(dLNAControlsActivity2.y - ((long) 10000), null);
                            break;
                        }
                        break;
                    case 2:
                        DLNAControlsActivity dLNAControlsActivity3 = this.s;
                        int i8 = DLNAControlsActivity.E;
                        j32.e(dLNAControlsActivity3, "this$0");
                        if (!dLNAControlsActivity3.D) {
                            dLNAControlsActivity3.D = true;
                            Object obj = dLNAControlsActivity3.t;
                            j32.c(obj);
                            ((u2) obj).Q.setImageResource(R.drawable.ic_vol_mute);
                            DLNAService dLNAService = dLNAControlsActivity3.C;
                            if (dLNAService != null) {
                                dLNAService.setMute(true, null);
                                break;
                            }
                        } else {
                            dLNAControlsActivity3.D = false;
                            Object obj2 = dLNAControlsActivity3.t;
                            j32.c(obj2);
                            ((u2) obj2).Q.setImageResource(R.drawable.quantum_ic_volume_up_white_36);
                            DLNAService dLNAService2 = dLNAControlsActivity3.C;
                            if (dLNAService2 != null) {
                                dLNAService2.setMute(false, null);
                                break;
                            }
                        }
                        break;
                    case 3:
                        DLNAControlsActivity dLNAControlsActivity4 = this.s;
                        int i9 = DLNAControlsActivity.E;
                        j32.e(dLNAControlsActivity4, "this$0");
                        new Thread(new bi0(dLNAControlsActivity4, i5)).start();
                        break;
                    case 4:
                        DLNAControlsActivity dLNAControlsActivity5 = this.s;
                        int i10 = DLNAControlsActivity.E;
                        j32.e(dLNAControlsActivity5, "this$0");
                        String str2 = dLNAControlsActivity5.z;
                        if (j32.a(str2, "yes")) {
                            dLNAControlsActivity5.z = "no";
                        } else if (j32.a(str2, "no")) {
                            dLNAControlsActivity5.z = "yes";
                        }
                        dLNAControlsActivity5.k0();
                        break;
                    case 5:
                        DLNAControlsActivity dLNAControlsActivity6 = this.s;
                        int i11 = DLNAControlsActivity.E;
                        j32.e(dLNAControlsActivity6, "this$0");
                        VideoModel videoModel6 = dLNAControlsActivity6.A;
                        if (videoModel6 != null && (list = videoModel6.qualities) != null) {
                            arrayList = new ArrayList(i50.O(list, 10));
                            for (Quality quality : list) {
                                String str3 = quality.resolution;
                                j32.e(str3, "text");
                                arrayList.add(new pl4(null, str3, new fi0(dLNAControlsActivity6, quality), BuildConfig.FLAVOR, false));
                            }
                        }
                        if (arrayList == 0) {
                            arrayList = w21.r;
                        }
                        on onVar = new on();
                        String string = dLNAControlsActivity6.getString(R.string.choose_quality);
                        j32.d(string, "getString(R.string.choose_quality)");
                        androidx.fragment.app.q supportFragmentManager = dLNAControlsActivity6.getSupportFragmentManager();
                        j32.d(supportFragmentManager, "supportFragmentManager");
                        onVar.O = string;
                        onVar.N = m50.z0(arrayList);
                        onVar.c2(supportFragmentManager, "listBottomSheet");
                        break;
                    default:
                        DLNAControlsActivity dLNAControlsActivity7 = this.s;
                        int i12 = DLNAControlsActivity.E;
                        j32.e(dLNAControlsActivity7, "this$0");
                        dLNAControlsActivity7.finish();
                        break;
                }
            }
        });
        k0();
        T t9 = this.t;
        j32.c(t9);
        final int i5 = 4;
        ((u2) t9).V.setOnClickListener(new View.OnClickListener(this, i5) { // from class: com.shabakaty.downloader.ai0
            public final /* synthetic */ int r;
            public final /* synthetic */ DLNAControlsActivity s;

            /* JADX WARN: Failed to find 'out' block for switch in B:3:0x0002. Please report as an issue. */
            {
                this.r = i5;
                switch (i5) {
                }
                this.s = this;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r2v0 */
            /* JADX WARN: Type inference failed for: r2v3 */
            /* JADX WARN: Type inference failed for: r2v4, types: [java.util.Collection] */
            /* JADX WARN: Type inference failed for: r2v5, types: [com.shabakaty.downloader.w21] */
            /* JADX WARN: Type inference failed for: r2v6, types: [java.util.ArrayList] */
            /* JADX WARN: Type inference failed for: r2v7 */
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                List<Quality> list;
                int i6 = 0;
                ?? arrayList = 0;
                arrayList = 0;
                switch (this.r) {
                    case 0:
                        DLNAControlsActivity dLNAControlsActivity = this.s;
                        int i7 = DLNAControlsActivity.E;
                        j32.e(dLNAControlsActivity, "this$0");
                        MediaControl mediaControl = dLNAControlsActivity.B;
                        if (mediaControl != null) {
                            mediaControl.seek(dLNAControlsActivity.y + ((long) 10000), null);
                            break;
                        }
                        break;
                    case 1:
                        DLNAControlsActivity dLNAControlsActivity2 = this.s;
                        int i8 = DLNAControlsActivity.E;
                        j32.e(dLNAControlsActivity2, "this$0");
                        MediaControl mediaControl2 = dLNAControlsActivity2.B;
                        if (mediaControl2 != null) {
                            mediaControl2.seek(dLNAControlsActivity2.y - ((long) 10000), null);
                            break;
                        }
                        break;
                    case 2:
                        DLNAControlsActivity dLNAControlsActivity3 = this.s;
                        int i9 = DLNAControlsActivity.E;
                        j32.e(dLNAControlsActivity3, "this$0");
                        if (!dLNAControlsActivity3.D) {
                            dLNAControlsActivity3.D = true;
                            Object obj = dLNAControlsActivity3.t;
                            j32.c(obj);
                            ((u2) obj).Q.setImageResource(R.drawable.ic_vol_mute);
                            DLNAService dLNAService = dLNAControlsActivity3.C;
                            if (dLNAService != null) {
                                dLNAService.setMute(true, null);
                                break;
                            }
                        } else {
                            dLNAControlsActivity3.D = false;
                            Object obj2 = dLNAControlsActivity3.t;
                            j32.c(obj2);
                            ((u2) obj2).Q.setImageResource(R.drawable.quantum_ic_volume_up_white_36);
                            DLNAService dLNAService2 = dLNAControlsActivity3.C;
                            if (dLNAService2 != null) {
                                dLNAService2.setMute(false, null);
                                break;
                            }
                        }
                        break;
                    case 3:
                        DLNAControlsActivity dLNAControlsActivity4 = this.s;
                        int i10 = DLNAControlsActivity.E;
                        j32.e(dLNAControlsActivity4, "this$0");
                        new Thread(new bi0(dLNAControlsActivity4, i6)).start();
                        break;
                    case 4:
                        DLNAControlsActivity dLNAControlsActivity5 = this.s;
                        int i11 = DLNAControlsActivity.E;
                        j32.e(dLNAControlsActivity5, "this$0");
                        String str2 = dLNAControlsActivity5.z;
                        if (j32.a(str2, "yes")) {
                            dLNAControlsActivity5.z = "no";
                        } else if (j32.a(str2, "no")) {
                            dLNAControlsActivity5.z = "yes";
                        }
                        dLNAControlsActivity5.k0();
                        break;
                    case 5:
                        DLNAControlsActivity dLNAControlsActivity6 = this.s;
                        int i12 = DLNAControlsActivity.E;
                        j32.e(dLNAControlsActivity6, "this$0");
                        VideoModel videoModel6 = dLNAControlsActivity6.A;
                        if (videoModel6 != null && (list = videoModel6.qualities) != null) {
                            arrayList = new ArrayList(i50.O(list, 10));
                            for (Quality quality : list) {
                                String str3 = quality.resolution;
                                j32.e(str3, "text");
                                arrayList.add(new pl4(null, str3, new fi0(dLNAControlsActivity6, quality), BuildConfig.FLAVOR, false));
                            }
                        }
                        if (arrayList == 0) {
                            arrayList = w21.r;
                        }
                        on onVar = new on();
                        String string = dLNAControlsActivity6.getString(R.string.choose_quality);
                        j32.d(string, "getString(R.string.choose_quality)");
                        androidx.fragment.app.q supportFragmentManager = dLNAControlsActivity6.getSupportFragmentManager();
                        j32.d(supportFragmentManager, "supportFragmentManager");
                        onVar.O = string;
                        onVar.N = m50.z0(arrayList);
                        onVar.c2(supportFragmentManager, "listBottomSheet");
                        break;
                    default:
                        DLNAControlsActivity dLNAControlsActivity7 = this.s;
                        int i13 = DLNAControlsActivity.E;
                        j32.e(dLNAControlsActivity7, "this$0");
                        dLNAControlsActivity7.finish();
                        break;
                }
            }
        });
        T t10 = this.t;
        j32.c(t10);
        final int i6 = 5;
        ((u2) t10).T.setOnClickListener(new View.OnClickListener(this, i6) { // from class: com.shabakaty.downloader.ai0
            public final /* synthetic */ int r;
            public final /* synthetic */ DLNAControlsActivity s;

            /* JADX WARN: Failed to find 'out' block for switch in B:3:0x0002. Please report as an issue. */
            {
                this.r = i6;
                switch (i6) {
                }
                this.s = this;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r2v0 */
            /* JADX WARN: Type inference failed for: r2v3 */
            /* JADX WARN: Type inference failed for: r2v4, types: [java.util.Collection] */
            /* JADX WARN: Type inference failed for: r2v5, types: [com.shabakaty.downloader.w21] */
            /* JADX WARN: Type inference failed for: r2v6, types: [java.util.ArrayList] */
            /* JADX WARN: Type inference failed for: r2v7 */
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                List<Quality> list;
                int i7 = 0;
                ?? arrayList = 0;
                arrayList = 0;
                switch (this.r) {
                    case 0:
                        DLNAControlsActivity dLNAControlsActivity = this.s;
                        int i8 = DLNAControlsActivity.E;
                        j32.e(dLNAControlsActivity, "this$0");
                        MediaControl mediaControl = dLNAControlsActivity.B;
                        if (mediaControl != null) {
                            mediaControl.seek(dLNAControlsActivity.y + ((long) 10000), null);
                            break;
                        }
                        break;
                    case 1:
                        DLNAControlsActivity dLNAControlsActivity2 = this.s;
                        int i9 = DLNAControlsActivity.E;
                        j32.e(dLNAControlsActivity2, "this$0");
                        MediaControl mediaControl2 = dLNAControlsActivity2.B;
                        if (mediaControl2 != null) {
                            mediaControl2.seek(dLNAControlsActivity2.y - ((long) 10000), null);
                            break;
                        }
                        break;
                    case 2:
                        DLNAControlsActivity dLNAControlsActivity3 = this.s;
                        int i10 = DLNAControlsActivity.E;
                        j32.e(dLNAControlsActivity3, "this$0");
                        if (!dLNAControlsActivity3.D) {
                            dLNAControlsActivity3.D = true;
                            Object obj = dLNAControlsActivity3.t;
                            j32.c(obj);
                            ((u2) obj).Q.setImageResource(R.drawable.ic_vol_mute);
                            DLNAService dLNAService = dLNAControlsActivity3.C;
                            if (dLNAService != null) {
                                dLNAService.setMute(true, null);
                                break;
                            }
                        } else {
                            dLNAControlsActivity3.D = false;
                            Object obj2 = dLNAControlsActivity3.t;
                            j32.c(obj2);
                            ((u2) obj2).Q.setImageResource(R.drawable.quantum_ic_volume_up_white_36);
                            DLNAService dLNAService2 = dLNAControlsActivity3.C;
                            if (dLNAService2 != null) {
                                dLNAService2.setMute(false, null);
                                break;
                            }
                        }
                        break;
                    case 3:
                        DLNAControlsActivity dLNAControlsActivity4 = this.s;
                        int i11 = DLNAControlsActivity.E;
                        j32.e(dLNAControlsActivity4, "this$0");
                        new Thread(new bi0(dLNAControlsActivity4, i7)).start();
                        break;
                    case 4:
                        DLNAControlsActivity dLNAControlsActivity5 = this.s;
                        int i12 = DLNAControlsActivity.E;
                        j32.e(dLNAControlsActivity5, "this$0");
                        String str2 = dLNAControlsActivity5.z;
                        if (j32.a(str2, "yes")) {
                            dLNAControlsActivity5.z = "no";
                        } else if (j32.a(str2, "no")) {
                            dLNAControlsActivity5.z = "yes";
                        }
                        dLNAControlsActivity5.k0();
                        break;
                    case 5:
                        DLNAControlsActivity dLNAControlsActivity6 = this.s;
                        int i13 = DLNAControlsActivity.E;
                        j32.e(dLNAControlsActivity6, "this$0");
                        VideoModel videoModel6 = dLNAControlsActivity6.A;
                        if (videoModel6 != null && (list = videoModel6.qualities) != null) {
                            arrayList = new ArrayList(i50.O(list, 10));
                            for (Quality quality : list) {
                                String str3 = quality.resolution;
                                j32.e(str3, "text");
                                arrayList.add(new pl4(null, str3, new fi0(dLNAControlsActivity6, quality), BuildConfig.FLAVOR, false));
                            }
                        }
                        if (arrayList == 0) {
                            arrayList = w21.r;
                        }
                        on onVar = new on();
                        String string = dLNAControlsActivity6.getString(R.string.choose_quality);
                        j32.d(string, "getString(R.string.choose_quality)");
                        androidx.fragment.app.q supportFragmentManager = dLNAControlsActivity6.getSupportFragmentManager();
                        j32.d(supportFragmentManager, "supportFragmentManager");
                        onVar.O = string;
                        onVar.N = m50.z0(arrayList);
                        onVar.c2(supportFragmentManager, "listBottomSheet");
                        break;
                    default:
                        DLNAControlsActivity dLNAControlsActivity7 = this.s;
                        int i14 = DLNAControlsActivity.E;
                        j32.e(dLNAControlsActivity7, "this$0");
                        dLNAControlsActivity7.finish();
                        break;
                }
            }
        });
        T t11 = this.t;
        j32.c(t11);
        final int i7 = 6;
        ((u2) t11).M.setOnClickListener(new View.OnClickListener(this, i7) { // from class: com.shabakaty.downloader.ai0
            public final /* synthetic */ int r;
            public final /* synthetic */ DLNAControlsActivity s;

            /* JADX WARN: Failed to find 'out' block for switch in B:3:0x0002. Please report as an issue. */
            {
                this.r = i7;
                switch (i7) {
                }
                this.s = this;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r2v0 */
            /* JADX WARN: Type inference failed for: r2v3 */
            /* JADX WARN: Type inference failed for: r2v4, types: [java.util.Collection] */
            /* JADX WARN: Type inference failed for: r2v5, types: [com.shabakaty.downloader.w21] */
            /* JADX WARN: Type inference failed for: r2v6, types: [java.util.ArrayList] */
            /* JADX WARN: Type inference failed for: r2v7 */
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                List<Quality> list;
                int i8 = 0;
                ?? arrayList = 0;
                arrayList = 0;
                switch (this.r) {
                    case 0:
                        DLNAControlsActivity dLNAControlsActivity = this.s;
                        int i9 = DLNAControlsActivity.E;
                        j32.e(dLNAControlsActivity, "this$0");
                        MediaControl mediaControl = dLNAControlsActivity.B;
                        if (mediaControl != null) {
                            mediaControl.seek(dLNAControlsActivity.y + ((long) 10000), null);
                            break;
                        }
                        break;
                    case 1:
                        DLNAControlsActivity dLNAControlsActivity2 = this.s;
                        int i10 = DLNAControlsActivity.E;
                        j32.e(dLNAControlsActivity2, "this$0");
                        MediaControl mediaControl2 = dLNAControlsActivity2.B;
                        if (mediaControl2 != null) {
                            mediaControl2.seek(dLNAControlsActivity2.y - ((long) 10000), null);
                            break;
                        }
                        break;
                    case 2:
                        DLNAControlsActivity dLNAControlsActivity3 = this.s;
                        int i11 = DLNAControlsActivity.E;
                        j32.e(dLNAControlsActivity3, "this$0");
                        if (!dLNAControlsActivity3.D) {
                            dLNAControlsActivity3.D = true;
                            Object obj = dLNAControlsActivity3.t;
                            j32.c(obj);
                            ((u2) obj).Q.setImageResource(R.drawable.ic_vol_mute);
                            DLNAService dLNAService = dLNAControlsActivity3.C;
                            if (dLNAService != null) {
                                dLNAService.setMute(true, null);
                                break;
                            }
                        } else {
                            dLNAControlsActivity3.D = false;
                            Object obj2 = dLNAControlsActivity3.t;
                            j32.c(obj2);
                            ((u2) obj2).Q.setImageResource(R.drawable.quantum_ic_volume_up_white_36);
                            DLNAService dLNAService2 = dLNAControlsActivity3.C;
                            if (dLNAService2 != null) {
                                dLNAService2.setMute(false, null);
                                break;
                            }
                        }
                        break;
                    case 3:
                        DLNAControlsActivity dLNAControlsActivity4 = this.s;
                        int i12 = DLNAControlsActivity.E;
                        j32.e(dLNAControlsActivity4, "this$0");
                        new Thread(new bi0(dLNAControlsActivity4, i8)).start();
                        break;
                    case 4:
                        DLNAControlsActivity dLNAControlsActivity5 = this.s;
                        int i13 = DLNAControlsActivity.E;
                        j32.e(dLNAControlsActivity5, "this$0");
                        String str2 = dLNAControlsActivity5.z;
                        if (j32.a(str2, "yes")) {
                            dLNAControlsActivity5.z = "no";
                        } else if (j32.a(str2, "no")) {
                            dLNAControlsActivity5.z = "yes";
                        }
                        dLNAControlsActivity5.k0();
                        break;
                    case 5:
                        DLNAControlsActivity dLNAControlsActivity6 = this.s;
                        int i14 = DLNAControlsActivity.E;
                        j32.e(dLNAControlsActivity6, "this$0");
                        VideoModel videoModel6 = dLNAControlsActivity6.A;
                        if (videoModel6 != null && (list = videoModel6.qualities) != null) {
                            arrayList = new ArrayList(i50.O(list, 10));
                            for (Quality quality : list) {
                                String str3 = quality.resolution;
                                j32.e(str3, "text");
                                arrayList.add(new pl4(null, str3, new fi0(dLNAControlsActivity6, quality), BuildConfig.FLAVOR, false));
                            }
                        }
                        if (arrayList == 0) {
                            arrayList = w21.r;
                        }
                        on onVar = new on();
                        String string = dLNAControlsActivity6.getString(R.string.choose_quality);
                        j32.d(string, "getString(R.string.choose_quality)");
                        androidx.fragment.app.q supportFragmentManager = dLNAControlsActivity6.getSupportFragmentManager();
                        j32.d(supportFragmentManager, "supportFragmentManager");
                        onVar.O = string;
                        onVar.N = m50.z0(arrayList);
                        onVar.c2(supportFragmentManager, "listBottomSheet");
                        break;
                    default:
                        DLNAControlsActivity dLNAControlsActivity7 = this.s;
                        int i15 = DLNAControlsActivity.E;
                        j32.e(dLNAControlsActivity7, "this$0");
                        dLNAControlsActivity7.finish();
                        break;
                }
            }
        });
        T t12 = this.t;
        j32.c(t12);
        ((u2) t12).S.getProgressDrawable().setColorFilter(ld0.b(this, R.color.colorPrimary), PorterDuff.Mode.SRC_IN);
        T t13 = this.t;
        j32.c(t13);
        ((u2) t13).S.getThumb().setColorFilter(ld0.b(this, R.color.colorPrimary), PorterDuff.Mode.SRC_IN);
    }

    @cf4(threadMode = bn4.MAIN)
    public final void onDlnaNotificationEvent(tu0 tu0Var) {
        j32.e(tu0Var, NetcastTVService.UDAP_API_EVENT);
        if (j32.a(tu0Var.b, tu0.e)) {
            finish();
            return;
        }
        if (j32.a(tu0Var.b, tu0.f)) {
            MediaControl mediaControl = this.B;
            if (mediaControl != null) {
                int iHashCode = mediaControl == null ? 0 : mediaControl.hashCode();
                DLNAService dLNAService = DLNAControllerService.c().u;
                MediaControl mediaControl2 = dLNAService == null ? null : dLNAService.getMediaControl();
                if (iHashCode == (mediaControl2 != null ? mediaControl2.hashCode() : 0)) {
                    return;
                }
            }
            DLNAService dLNAService2 = DLNAControllerService.c().u;
            MediaControl mediaControl3 = dLNAService2 != null ? dLNAService2.getMediaControl() : null;
            this.B = mediaControl3;
            this.C = tu0Var.a;
            if (mediaControl3 != null) {
                mediaControl3.getDuration(new d());
            }
            p0();
        }
    }

    @Override // com.shabakaty.downloader.r9, com.shabakaty.downloader.ji1, android.app.Activity
    public void onStart() {
        super.onStart();
        j51.b().k(this);
    }

    @Override // com.shabakaty.downloader.r9, com.shabakaty.downloader.ji1, android.app.Activity
    public void onStop() {
        mu0 mu0Var = this.w;
        if (mu0Var != null) {
            mu0Var.h();
        }
        j51.b().m(this);
        super.onStop();
    }

    public final void p0() {
        t43 t43VarA = uv3.a(t43.f(2L, TimeUnit.SECONDS));
        f00 f00Var = new f00(this);
        xc0<? super Throwable> xc0Var = do1.d;
        j2 j2Var = do1.c;
        this.w = t43VarA.d(f00Var, xc0Var, j2Var, j2Var).h(o5.t, n5.u, j2Var, xc0Var);
    }

    @Override // com.shabakaty.downloader.vj
    public void q(int i) {
        vj.a.a(this, i);
    }

    @Override // com.shabakaty.downloader.xi
    public vj r() {
        return this;
    }
}
