package com.shabakaty.downloader;

import android.util.SparseIntArray;
import android.view.View;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.databinding.ViewDataBinding;
import androidx.viewpager2.widget.ViewPager2;
import com.cinemana.pro.R;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.tabs.TabLayout;

/* JADX INFO: compiled from: FragmentDownloadsBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class hj1 extends gj1 implements lm0.a {
    public static final SparseIntArray T;
    public final mm0 R;
    public long S;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        T = sparseIntArray;
        sparseIntArray.put(R.id.toolBar, 3);
        sparseIntArray.put(R.id.tabLayout, 4);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public hj1(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 5, null, T);
        super(gl0Var, view, 0, (MaterialButton) objArrS[1], (ViewPager2) objArrS[2], (TabLayout) objArrS[4], (Toolbar) objArrS[3]);
        this.S = -1L;
        this.M.setTag(null);
        this.N.setTag(null);
        ((CoordinatorLayout) objArrS[0]).setTag(null);
        view.setTag(R.id.dataBinding, this);
        this.R = new lm0(this, 1);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        if (12 == i) {
        } else if (38 == i) {
            this.Q = (zz0) obj;
            synchronized (this) {
                this.S |= 2;
            }
            f(38);
            x();
        } else {
            if (16 != i) {
                return false;
            }
            this.P = (sz0) obj;
        }
        return true;
    }

    @Override // com.shabakaty.downloader.lm0.a
    public final void d(int i, View view) {
        zz0 zz0Var = this.Q;
        if (zz0Var != null) {
            zz0Var.f().A();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        synchronized (this) {
            j = this.S;
            this.S = 0L;
        }
        if ((j & 8) != 0) {
            MaterialButton materialButton = this.M;
            e3.a(materialButton, R.string.create_txt, materialButton);
            st2.c(this.M, this.R, null);
            this.N.setUserInputEnabled(false);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean o() {
        synchronized (this) {
            return this.S != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void p() {
        synchronized (this) {
            this.S = 8L;
        }
        x();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean u(int i, Object obj, int i2) {
        return false;
    }
}
