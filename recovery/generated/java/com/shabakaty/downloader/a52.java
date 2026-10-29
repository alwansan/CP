package com.shabakaty.downloader;

import android.view.View;
import androidx.databinding.ViewDataBinding;
import com.cinemana.pro.R;
import com.shabakaty.cinemana.ui.home_fragment.GroupsView;

/* JADX INFO: compiled from: ItemGroupsViewBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class a52 extends z42 {
    public long N;

    public a52(gl0 gl0Var, View view) {
        super(gl0Var, view, 0, (GroupsView) ViewDataBinding.s(gl0Var, view, 1, null, null)[0]);
        this.N = -1L;
        this.M.setTag(null);
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
