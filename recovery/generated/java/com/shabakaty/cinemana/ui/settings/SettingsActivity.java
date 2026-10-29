package com.shabakaty.cinemana.ui.settings;

import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.widget.Toolbar;
import androidx.navigation.NavController;
import androidx.navigation.c;
import androidx.navigation.i;
import com.cinemana.pro.R;
import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.cinemana.ca1.ThemeStudio142;
import com.shabakaty.downloader.af2;
import com.shabakaty.downloader.ax2;
import com.shabakaty.downloader.b34;
import com.shabakaty.downloader.cl3;
import com.shabakaty.downloader.dq3;
import com.shabakaty.downloader.dt0;
import com.shabakaty.downloader.f34;
import com.shabakaty.downloader.fb1;
import com.shabakaty.downloader.g44;
import com.shabakaty.downloader.h34;
import com.shabakaty.downloader.hn1;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.j34;
import com.shabakaty.downloader.j96;
import com.shabakaty.downloader.jb;
import com.shabakaty.downloader.k2;
import com.shabakaty.downloader.kf2;
import com.shabakaty.downloader.kl3;
import com.shabakaty.downloader.ng2;
import com.shabakaty.downloader.ol3;
import com.shabakaty.downloader.pm0;
import com.shabakaty.downloader.qv4;
import com.shabakaty.downloader.rm1;
import com.shabakaty.downloader.rm3;
import com.shabakaty.downloader.se0;
import com.shabakaty.downloader.te0;
import com.shabakaty.downloader.ud0;
import com.shabakaty.downloader.ui4;
import com.shabakaty.downloader.uo1;
import com.shabakaty.downloader.v3;
import com.shabakaty.downloader.vg4;
import com.shabakaty.downloader.vj;
import com.shabakaty.downloader.xi;
import kotlin.Metadata;

/* JADX INFO: compiled from: SettingsActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00012\u00020\u00032\u00020\u0005B\u0007¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/shabakaty/cinemana/ui/settings/SettingsActivity;", "Lcom/shabakaty/downloader/xi;", "Lcom/shabakaty/downloader/v3;", BuildConfig.FLAVOR, "Lcom/shabakaty/downloader/g44;", "Landroidx/navigation/NavController$b;", "<init>", "()V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final class SettingsActivity extends xi<v3, Object, g44> implements NavController.b, NavController.b {
    public final kf2 v;

    /* JADX INFO: compiled from: SettingsActivity.kt */
    public static final class a extends af2 implements rm1<NavController> {
        public a() {
            super(0);
        }

        @Override // com.shabakaty.downloader.rm1
        public NavController invoke() {
            return kl3.c(SettingsActivity.this, R.id.settings_fragment_container);
        }
    }

    /* JADX INFO: compiled from: SettingsActivity.kt */
    @pm0(c = "com.shabakaty.cinemana.ui.settings.SettingsActivity$onDestinationChanged$1", f = "SettingsActivity.kt", l = {com.connectsdk.R.styleable.AppCompatTheme_listPreferredItemHeightLarge}, m = "invokeSuspend")
    public static final class b extends ui4 implements hn1<se0, ud0<? super qv4>, Object> {
        public int v;

        public b(ud0<? super b> ud0Var) {
            super(2, ud0Var);
        }

        @Override // com.shabakaty.downloader.hn1
        public Object o(se0 se0Var, ud0<? super qv4> ud0Var) {
            return SettingsActivity.this.new b(ud0Var).t(qv4.a);
        }

        @Override // com.shabakaty.downloader.bj
        public final ud0<qv4> r(Object obj, ud0<?> ud0Var) {
            return SettingsActivity.this.new b(ud0Var);
        }

        @Override // com.shabakaty.downloader.bj
        public final Object t(Object obj) {
            te0 te0Var = te0.COROUTINE_SUSPENDED;
            int i = this.v;
            if (i == 0) {
                j96.i(obj);
                this.v = 1;
                if (rm3.f(500L, this) == te0Var) {
                    return te0Var;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                j96.i(obj);
            }
            SettingsActivity settingsActivity = SettingsActivity.this;
            T t = settingsActivity.t;
            j32.c(t);
            settingsActivity.setSupportActionBar(((v3) t).N);
            k2 supportActionBar = SettingsActivity.this.getSupportActionBar();
            if (supportActionBar != null) {
                supportActionBar.m(true);
            }
            T t2 = SettingsActivity.this.t;
            j32.c(t2);
            Menu menu = ((v3) t2).N.getMenu();
            MenuItem menuItemFindItem = menu == null ? null : menu.findItem(R.id.home);
            if (menuItemFindItem != null) {
                menuItemFindItem.setVisible(true);
            }
            return qv4.a;
        }
    }

    public SettingsActivity() {
        super(R.layout.activity_settings);
        this.v = ng2.a(new a());
    }

    @Override // com.shabakaty.downloader.xi
    public Class<g44> h0() {
        return g44.class;
    }

    @Override // androidx.navigation.NavController.b
    public void k(NavController navController, c cVar, Bundle bundle) {
        j32.e(cVar, "destination");
        T t = this.t;
        j32.c(t);
        ((v3) t).M.e(true, true, true);
        cl3.e(this).c(new b(null));
    }

    public final NavController k0() {
        return (NavController) this.v.getValue();
    }

    public void o() {
        j32.e(this, "this");
        j32.e(this, "this");
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        c cVarE = k0().e();
        boolean z = false;
        if (cVarE != null && cVarE.t == 6101) {
            z = true;
        }
        if (z) {
            super.onBackPressed();
        } else {
            kl3.c(this, R.id.settings_fragment_container).k();
        }
    }

    @Override // com.shabakaty.downloader.xi, com.shabakaty.downloader.ji1, androidx.activity.ComponentActivity, com.shabakaty.downloader.p80, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        NavController navControllerK0 = k0();
        j32.e(navControllerK0, "<this>");
        j32.e(this, "context");
        i iVar = navControllerK0.k;
        j32.b(iVar, "navigatorProvider");
        ax2 ax2Var = new ax2(iVar, R.id.settings_fragment_container, 6101);
        dt0 dt0Var = new dt0((androidx.navigation.fragment.a) ax2Var.h.c(androidx.navigation.fragment.a.class), 6101, dq3.a(b34.class));
        dt0Var.a = getString(R.string.settings_txt);
        dt0Var.a(6201, h34.r);
        dt0Var.a(6202, f34.r);
        dt0Var.a(6203, j34.r);
        uo1.a(dt0Var, "Settings List Fragment");
        ax2Var.e(dt0Var);
        dt0 dt0Var2 = new dt0((androidx.navigation.fragment.a) ax2Var.h.c(androidx.navigation.fragment.a.class), 6102, dq3.a(fb1.class));
        dt0Var2.a = getString(R.string.filter_settings_txt);
        uo1.a(dt0Var2, "Filter Settings Fragment");
        ax2Var.e(dt0Var2);
        dt0 dt0Var3 = new dt0((androidx.navigation.fragment.a) ax2Var.h.c(androidx.navigation.fragment.a.class), 6103, dq3.a(jb.class));
        dt0Var3.a = getString(R.string.general_txt);
        uo1.a(dt0Var3, "App Settings Fragment");
        ax2Var.e(dt0Var3);
        dt0 dt0Var4 = new dt0((androidx.navigation.fragment.a) ax2Var.h.c(androidx.navigation.fragment.a.class), 6104, dq3.a(vg4.class));
        dt0Var4.a = getString(R.string.subtitles_txt);
        uo1.a(dt0Var4, "Subtitles Settings Fragment");
        ax2Var.e(dt0Var4);
        navControllerK0.p(ax2Var.c(), null);
        T t = this.t;
        j32.c(t);
        Toolbar toolbar = ((v3) t).N;
        j32.d(toolbar, "binding.settingsToolbar");
        ol3.h(toolbar, k0(), null, 2);
        T t2 = this.t;
        j32.c(t2);
        setSupportActionBar(((v3) t2).N);
        k2 supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.m(true);
        }
        Bundle bundleExtra = getIntent().getBundleExtra("saved_state");
        if (bundleExtra == null) {
            return;
        }
        Integer numValueOf = Integer.valueOf(bundleExtra.getInt("destination_id"));
        if (!(numValueOf.intValue() != 0)) {
            numValueOf = null;
        }
        if (numValueOf == null) {
            return;
        }
        k0().i(numValueOf.intValue(), null, null, null);
    }

    @Override // com.shabakaty.downloader.xi, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        j32.e(menuItem, "item");
        c cVarE = k0().e();
        if (cVarE != null && cVarE.t == 6101) {
            return false;
        }
        return kl3.c(this, R.id.settings_fragment_container).k();
    }

    @Override // com.shabakaty.downloader.r9, com.shabakaty.downloader.ji1, android.app.Activity
    public void onStart() {
        super.onStart();
        k0().a(this);
    }

    @Override // com.shabakaty.downloader.r9, com.shabakaty.downloader.ji1, android.app.Activity
    public void onStop() {
        k0().l.remove(this);
        super.onStop();
    }

    public void openThemeStudio(View view) {
        if (!"cinemana_tmdb_api_setting".equals(view.getTag())) {
            startActivity(new Intent(this, (Class<?>) ThemeStudio142.class));
        } else {
            try {
                Class.forName("com.cinemana.pro.logo.TmdbSettings").getMethod("openDialog", Object.class).invoke(null, this);
            } catch (Exception e) {
            }
        }
    }

    public void q(int i) {
        j32.e(this, "this");
        vj.a.a(this, i);
    }

    @Override // com.shabakaty.downloader.xi
    public vj r() {
        return this;
    }
}
