package com.shabakaty.downloader;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.databinding.ViewDataBinding;
import com.cinemana.pro.R;

/* JADX INFO: compiled from: FragmentUserListsBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class il1 extends hl1 implements lm0.a {
    public static final SparseIntArray X;
    public final mm0 T;
    public final mm0 U;
    public final mm0 V;
    public long W;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        X = sparseIntArray;
        sparseIntArray.put(R.id.user_lists_guildine, 7);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public il1(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 8, null, X);
        super(gl0Var, view, 0, (TextView) objArrS[4], (TextView) objArrS[2], (TextView) objArrS[6], (CardView) objArrS[3], (Guideline) objArrS[7], (CardView) objArrS[5], (CardView) objArrS[1]);
        this.W = -1L;
        ((ConstraintLayout) objArrS[0]).setTag(null);
        this.M.setTag(null);
        this.N.setTag(null);
        this.O.setTag(null);
        this.P.setTag(null);
        this.Q.setTag(null);
        this.R.setTag(null);
        view.setTag(R.id.dataBinding, this);
        this.T = new lm0(this, 3);
        this.U = new lm0(this, 1);
        this.V = new lm0(this, 2);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        if (38 == i) {
        } else {
            if (16 != i) {
                return false;
            }
            this.S = (ey4) obj;
            synchronized (this) {
                this.W |= 2;
            }
            f(16);
            x();
        }
        return true;
    }

    @Override // com.shabakaty.downloader.lm0.a
    public final void d(int i, View view) {
        if (i == 1) {
            ey4 ey4Var = this.S;
            if (ey4Var != null) {
                ey4Var.p();
                return;
            }
            return;
        }
        if (i == 2) {
            ey4 ey4Var2 = this.S;
            if (ey4Var2 != null) {
                ey4Var2.S0();
                return;
            }
            return;
        }
        if (i != 3) {
            return;
        }
        ey4 ey4Var3 = this.S;
        if (ey4Var3 != null) {
            ey4Var3.K1();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        synchronized (this) {
            j = this.W;
            this.W = 0L;
        }
        if ((j & 4) != 0) {
            TextView textView = this.M;
            d3.a(textView, R.string.favorites_txt, textView);
            TextView textView2 = this.N;
            d3.a(textView2, R.string.watched_txt, textView2);
            TextView textView3 = this.O;
            d3.a(textView3, R.string.watch_later_txt, textView3);
            st2.c(this.P, this.V, null);
            st2.c(this.Q, this.T, null);
            st2.c(this.R, this.U, null);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean o() {
        synchronized (this) {
            return this.W != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void p() {
        synchronized (this) {
            this.W = 4L;
        }
        x();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean u(int i, Object obj, int i2) {
        return false;
    }
}
