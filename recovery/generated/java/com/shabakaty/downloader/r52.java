package com.shabakaty.downloader;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.databinding.ViewDataBinding;
import com.cinemana.pro.R;

/* JADX INFO: compiled from: ItemSubtitleFontBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class r52 extends q52 {
    public static final SparseIntArray N;
    public long M;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        N = sparseIntArray;
        sparseIntArray.put(R.id.subtitle_font_title, 1);
        sparseIntArray.put(R.id.text, 2);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public r52(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 3, null, N);
        super(gl0Var, view, 0, (TextView) objArrS[1], (TextView) objArrS[2]);
        this.M = -1L;
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
        synchronized (this) {
            this.M = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean o() {
        synchronized (this) {
            return this.M != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void p() {
        synchronized (this) {
            this.M = 1L;
        }
        x();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean u(int i, Object obj, int i2) {
        return false;
    }
}
