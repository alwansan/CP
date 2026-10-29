package com.shabakaty.downloader;

import android.view.View;
import androidx.databinding.ViewDataBinding;
import androidx.mediarouter.app.MediaRouteButton;
import com.google.android.material.floatingactionbutton.FloatingActionButton;

/* JADX INFO: compiled from: CastButtonBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class rw extends qw {
    public long O;

    /* JADX WARN: Illegal instructions before constructor call */
    public rw(gl0 gl0Var, View[] viewArr) {
        Object[] objArrT = ViewDataBinding.t(gl0Var, viewArr, 2, null, null);
        super(gl0Var, viewArr[0], 0, (FloatingActionButton) objArrT[0], (MediaRouteButton) objArrT[1]);
        this.O = -1L;
        this.M.setTag(null);
        this.N.setTag(null);
        C(viewArr);
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
