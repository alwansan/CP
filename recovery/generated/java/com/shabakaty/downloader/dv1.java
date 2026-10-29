package com.shabakaty.downloader;

import android.view.View;
import android.widget.TextView;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.cinemana.pro.R;
import com.google.android.material.button.MaterialButton;

/* JADX INFO: compiled from: HorizontalScrollVideosLayoutBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class dv1 extends cv1 {
    public long P;

    /* JADX WARN: Illegal instructions before constructor call */
    public dv1(gl0 gl0Var, View[] viewArr) {
        Object[] objArrT = ViewDataBinding.t(gl0Var, viewArr, 3, null, null);
        super(gl0Var, viewArr[0], 0, (MaterialButton) objArrT[1], (RecyclerView) objArrT[2], (TextView) objArrT[0]);
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
            MaterialButton materialButton = this.M;
            e3.a(materialButton, R.string.more_txt, materialButton);
            this.O.setSelected(true);
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
