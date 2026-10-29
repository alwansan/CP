package com.shabakaty.downloader;

import android.annotation.SuppressLint;
import android.app.SharedElementCallback;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import androidx.activity.ComponentActivity;
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.result.ActivityResultRegistry;
import androidx.fragment.app.Fragment;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX INFO: compiled from: FragmentActivity.java */
/* JADX INFO: loaded from: classes.dex */
public class ji1 extends ComponentActivity implements s2.b, s2.c {
    public static final String FRAGMENTS_TAG = "android:support:fragments";
    public boolean mCreated;
    public final androidx.lifecycle.g mFragmentLifecycleRegistry;
    public final xi1 mFragments;
    public boolean mResumed;
    public boolean mStopped;

    /* JADX INFO: compiled from: FragmentActivity.java */
    public class a implements androidx.savedstate.a.b {
        public a() {
        }

        @Override // androidx.savedstate.a.b
        public Bundle a() {
            Bundle bundle = new Bundle();
            ji1.this.markFragmentsCreated();
            ji1.this.mFragmentLifecycleRegistry.f(androidx.lifecycle.e.b.ON_STOP);
            Parcelable parcelableD0 = ji1.this.mFragments.a.u.d0();
            if (parcelableD0 != null) {
                bundle.putParcelable(ji1.FRAGMENTS_TAG, parcelableD0);
            }
            return bundle;
        }
    }

    /* JADX INFO: compiled from: FragmentActivity.java */
    public class b implements m63 {
        public b() {
        }

        @Override // com.shabakaty.downloader.m63
        public void a(Context context) {
            sj1<?> sj1Var = ji1.this.mFragments.a;
            sj1Var.u.b(sj1Var, sj1Var, null);
            Bundle bundleA = ji1.this.getSavedStateRegistry().a(ji1.FRAGMENTS_TAG);
            if (bundleA != null) {
                Parcelable parcelable = bundleA.getParcelable(ji1.FRAGMENTS_TAG);
                sj1<?> sj1Var2 = ji1.this.mFragments.a;
                if (!(sj1Var2 instanceof s35)) {
                    throw new IllegalStateException("Your FragmentHostCallback must implement ViewModelStoreOwner to call restoreSaveState(). Call restoreAllState()  if you're still using retainNestedNonConfig().");
                }
                sj1Var2.u.c0(parcelable);
            }
        }
    }

    /* JADX INFO: compiled from: FragmentActivity.java */
    public class c extends sj1<ji1> implements s35, f63, u3, ak1 {
        public c() {
            super(ji1.this);
        }

        @Override // com.shabakaty.downloader.ak1
        public void a(androidx.fragment.app.q qVar, Fragment fragment) {
            ji1.this.onAttachFragment(fragment);
        }

        @Override // com.shabakaty.downloader.wi1
        public View b(int i) {
            return ji1.this.findViewById(i);
        }

        @Override // com.shabakaty.downloader.wi1
        public boolean c() {
            Window window = ji1.this.getWindow();
            return (window == null || window.peekDecorView() == null) ? false : true;
        }

        @Override // com.shabakaty.downloader.sj1
        public void d(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            ji1.this.dump(str, null, printWriter, strArr);
        }

        @Override // com.shabakaty.downloader.sj1
        public ji1 e() {
            return ji1.this;
        }

        @Override // com.shabakaty.downloader.sj1
        public LayoutInflater f() {
            return ji1.this.getLayoutInflater().cloneInContext(ji1.this);
        }

        @Override // com.shabakaty.downloader.sj1
        public boolean g(Fragment fragment) {
            return !ji1.this.isFinishing();
        }

        @Override // com.shabakaty.downloader.u3
        public ActivityResultRegistry getActivityResultRegistry() {
            return ji1.this.getActivityResultRegistry();
        }

        @Override // com.shabakaty.downloader.rh2
        public androidx.lifecycle.e getLifecycle() {
            return ji1.this.mFragmentLifecycleRegistry;
        }

        @Override // com.shabakaty.downloader.f63
        public OnBackPressedDispatcher getOnBackPressedDispatcher() {
            return ji1.this.getOnBackPressedDispatcher();
        }

        @Override // com.shabakaty.downloader.s35
        public r35 getViewModelStore() {
            return ji1.this.getViewModelStore();
        }

        @Override // com.shabakaty.downloader.sj1
        public boolean h(String str) {
            return s2.g(ji1.this, str);
        }

        @Override // com.shabakaty.downloader.sj1
        public void i() {
            ji1.this.supportInvalidateOptionsMenu();
        }
    }

    public ji1() {
        this.mFragments = new xi1(new c());
        this.mFragmentLifecycleRegistry = new androidx.lifecycle.g(this);
        this.mStopped = true;
        init();
    }

    private void init() {
        getSavedStateRegistry().b(FRAGMENTS_TAG, new a());
        addOnContextAvailableListener(new b());
    }

    private static boolean markState(androidx.fragment.app.q qVar, androidx.lifecycle.e.c cVar) {
        androidx.lifecycle.e.c cVar2 = androidx.lifecycle.e.c.STARTED;
        boolean zMarkState = false;
        for (Fragment fragment : qVar.L()) {
            if (fragment != null) {
                if (fragment.getHost() != null) {
                    zMarkState |= markState(fragment.getChildFragmentManager(), cVar);
                }
                ml1 ml1Var = fragment.mViewLifecycleOwner;
                if (ml1Var != null) {
                    ml1Var.b();
                    if (ml1Var.u.c.compareTo(cVar2) >= 0) {
                        androidx.lifecycle.g gVar = fragment.mViewLifecycleOwner.u;
                        gVar.e("setCurrentState");
                        gVar.h(cVar);
                        zMarkState = true;
                    }
                }
                if (fragment.mLifecycleRegistry.c.compareTo(cVar2) >= 0) {
                    androidx.lifecycle.g gVar2 = fragment.mLifecycleRegistry;
                    gVar2.e("setCurrentState");
                    gVar2.h(cVar);
                    zMarkState = true;
                }
            }
        }
        return zMarkState;
    }

    public final View dispatchFragmentsOnCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return this.mFragments.a.u.f.onCreateView(view, str, context, attributeSet);
    }

    @Override // android.app.Activity
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        printWriter.print(str);
        printWriter.print("Local FragmentActivity ");
        printWriter.print(Integer.toHexString(System.identityHashCode(this)));
        printWriter.println(" State:");
        String str2 = str + "  ";
        printWriter.print(str2);
        printWriter.print("mCreated=");
        printWriter.print(this.mCreated);
        printWriter.print(" mResumed=");
        printWriter.print(this.mResumed);
        printWriter.print(" mStopped=");
        printWriter.print(this.mStopped);
        if (getApplication() != null) {
            lj2.b(this).a(str2, fileDescriptor, printWriter, strArr);
        }
        this.mFragments.a.u.y(str, fileDescriptor, printWriter, strArr);
    }

    public androidx.fragment.app.q getSupportFragmentManager() {
        return this.mFragments.a.u;
    }

    @Deprecated
    public lj2 getSupportLoaderManager() {
        return lj2.b(this);
    }

    public void markFragmentsCreated() {
        while (markState(getSupportFragmentManager(), androidx.lifecycle.e.c.CREATED)) {
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        this.mFragments.a();
        super.onActivityResult(i, i2, intent);
    }

    @Deprecated
    public void onAttachFragment(Fragment fragment) {
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        this.mFragments.a();
        super.onConfigurationChanged(configuration);
        this.mFragments.a.u.k(configuration);
    }

    @Override // androidx.activity.ComponentActivity, com.shabakaty.downloader.p80, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mFragmentLifecycleRegistry.f(androidx.lifecycle.e.b.ON_CREATE);
        this.mFragments.a.u.m();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onCreatePanelMenu(int i, Menu menu) {
        if (i != 0) {
            return super.onCreatePanelMenu(i, menu);
        }
        boolean zOnCreatePanelMenu = super.onCreatePanelMenu(i, menu);
        xi1 xi1Var = this.mFragments;
        return zOnCreatePanelMenu | xi1Var.a.u.n(menu, getMenuInflater());
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        View viewDispatchFragmentsOnCreateView = dispatchFragmentsOnCreateView(view, str, context, attributeSet);
        return viewDispatchFragmentsOnCreateView == null ? super.onCreateView(view, str, context, attributeSet) : viewDispatchFragmentsOnCreateView;
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.mFragments.a.u.o();
        this.mFragmentLifecycleRegistry.f(androidx.lifecycle.e.b.ON_DESTROY);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onLowMemory() {
        super.onLowMemory();
        this.mFragments.a.u.p();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i, MenuItem menuItem) {
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        if (i == 0) {
            return this.mFragments.a.u.r(menuItem);
        }
        if (i != 6) {
            return false;
        }
        return this.mFragments.a.u.l(menuItem);
    }

    @Override // android.app.Activity
    public void onMultiWindowModeChanged(boolean z) {
        this.mFragments.a.u.q(z);
    }

    @Override // android.app.Activity
    public void onNewIntent(@SuppressLint({"UnknownNullness"}) Intent intent) {
        this.mFragments.a();
        super.onNewIntent(intent);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i, Menu menu) {
        if (i == 0) {
            this.mFragments.a.u.s(menu);
        }
        super.onPanelClosed(i, menu);
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        this.mResumed = false;
        this.mFragments.a.u.w(5);
        this.mFragmentLifecycleRegistry.f(androidx.lifecycle.e.b.ON_PAUSE);
    }

    @Override // android.app.Activity
    public void onPictureInPictureModeChanged(boolean z) {
        this.mFragments.a.u.u(z);
    }

    @Override // android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        onResumeFragments();
    }

    @Deprecated
    public boolean onPrepareOptionsPanel(View view, Menu menu) {
        return super.onPreparePanel(0, view, menu);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onPreparePanel(int i, View view, Menu menu) {
        return i == 0 ? onPrepareOptionsPanel(view, menu) | this.mFragments.a.u.v(menu) : super.onPreparePanel(i, view, menu);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        this.mFragments.a();
        super.onRequestPermissionsResult(i, strArr, iArr);
    }

    @Override // android.app.Activity
    public void onResume() {
        this.mFragments.a();
        super.onResume();
        this.mResumed = true;
        this.mFragments.a.u.C(true);
    }

    public void onResumeFragments() {
        this.mFragmentLifecycleRegistry.f(androidx.lifecycle.e.b.ON_RESUME);
        androidx.fragment.app.q qVar = this.mFragments.a.u;
        qVar.C = false;
        qVar.D = false;
        qVar.K.f = false;
        qVar.w(7);
    }

    @Override // android.app.Activity
    public void onStart() {
        this.mFragments.a();
        super.onStart();
        this.mStopped = false;
        if (!this.mCreated) {
            this.mCreated = true;
            androidx.fragment.app.q qVar = this.mFragments.a.u;
            qVar.C = false;
            qVar.D = false;
            qVar.K.f = false;
            qVar.w(4);
        }
        this.mFragments.a.u.C(true);
        this.mFragmentLifecycleRegistry.f(androidx.lifecycle.e.b.ON_START);
        androidx.fragment.app.q qVar2 = this.mFragments.a.u;
        qVar2.C = false;
        qVar2.D = false;
        qVar2.K.f = false;
        qVar2.w(5);
    }

    @Override // android.app.Activity
    public void onStateNotSaved() {
        this.mFragments.a();
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        this.mStopped = true;
        markFragmentsCreated();
        androidx.fragment.app.q qVar = this.mFragments.a.u;
        qVar.D = true;
        qVar.K.f = true;
        qVar.w(4);
        this.mFragmentLifecycleRegistry.f(androidx.lifecycle.e.b.ON_STOP);
    }

    public void setEnterSharedElementCallback(y44 y44Var) {
        int i = s2.c;
        setEnterSharedElementCallback((SharedElementCallback) null);
    }

    public void setExitSharedElementCallback(y44 y44Var) {
        int i = s2.c;
        setExitSharedElementCallback((SharedElementCallback) null);
    }

    public void startActivityFromFragment(Fragment fragment, @SuppressLint({"UnknownNullness"}) Intent intent, int i) {
        startActivityFromFragment(fragment, intent, i, (Bundle) null);
    }

    @Deprecated
    public void startIntentSenderFromFragment(Fragment fragment, @SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) throws IntentSender.SendIntentException {
        if (i != -1) {
            fragment.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4, bundle);
        } else {
            int i5 = s2.c;
            startIntentSenderForResult(intentSender, i, intent, i2, i3, i4, bundle);
        }
    }

    public void supportFinishAfterTransition() {
        int i = s2.c;
        finishAfterTransition();
    }

    @Deprecated
    public void supportInvalidateOptionsMenu() {
        invalidateOptionsMenu();
    }

    public void supportPostponeEnterTransition() {
        int i = s2.c;
        postponeEnterTransition();
    }

    public void supportStartPostponedEnterTransition() {
        int i = s2.c;
        startPostponedEnterTransition();
    }

    @Override // com.shabakaty.downloader.s2.c
    @Deprecated
    public final void validateRequestPermissionsRequestCode(int i) {
    }

    public void startActivityFromFragment(Fragment fragment, @SuppressLint({"UnknownNullness"}) Intent intent, int i, Bundle bundle) {
        if (i != -1) {
            fragment.startActivityForResult(intent, i, bundle);
        } else {
            int i2 = s2.c;
            startActivityForResult(intent, -1, bundle);
        }
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        View viewDispatchFragmentsOnCreateView = dispatchFragmentsOnCreateView(null, str, context, attributeSet);
        return viewDispatchFragmentsOnCreateView == null ? super.onCreateView(str, context, attributeSet) : viewDispatchFragmentsOnCreateView;
    }

    public ji1(int i) {
        super(i);
        this.mFragments = new xi1(new c());
        this.mFragmentLifecycleRegistry = new androidx.lifecycle.g(this);
        this.mStopped = true;
        init();
    }
}
