package com.shabakaty.downloader;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.cardview.widget.CardView;
import androidx.databinding.ViewDataBinding;
import com.cinemana.pro.R;

/* JADX INFO: compiled from: ItemBottomListTextButtonBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class l42 extends k42 implements lm0.a {
    public final mm0 S;
    public long T;

    /* JADX WARN: Illegal instructions before constructor call */
    public l42(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 5, null, null);
        super(gl0Var, view, 0, (AppCompatImageView) objArrS[4], (TextView) objArrS[2], (TextView) objArrS[3], (AppCompatImageView) objArrS[1], (CardView) objArrS[0]);
        this.T = -1L;
        ((AppCompatImageView) this.M).setTag(null);
        this.N.setTag(null);
        ((TextView) this.O).setTag(null);
        ((AppCompatImageView) this.P).setTag(null);
        this.Q.setTag(null);
        view.setTag(R.id.dataBinding, this);
        this.S = new lm0(this, 1);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        if (11 != i) {
            return false;
        }
        this.R = (pl4) obj;
        synchronized (this) {
            this.T |= 1;
        }
        f(11);
        x();
        return true;
    }

    @Override // com.shabakaty.downloader.lm0.a
    public final void d(int i, View view) {
        pl4 pl4Var = (pl4) this.R;
        if (pl4Var != null) {
            rm1<qv4> rm1Var = pl4Var.c;
            if (rm1Var != null) {
                rm1Var.invoke();
            }
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        Drawable drawable;
        String str;
        String str2;
        int i;
        boolean z;
        synchronized (this) {
            j = this.T;
            this.T = 0L;
        }
        pl4 pl4Var = (pl4) this.R;
        long j2 = j & 3;
        int i2 = 0;
        if (j2 != 0) {
            if (pl4Var != null) {
                drawable = pl4Var.a;
                str = pl4Var.d;
                str2 = pl4Var.b;
                z = pl4Var.e;
            } else {
                drawable = null;
                str = null;
                str2 = null;
                z = false;
            }
            if (j2 != 0) {
                j |= z ? 8L : 4L;
            }
            boolean z2 = drawable == null;
            int i3 = z ? 0 : 8;
            if ((j & 3) != 0) {
                j |= z2 ? 32L : 16L;
            }
            i2 = i3;
            i = z2 ? 8 : 0;
        } else {
            drawable = null;
            str = null;
            str2 = null;
            i = 0;
        }
        if ((3 & j) != 0) {
            ((AppCompatImageView) this.M).setVisibility(i2);
            nl6.r(this.N, str2);
            nl6.r((TextView) this.O, str);
            ((AppCompatImageView) this.P).setVisibility(i);
            ((AppCompatImageView) this.P).setImageDrawable(drawable);
        }
        if ((j & 2) != 0) {
            st2.c(this.Q, this.S, null);
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
            this.T = 2L;
        }
        x();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean u(int i, Object obj, int i2) {
        return false;
    }
}
