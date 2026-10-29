package com.shabakaty.downloader;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import com.cinemana.pro.R;
import com.facebook.drawee.view.SimpleDraweeView;

/* JADX INFO: compiled from: DiscoverMoreAppsLayoutBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class pt0 extends ot0 {
    public static final SparseIntArray P;
    public final TextView N;
    public long O;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        P = sparseIntArray;
        sparseIntArray.put(R.id.discover_share_logo, 3);
        sparseIntArray.put(R.id.discover_tv_logo, 4);
        sparseIntArray.put(R.id.discover_muzikna_logo, 5);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public pt0(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 6, null, P);
        super(gl0Var, view, 0, (SimpleDraweeView) objArrS[5], (SimpleDraweeView) objArrS[3], (SimpleDraweeView) objArrS[4], (TextView) objArrS[1]);
        this.O = -1L;
        ((ConstraintLayout) objArrS[0]).setTag(null);
        TextView textView = (TextView) objArrS[2];
        this.N = textView;
        textView.setTag(null);
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
        long j;
        synchronized (this) {
            j = this.O;
            this.O = 0L;
        }
        if ((j & 1) != 0) {
            TextView textView = this.N;
            d3.a(textView, R.string.discover_txt, textView);
            TextView textView2 = this.M;
            d3.a(textView2, R.string.more_apps_txt, textView2);
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
