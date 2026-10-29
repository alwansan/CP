package com.shabakaty.downloader;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import com.cinemana.pro.R;
import com.facebook.drawee.view.SimpleDraweeView;

/* JADX INFO: compiled from: ItemInnerEpisodeBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class f52 extends e52 implements lm0.a {
    public final TextView S;
    public final mm0 T;
    public long U;

    /* JADX WARN: Illegal instructions before constructor call */
    public f52(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 5, null, null);
        super(gl0Var, view, 0, (SimpleDraweeView) objArrS[1], (TextView) objArrS[4], (ConstraintLayout) objArrS[0], (FrameLayout) objArrS[2]);
        this.U = -1L;
        this.M.setTag(null);
        this.N.setTag(null);
        TextView textView = (TextView) objArrS[3];
        this.S = textView;
        textView.setTag(null);
        this.O.setTag(null);
        this.P.setTag(null);
        view.setTag(R.id.dataBinding, this);
        this.T = new lm0(this, 1);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        if (11 == i) {
            this.Q = (b41) obj;
            synchronized (this) {
                this.U |= 1;
            }
            f(11);
            x();
        } else {
            if (3 != i) {
                return false;
            }
            this.R = (e12.a) obj;
            synchronized (this) {
                this.U |= 2;
            }
            f(3);
            x();
        }
        return true;
    }

    @Override // com.shabakaty.downloader.lm0.a
    public final void d(int i, View view) {
        e12.a aVar = this.R;
        b41 b41Var = this.Q;
        if (aVar != null) {
            aVar.U1(b41Var);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        String str;
        String strB;
        boolean z;
        String strA;
        synchronized (this) {
            j = this.U;
            this.U = 0L;
        }
        b41 b41Var = this.Q;
        long j2 = j & 5;
        int i = 0;
        if (j2 != 0) {
            if (b41Var != null) {
                strB = b41Var.b();
                z = b41Var.a;
                strA = b41Var.a();
            } else {
                z = false;
                strA = null;
                strB = null;
            }
            if (j2 != 0) {
                j |= z ? 16L : 8L;
            }
            i = z ? 0 : 8;
            str = this.N.getResources().getString(R.string.txt_episode) + " " + strA;
        } else {
            str = null;
            strB = null;
        }
        if ((5 & j) != 0) {
            oy1.c(this.M, strB, null, null, null);
            nl6.r(this.N, str);
            this.P.setVisibility(i);
        }
        if ((j & 4) != 0) {
            TextView textView = this.S;
            d3.a(textView, R.string.now_playing_txt, textView);
            st2.c(this.O, this.T, null);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean o() {
        synchronized (this) {
            return this.U != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void p() {
        synchronized (this) {
            this.U = 4L;
        }
        x();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean u(int i, Object obj, int i2) {
        return false;
    }
}
