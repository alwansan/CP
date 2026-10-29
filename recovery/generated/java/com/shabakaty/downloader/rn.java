package com.shabakaty.downloader;

import android.view.View;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.cinemana.pro.R;

/* JADX INFO: compiled from: BottomSheetSubtitleFontsBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class rn extends qn {
    public long N;

    public rn(gl0 gl0Var, View view) {
        super(gl0Var, view, 0, (RecyclerView) ViewDataBinding.s(gl0Var, view, 1, null, null)[0]);
        this.N = -1L;
        ((RecyclerView) this.M).setTag(null);
        view.setTag(R.id.dataBinding, this);
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
            j = this.N;
            this.N = 0L;
        }
        if ((j & 1) != 0) {
            Object obj = this.M;
            nl6.q((RecyclerView) obj, ((RecyclerView) obj).getResources().getString(R.string.fonts_txt));
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
