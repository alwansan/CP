package com.shabakaty.downloader;

import android.util.SparseIntArray;
import android.view.View;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.databinding.ViewDataBinding;
import com.cinemana.pro.R;
import com.google.android.material.appbar.AppBarLayout;

/* JADX INFO: compiled from: ActivitySettingsBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class w3 extends v3 {
    public static final SparseIntArray P;
    public long O;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        P = sparseIntArray;
        sparseIntArray.put(R.id.settings_app_bar, 1);
        sparseIntArray.put(R.id.settings_toolbar, 2);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public w3(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 3, null, P);
        super(gl0Var, view, 0, (AppBarLayout) objArrS[1], (Toolbar) objArrS[2]);
        this.O = -1L;
        ((CoordinatorLayout) objArrS[0]).setTag(null);
        view.setTag(R.id.dataBinding, this);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        return true;
    }

    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        synchronized (this) {
            this.O = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean o() {
        synchronized (this) {
            return this.O != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void p() {
        synchronized (this) {
            this.O = 1L;
        }
        x();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean u(int i, Object obj, int i2) {
        return false;
    }
}
