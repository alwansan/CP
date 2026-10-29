package com.shabakaty.downloader;

import android.view.View;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.databinding.ViewDataBinding;
import com.cinemana.pro.R;
import com.facebook.drawee.view.SimpleDraweeView;
import com.shabakaty.cinemana.domain.models.local.home_page.FranchiseItem;

/* JADX INFO: compiled from: ItemFranchiseLargeBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class v42 extends t42 implements lm0.a {
    public final CardView Q;
    public final mm0 R;
    public long S;

    /* JADX WARN: Illegal instructions before constructor call */
    public v42(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 3, null, null);
        super(gl0Var, view, 0, (SimpleDraweeView) objArrS[1], (TextView) objArrS[2], 1);
        this.S = -1L;
        this.M.setTag(null);
        this.N.setTag(null);
        CardView cardView = (CardView) objArrS[0];
        this.Q = cardView;
        cardView.setTag(null);
        view.setTag(R.id.dataBinding, this);
        this.R = new lm0(this, 1);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        if (3 == i) {
            this.O = (bm1) obj;
            synchronized (this) {
                this.S |= 1;
            }
            f(3);
            x();
        } else {
            if (11 != i) {
                return false;
            }
            this.P = (FranchiseItem) obj;
            synchronized (this) {
                this.S |= 2;
            }
            f(11);
            x();
        }
        return true;
    }

    @Override // com.shabakaty.downloader.lm0.a
    public final void d(int i, View view) {
        bm1 bm1Var = this.O;
        FranchiseItem franchiseItem = this.P;
        if (bm1Var != null) {
            bm1Var.V0(franchiseItem);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        String strA;
        String str;
        String str2;
        synchronized (this) {
            j = this.S;
            this.S = 0L;
        }
        FranchiseItem franchiseItem = this.P;
        long j2 = 6 & j;
        if (j2 != 0) {
            if (franchiseItem != null) {
                str = franchiseItem.displayName;
                str2 = franchiseItem.imgMediumThumbObjUrl;
            } else {
                str2 = null;
                str = null;
            }
            strA = el3.a("https://cnth2.shabakaty.cc/", str2);
        } else {
            strA = null;
            str = null;
        }
        if (j2 != 0) {
            oy1.c(this.M, strA, null, null, null);
            nl6.r(this.N, str);
            nl6.q(this.Q, str);
        }
        if ((j & 4) != 0) {
            st2.c(this.Q, this.R, null);
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
