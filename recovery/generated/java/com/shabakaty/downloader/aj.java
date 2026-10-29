package com.shabakaty.downloader;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.ViewDataBinding;
import androidx.fragment.app.Fragment;
import com.shabakaty.downloader.vj;
import com.shabakaty.downloader.xk;
import java.util.Locale;

/* JADX INFO: compiled from: BaseBottomSheet.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class aj<T extends ViewDataBinding, N extends vj, V extends xk<N>> extends com.google.android.material.bottomsheet.b {
    public int I;
    public p35 J;
    public T K;
    public V L;
    public V M;

    public aj(int i) {
        this.I = i;
    }

    public abstract N d2();

    public final boolean e2(Fragment fragment) {
        j32.e(fragment, "<this>");
        return (fragment.isRemoving() || fragment.getActivity() == null || fragment.isDetached() || !fragment.isAdded() || fragment.getView() == null || this.K == null) ? false : true;
    }

    public final V f2() {
        V v = this.L;
        if (v != null) {
            return v;
        }
        j32.l("safeViewModel");
        throw null;
    }

    public abstract Class<V> g2();

    @Override // com.shabakaty.downloader.ct0, androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        j32.e(context, "context");
        md0.z(this);
        super.onAttach(context);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        j32.e(layoutInflater, "inflater");
        T t = (T) hl0.b(LayoutInflater.from(requireContext()), this.I, null, false);
        this.K = t;
        if (t != null) {
            t.D(16, d2());
        }
        T t2 = this.K;
        if (t2 != null) {
            t2.B(this);
        }
        T t3 = this.K;
        if (t3 == null) {
            return null;
        }
        return t3.v;
    }

    @Override // com.shabakaty.downloader.ct0, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.K = null;
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
        Class<V> clsG2 = g2();
        ji1 ji1VarRequireActivity = requireActivity();
        xi xiVar = ji1VarRequireActivity instanceof xi ? (xi) ji1VarRequireActivity : null;
        if (!j32.a(clsG2, xiVar == null ? null : xiVar.h0())) {
            if (this.L == null) {
                p35 p35Var = this.J;
                if (p35Var == 0) {
                    j32.l("factory");
                    throw null;
                }
                r35 viewModelStore = getViewModelStore();
                Class<V> clsG3 = g2();
                String canonicalName = clsG3.getCanonicalName();
                if (canonicalName == null) {
                    throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
                }
                String strA = el3.a("androidx.lifecycle.ViewModelProvider.DefaultKey:", canonicalName);
                o35 o35VarC = viewModelStore.a.get(strA);
                if (!clsG3.isInstance(o35VarC)) {
                    o35VarC = p35Var instanceof androidx.lifecycle.n.c ? ((androidx.lifecycle.n.c) p35Var).c(strA, clsG3) : p35Var.a(clsG3);
                    o35 o35VarPut = viewModelStore.a.put(strA, o35VarC);
                    if (o35VarPut != null) {
                        o35VarPut.onCleared();
                    }
                } else if (p35Var instanceof androidx.lifecycle.n.e) {
                    ((androidx.lifecycle.n.e) p35Var).b(o35VarC);
                }
                j32.d(o35VarC, "ViewModelProvider(this, ….get(getViewModelClass())");
                this.L = (V) o35VarC;
            }
            V v = this.L;
            if (v == 0) {
                j32.l("safeViewModel");
                throw null;
            }
            v.j(d2());
            T t = this.K;
            if (t == null) {
                return;
            }
            V v2 = this.L;
            if (v2 != null) {
                t.D(38, v2);
                return;
            } else {
                j32.l("safeViewModel");
                throw null;
            }
        }
        if (this.M == null) {
            ji1 ji1VarRequireActivity2 = requireActivity();
            p35 p35Var2 = this.J;
            if (p35Var2 == 0) {
                j32.l("factory");
                throw null;
            }
            r35 viewModelStore2 = ji1VarRequireActivity2.getViewModelStore();
            Class<V> clsG4 = g2();
            String canonicalName2 = clsG4.getCanonicalName();
            if (canonicalName2 == null) {
                throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
            }
            String strA2 = el3.a("androidx.lifecycle.ViewModelProvider.DefaultKey:", canonicalName2);
            o35 o35VarC2 = viewModelStore2.a.get(strA2);
            if (!clsG4.isInstance(o35VarC2)) {
                o35VarC2 = p35Var2 instanceof androidx.lifecycle.n.c ? ((androidx.lifecycle.n.c) p35Var2).c(strA2, clsG4) : p35Var2.a(clsG4);
                o35 o35VarPut2 = viewModelStore2.a.put(strA2, o35VarC2);
                if (o35VarPut2 != null) {
                    o35VarPut2.onCleared();
                }
            } else if (p35Var2 instanceof androidx.lifecycle.n.e) {
                ((androidx.lifecycle.n.e) p35Var2).b(o35VarC2);
            }
            j32.d(o35VarC2, "ViewModelProvider(requir….get(getViewModelClass())");
            this.M = (V) o35VarC2;
        }
        V v3 = this.M;
        if (v3 == 0) {
            j32.l("safeActivityViewModel");
            throw null;
        }
        v3.j(d2());
        T t2 = this.K;
        if (t2 == null) {
            return;
        }
        V v4 = this.M;
        if (v4 != null) {
            t2.D(38, v4);
        } else {
            j32.l("safeActivityViewModel");
            throw null;
        }
    }
}
