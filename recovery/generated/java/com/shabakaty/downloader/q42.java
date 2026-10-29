package com.shabakaty.downloader;

import android.view.View;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.cinemana.pro.R;
import com.facebook.drawee.view.SimpleDraweeView;
import com.google.android.exoplayer2.ui.AspectRatioFrameLayout;
import com.shabakaty.cinemana.data.db.downloads.CinemanaDownloadItem;
import java.util.List;

/* JADX INFO: compiled from: ItemDownloadsCollectionBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class q42 extends p42 implements lm0.a {
    public final ConstraintLayout U;
    public final CardView V;
    public final TextView W;
    public final mm0 X;
    public final mm0 Y;
    public final mm0 Z;
    public final mm0 a0;
    public long b0;

    /* JADX WARN: Illegal instructions before constructor call */
    public q42(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 9, null, null);
        super(gl0Var, view, 0, (AspectRatioFrameLayout) objArrS[1], (TextView) objArrS[7], (RecyclerView) objArrS[4], (TextView) objArrS[6], (TextView) objArrS[5], (SimpleDraweeView) objArrS[8]);
        this.b0 = -1L;
        this.M.setTag(null);
        this.N.setTag("text_color|secondary_text,text_size|subheading");
        this.O.setTag(null);
        this.P.setTag("text_color|secondary_text,text_size|subheading");
        this.Q.setTag(null);
        this.R.setTag(null);
        ConstraintLayout constraintLayout = (ConstraintLayout) objArrS[0];
        this.U = constraintLayout;
        constraintLayout.setTag(null);
        CardView cardView = (CardView) objArrS[2];
        this.V = cardView;
        cardView.setTag(null);
        TextView textView = (TextView) objArrS[3];
        this.W = textView;
        textView.setTag(null);
        view.setTag(R.id.dataBinding, this);
        this.X = new lm0(this, 4);
        this.Y = new lm0(this, 3);
        this.Z = new lm0(this, 1);
        this.a0 = new lm0(this, 2);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        if (11 == i) {
            this.S = (gz0) obj;
            synchronized (this) {
                this.b0 |= 1;
            }
            f(11);
            x();
        } else {
            if (3 != i) {
                return false;
            }
            this.T = (aw0) obj;
            synchronized (this) {
                this.b0 |= 2;
            }
            f(3);
            x();
        }
        return true;
    }

    @Override // com.shabakaty.downloader.lm0.a
    public final void d(int i, View view) {
        if (i == 1) {
            aw0 aw0Var = this.T;
            gz0 gz0Var = this.S;
            if (aw0Var != null) {
                aw0Var.w1(gz0Var);
                return;
            }
            return;
        }
        if (i == 2) {
            aw0 aw0Var2 = this.T;
            gz0 gz0Var2 = this.S;
            if (aw0Var2 != null) {
                aw0Var2.w1(gz0Var2);
                return;
            }
            return;
        }
        if (i == 3) {
            aw0 aw0Var3 = this.T;
            gz0 gz0Var3 = this.S;
            if (aw0Var3 != null) {
                aw0Var3.w1(gz0Var3);
                return;
            }
            return;
        }
        if (i != 4) {
            return;
        }
        aw0 aw0Var4 = this.T;
        gz0 gz0Var4 = this.S;
        if (aw0Var4 != null) {
            aw0Var4.s(gz0Var4);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        String strA;
        int i;
        String quantityString;
        List<CinemanaDownloadItem> list;
        String str;
        int i2;
        boolean zIsEmpty;
        int size;
        long j2;
        long j3;
        synchronized (this) {
            j = this.b0;
            this.b0 = 0L;
        }
        gz0 gz0Var = this.S;
        long j4 = 5 & j;
        if (j4 != 0) {
            if (gz0Var != null) {
                list = gz0Var.u;
                str = gz0Var.s;
                strA = gz0Var.a();
            } else {
                strA = null;
                list = null;
                str = null;
            }
            if (list != null) {
                zIsEmpty = list.isEmpty();
                size = list.size();
            } else {
                zIsEmpty = false;
                size = 0;
            }
            if (j4 != 0) {
                if (zIsEmpty) {
                    j2 = j | 16;
                    j3 = 64;
                } else {
                    j2 = j | 8;
                    j3 = 32;
                }
                j = j2 | j3;
            }
            i = zIsEmpty ? 0 : 8;
            i2 = zIsEmpty ? 8 : 0;
            this.N.getResources().getQuantityString(R.plurals.items, size, Integer.valueOf(size));
            quantityString = this.N.getResources().getQuantityString(R.plurals.items, size, Integer.valueOf(size));
        } else {
            strA = null;
            i = 0;
            quantityString = null;
            list = null;
            str = null;
            i2 = 0;
        }
        if ((4 & j) != 0) {
            this.M.setAspectRatio(1.0f);
            st2.c(this.M, this.a0, null);
            SimpleDraweeView simpleDraweeView = this.R;
            nl6.q(simpleDraweeView, simpleDraweeView.getResources().getString(R.string.more_txt));
            st2.c(this.R, this.X, null);
            st2.b(this.U, Boolean.TRUE);
            st2.c(this.U, this.Z, null);
            st2.c(this.V, this.Y, null);
            TextView textView = this.W;
            d3.a(textView, R.string.collection_is_empty_txt, textView);
        }
        if ((j & 5) != 0) {
            nl6.r(this.N, quantityString);
            this.O.setVisibility(i2);
            fo3.a(this.O, list, 4, null);
            nl6.r(this.P, strA);
            nl6.r(this.Q, str);
            this.W.setVisibility(i);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean o() {
        synchronized (this) {
            return this.b0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void p() {
        synchronized (this) {
            this.b0 = 4L;
        }
        x();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean u(int i, Object obj, int i2) {
        return false;
    }
}
