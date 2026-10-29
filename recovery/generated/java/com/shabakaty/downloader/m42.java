package com.shabakaty.downloader;

import android.view.View;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.databinding.ViewDataBinding;
import com.cinemana.pro.R;
import com.facebook.drawee.view.SimpleDraweeView;
import com.shabakaty.cinemana.domain.models.local.categories.NewCategoryItem;

/* JADX INFO: compiled from: ItemCategoryBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class m42 extends hn implements lm0.a {
    public final CardView P;
    public final SimpleDraweeView Q;
    public final mm0 R;
    public long S;

    /* JADX WARN: Illegal instructions before constructor call */
    public m42(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 3, null, null);
        super(gl0Var, view, 0, (TextView) objArrS[2]);
        this.S = -1L;
        CardView cardView = (CardView) objArrS[0];
        this.P = cardView;
        cardView.setTag(null);
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) objArrS[1];
        this.Q = simpleDraweeView;
        simpleDraweeView.setTag(null);
        this.N.setTag(null);
        view.setTag(R.id.dataBinding, this);
        this.R = new lm0(this, 1);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        if (3 == i) {
            this.M = (cx) obj;
            synchronized (this) {
                this.S |= 1;
            }
            f(3);
            x();
        } else {
            if (11 != i) {
                return false;
            }
            this.O = (NewCategoryItem) obj;
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
        cx cxVar = (cx) this.M;
        NewCategoryItem newCategoryItem = (NewCategoryItem) this.O;
        if (cxVar != null) {
            cxVar.X0(newCategoryItem);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        String str;
        String str2;
        String str3;
        synchronized (this) {
            j = this.S;
            this.S = 0L;
        }
        NewCategoryItem newCategoryItem = (NewCategoryItem) this.O;
        long j2 = 6 & j;
        if (j2 == 0 || newCategoryItem == null) {
            str = null;
            str2 = null;
            str3 = null;
        } else {
            str2 = newCategoryItem.s;
            str3 = newCategoryItem.t;
            str = newCategoryItem.x;
        }
        if (j2 != 0) {
            nl6.p(this.P, str3, str2);
            oy1.c(this.Q, str, null, null, null);
            gm4.e(this.N, str3, str2);
        }
        if ((j & 4) != 0) {
            st2.c(this.P, this.R, null);
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
