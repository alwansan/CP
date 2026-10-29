package com.shabakaty.downloader;

import android.view.View;
import androidx.databinding.ViewDataBinding;
import com.cinemana.pro.R;
import com.shabakaty.epom_view.ui.EpomView;

/* JADX INFO: compiled from: ItemHomeAdBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class b52 extends qn {
    public long N;

    public b52(gl0 gl0Var, View view) {
        super(gl0Var, view, 0, (EpomView) ViewDataBinding.s(gl0Var, view, 1, null, null)[0]);
        this.N = -1L;
        ((EpomView) this.M).setTag(null);
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
            this.N = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean o() {
        synchronized (this) {
            return this.N != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void p() {
        synchronized (this) {
            this.N = 1L;
        }
        x();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean u(int i, Object obj, int i2) {
        return false;
    }
}
