package com.shabakaty.downloader;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.view.MenuItem;
import androidx.databinding.ViewDataBinding;
import com.shabakaty.cinemana.ca1.ThemeEngine142;
import com.shabakaty.downloader.vj;
import com.shabakaty.downloader.xk;
import java.util.Locale;

/* JADX INFO: compiled from: BaseActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class xi<T extends ViewDataBinding, N extends vj, V extends xk<N>> extends r9 {
    public final int r;
    public p35 s;
    public T t;
    public V u;

    public xi(int i) {
        this.r = i;
    }

    public final V F() {
        V v = this.u;
        if (v != null) {
            return v;
        }
        j32.l("safeViewModel");
        throw null;
    }

    @Override // android.view.ContextThemeWrapper
    public void applyOverrideConfiguration(Configuration configuration) {
        if (configuration != null) {
            int i = configuration.uiMode;
            configuration.setTo(getBaseContext().getResources().getConfiguration());
            configuration.uiMode = i;
        }
        super.applyOverrideConfiguration(configuration);
    }

    @Override // com.shabakaty.downloader.r9, android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public void attachBaseContext(Context context) {
        j32.e(context, "newBase");
        super.attachBaseContext(uj2.c.a().a());
    }

    public abstract Class<V> h0();

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.shabakaty.downloader.ji1, androidx.activity.ComponentActivity, com.shabakaty.downloader.p80, android.app.Activity
    public void onCreate(Bundle bundle) {
        T t;
        Class<V> clsH0;
        ThemeEngine142.prepare(this);
        if (Build.VERSION.SDK_INT < 23) {
            getWindow().setStatusBarColor(-16777216);
            getWindow().setNavigationBarColor(-16777216);
        }
        vd5.p(this);
        super.onCreate(bundle);
        uj2.b bVar = uj2.c;
        Resources resources = getApplicationContext().getResources();
        j32.d(resources, "applicationContext.resources");
        Locale localeB = bVar.b(resources);
        Resources resources2 = getResources();
        j32.d(resources2, "resources");
        if (!j32.a(localeB, bVar.b(resources2))) {
            bVar.a().a();
        }
        if (this.u == null && (clsH0 = h0()) != null) {
            p35 p35Var = this.s;
            if (p35Var == 0) {
                j32.l("viewModelFactory");
                throw null;
            }
            r35 viewModelStore = getViewModelStore();
            String canonicalName = clsH0.getCanonicalName();
            if (canonicalName == null) {
                throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
            }
            String strA = el3.a("androidx.lifecycle.ViewModelProvider.DefaultKey:", canonicalName);
            o35 o35VarC = viewModelStore.a.get(strA);
            if (!clsH0.isInstance(o35VarC)) {
                o35VarC = p35Var instanceof androidx.lifecycle.n.c ? ((androidx.lifecycle.n.c) p35Var).c(strA, clsH0) : p35Var.a(clsH0);
                o35 o35VarPut = viewModelStore.a.put(strA, o35VarC);
                if (o35VarPut != null) {
                    o35VarPut.onCleared();
                }
            } else if (p35Var instanceof androidx.lifecycle.n.e) {
                ((androidx.lifecycle.n.e) p35Var).b(o35VarC);
            }
            j32.d(o35VarC, "ViewModelProvider(this, …tory).get(viewModelClass)");
            V v = (V) o35VarC;
            this.u = v;
            v.j(r());
        }
        setContentView(this.r);
        T t2 = this.t;
        if (t2 != null) {
            t2.B(this);
        }
        T t3 = this.t;
        if (t3 != null) {
            t3.D(16, r());
        }
        if (h0() != null && (t = this.t) != null) {
            V v2 = this.u;
            if (v2 == null) {
                j32.l("safeViewModel");
                throw null;
            }
            t.D(38, v2);
        }
        T t4 = this.t;
        if (t4 == null) {
            return;
        }
        t4.k();
    }

    @Override // com.shabakaty.downloader.r9, com.shabakaty.downloader.ji1, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.t = null;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        j32.e(menuItem, "item");
        if (menuItem.getItemId() == 16908332) {
            onBackPressed();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    public abstract N r();

    @Override // com.shabakaty.downloader.r9, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i) {
        T t = (T) hl0.b(getLayoutInflater(), i, null, false);
        this.t = t;
        super.setContentView(t != null ? t.v : null);
    }
}
