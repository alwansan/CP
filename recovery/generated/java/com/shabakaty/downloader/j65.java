package com.shabakaty.downloader;

import android.view.View;
import android.widget.TextView;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.cinemana.pro.R;
import com.google.android.material.floatingactionbutton.FloatingActionButton;

/* JADX INFO: compiled from: WideVerticalVideosLayoutBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class j65 extends i65 {
    public long P;

    /* JADX WARN: Illegal instructions before constructor call */
    public j65(gl0 gl0Var, View[] viewArr) {
        Object[] objArrT = ViewDataBinding.t(gl0Var, viewArr, 3, null, null);
        super(gl0Var, viewArr[0], 0, (FloatingActionButton) objArrT[2], (RecyclerView) objArrT[1], (TextView) objArrT[0]);
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
            FloatingActionButton floatingActionButton = this.M;
            nl6.q(floatingActionButton, floatingActionButton.getResources().getString(R.string.scroll_to_the_top_txt));
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
