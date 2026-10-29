package com.shabakaty.downloader;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.appcompat.widget.Toolbar;
import com.cinemana.pro.R;
import java.util.Objects;

/* JADX INFO: compiled from: AppCompatActivity.java */
/* JADX INFO: loaded from: classes.dex */
public class r9 extends ji1 implements v9, jl4.a {
    private static final String DELEGATE_TAG = "androidx:appcompat";
    private z9 mDelegate;
    private Resources mResources;

    /* JADX INFO: compiled from: AppCompatActivity.java */
    public class a implements androidx.savedstate.a.b {
        public a() {
        }

        @Override // androidx.savedstate.a.b
        public Bundle a() {
            Bundle bundle = new Bundle();
            r9.this.getDelegate().r(bundle);
            return bundle;
        }
    }

    /* JADX INFO: compiled from: AppCompatActivity.java */
    public class b implements m63 {
        public b() {
        }

        @Override // com.shabakaty.downloader.m63
        public void a(Context context) {
            z9 delegate = r9.this.getDelegate();
            delegate.k();
            delegate.n(r9.this.getSavedStateRegistry().a(r9.DELEGATE_TAG));
        }
    }

    public r9() {
        initDelegate();
    }

    private void initDelegate() {
        getSavedStateRegistry().b(DELEGATE_TAG, new a());
        addOnContextAvailableListener(new b());
    }

    private void initViewTreeOwners() {
        getWindow().getDecorView().setTag(R.id.view_tree_lifecycle_owner, this);
        getWindow().getDecorView().setTag(R.id.view_tree_view_model_store_owner, this);
        getWindow().getDecorView().setTag(R.id.view_tree_saved_state_registry_owner, this);
    }

    private boolean performMenuItemShortcut(KeyEvent keyEvent) {
        Window window;
        return (Build.VERSION.SDK_INT >= 26 || keyEvent.isCtrlPressed() || KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState()) || keyEvent.getRepeatCount() != 0 || KeyEvent.isModifierKey(keyEvent.getKeyCode()) || (window = getWindow()) == null || window.getDecorView() == null || !window.getDecorView().dispatchKeyShortcutEvent(keyEvent)) ? false : true;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        initViewTreeOwners();
        getDelegate().c(view, layoutParams);
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public void attachBaseContext(Context context) {
        super.attachBaseContext(getDelegate().e(context));
    }

    @Override // android.app.Activity
    public void closeOptionsMenu() {
        k2 supportActionBar = getSupportActionBar();
        if (getWindow().hasFeature(0)) {
            if (supportActionBar == null || !supportActionBar.a()) {
                super.closeOptionsMenu();
            }
        }
    }

    @Override // com.shabakaty.downloader.p80, android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        k2 supportActionBar = getSupportActionBar();
        if (keyCode == 82 && supportActionBar != null && supportActionBar.j(keyEvent)) {
            return true;
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Activity
    public <T extends View> T findViewById(int i) {
        return (T) getDelegate().f(i);
    }

    public z9 getDelegate() {
        if (this.mDelegate == null) {
            int i = z9.r;
            this.mDelegate = new aa(this, null, this, this);
        }
        return this.mDelegate;
    }

    public m2 getDrawerToggleDelegate() {
        return getDelegate().g();
    }

    @Override // android.app.Activity
    public MenuInflater getMenuInflater() {
        return getDelegate().i();
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        Resources resources = this.mResources;
        if (resources == null) {
            int i = d05.a;
        }
        return resources == null ? super.getResources() : resources;
    }

    public k2 getSupportActionBar() {
        return getDelegate().j();
    }

    @Override // com.shabakaty.downloader.jl4.a
    public Intent getSupportParentActivityIntent() {
        return ex2.a(this);
    }

    @Override // android.app.Activity
    public void invalidateOptionsMenu() {
        getDelegate().l();
    }

    @Override // com.shabakaty.downloader.ji1, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.mResources != null) {
            this.mResources.updateConfiguration(configuration, super.getResources().getDisplayMetrics());
        }
        getDelegate().m(configuration);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onContentChanged() {
        onSupportContentChanged();
    }

    public void onCreateSupportNavigateUpTaskStack(jl4 jl4Var) {
        Objects.requireNonNull(jl4Var);
        Intent supportParentActivityIntent = getSupportParentActivityIntent();
        if (supportParentActivityIntent == null) {
            supportParentActivityIntent = ex2.a(this);
        }
        if (supportParentActivityIntent != null) {
            ComponentName component = supportParentActivityIntent.getComponent();
            if (component == null) {
                component = supportParentActivityIntent.resolveActivity(jl4Var.s.getPackageManager());
            }
            jl4Var.h(component);
            jl4Var.r.add(supportParentActivityIntent);
        }
    }

    @Override // com.shabakaty.downloader.ji1, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        getDelegate().o();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (performMenuItemShortcut(keyEvent)) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // com.shabakaty.downloader.ji1, android.app.Activity, android.view.Window.Callback
    public final boolean onMenuItemSelected(int i, MenuItem menuItem) {
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        k2 supportActionBar = getSupportActionBar();
        if (menuItem.getItemId() != 16908332 || supportActionBar == null || (supportActionBar.d() & 4) == 0) {
            return false;
        }
        return onSupportNavigateUp();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuOpened(int i, Menu menu) {
        return super.onMenuOpened(i, menu);
    }

    public void onNightModeChanged(int i) {
    }

    @Override // com.shabakaty.downloader.ji1, android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i, Menu menu) {
        super.onPanelClosed(i, menu);
    }

    @Override // android.app.Activity
    public void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        getDelegate().p(bundle);
    }

    @Override // com.shabakaty.downloader.ji1, android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        getDelegate().q();
    }

    public void onPrepareSupportNavigateUpTaskStack(jl4 jl4Var) {
    }

    @Override // com.shabakaty.downloader.ji1, android.app.Activity
    public void onStart() {
        super.onStart();
        getDelegate().s();
    }

    @Override // com.shabakaty.downloader.ji1, android.app.Activity
    public void onStop() {
        super.onStop();
        getDelegate().t();
    }

    @Override // com.shabakaty.downloader.v9
    public void onSupportActionModeFinished(p2 p2Var) {
    }

    @Override // com.shabakaty.downloader.v9
    public void onSupportActionModeStarted(p2 p2Var) {
    }

    @Deprecated
    public void onSupportContentChanged() {
    }

    public boolean onSupportNavigateUp() {
        Intent supportParentActivityIntent = getSupportParentActivityIntent();
        if (supportParentActivityIntent == null) {
            return false;
        }
        if (!supportShouldUpRecreateTask(supportParentActivityIntent)) {
            supportNavigateUpTo(supportParentActivityIntent);
            return true;
        }
        jl4 jl4Var = new jl4(this);
        onCreateSupportNavigateUpTaskStack(jl4Var);
        onPrepareSupportNavigateUpTaskStack(jl4Var);
        jl4Var.l();
        try {
            int i = s2.c;
            finishAffinity();
            return true;
        } catch (IllegalStateException unused) {
            finish();
            return true;
        }
    }

    @Override // android.app.Activity
    public void onTitleChanged(CharSequence charSequence, int i) {
        super.onTitleChanged(charSequence, i);
        getDelegate().C(charSequence);
    }

    @Override // com.shabakaty.downloader.v9
    public p2 onWindowStartingSupportActionMode(p2.a aVar) {
        return null;
    }

    @Override // android.app.Activity
    public void openOptionsMenu() {
        k2 supportActionBar = getSupportActionBar();
        if (getWindow().hasFeature(0)) {
            if (supportActionBar == null || !supportActionBar.k()) {
                super.openOptionsMenu();
            }
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i) {
        initViewTreeOwners();
        getDelegate().w(i);
    }

    public void setSupportActionBar(Toolbar toolbar) {
        getDelegate().A(toolbar);
    }

    @Deprecated
    public void setSupportProgress(int i) {
    }

    @Deprecated
    public void setSupportProgressBarIndeterminate(boolean z) {
    }

    @Deprecated
    public void setSupportProgressBarIndeterminateVisibility(boolean z) {
    }

    @Deprecated
    public void setSupportProgressBarVisibility(boolean z) {
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public void setTheme(int i) {
        super.setTheme(i);
        getDelegate().B(i);
    }

    public p2 startSupportActionMode(p2.a aVar) {
        return getDelegate().D(aVar);
    }

    @Override // com.shabakaty.downloader.ji1
    public void supportInvalidateOptionsMenu() {
        getDelegate().l();
    }

    public void supportNavigateUpTo(Intent intent) {
        navigateUpTo(intent);
    }

    public boolean supportRequestWindowFeature(int i) {
        return getDelegate().v(i);
    }

    public boolean supportShouldUpRecreateTask(Intent intent) {
        return shouldUpRecreateTask(intent);
    }

    public r9(int i) {
        super(i);
        initDelegate();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        initViewTreeOwners();
        getDelegate().x(view);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        initViewTreeOwners();
        getDelegate().y(view, layoutParams);
    }
}
