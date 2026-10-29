package com.shabakaty.downloader;

import android.view.View;
import android.widget.TextView;
import androidx.databinding.ViewDataBinding;
import com.cinemana.pro.R;
import com.google.android.material.button.MaterialButton;
import com.shabakaty.cinemana.ui.home_fragment.FranchisesRecyclerView;

/* JADX INFO: compiled from: FranchisesViewBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class lm1 extends km1 {
    public long P;

    /* JADX WARN: Illegal instructions before constructor call */
    public lm1(gl0 gl0Var, View[] viewArr) {
        Object[] objArrT = ViewDataBinding.t(gl0Var, viewArr, 3, null, null);
        super(gl0Var, viewArr[0], 0, (TextView) objArrT[0], (FranchisesRecyclerView) objArrT[1], (MaterialButton) objArrT[2]);
        this.P = -1L;
        this.M.setTag(null);
        this.N.setTag(null);
        this.O.setTag(null);
        C(viewArr);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        return true;
    }

    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        synchronized (this) {
            j = this.P;
            this.P = 0L;
        }
        if ((j & 1) != 0) {
            TextView textView = this.M;
            d3.a(textView, R.string.franchises_txt, textView);
            FranchisesRecyclerView franchisesRecyclerView = this.N;
            nl6.q(franchisesRecyclerView, franchisesRecyclerView.getResources().getString(R.string.franchises_txt));
            MaterialButton materialButton = this.O;
            e3.a(materialButton, R.string.see_all, materialButton);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean o() {
        synchronized (this) {
            return this.P != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void p() {
        synchronized (this) {
            this.P = 1L;
        }
        x();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean u(int i, Object obj, int i2) {
        return false;
    }
}
