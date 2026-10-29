package com.shabakaty.downloader;

import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.cinemana.pro.R;
import com.google.android.material.button.MaterialButton;
import java.util.List;

/* JADX INFO: compiled from: FragmentInternalSeasonBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class uj1 extends tj1 implements lm0.a {
    public final mm0 R;
    public long S;

    /* JADX WARN: Illegal instructions before constructor call */
    public uj1(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 3, null, null);
        super(gl0Var, view, 0, (MaterialButton) objArrS[2], (RecyclerView) objArrS[1]);
        this.S = -1L;
        this.M.setTag(null);
        ((ConstraintLayout) objArrS[0]).setTag(null);
        this.N.setTag(null);
        view.setTag(R.id.dataBinding, this);
        this.R = new lm0(this, 1);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        if (23 == i) {
            I((Boolean) obj);
        } else if (21 == i) {
            H((rz3) obj);
        } else {
            if (8 != i) {
                return false;
            }
            G((List) obj);
        }
        return true;
    }

    @Override // com.shabakaty.downloader.tj1
    public void G(List list) {
        this.O = list;
        synchronized (this) {
            this.S |= 4;
        }
        f(8);
        x();
    }

    @Override // com.shabakaty.downloader.tj1
    public void H(rz3 rz3Var) {
        this.Q = rz3Var;
        synchronized (this) {
            this.S |= 2;
        }
        f(21);
        x();
    }

    @Override // com.shabakaty.downloader.tj1
    public void I(Boolean bool) {
        this.P = bool;
        synchronized (this) {
            this.S |= 1;
        }
        f(23);
        x();
    }

    @Override // com.shabakaty.downloader.lm0.a
    public final void d(int i, View view) {
        rz3 rz3Var = this.Q;
        if (rz3Var != null) {
            rz3Var.k();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        synchronized (this) {
            j = this.S;
            this.S = 0L;
        }
        Boolean bool = this.P;
        List list = this.O;
        long j2 = j & 9;
        int i = 0;
        if (j2 != 0) {
            boolean zA = ViewDataBinding.A(bool);
            if (j2 != 0) {
                j |= zA ? 32L : 16L;
            }
            if (!zA) {
                i = 8;
            }
        }
        long j3 = 12 & j;
        if ((9 & j) != 0) {
            this.M.setVisibility(i);
        }
        if ((j & 8) != 0) {
            MaterialButton materialButton = this.M;
            e3.a(materialButton, R.string.see_all, materialButton);
            st2.c(this.M, this.R, null);
        }
        if (j3 != 0) {
            fo3.a(this.N, list, null, null);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean o() {
        synchronized (this) {
            return this.S != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void p() {
        synchronized (this) {
            this.S = 8L;
        }
        x();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean u(int i, Object obj, int i2) {
        return false;
    }
}
