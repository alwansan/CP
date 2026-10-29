package com.shabakaty.cinemana.ui.home_activity;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.ViewTreeObserver;
import androidx.cardview.widget.CardView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentContainerView;
import androidx.fragment.app.q;
import androidx.navigation.NavController;
import androidx.navigation.fragment.NavHostFragment;
import com.cinemana.pro.R;
import com.connectsdk.device.ConnectableDevice;
import com.connectsdk.discovery.DiscoveryManager;
import com.connectsdk.service.NetcastTVService;
import com.facebook.drawee.view.SimpleDraweeView;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import com.liulishuo.filedownloader.BuildConfig;
import com.onesignal.q0;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import com.shabakaty.cinemana.local.LocalRuntime;
import com.shabakaty.cinemana.ui.home_fragment.ShowMorePageDataType;
import com.shabakaty.downloader.af2;
import com.shabakaty.downloader.ak1;
import com.shabakaty.downloader.bn4;
import com.shabakaty.downloader.bu3;
import com.shabakaty.downloader.cf4;
import com.shabakaty.downloader.cu3;
import com.shabakaty.downloader.cx2;
import com.shabakaty.downloader.d43;
import com.shabakaty.downloader.du3;
import com.shabakaty.downloader.e43;
import com.shabakaty.downloader.ek;
import com.shabakaty.downloader.eu1;
import com.shabakaty.downloader.ez4;
import com.shabakaty.downloader.fk1;
import com.shabakaty.downloader.fl3;
import com.shabakaty.downloader.hl3;
import com.shabakaty.downloader.hx2;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.j35;
import com.shabakaty.downloader.j51;
import com.shabakaty.downloader.jx2;
import com.shabakaty.downloader.kf2;
import com.shabakaty.downloader.lo3;
import com.shabakaty.downloader.m50;
import com.shabakaty.downloader.ml3;
import com.shabakaty.downloader.ne4;
import com.shabakaty.downloader.ng2;
import com.shabakaty.downloader.nl6;
import com.shabakaty.downloader.ol3;
import com.shabakaty.downloader.qv4;
import com.shabakaty.downloader.rm1;
import com.shabakaty.downloader.rr;
import com.shabakaty.downloader.st1;
import com.shabakaty.downloader.su0;
import com.shabakaty.downloader.tm1;
import com.shabakaty.downloader.tt1;
import com.shabakaty.downloader.ub;
import com.shabakaty.downloader.uj2;
import com.shabakaty.downloader.uo1;
import com.shabakaty.downloader.vb;
import com.shabakaty.downloader.vj;
import com.shabakaty.downloader.vt1;
import com.shabakaty.downloader.x93;
import com.shabakaty.downloader.y2;
import com.shabakaty.downloader.yy3;
import com.shabakaty.downloader.zu1;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import kotlin.Metadata;

/* JADX INFO: compiled from: HomeActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00012\u00020\u00032\u00020\u0005B\u0007¢\u0006\u0004\b\r\u0010\u000eJ\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0010\u0010\f\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0007¨\u0006\u000f"}, d2 = {"Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity;", "Lcom/shabakaty/downloader/hx2;", "Lcom/shabakaty/downloader/y2;", "Lcom/shabakaty/downloader/eu1;", "Lcom/shabakaty/downloader/zu1;", "Lcom/shabakaty/downloader/d43;", "Lcom/shabakaty/downloader/e43;", "stateChanges", "Lcom/shabakaty/downloader/qv4;", "onOSSubscriptionChanged", "Lcom/shabakaty/downloader/su0;", NetcastTVService.UDAP_API_EVENT, "onDLNADiscoveryEvent", "<init>", "()V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final class HomeActivity extends hx2<y2, eu1, zu1> implements eu1, d43 {
    public static final /* synthetic */ int D = 0;
    public final kf2 B;
    public final kf2 C;

    /* JADX INFO: compiled from: HomeActivity.kt */
    public static final class a extends af2 implements rm1<BottomNavigationView> {
        public a() {
            super(0);
        }

        @Override // com.shabakaty.downloader.rm1
        public BottomNavigationView invoke() {
            T t = HomeActivity.this.t;
            j32.c(t);
            BottomNavigationView bottomNavigationView = ((y2) t).O;
            j32.d(bottomNavigationView, "binding.homeBottomNav");
            return bottomNavigationView;
        }
    }

    /* JADX INFO: compiled from: HomeActivity.kt */
    public static final class b extends af2 implements tm1<cx2, qv4> {
        public static final b r = new b();

        public b() {
            super(1);
        }

        @Override // com.shabakaty.downloader.tm1
        public qv4 invoke(cx2 cx2Var) {
            cx2 cx2Var2 = cx2Var;
            j32.e(cx2Var2, "$this$navOptions");
            cx2Var2.a(com.shabakaty.cinemana.ui.home_activity.a.r);
            return qv4.a;
        }
    }

    /* JADX INFO: compiled from: HomeActivity.kt */
    public static final class c extends af2 implements tm1<cx2, qv4> {
        public static final c r = new c();

        public c() {
            super(1);
        }

        @Override // com.shabakaty.downloader.tm1
        public qv4 invoke(cx2 cx2Var) {
            cx2 cx2Var2 = cx2Var;
            j32.e(cx2Var2, "$this$navOptions");
            cx2Var2.a(com.shabakaty.cinemana.ui.home_activity.b.r);
            return qv4.a;
        }
    }

    /* JADX INFO: compiled from: NavigationActivity.kt */
    public static final class d implements ak1 {
        public final /* synthetic */ lo3 r;
        public final /* synthetic */ lo3 s;
        public final /* synthetic */ ShowMorePageDataType t;

        /* JADX INFO: compiled from: NavigationActivity.kt */
        public static final class a implements ak1 {
            public final /* synthetic */ lo3 r;
            public final /* synthetic */ lo3 s;
            public final /* synthetic */ ShowMorePageDataType t;

            public a(lo3 lo3Var, lo3 lo3Var2, ShowMorePageDataType showMorePageDataType) {
                this.r = lo3Var;
                this.s = lo3Var2;
                this.t = showMorePageDataType;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.shabakaty.downloader.ak1
            public final void a(q qVar, Fragment fragment) {
                j32.e(qVar, "$noName_0");
                j32.e(fragment, "fragment");
                if (fragment instanceof vt1) {
                    vt1 vt1Var = (vt1) fragment;
                    j32.f(vt1Var, "$this$findNavController");
                    NavController navControllerX1 = NavHostFragment.X1(vt1Var);
                    j32.b(navControllerX1, "NavHostFragment.findNavController(this)");
                    uo1.d(navControllerX1, this.t);
                    lo3 lo3Var = this.r;
                    ak1 ak1Var = (ak1) lo3Var.r;
                    if (ak1Var == null) {
                        return;
                    }
                    lo3 lo3Var2 = this.s;
                    q qVar2 = (q) lo3Var2.r;
                    if (qVar2 != null) {
                        qVar2.p.remove(ak1Var);
                    }
                    lo3Var2.r = null;
                    lo3Var.r = null;
                }
            }
        }

        public d(lo3 lo3Var, lo3 lo3Var2, ShowMorePageDataType showMorePageDataType) {
            this.r = lo3Var;
            this.s = lo3Var2;
            this.t = showMorePageDataType;
        }

        @Override // com.shabakaty.downloader.ak1
        public final void a(q qVar, Fragment fragment) {
            j32.e(qVar, "$noName_0");
            j32.e(fragment, "navHost");
            q childFragmentManager = ((NavHostFragment) fragment).getChildFragmentManager();
            childFragmentManager.p.add(new a(this.r, this.s, this.t));
        }
    }

    /* JADX INFO: compiled from: NavigationActivity.kt */
    public static final class e implements ak1 {
        public final /* synthetic */ lo3 r;
        public final /* synthetic */ lo3 s;
        public final /* synthetic */ lo3 t;
        public final /* synthetic */ hx2 u;

        public e(lo3 lo3Var, lo3 lo3Var2, lo3 lo3Var3, hx2 hx2Var) {
            this.r = lo3Var;
            this.s = lo3Var2;
            this.t = lo3Var3;
            this.u = hx2Var;
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [T, androidx.fragment.app.q] */
        @Override // com.shabakaty.downloader.ak1
        public final void a(q qVar, Fragment fragment) {
            j32.e(qVar, "$noName_0");
            j32.e(fragment, "root");
            if (fragment instanceof bu3) {
                ek ekVar = (ek) fragment;
                this.r.r = ekVar.getChildFragmentManager();
                q childFragmentManager = ekVar.getChildFragmentManager();
                T t = this.s.r;
                j32.c(t);
                childFragmentManager.p.add((ak1) t);
                lo3 lo3Var = this.t;
                ak1 ak1Var = (ak1) lo3Var.r;
                if (ak1Var == null) {
                    return;
                }
                this.u.getSupportFragmentManager().p.remove(ak1Var);
                lo3Var.r = null;
            }
        }
    }

    /* JADX INFO: compiled from: HomeActivity.kt */
    public static final class f extends af2 implements rm1<FragmentContainerView> {
        public f() {
            super(0);
        }

        @Override // com.shabakaty.downloader.rm1
        public FragmentContainerView invoke() {
            T t = HomeActivity.this.t;
            j32.c(t);
            FragmentContainerView fragmentContainerView = ((y2) t).N;
            j32.d(fragmentContainerView, "binding.fragmentContainer");
            return fragmentContainerView;
        }
    }

    /* JADX INFO: compiled from: HomeActivity.kt */
    public static final class g implements ViewTreeObserver.OnGlobalLayoutListener {
        public g() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            T t = HomeActivity.this.t;
            j32.c(t);
            ((y2) t).O.setSelectedItemId(R.id.navigation_profile);
            T t2 = HomeActivity.this.t;
            j32.c(t2);
            ((y2) t2).O.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        }
    }

    /* JADX INFO: compiled from: NavigationActivity.kt */
    public static final class h implements ak1 {
        public final /* synthetic */ lo3 r;
        public final /* synthetic */ lo3 s;
        public final /* synthetic */ HomeActivity t;

        /* JADX INFO: compiled from: NavigationActivity.kt */
        public static final class a implements ak1 {
            public final /* synthetic */ lo3 r;
            public final /* synthetic */ lo3 s;
            public final /* synthetic */ HomeActivity t;

            public a(lo3 lo3Var, lo3 lo3Var2, HomeActivity homeActivity) {
                this.r = lo3Var;
                this.s = lo3Var2;
                this.t = homeActivity;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.shabakaty.downloader.ak1
            public final void a(q qVar, Fragment fragment) {
                j32.e(qVar, "$noName_0");
                j32.e(fragment, "fragment");
                if (fragment instanceof vt1) {
                    ((vt1) fragment).onResume();
                    this.t.J0();
                    lo3 lo3Var = this.r;
                    ak1 ak1Var = (ak1) lo3Var.r;
                    if (ak1Var == null) {
                        return;
                    }
                    lo3 lo3Var2 = this.s;
                    q qVar2 = (q) lo3Var2.r;
                    if (qVar2 != null) {
                        qVar2.p.remove(ak1Var);
                    }
                    lo3Var2.r = null;
                    lo3Var.r = null;
                }
            }
        }

        public h(lo3 lo3Var, lo3 lo3Var2, HomeActivity homeActivity) {
            this.r = lo3Var;
            this.s = lo3Var2;
            this.t = homeActivity;
        }

        @Override // com.shabakaty.downloader.ak1
        public final void a(q qVar, Fragment fragment) {
            j32.e(qVar, "$noName_0");
            j32.e(fragment, "navHost");
            q childFragmentManager = ((NavHostFragment) fragment).getChildFragmentManager();
            childFragmentManager.p.add(new a(this.r, this.s, this.t));
        }
    }

    /* JADX INFO: compiled from: NavigationActivity.kt */
    public static final class i implements ak1 {
        public final /* synthetic */ lo3 r;
        public final /* synthetic */ lo3 s;
        public final /* synthetic */ lo3 t;
        public final /* synthetic */ hx2 u;

        public i(lo3 lo3Var, lo3 lo3Var2, lo3 lo3Var3, hx2 hx2Var) {
            this.r = lo3Var;
            this.s = lo3Var2;
            this.t = lo3Var3;
            this.u = hx2Var;
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [T, androidx.fragment.app.q] */
        @Override // com.shabakaty.downloader.ak1
        public final void a(q qVar, Fragment fragment) {
            j32.e(qVar, "$noName_0");
            j32.e(fragment, "root");
            if (fragment instanceof bu3) {
                ek ekVar = (ek) fragment;
                this.r.r = ekVar.getChildFragmentManager();
                q childFragmentManager = ekVar.getChildFragmentManager();
                T t = this.s.r;
                j32.c(t);
                childFragmentManager.p.add((ak1) t);
                lo3 lo3Var = this.t;
                ak1 ak1Var = (ak1) lo3Var.r;
                if (ak1Var == null) {
                    return;
                }
                this.u.getSupportFragmentManager().p.remove(ak1Var);
                lo3Var.r = null;
            }
        }
    }

    public HomeActivity() {
        super(R.layout.activity_home);
        this.B = ng2.a(new a());
        this.C = ng2.a(new f());
    }

    @Override // com.shabakaty.downloader.eu1
    public void A1() {
        T t = this.t;
        j32.c(t);
        CardView cardView = ((y2) t).P;
        j32.d(cardView, "binding.serviceDownBanner");
        if (cardView.getVisibility() == 0) {
            T t2 = this.t;
            j32.c(t2);
            ((y2) t2).R.setText(BuildConfig.FLAVOR);
            T t3 = this.t;
            j32.c(t3);
            ViewPropertyAnimator viewPropertyAnimatorAnimate = ((y2) t3).P.animate();
            T t4 = this.t;
            j32.c(t4);
            viewPropertyAnimatorAnimate.translationY(-((y2) t4).P.getHeight()).setDuration(300L).withEndAction(new rr(this)).start();
        }
    }

    /* JADX WARN: Type inference failed for: r13v3, types: [T, com.shabakaty.cinemana.ui.home_activity.HomeActivity$e] */
    /* JADX WARN: Type inference failed for: r3v7, types: [T, com.shabakaty.cinemana.ui.home_activity.HomeActivity$d] */
    public final void E1(Intent intent) {
        VideoModel videoModel;
        qv4 qv4Var;
        ShowMorePageDataType showMorePageDataType;
        if (intent == null || (videoModel = (VideoModel) intent.getParcelableExtra("VideoModelArg")) == null) {
            qv4Var = null;
        } else {
            Bundle bundleA = ml3.a(new x93("VideoModelArg", videoModel));
            SimpleDraweeView simpleDraweeView = new SimpleDraweeView(this);
            simpleDraweeView.setTransitionName(videoModel.nb);
            androidx.navigation.fragment.a.b bVarA = hl3.a(new x93(simpleDraweeView, videoModel.nb));
            androidx.navigation.g gVarF = ol3.f(c.r);
            List<Fragment> listL = getSupportFragmentManager().L();
            j32.d(listL, "supportFragmentManager.fragments");
            for (Fragment fragment : listL) {
                if (fragment instanceof ek) {
                    ek ekVar = (ek) fragment;
                    if (ekVar.isVisible()) {
                        List<Fragment> listL2 = ekVar.getChildFragmentManager().L();
                        j32.d(listL2, "navHost.childFragmentManager.fragments");
                        Object objB0 = m50.b0(listL2);
                        NavHostFragment navHostFragment = objB0 instanceof NavHostFragment ? (NavHostFragment) objB0 : null;
                        if (navHostFragment != null) {
                            androidx.navigation.g gVarF2 = ol3.f(new jx2(gVarF, navHostFragment));
                            j32.f(navHostFragment, "$this$findNavController");
                            NavController navControllerX1 = NavHostFragment.X1(navHostFragment);
                            j32.b(navControllerX1, "NavHostFragment.findNavController(this)");
                            navControllerX1.i(5101, bundleA, gVarF2, bVarA);
                        }
                    }
                }
            }
            intent.removeExtra("VideoModelArg");
            qv4Var = qv4.a;
        }
        if (qv4Var != null || intent == null || (showMorePageDataType = (ShowMorePageDataType) intent.getParcelableExtra("ShowMoreDataType")) == null) {
            return;
        }
        List<Fragment> listL3 = getSupportFragmentManager().L();
        j32.d(listL3, "supportFragmentManager.fragments");
        for (Fragment fragment2 : listL3) {
            if (fragment2 instanceof bu3) {
                List<Fragment> listL4 = ((ek) fragment2).getChildFragmentManager().L();
                j32.d(listL4, "navHost.childFragmentManager.fragments");
                Object objB1 = m50.b0(listL4);
                NavHostFragment navHostFragment2 = objB1 instanceof NavHostFragment ? (NavHostFragment) objB1 : null;
                if (navHostFragment2 == null) {
                    continue;
                } else {
                    List<Fragment> listL5 = navHostFragment2.getChildFragmentManager().L();
                    j32.d(listL5, "childFragmentManager.fragments");
                    for (Fragment fragment3 : listL5) {
                        if (fragment3 instanceof vt1) {
                            uo1.d(fl3.o((vt1) fragment3), showMorePageDataType);
                            return;
                        }
                    }
                }
            }
        }
        lo3 lo3Var = new lo3();
        lo3 lo3Var2 = new lo3();
        lo3 lo3Var3 = new lo3();
        lo3Var3.r = new d(lo3Var3, lo3Var, showMorePageDataType);
        lo3Var2.r = new e(lo3Var, lo3Var3, lo3Var2, this);
        q supportFragmentManager = getSupportFragmentManager();
        T t = lo3Var2.r;
        j32.c(t);
        supportFragmentManager.p.add((ak1) t);
    }

    /* JADX WARN: Type inference failed for: r3v0, types: [T, com.shabakaty.cinemana.ui.home_activity.HomeActivity$h] */
    /* JADX WARN: Type inference failed for: r3v1, types: [T, com.shabakaty.cinemana.ui.home_activity.HomeActivity$i] */
    @Override // com.shabakaty.downloader.eu1
    public void F0() {
        List<Fragment> listL = getSupportFragmentManager().L();
        j32.d(listL, "supportFragmentManager.fragments");
        for (Fragment fragment : listL) {
            if (fragment instanceof bu3) {
                List<Fragment> listL2 = ((ek) fragment).getChildFragmentManager().L();
                j32.d(listL2, "navHost.childFragmentManager.fragments");
                Object objB0 = m50.b0(listL2);
                NavHostFragment navHostFragment = objB0 instanceof NavHostFragment ? (NavHostFragment) objB0 : null;
                if (navHostFragment == null) {
                    continue;
                } else {
                    List<Fragment> listL3 = navHostFragment.getChildFragmentManager().L();
                    j32.d(listL3, "childFragmentManager.fragments");
                    for (Fragment fragment2 : listL3) {
                        if (fragment2 instanceof vt1) {
                            ((vt1) fragment2).onResume();
                            J0();
                            return;
                        }
                    }
                }
            }
        }
        lo3 lo3Var = new lo3();
        lo3 lo3Var2 = new lo3();
        lo3 lo3Var3 = new lo3();
        lo3Var3.r = new h(lo3Var3, lo3Var, this);
        lo3Var2.r = new i(lo3Var, lo3Var3, lo3Var2, this);
        q supportFragmentManager = getSupportFragmentManager();
        T t = lo3Var2.r;
        j32.c(t);
        supportFragmentManager.p.add((ak1) t);
    }

    public final void I1() {
        List<Fragment> listL = getSupportFragmentManager().L();
        j32.d(listL, "supportFragmentManager.fragments");
        for (Fragment fragment : listL) {
            if (fragment instanceof cu3) {
                ek ekVar = (ek) fragment;
                if (ekVar.isVisible()) {
                    List<Fragment> listL2 = ekVar.getChildFragmentManager().L();
                    j32.d(listL2, "navHost.childFragmentManager.fragments");
                    Object objB0 = m50.b0(listL2);
                    NavHostFragment navHostFragment = objB0 instanceof NavHostFragment ? (NavHostFragment) objB0 : null;
                    if (navHostFragment != null) {
                        androidx.navigation.g gVarF = ol3.f(new jx2(null, navHostFragment));
                        j32.f(navHostFragment, "$this$findNavController");
                        NavController navControllerX1 = NavHostFragment.X1(navHostFragment);
                        j32.b(navControllerX1, "NavHostFragment.findNavController(this)");
                        navControllerX1.i(7101, null, gVarF, null);
                    }
                }
            }
        }
        getIntent().removeExtra("DownloadsKey");
    }

    @Override // com.shabakaty.downloader.eu1
    public void J0() {
        T t = this.t;
        j32.c(t);
        View childAt = ((y2) t).O.getChildAt(0);
        ViewGroup viewGroup = childAt instanceof ViewGroup ? (ViewGroup) childAt : null;
        if (viewGroup == null) {
            return;
        }
        for (View view : (j35.a) j35.a(viewGroup)) {
            CharSequence contentDescription = view.getContentDescription();
            boolean z = contentDescription == null || contentDescription.length() == 0;
            boolean z2 = true ^ (view.getContentDescription() instanceof SpannableStringBuilder);
            if (z || z2) {
                nl6.q(view, view.getContentDescription());
            }
        }
    }

    @Override // com.shabakaty.downloader.eu1
    public String c() {
        uj2.b bVar = uj2.c;
        Resources resources = getResources();
        j32.d(resources, "resources");
        String language = bVar.b(resources).getLanguage();
        j32.d(language, "LocaleManager.getLocale(resources).language");
        return language;
    }

    @Override // com.shabakaty.downloader.xi
    public Class<zu1> h0() {
        return zu1.class;
    }

    public final void i1(Intent intent) {
        String stringExtra;
        if (intent == null || (stringExtra = intent.getStringExtra("VideoIDArg")) == null) {
            return;
        }
        VideoModel videoModel = new VideoModel(stringExtra, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, false, null, 0, null, null, null, null, false, null, null, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, false, null, 0, 0L, null, null, false, null, null, null, null, false, -2, Integer.MAX_VALUE);
        Bundle bundleA = ml3.a(new x93("VideoModelArg", videoModel));
        SimpleDraweeView simpleDraweeView = new SimpleDraweeView(this);
        simpleDraweeView.setTransitionName(videoModel.nb);
        androidx.navigation.fragment.a.b bVarA = hl3.a(new x93(simpleDraweeView, videoModel.nb));
        androidx.navigation.g gVarF = ol3.f(b.r);
        List<Fragment> listL = getSupportFragmentManager().L();
        j32.d(listL, "supportFragmentManager.fragments");
        for (Fragment fragment : listL) {
            if (fragment instanceof ek) {
                ek ekVar = (ek) fragment;
                if (ekVar.isVisible()) {
                    List<Fragment> listL2 = ekVar.getChildFragmentManager().L();
                    j32.d(listL2, "navHost.childFragmentManager.fragments");
                    Object objB0 = m50.b0(listL2);
                    NavHostFragment navHostFragment = objB0 instanceof NavHostFragment ? (NavHostFragment) objB0 : null;
                    if (navHostFragment != null) {
                        androidx.navigation.g gVarF2 = ol3.f(new jx2(gVarF, navHostFragment));
                        j32.f(navHostFragment, "$this$findNavController");
                        NavController navControllerX1 = NavHostFragment.X1(navHostFragment);
                        j32.b(navControllerX1, "NavHostFragment.findNavController(this)");
                        navControllerX1.i(5101, bundleA, gVarF2, bVarA);
                    }
                }
            }
        }
        intent.removeExtra("VideoIDArg");
    }

    @Override // com.shabakaty.downloader.hx2
    public BottomNavigationView m0() {
        return (BottomNavigationView) this.B.getValue();
    }

    @Override // com.shabakaty.downloader.hx2, com.shabakaty.downloader.xi, com.shabakaty.downloader.ji1, androidx.activity.ComponentActivity, com.shabakaty.downloader.p80, android.app.Activity
    public void onCreate(Bundle bundle) {
        String string;
        super.onCreate(bundle);
        i1(getIntent());
        E1(getIntent());
        vb vbVar = new vb(this);
        vbVar.d = 6;
        vbVar.i = getString(R.string.title_available_update);
        vbVar.k = vbVar.a.getString(R.string.txt_update);
        if (j32.a("beta", "beta")) {
            string = BuildConfig.FLAVOR;
        } else {
            string = getString(R.string.txt_dismiss);
            j32.d(string, "{\n\t\t\t\t\t\tgetString(R.string.txt_dismiss)\n\t\t\t\t\t}");
        }
        vbVar.j = string;
        Boolean bool = Boolean.FALSE;
        vbVar.q = bool;
        vbVar.f = "https://updates.shabakaty.cc/api/apps/7";
        vbVar.l = BuildConfig.FLAVOR;
        vbVar.r = 50303;
        ez4 ez4Var = new ez4(vbVar.a, bool, vbVar.d, vbVar.f, new ub(vbVar));
        boolean z = false;
        ez4Var.execute(new Void[0]);
        q0.d(this);
        Intent intent = getIntent();
        if (intent != null && intent.getBooleanExtra("DownloadsKey", false)) {
            z = true;
        }
        if (z) {
            T t = this.t;
            j32.c(t);
            ((y2) t).O.getViewTreeObserver().addOnGlobalLayoutListener(new g());
        }
        J0();
    }

    @cf4(threadMode = bn4.MAIN)
    public final void onDLNADiscoveryEvent(su0 su0Var) {
        Map<String, ConnectableDevice> allDevices;
        j32.e(su0Var, NetcastTVService.UDAP_API_EVENT);
        DiscoveryManager discoveryManager = su0Var.a;
        if ((discoveryManager == null || (allDevices = discoveryManager.getAllDevices()) == null || !(allDevices.isEmpty() ^ true)) ? false : true) {
            T t = this.t;
            j32.c(t);
            CastButton castButton = ((y2) t).M;
            castButton.v.p();
            castButton.v.setEnabled(true);
            return;
        }
        T t2 = this.t;
        j32.c(t2);
        CastButton castButton2 = ((y2) t2).M;
        castButton2.v.i();
        castButton2.v.setEnabled(false);
    }

    @Override // com.shabakaty.downloader.xi, com.shabakaty.downloader.r9, com.shabakaty.downloader.ji1, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        j51.b().m(this);
    }

    /* JADX WARN: Type inference failed for: r3v3, types: [T, com.shabakaty.downloader.st1] */
    /* JADX WARN: Type inference failed for: r7v2, types: [T, com.shabakaty.downloader.tt1] */
    @Override // com.shabakaty.downloader.ji1, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        i1(intent);
        E1(intent);
        boolean z = false;
        if (intent != null && intent.getBooleanExtra("DownloadsKey", false)) {
            z = true;
        }
        if (z) {
            setIntent(intent);
            T t = this.t;
            j32.c(t);
            if (((y2) t).O.getSelectedItemId() == R.id.navigation_profile) {
                I1();
            } else {
                T t2 = this.t;
                j32.c(t2);
                ((y2) t2).O.setSelectedItemId(R.id.navigation_profile);
            }
        }
        if (j32.a("android.intent.action.SEARCH", intent == null ? null : intent.getAction())) {
            String stringExtra = intent.getStringExtra("query");
            List<Fragment> listL = getSupportFragmentManager().L();
            j32.d(listL, "supportFragmentManager.fragments");
            for (Fragment fragment : listL) {
                if (fragment instanceof du3) {
                    List<Fragment> listL2 = ((ek) fragment).getChildFragmentManager().L();
                    j32.d(listL2, "navHost.childFragmentManager.fragments");
                    Object objB0 = m50.b0(listL2);
                    NavHostFragment navHostFragment = objB0 instanceof NavHostFragment ? (NavHostFragment) objB0 : null;
                    if (navHostFragment == null) {
                        continue;
                    } else {
                        List<Fragment> listL3 = navHostFragment.getChildFragmentManager().L();
                        j32.d(listL3, "childFragmentManager.fragments");
                        for (Fragment fragment2 : listL3) {
                            if (fragment2 instanceof yy3) {
                                T t3 = ((yy3) fragment2).t;
                                j32.c(t3);
                                ((fk1) t3).Q.setQuery(stringExtra, true);
                                return;
                            }
                        }
                    }
                }
            }
            lo3 lo3Var = new lo3();
            lo3 lo3Var2 = new lo3();
            lo3 lo3Var3 = new lo3();
            lo3Var3.r = new st1(lo3Var3, lo3Var, stringExtra);
            lo3Var2.r = new tt1(lo3Var, lo3Var3, lo3Var2, this);
            q supportFragmentManager = getSupportFragmentManager();
            T t4 = lo3Var2.r;
            j32.c(t4);
            supportFragmentManager.p.add((ak1) t4);
        }
    }

    public void onOSSubscriptionChanged(e43 e43Var) {
        j32.e(e43Var, "stateChanges");
        if (e43Var.a.a() || !e43Var.b.a()) {
            return;
        }
        Objects.requireNonNull(e43Var.b);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.shabakaty.downloader.ji1, android.app.Activity
    public void onResume() {
        if (((zu1) F()).j.isLoggedIn() && (!ne4.D(((zu1) F()).j.getSmallPicture()))) {
            H0(((zu1) F()).j.getSmallPicture());
        }
        super.onResume();
        LocalRuntime.profileResume(this);
    }

    @Override // com.shabakaty.downloader.r9, com.shabakaty.downloader.ji1, android.app.Activity
    public void onStart() {
        super.onStart();
        LocalRuntime.foreground(this);
        j51.b().k(this);
    }

    @Override // com.shabakaty.downloader.r9, com.shabakaty.downloader.ji1, android.app.Activity
    public void onStop() {
        j51.b().m(this);
        super.onStop();
    }

    @Override // com.shabakaty.downloader.hx2
    public FragmentContainerView p0() {
        return (FragmentContainerView) this.C.getValue();
    }

    @Override // com.shabakaty.downloader.xi
    public vj r() {
        return this;
    }

    @Override // com.shabakaty.downloader.hx2
    public void u0(int i2) {
        J0();
        if (getIntent().getBooleanExtra("DownloadsKey", false) && i2 == R.id.navigation_profile) {
            I1();
        }
    }

    @Override // com.shabakaty.downloader.eu1
    public void z() {
        recreate();
    }
}
