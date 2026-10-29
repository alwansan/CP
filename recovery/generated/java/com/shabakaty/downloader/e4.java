package com.shabakaty.downloader;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ProgressBar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import com.cinemana.pro.R;
import com.google.android.material.button.MaterialButton;
import com.shabakaty.cinemana.player.CinemanaPlayerView;

/* JADX INFO: compiled from: ActivityVideoPlayerBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class e4 extends d4 implements lm0.a {
    public static final SparseIntArray T;
    public final mm0 R;
    public long S;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        T = sparseIntArray;
        sparseIntArray.put(R.id.player_progress_bar, 3);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public e4(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 4, null, T);
        super(gl0Var, view, 0, (CinemanaPlayerView) objArrS[1], (ProgressBar) objArrS[3], (MaterialButton) objArrS[2], (ConstraintLayout) objArrS[0]);
        this.S = -1L;
        this.M.setTag(null);
        this.O.setTag(null);
        this.P.setTag(null);
        view.setTag(R.id.dataBinding, this);
        this.R = new lm0(this, 1);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        if (38 == i) {
        } else {
            if (16 != i) {
                return false;
            }
            this.Q = (p10) obj;
            synchronized (this) {
                this.S |= 2;
            }
            f(16);
            x();
        }
        return true;
    }

    @Override // com.shabakaty.downloader.lm0.a
    public final void d(int i, View view) {
        p10 p10Var = this.Q;
        if (p10Var != null) {
            p10Var.o();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        synchronized (this) {
            j = this.S;
            this.S = 0L;
        }
        p10 p10Var = this.Q;
        if ((6 & j) != 0) {
            this.M.setNavigator(p10Var);
        }
        if ((j & 4) != 0) {
            MaterialButton materialButton = this.O;
            e3.a(materialButton, R.string.retry, materialButton);
            st2.c(this.O, this.R, null);
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
            this.S = 4L;
        }
        x();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean u(int i, Object obj, int i2) {
        return false;
    }
}
