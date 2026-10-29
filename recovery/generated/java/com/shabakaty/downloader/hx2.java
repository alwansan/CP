package com.shabakaty.downloader;

import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.databinding.ViewDataBinding;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentContainerView;
import androidx.navigation.NavController;
import androidx.navigation.fragment.NavHostFragment;
import com.cinemana.pro.R;
import com.facebook.drawee.view.SimpleDraweeView;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.downloader.kx2;
import com.shabakaty.downloader.yx2;
import java.util.List;
import java.util.Objects;
import java.util.Stack;

/* JADX INFO: compiled from: NavigationActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class hx2<T extends ViewDataBinding, N extends kx2, V extends yx2<N>> extends xi<T, N, V> implements kx2 {
    public static final /* synthetic */ int A = 0;
    public final kf2 v;
    public final kf2 w;
    public final kf2 x;
    public final kf2 y;
    public final kf2 z;

    /* JADX INFO: compiled from: NavigationActivity.kt */
    public static final class a extends af2 implements rm1<Stack<Integer>> {
        public final /* synthetic */ hx2<T, N, V> r;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(hx2<T, N, V> hx2Var) {
            super(0);
            this.r = hx2Var;
        }

        @Override // com.shabakaty.downloader.rm1
        public Stack<Integer> invoke() {
            return this.r.F().h;
        }
    }

    /* JADX INFO: compiled from: NavigationActivity.kt */
    public static final class b extends af2 implements rm1<au3> {
        public static final b r = new b();

        public b() {
            super(0);
        }

        @Override // com.shabakaty.downloader.rm1
        public au3 invoke() {
            return new au3();
        }
    }

    /* JADX INFO: compiled from: NavigationActivity.kt */
    public static final class c extends af2 implements rm1<bu3> {
        public static final c r = new c();

        public c() {
            super(0);
        }

        @Override // com.shabakaty.downloader.rm1
        public bu3 invoke() {
            return new bu3();
        }
    }

    /* JADX INFO: compiled from: NavigationActivity.kt */
    public static final class d extends af2 implements rm1<cu3> {
        public static final d r = new d();

        public d() {
            super(0);
        }

        @Override // com.shabakaty.downloader.rm1
        public cu3 invoke() {
            return new cu3();
        }
    }

    /* JADX INFO: compiled from: NavigationActivity.kt */
    public static final class e extends af2 implements rm1<du3> {
        public static final e r = new e();

        public e() {
            super(0);
        }

        @Override // com.shabakaty.downloader.rm1
        public du3 invoke() {
            return new du3();
        }
    }

    public hx2(int i) {
        super(i);
        this.v = ng2.a(new a(this));
        this.w = ng2.a(c.r);
        this.x = ng2.a(b.r);
        this.y = ng2.a(e.r);
        this.z = ng2.a(d.r);
    }

    @Override // com.shabakaty.downloader.kx2
    public void H0(String str) {
        j32.e(str, "uri");
        nl6.v(m0(), str);
    }

    public final Stack<Integer> k0() {
        return (Stack) this.v.getValue();
    }

    public abstract BottomNavigationView m0();

    @Override // com.shabakaty.downloader.vj
    public void o() {
        j32.e(this, "this");
        j32.e(this, "this");
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        androidx.fragment.app.q childFragmentManager;
        List<Fragment> listL;
        Fragment fragment;
        androidx.fragment.app.q childFragmentManager2;
        List<Fragment> listL2;
        Fragment fragment2;
        Boolean boolValueOf;
        Fragment fragment3 = getSupportFragmentManager().u;
        Boolean boolValueOf2 = null;
        ek ekVar = fragment3 instanceof ek ? (ek) fragment3 : null;
        boolean z = false;
        if (!(ekVar != null && (Boolean.valueOf(ekVar.isAdded()).booleanValue() ^ true))) {
            q0(m0().getSelectedItemId());
        }
        if (ekVar != null && ekVar.isAdded()) {
            z = true;
        }
        if (z) {
            if (ekVar.Z1()) {
                return;
            }
            if (F().h.size() <= 1) {
                super.onBackPressed();
                return;
            }
            F().h.pop();
            BottomNavigationView bottomNavigationViewM0 = m0();
            Integer numPeek = F().h.peek();
            j32.d(numPeek, "viewModel.backStack.peek()");
            bottomNavigationViewM0.setSelectedItemId(numPeek.intValue());
            return;
        }
        Fragment fragment4 = getSupportFragmentManager().u;
        ek ekVar2 = fragment4 instanceof ek ? (ek) fragment4 : null;
        if (ekVar2 == null || (childFragmentManager = ekVar2.getChildFragmentManager()) == null || (listL = childFragmentManager.L()) == null || (fragment = (Fragment) m50.k0(listL)) == null || (childFragmentManager2 = fragment.getChildFragmentManager()) == null || (listL2 = childFragmentManager2.L()) == null || (fragment2 = (Fragment) m50.k0(listL2)) == null) {
            boolValueOf = null;
        } else {
            j32.f(fragment2, "$this$findNavController");
            NavController navControllerX1 = NavHostFragment.X1(fragment2);
            j32.b(navControllerX1, "NavHostFragment.findNavController(this)");
            boolValueOf = Boolean.valueOf(navControllerX1.k());
        }
        if (boolValueOf == null) {
            Fragment fragment5 = getSupportFragmentManager().u;
            ek ekVar3 = fragment5 instanceof ek ? (ek) fragment5 : null;
            if (ekVar3 != null) {
                j32.f(ekVar3, "$this$findNavController");
                NavController navControllerX2 = NavHostFragment.X1(ekVar3);
                j32.b(navControllerX2, "NavHostFragment.findNavController(this)");
                boolValueOf2 = Boolean.valueOf(navControllerX2.k());
            }
            if (boolValueOf2 == null) {
                super.onBackPressed();
            }
        }
    }

    @Override // com.shabakaty.downloader.xi, com.shabakaty.downloader.ji1, androidx.activity.ComponentActivity, com.shabakaty.downloader.p80, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        List<Fragment> listL = getSupportFragmentManager().L();
        j32.d(listL, "supportFragmentManager.fragments");
        for (Fragment fragment : listL) {
            fragment.onDetach();
            androidx.fragment.app.a aVar = new androidx.fragment.app.a(getSupportFragmentManager());
            aVar.n(fragment);
            androidx.fragment.app.q qVar = fragment.mFragmentManager;
            if (qVar != null && qVar != aVar.q) {
                StringBuilder sbA = um3.a("Cannot detach Fragment attached to a different FragmentManager. Fragment ");
                sbA.append(fragment.toString());
                sbA.append(" is already attached to a FragmentManager.");
                throw new IllegalStateException(sbA.toString());
            }
            aVar.b(new androidx.fragment.app.t.a(6, fragment));
            aVar.q(fragment);
            aVar.e();
        }
        getSupportFragmentManager().L().clear();
        m0().setSelectedItemId(R.id.navigation_home);
        m0().requestLayout();
        m0().setOnNavigationItemSelectedListener(new gx2(this, 0));
        if (k0().isEmpty() || k0().size() == 1) {
            m0().setSelectedItemId(R.id.navigation_home);
            m0().post(new rr(this));
        } else {
            BottomNavigationView bottomNavigationViewM0 = m0();
            Integer numPeek = k0().peek();
            j32.d(numPeek, "backStack.peek()");
            bottomNavigationViewM0.setSelectedItemId(numPeek.intValue());
            Menu menu = m0().getMenu();
            Integer numPeek2 = k0().peek();
            j32.d(numPeek2, "backStack.peek()");
            menu.findItem(numPeek2.intValue()).setChecked(true);
        }
        m0().setOnNavigationItemReselectedListener(new gx2(this, 1));
        jn jnVarH = nl6.h(m0());
        View childAt = nl6.h(m0()).getChildAt(0);
        Objects.requireNonNull(childAt, "null cannot be cast to non-null type android.widget.ImageView");
        View viewInflate = getLayoutInflater().inflate(R.layout.item_navigation_user, (ViewGroup) m0(), false);
        Objects.requireNonNull(viewInflate, "null cannot be cast to non-null type com.facebook.drawee.view.SimpleDraweeView");
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) viewInflate;
        simpleDraweeView.setLayoutParams(((AppCompatImageView) ((ImageView) childAt)).getLayoutParams());
        jnVarH.addView(simpleDraweeView, 0);
        jnVarH.removeViewAt(1);
        nl6.v(m0(), BuildConfig.FLAVOR);
    }

    public abstract FragmentContainerView p0();

    @Override // com.shabakaty.downloader.vj
    public void q(int i) {
        j32.e(this, "this");
        vj.a.a(this, i);
    }

    public final void q0(int i) {
        AppBarLayout appBarLayout;
        androidx.fragment.app.a aVar = new androidx.fragment.app.a(getSupportFragmentManager());
        Fragment fragment = getSupportFragmentManager().u;
        if (fragment != null) {
            aVar.n(fragment);
        }
        Fragment fragmentI = getSupportFragmentManager().I(String.valueOf(i));
        if (fragmentI == null) {
            switch (i) {
                case R.id.navigation_categories /* 2131362563 */:
                    fragmentI = (au3) this.x.getValue();
                    break;
                case R.id.navigation_header_container /* 2131362564 */:
                default:
                    fragmentI = (bu3) this.w.getValue();
                    break;
                case R.id.navigation_home /* 2131362565 */:
                    fragmentI = (bu3) this.w.getValue();
                    break;
                case R.id.navigation_profile /* 2131362566 */:
                    fragmentI = (cu3) this.z.getValue();
                    break;
                case R.id.navigation_search /* 2131362567 */:
                    fragmentI = (du3) this.y.getValue();
                    break;
            }
            aVar.f(p0().getId(), fragmentI, String.valueOf(i), 1);
        }
        aVar.t(fragmentI);
        aVar.s(fragmentI);
        View view = fragmentI.getView();
        if (view != null && (appBarLayout = (AppBarLayout) view.findViewWithTag(getString(R.string.main_app_bar_layout_tag))) != null) {
            appBarLayout.e(true, true, true);
        }
        aVar.e();
    }

    @Override // android.app.Activity
    public void recreate() {
        p0().removeAllViews();
        super.recreate();
    }

    public abstract void u0(int i);

    public final void v0(boolean z) {
        Drawable drawable;
        View childAt = nl6.h(m0()).getChildAt(0);
        Objects.requireNonNull(childAt, "null cannot be cast to non-null type android.widget.ImageView");
        ImageView imageView = (ImageView) childAt;
        SimpleDraweeView simpleDraweeView = imageView instanceof SimpleDraweeView ? (SimpleDraweeView) imageView : null;
        int iF = z ? wt2.f(this, R.color.primaryTextColor) : wt2.f(this, R.color.secondaryTextColor);
        if (simpleDraweeView == null || (drawable = simpleDraweeView.getDrawable()) == null) {
            return;
        }
        drawable.setTint(iF);
    }
}
