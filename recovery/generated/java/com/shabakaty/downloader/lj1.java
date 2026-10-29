package com.shabakaty.downloader;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.cinemana.pro.R;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import java.util.List;

/* JADX INFO: compiled from: FragmentExternalSeasonBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class lj1 extends kj1 {
    public static final SparseIntArray S;
    public long R;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        S = sparseIntArray;
        sparseIntArray.put(R.id.textView4, 2);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public lj1(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 3, null, S);
        super(gl0Var, view, 1, (ConstraintLayout) objArrS[0], (TextView) objArrS[2], (RecyclerView) objArrS[1]);
        this.R = -1L;
        this.M.setTag(null);
        this.O.setTag(null);
        view.setTag(R.id.dataBinding, this);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        if (15 == i) {
            this.Q = (k91) obj;
        } else {
            if (38 != i) {
                return false;
            }
            this.P = (m91) obj;
            synchronized (this) {
                this.R |= 4;
            }
            f(38);
            x();
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0025  */
    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        List<VideoModel> value;
        synchronized (this) {
            j = this.R;
            this.R = 0L;
        }
        m91 m91Var = this.P;
        long j2 = j & 13;
        if (j2 == 0) {
            value = null;
        } else {
            xv2<List<VideoModel>> xv2Var = m91Var != null ? m91Var.j : null;
            E(0, xv2Var);
            if (xv2Var != null) {
                value = xv2Var.getValue();
            } else {
                value = null;
            }
        }
        if (j2 != 0) {
            fo3.a(this.O, value, null, null);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean o() {
        synchronized (this) {
            return this.R != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void p() {
        synchronized (this) {
            this.R = 8L;
        }
        x();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean u(int i, Object obj, int i2) {
        if (i != 0) {
            return false;
        }
        if (i2 != 0) {
            return false;
        }
        synchronized (this) {
            this.R |= 1;
        }
        return true;
    }
}
