package com.shabakaty.downloader;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.ViewParent;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.databinding.ViewDataBinding;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentContainerView;
import androidx.navigation.NavController;
import androidx.navigation.fragment.NavHostFragment;
import com.cinemana.pro.R;
import com.google.android.material.appbar.AppBarLayout;
import com.shabakaty.downloader.vj;
import com.shabakaty.downloader.xk;
import java.util.Locale;
import java.util.Objects;

/* JADX INFO: compiled from: BaseFragment.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class hj<T extends ViewDataBinding, N extends vj, V extends xk<N>> extends Fragment {
    public int r;
    public p35 s;
    public T t;
    public V u;
    public V v;
    public V w;

    public hj(int i) {
        this.r = i;
    }

    public final FragmentContainerView X1(View view, int i) {
        FragmentContainerView fragmentContainerView;
        if (i >= 4) {
            return null;
        }
        if (view == null) {
            fragmentContainerView = null;
        } else {
            j32.f(this, "$this$findNavController");
            NavController navControllerX1 = NavHostFragment.X1(this);
            j32.b(navControllerX1, "NavHostFragment.findNavController(this)");
            fragmentContainerView = (FragmentContainerView) view.findViewById(navControllerX1.g().t);
        }
        if (fragmentContainerView != null) {
            return fragmentContainerView;
        }
        Object parent = view != null ? view.getParent() : null;
        Objects.requireNonNull(parent, "null cannot be cast to non-null type android.view.View");
        return X1((View) parent, i + 1);
    }

    public final p35 Y1() {
        p35 p35Var = this.s;
        if (p35Var != null) {
            return p35Var;
        }
        j32.l("factory");
        throw null;
    }

    public abstract N Z1();

    public final V a2() {
        V v = this.w;
        if (v != null) {
            return v;
        }
        j32.l("safeParentFragmentViewModel");
        throw null;
    }

    public final boolean b2(Fragment fragment) {
        j32.e(fragment, "<this>");
        return (fragment.isRemoving() || fragment.getActivity() == null || fragment.isDetached() || !fragment.isAdded() || fragment.getView() == null || this.t == null) ? false : true;
    }

    public final V c2() {
        V v = this.u;
        if (v != null) {
            return v;
        }
        j32.l("safeViewModel");
        throw null;
    }

    public abstract Class<V> d2();

    public boolean e2() {
        return false;
    }

    public final void f2(boolean z, String str) {
        AppBarLayout.b bVar;
        FragmentContainerView fragmentContainerViewX1 = X1(getView(), 0);
        ViewParent parent = fragmentContainerViewX1 == null ? null : fragmentContainerViewX1.getParent();
        FragmentContainerView fragmentContainerView = parent instanceof FragmentContainerView ? (FragmentContainerView) parent : null;
        ViewGroup.LayoutParams layoutParams = fragmentContainerView == null ? null : fragmentContainerView.getLayoutParams();
        CoordinatorLayout.f fVar = layoutParams instanceof CoordinatorLayout.f ? (CoordinatorLayout.f) layoutParams : null;
        ViewParent parent2 = fragmentContainerView == null ? null : fragmentContainerView.getParent();
        ViewGroup viewGroup = parent2 instanceof ViewGroup ? (ViewGroup) parent2 : null;
        View childAt = viewGroup == null ? null : viewGroup.getChildAt(1);
        AppBarLayout appBarLayout = childAt instanceof AppBarLayout ? (AppBarLayout) childAt : null;
        Toolbar toolbar = appBarLayout == null ? null : (Toolbar) appBarLayout.findViewById(R.id.main_nav_toolbar);
        if (z) {
            if (fVar != null) {
                fVar.b(new AppBarLayout.ScrollingViewBehavior());
            }
            if (appBarLayout == null) {
                return;
            }
            ViewGroup.LayoutParams layoutParams2 = appBarLayout.getLayoutParams();
            Objects.requireNonNull(layoutParams2, "null cannot be cast to non-null type androidx.coordinatorlayout.widget.CoordinatorLayout.LayoutParams");
            CoordinatorLayout.f fVar2 = (CoordinatorLayout.f) layoutParams2;
            fVar2.setMarginEnd(0);
            appBarLayout.setLayoutParams(fVar2);
            appBarLayout.setBackgroundResource(R.drawable.cin_static_top_bar_background);
            appBarLayout.setElevation(kf5.e(10));
            appBarLayout.setOutlineProvider(ViewOutlineProvider.BOUNDS);
            if (toolbar == null) {
                return;
            }
            ViewGroup.LayoutParams layoutParams3 = toolbar.getLayoutParams();
            bVar = layoutParams3 instanceof AppBarLayout.b ? (AppBarLayout.b) layoutParams3 : null;
            if (bVar != null) {
                bVar.a = 21;
            }
            toolbar.setBackgroundResource(R.drawable.cin_static_top_bar_background);
            if (str == null) {
                return;
            }
            toolbar.setTitle(str);
            return;
        }
        if (fVar != null) {
            fVar.b(null);
        }
        if (appBarLayout == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams4 = appBarLayout.getLayoutParams();
        Objects.requireNonNull(layoutParams4, "null cannot be cast to non-null type androidx.coordinatorlayout.widget.CoordinatorLayout.LayoutParams");
        CoordinatorLayout.f fVar3 = (CoordinatorLayout.f) layoutParams4;
        fVar3.setMarginEnd(kf5.e(48));
        appBarLayout.setLayoutParams(fVar3);
        appBarLayout.setBackgroundResource(R.color.transparent);
        appBarLayout.setElevation(0.0f);
        appBarLayout.setOutlineProvider(null);
        if (toolbar == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams5 = toolbar.getLayoutParams();
        bVar = layoutParams5 instanceof AppBarLayout.b ? (AppBarLayout.b) layoutParams5 : null;
        if (bVar != null) {
            bVar.a = 0;
        }
        toolbar.setBackgroundResource(R.color.transparent);
        if (str == null) {
            return;
        }
        toolbar.setTitle(str);
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
        T t = (T) vd5.n(layoutInflater, this.r, null, false, 6);
        this.t = t;
        t.D(16, Z1());
        T t2 = this.t;
        if (t2 != null) {
            t2.B(this);
        }
        T t3 = this.t;
        if (t3 == null) {
            return null;
        }
        return t3.v;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.t = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        j32.e(view, "view");
        super.onViewCreated(view, bundle);
        uj2.b bVar = uj2.c;
        Resources resources = requireContext().getApplicationContext().getResources();
        j32.d(resources, "requireContext().applicationContext.resources");
        Locale localeB = bVar.b(resources);
        Resources resources2 = getResources();
        j32.d(resources2, "resources");
        if (!j32.a(localeB, bVar.b(resources2))) {
            bVar.a().a();
        }
        Class<V> clsD2 = d2();
        ji1 ji1VarRequireActivity = requireActivity();
        xi xiVar = ji1VarRequireActivity instanceof xi ? (xi) ji1VarRequireActivity : null;
        if (j32.a(clsD2, xiVar == null ? null : xiVar.h0())) {
            if (this.v == null) {
                ji1 ji1VarRequireActivity2 = requireActivity();
                p35 p35VarY1 = Y1();
                r35 viewModelStore = ji1VarRequireActivity2.getViewModelStore();
                Class<V> clsD3 = d2();
                String canonicalName = clsD3.getCanonicalName();
                if (canonicalName == null) {
                    throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
                }
                String strA = el3.a("androidx.lifecycle.ViewModelProvider.DefaultKey:", canonicalName);
                o35 o35VarC = viewModelStore.a.get(strA);
                if (!clsD3.isInstance(o35VarC)) {
                    o35VarC = p35VarY1 instanceof androidx.lifecycle.n.c ? ((androidx.lifecycle.n.c) p35VarY1).c(strA, clsD3) : p35VarY1.a(clsD3);
                    o35 o35VarPut = viewModelStore.a.put(strA, o35VarC);
                    if (o35VarPut != null) {
                        o35VarPut.onCleared();
                    }
                } else if (p35VarY1 instanceof androidx.lifecycle.n.e) {
                    ((androidx.lifecycle.n.e) p35VarY1).b(o35VarC);
                }
                j32.d(o35VarC, "ViewModelProvider(requir….get(getViewModelClass())");
                this.v = (V) o35VarC;
            }
            V v = this.v;
            if (v == 0) {
                j32.l("safeActivityViewModel");
                throw null;
            }
            v.j(Z1());
            T t = this.t;
            if (t == null) {
                return;
            }
            V v2 = this.v;
            if (v2 != null) {
                t.D(38, v2);
                return;
            } else {
                j32.l("safeActivityViewModel");
                throw null;
            }
        }
        Class<V> clsD4 = d2();
        Fragment fragmentRequireParentFragment = requireParentFragment();
        hj hjVar = fragmentRequireParentFragment instanceof hj ? (hj) fragmentRequireParentFragment : null;
        if (!j32.a(clsD4, hjVar == null ? null : hjVar.d2())) {
            if (this.u == null) {
                p35 p35VarY2 = Y1();
                r35 viewModelStore2 = getViewModelStore();
                Class<V> clsD5 = d2();
                String canonicalName2 = clsD5.getCanonicalName();
                if (canonicalName2 == null) {
                    throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
                }
                String strA2 = el3.a("androidx.lifecycle.ViewModelProvider.DefaultKey:", canonicalName2);
                o35 o35VarC2 = viewModelStore2.a.get(strA2);
                if (!clsD5.isInstance(o35VarC2)) {
                    o35VarC2 = p35VarY2 instanceof androidx.lifecycle.n.c ? ((androidx.lifecycle.n.c) p35VarY2).c(strA2, clsD5) : p35VarY2.a(clsD5);
                    o35 o35VarPut2 = viewModelStore2.a.put(strA2, o35VarC2);
                    if (o35VarPut2 != null) {
                        o35VarPut2.onCleared();
                    }
                } else if (p35VarY2 instanceof androidx.lifecycle.n.e) {
                    ((androidx.lifecycle.n.e) p35VarY2).b(o35VarC2);
                }
                j32.d(o35VarC2, "ViewModelProvider(this, ….get(getViewModelClass())");
                this.u = (V) o35VarC2;
            }
            V v3 = this.u;
            if (v3 == 0) {
                j32.l("safeViewModel");
                throw null;
            }
            v3.j(Z1());
            T t2 = this.t;
            if (t2 == null) {
                return;
            }
            V v4 = this.u;
            if (v4 != null) {
                t2.D(38, v4);
                return;
            } else {
                j32.l("safeViewModel");
                throw null;
            }
        }
        if (this.w == null) {
            Fragment fragmentRequireParentFragment2 = requireParentFragment();
            p35 p35VarY3 = Y1();
            r35 viewModelStore3 = fragmentRequireParentFragment2.getViewModelStore();
            Class<V> clsD6 = d2();
            String canonicalName3 = clsD6.getCanonicalName();
            if (canonicalName3 == null) {
                throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
            }
            String strA3 = el3.a("androidx.lifecycle.ViewModelProvider.DefaultKey:", canonicalName3);
            o35 o35VarC3 = viewModelStore3.a.get(strA3);
            if (!clsD6.isInstance(o35VarC3)) {
                o35VarC3 = p35VarY3 instanceof androidx.lifecycle.n.c ? ((androidx.lifecycle.n.c) p35VarY3).c(strA3, clsD6) : p35VarY3.a(clsD6);
                o35 o35VarPut3 = viewModelStore3.a.put(strA3, o35VarC3);
                if (o35VarPut3 != null) {
                    o35VarPut3.onCleared();
                }
            } else if (p35VarY3 instanceof androidx.lifecycle.n.e) {
                ((androidx.lifecycle.n.e) p35VarY3).b(o35VarC3);
            }
            j32.d(o35VarC3, "ViewModelProvider(requir….get(getViewModelClass())");
            this.w = (V) o35VarC3;
        }
        V v5 = this.w;
        if (v5 == 0) {
            j32.l("safeParentFragmentViewModel");
            throw null;
        }
        v5.j(Z1());
        T t3 = this.t;
        if (t3 == null) {
            return;
        }
        V v6 = this.w;
        if (v6 != null) {
            t3.D(38, v6);
        } else {
            j32.l("safeParentFragmentViewModel");
            throw null;
        }
    }
}
