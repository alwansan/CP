package com.shabakaty.cinemana.ui.splash;

import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.animation.AlphaAnimation;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import com.cinemana.pro.R;
import com.google.firebase.perf.network.FirebasePerfOkHttpClient;
import com.shabakaty.cinemana.features.StorageAccess;
import com.shabakaty.cinemana.ui.home_activity.HomeActivity;
import com.shabakaty.downloader.af2;
import com.shabakaty.downloader.f73;
import com.shabakaty.downloader.fa4;
import com.shabakaty.downloader.gy2;
import com.shabakaty.downloader.he0;
import com.shabakaty.downloader.hy2;
import com.shabakaty.downloader.ia4;
import com.shabakaty.downloader.iy2;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.ja4;
import com.shabakaty.downloader.ka4;
import com.shabakaty.downloader.q14;
import com.shabakaty.downloader.qv4;
import com.shabakaty.downloader.re4;
import com.shabakaty.downloader.rm1;
import com.shabakaty.downloader.s45;
import com.shabakaty.downloader.t65;
import com.shabakaty.downloader.vj;
import com.shabakaty.downloader.vr3;
import com.shabakaty.downloader.xi;
import com.shabakaty.downloader.y65;
import com.shabakaty.downloader.yc4;
import com.shabakaty.downloader.z3;
import kotlin.Metadata;

/* JADX INFO: compiled from: SplashActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00012\u00020\u0003B\u0007¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/shabakaty/cinemana/ui/splash/SplashActivity;", "Lcom/shabakaty/downloader/xi;", "Lcom/shabakaty/downloader/z3;", "Lcom/shabakaty/downloader/fa4;", "Lcom/shabakaty/downloader/ka4;", "<init>", "()V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final class SplashActivity extends xi<z3, fa4, ka4> implements fa4 {
    public static final /* synthetic */ int x = 0;
    public String v;
    public gy2 w;

    /* JADX INFO: compiled from: SplashActivity.kt */
    public static final class a extends af2 implements rm1<qv4> {
        public a() {
            super(0);
        }

        @Override // com.shabakaty.downloader.rm1
        public qv4 invoke() {
            AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
            alphaAnimation.setDuration(0L);
            alphaAnimation.setAnimationListener(new com.shabakaty.cinemana.ui.splash.a(SplashActivity.this));
            T t = SplashActivity.this.t;
            j32.c(t);
            ((z3) t).v.setAnimation(alphaAnimation);
            return qv4.a;
        }
    }

    /* JADX INFO: compiled from: SplashActivity.kt */
    public static final class b extends af2 implements rm1<qv4> {
        public b() {
            super(0);
        }

        @Override // com.shabakaty.downloader.rm1
        public qv4 invoke() {
            SplashActivity splashActivity = SplashActivity.this;
            int i = SplashActivity.x;
            ka4 ka4VarF = splashActivity.F();
            if (ka4VarF.f.a.getBoolean("key_service_is_down", false)) {
                ka4VarF.b(ka4VarF.g.a(), new ia4(ka4VarF), ja4.r);
            } else {
                ka4VarF.l();
            }
            return qv4.a;
        }
    }

    public SplashActivity() {
        super(R.layout.activity_splash);
    }

    @Override // com.shabakaty.downloader.fa4
    public void D() {
        T t = this.t;
        j32.c(t);
        TextView textView = ((z3) t).N;
        j32.d(textView, "binding.notEarthlinkTxt");
        s45.l(textView);
        T t2 = this.t;
        j32.c(t2);
        AppCompatImageView appCompatImageView = ((z3) t2).O;
        j32.d(appCompatImageView, "binding.retryButton");
        s45.l(appCompatImageView);
    }

    @Override // com.shabakaty.downloader.fa4
    public boolean G1() {
        return !isFinishing();
    }

    @Override // com.shabakaty.downloader.fa4
    public void U() {
        String string;
        Intent intent = getIntent();
        String action = intent == null ? null : intent.getAction();
        Intent intent2 = getIntent();
        Uri data = intent2 != null ? intent2.getData() : null;
        if (j32.a(action, "android.intent.action.VIEW")) {
            if ((data == null || (string = data.toString()) == null || !re4.N(string, "/video", false, 2)) ? false : true) {
                this.v = data.getLastPathSegment();
            }
        }
        setIntent(new Intent(this, (Class<?>) HomeActivity.class));
        if (this.v != null) {
            getIntent().putExtra("VideoIDArg", this.v);
        }
        getIntent().setFlags(335544320);
        startActivity(getIntent());
        finish();
    }

    @Override // com.shabakaty.downloader.xi
    public Class<ka4> h0() {
        return ka4.class;
    }

    @Override // com.shabakaty.downloader.vj
    public void o() {
        T t = this.t;
        j32.c(t);
        TextView textView = ((z3) t).N;
        j32.d(textView, "binding.notEarthlinkTxt");
        s45.j(textView);
        F().m();
    }

    @Override // com.shabakaty.downloader.xi, com.shabakaty.downloader.ji1, androidx.activity.ComponentActivity, com.shabakaty.downloader.p80, android.app.Activity
    public void onCreate(Bundle bundle) {
        getWindow().getDecorView().setSystemUiVisibility(2);
        Window window = getWindow();
        if (Build.VERSION.SDK_INT >= 30) {
            t65.a(window, false);
        } else {
            View decorView = window.getDecorView();
            decorView.setSystemUiVisibility(decorView.getSystemUiVisibility() | 1792);
        }
        y65 y65Var = new y65(getWindow(), new View(this));
        y65Var.a.a(7);
        y65Var.a.b(2);
        super.onCreate(bundle);
        if (StorageAccess.gateOnCreate(this)) {
            T t = this.t;
            j32.c(t);
            TextView textView = ((z3) t).N;
            j32.d(textView, "binding.notEarthlinkTxt");
            s45.j(textView);
            f73 f73VarR = he0.r("start_animation", new a());
            b bVar = new b();
            j32.e(bVar, "operation");
            if (f73VarR.a) {
                bVar.invoke();
            }
            gy2 gy2Var = this.w;
            if (gy2Var == null) {
                j32.l("networkInformation");
                throw null;
            }
            getApplicationContext();
            gy2Var.b(false);
            gy2Var.b(true);
            iy2 iy2Var = new iy2(gy2Var);
            vr3.a aVar = new vr3.a();
            aVar.k("https://share.shabakaty.cc/whatismyip");
            aVar.d();
            FirebasePerfOkHttpClient.enqueue(gy2Var.e.a(aVar.b()), iy2Var);
            hy2 hy2Var = new hy2(gy2Var);
            vr3.a aVar2 = new vr3.a();
            aVar2.k("https://api.ipify.org/?format=json");
            aVar2.d();
            FirebasePerfOkHttpClient.enqueue(gy2Var.e.a(aVar2.b()), hy2Var);
        }
    }

    @Override // com.shabakaty.downloader.ji1, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        if (i == 4408 && iArr.length > 0 && iArr[0] == 0) {
            recreate();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.shabakaty.downloader.ji1, android.app.Activity
    public void onResume() {
        super.onResume();
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

    @Override // com.shabakaty.downloader.fa4
    public void z1(q14 q14Var) {
        yc4.a(this, q14Var);
        finish();
    }
}
