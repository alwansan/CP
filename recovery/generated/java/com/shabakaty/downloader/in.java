package com.shabakaty.downloader;

import android.view.View;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.databinding.ViewDataBinding;
import com.cinemana.pro.R;
import com.google.android.material.switchmaterial.SwitchMaterial;

/* JADX INFO: compiled from: BottomListSwitchBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class in extends hn implements h63.a {
    public final CompoundButton.OnCheckedChangeListener P;
    public long Q;

    /* JADX WARN: Illegal instructions before constructor call */
    public in(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 3, null, null);
        super(gl0Var, view, 0, (SwitchMaterial) objArrS[1], (TextView) objArrS[2]);
        this.Q = -1L;
        ((SwitchMaterial) this.M).setTag(null);
        this.N.setTag(null);
        ((LinearLayout) objArrS[0]).setTag(null);
        view.setTag(R.id.dataBinding, this);
        this.P = new h63(this, 1);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        if (11 != i) {
            return false;
        }
        this.O = (aj4) obj;
        synchronized (this) {
            this.Q |= 1;
        }
        f(11);
        x();
        return true;
    }

    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        synchronized (this) {
            j = this.Q;
            this.Q = 0L;
        }
        aj4 aj4Var = (aj4) this.O;
        boolean z = false;
        String str = null;
        long j2 = 3 & j;
        if (j2 != 0 && aj4Var != null) {
            z = aj4Var.b;
            str = aj4Var.c;
        }
        if (j2 != 0) {
            i90.a((SwitchMaterial) this.M, z);
            nl6.r(this.N, str);
        }
        if ((j & 2) != 0) {
            ((SwitchMaterial) this.M).setOnCheckedChangeListener(this.P);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean o() {
        synchronized (this) {
            return this.Q != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void p() {
        synchronized (this) {
            this.Q = 2L;
        }
        x();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean u(int i, Object obj, int i2) {
        return false;
    }
}
