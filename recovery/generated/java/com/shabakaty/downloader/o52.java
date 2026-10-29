package com.shabakaty.downloader;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import androidx.databinding.ViewDataBinding;
import com.cinemana.pro.R;
import com.rd.PageIndicatorView;
import com.shabakaty.cinemana.ui.home_fragment.SliderView;

/* JADX INFO: compiled from: ItemSliderViewBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class o52 extends n52 {
    public static final SparseIntArray P;
    public long O;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        P = sparseIntArray;
        sparseIntArray.put(R.id.pageIndicatorView, 2);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public o52(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 3, null, P);
        super(gl0Var, view, 0, (SliderView) objArrS[1], (PageIndicatorView) objArrS[2]);
        this.O = -1L;
        this.M.setTag(null);
        ((LinearLayout) objArrS[0]).setTag(null);
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
            j = this.O;
            this.O = 0L;
        }
        if ((j & 1) != 0) {
            SliderView sliderView = this.M;
            nl6.q(sliderView, sliderView.getResources().getString(R.string.featured_txt));
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
