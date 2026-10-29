package com.shabakaty.downloader;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.Fragment;
import androidx.navigation.NavController;
import androidx.navigation.fragment.NavHostFragment;
import com.cinemana.pro.R;
import com.google.android.material.appbar.AppBarLayout;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;

/* JADX INFO: compiled from: BaseRootFragment.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b&\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/shabakaty/downloader/ek;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public abstract class ek extends Fragment {
    public static final /* synthetic */ int x = 0;
    public final Set<Integer> r;
    public final m9 s;
    public final kf2 t;
    public sx2 u;
    public AppBarLayout v;
    public NavHostFragment w;

    /* JADX INFO: compiled from: BaseRootFragment.kt */
    public static final class a extends af2 implements rm1<String> {
        public a() {
            super(0);
        }

        @Override // com.shabakaty.downloader.rm1
        public String invoke() {
            return ek.this.getString(R.string.main_app_bar_layout_tag);
        }
    }

    /* JADX INFO: compiled from: AppBarConfiguration.kt */
    public static final class b extends af2 implements rm1<Boolean> {
        public static final b r = new b();

        public b() {
            super(0);
        }

        @Override // com.shabakaty.downloader.rm1
        public /* bridge */ /* synthetic */ Boolean invoke() {
            return Boolean.FALSE;
        }
    }

    public ek() {
        Set<Integer> setT = nl6.t(1101, 2101, 3101, 4101);
        this.r = setT;
        b bVar = b.r;
        HashSet hashSet = new HashSet();
        hashSet.addAll(setT);
        this.s = new m9(hashSet, null, new o9(bVar, 1), null);
        this.t = ng2.a(new a());
    }

    public abstract int X1();

    public abstract int Y1();

    public final boolean Z1() {
        androidx.fragment.app.q childFragmentManager;
        NavHostFragment navHostFragment = this.w;
        List<Fragment> listL = (navHostFragment == null || (childFragmentManager = navHostFragment.getChildFragmentManager()) == null) ? null : childFragmentManager.L();
        Fragment fragment = listL == null ? null : (Fragment) m50.c0(listL, 0);
        hj hjVar = fragment instanceof hj ? (hj) fragment : null;
        if (hjVar != null && hjVar.e2()) {
            return true;
        }
        ji1 activity = getActivity();
        if (activity == null) {
            return false;
        }
        return kl3.c(activity, Y1()).k();
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        j32.e(context, "context");
        md0.z(this);
        super.onAttach(context);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        j32.e(layoutInflater, "inflater");
        return layoutInflater.inflate(X1(), viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(final View view, Bundle bundle) {
        NavController navControllerY1;
        j32.e(view, "view");
        super.onViewCreated(view, bundle);
        this.v = (AppBarLayout) view.findViewById(R.id.main_app_bar);
        Fragment fragmentH = getChildFragmentManager().H(Y1());
        NavHostFragment navHostFragment = fragmentH instanceof NavHostFragment ? (NavHostFragment) fragmentH : null;
        if (navHostFragment == null) {
            navHostFragment = null;
        } else {
            final Toolbar toolbar = (Toolbar) view.findViewById(R.id.main_nav_toolbar);
            if (toolbar != null) {
                NavController navControllerY2 = navHostFragment.Y1();
                j32.d(navControllerY2, "navHostFragment.navController");
                ol3.g(toolbar, navControllerY2, this.s);
                toolbar.setNavigationOnClickListener(new ck(this));
                navHostFragment.Y1().a(new NavController.b() { // from class: com.shabakaty.downloader.dk
                    @Override // androidx.navigation.NavController.b
                    public final void k(NavController navController, androidx.navigation.c cVar, Bundle bundle2) {
                        ek ekVar = this.r;
                        View view2 = view;
                        Toolbar toolbar2 = toolbar;
                        int i = ek.x;
                        j32.e(ekVar, "this$0");
                        j32.e(view2, "$view");
                        j32.e(toolbar2, "$this_setOnDestinationChanged");
                        j32.e(cVar, "destination");
                        KeyEvent.Callback activity = ekVar.getActivity();
                        eu1 eu1Var = activity instanceof eu1 ? (eu1) activity : null;
                        if (eu1Var != null) {
                            eu1Var.J0();
                        }
                        AppBarLayout appBarLayout = ekVar.v;
                        if (appBarLayout == null) {
                            View viewFindViewWithTag = view2.findViewWithTag((String) ekVar.t.getValue());
                            j32.d(viewFindViewWithTag, "view.findViewWithTag(appBarTag)");
                            appBarLayout = (AppBarLayout) viewFindViewWithTag;
                        }
                        appBarLayout.e(true, true, true);
                        AppBarLayout appBarLayout2 = ekVar.v;
                        if (appBarLayout2 == null) {
                            View viewFindViewWithTag2 = view2.findViewWithTag((String) ekVar.t.getValue());
                            j32.d(viewFindViewWithTag2, "view.findViewWithTag(appBarTag)");
                            appBarLayout2 = (AppBarLayout) viewFindViewWithTag2;
                        }
                        int i2 = cVar.t;
                        if (i2 == 3101 || i2 == 3102 || i2 == 2102) {
                            s45.j(appBarLayout2);
                        } else {
                            s45.l(appBarLayout2);
                        }
                        if (ekVar.r.contains(Integer.valueOf(cVar.t))) {
                            toolbar2.setLogo(R.drawable.ic_cinemana_toolbar_logo);
                            toolbar2.u(kf5.e(12), kf5.e(12));
                            toolbar2.setContentInsetStartWithNavigation(kf5.e(12));
                            toolbar2.setTitleMarginStart(kf5.e(24));
                            toolbar2.setTitleMarginEnd(kf5.e(24));
                        } else {
                            toolbar2.setLogo((Drawable) null);
                            toolbar2.u(0, 0);
                            toolbar2.setContentInsetStartWithNavigation(0);
                            toolbar2.setTitleMarginStart(0);
                            toolbar2.setTitleMarginEnd(0);
                        }
                        ji1 activity2 = ekVar.getActivity();
                        View currentFocus = activity2 != null ? activity2.getCurrentFocus() : null;
                        if (currentFocus == null) {
                            currentFocus = new View(ekVar.getContext());
                        }
                        wt2.i(currentFocus);
                    }
                });
            }
        }
        this.w = navHostFragment;
        if (navHostFragment == null || (navControllerY1 = navHostFragment.Y1()) == null) {
            return;
        }
        sx2 sx2Var = this.u;
        if (sx2Var == null) {
            j32.l("navigationDebugger");
            throw null;
        }
        ih2 ih2VarE = cl3.e(this);
        nh3.y(ih2VarE, null, 0, new jh2(ih2VarE, new rx2(navControllerY1, sx2Var, null), null), 3, null);
    }
}
