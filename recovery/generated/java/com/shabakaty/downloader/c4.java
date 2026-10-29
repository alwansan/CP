package com.shabakaty.downloader;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.databinding.ViewDataBinding;
import com.cinemana.pro.R;
import com.facebook.drawee.view.SimpleDraweeView;
import com.google.android.material.button.MaterialButton;

/* JADX INFO: compiled from: ActivityStatusBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class c4 extends b4 implements i63.a {
    public static final SparseIntArray U;
    public final View.OnClickListener S;
    public long T;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        U = sparseIntArray;
        sparseIntArray.put(R.id.status_image, 4);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public c4(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 5, null, U);
        super(gl0Var, view, 0, (MaterialButton) objArrS[3], (SimpleDraweeView) objArrS[4], (TextView) objArrS[1], (TextView) objArrS[2]);
        this.T = -1L;
        ((ScrollView) objArrS[0]).setTag(null);
        this.M.setTag(null);
        this.N.setTag(null);
        this.O.setTag(null);
        view.setTag(R.id.dataBinding, this);
        this.S = new i63(this, 1);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        if (27 == i) {
            H((String) obj);
        } else if (26 == i) {
        } else if (16 == i) {
            this.P = (ad4) obj;
            synchronized (this) {
                this.T |= 4;
            }
            f(16);
            x();
        } else {
            if (28 != i) {
                return false;
            }
            I((String) obj);
        }
        return true;
    }

    @Override // com.shabakaty.downloader.b4
    public void G(q14 q14Var) {
    }

    @Override // com.shabakaty.downloader.b4
    public void H(String str) {
        this.R = str;
        synchronized (this) {
            this.T |= 1;
        }
        f(27);
        x();
    }

    @Override // com.shabakaty.downloader.b4
    public void I(String str) {
        this.Q = str;
        synchronized (this) {
            this.T |= 8;
        }
        f(28);
        x();
    }

    @Override // com.shabakaty.downloader.i63.a
    public final void b(int i, View view) {
        ad4 ad4Var = this.P;
        if (ad4Var != null) {
            ad4Var.P1();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        synchronized (this) {
            j = this.T;
            this.T = 0L;
        }
        String str = this.R;
        String str2 = this.Q;
        long j2 = 17 & j;
        long j3 = 24 & j;
        if ((j & 16) != 0) {
            this.M.setOnClickListener(this.S);
        }
        if (j3 != 0) {
            fm4.a(this.N, str2);
        }
        if (j2 != 0) {
            fm4.a(this.O, str);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean o() {
        synchronized (this) {
            return this.T != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void p() {
        synchronized (this) {
            this.T = 16L;
        }
        x();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean u(int i, Object obj, int i2) {
        return false;
    }
}
