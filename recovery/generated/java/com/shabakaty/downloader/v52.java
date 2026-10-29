package com.shabakaty.downloader;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import com.cinemana.pro.R;
import com.facebook.drawee.view.SimpleDraweeView;
import com.shabakaty.cinemana.domain.models.local.Comment;

/* JADX INFO: compiled from: ItemVideoInfoCommentBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class v52 extends u52 implements lm0.a {
    public final mm0 X;
    public final mm0 Y;
    public final mm0 Z;
    public long a0;

    /* JADX WARN: Illegal instructions before constructor call */
    public v52(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 9, null, null);
        super(gl0Var, view, 0, (FrameLayout) objArrS[1], (TextView) objArrS[7], (SimpleDraweeView) objArrS[2], (TextView) objArrS[3], (TextView) objArrS[6], (TextView) objArrS[5], (TextView) objArrS[4], (TextView) objArrS[8]);
        this.a0 = -1L;
        this.M.setTag(null);
        ((ConstraintLayout) objArrS[0]).setTag(null);
        this.N.setTag(null);
        this.O.setTag(null);
        this.P.setTag(null);
        this.Q.setTag(null);
        this.R.setTag(null);
        this.S.setTag(null);
        this.T.setTag(null);
        view.setTag(R.id.dataBinding, this);
        this.X = new lm0(this, 1);
        this.Y = new lm0(this, 3);
        this.Z = new lm0(this, 2);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        if (11 == i) {
            this.W = (Comment) obj;
            synchronized (this) {
                this.a0 |= 1;
            }
            f(11);
            x();
        } else if (34 == i) {
            G((String) obj);
        } else {
            if (3 != i) {
                return false;
            }
            this.U = (r60) obj;
            synchronized (this) {
                this.a0 |= 4;
            }
            f(3);
            x();
        }
        return true;
    }

    @Override // com.shabakaty.downloader.u52
    public void G(String str) {
        this.V = str;
        synchronized (this) {
            this.a0 |= 2;
        }
        f(34);
        x();
    }

    @Override // com.shabakaty.downloader.lm0.a
    public final void d(int i, View view) {
        if (i == 1) {
            r60 r60Var = this.U;
            Comment comment = this.W;
            if (r60Var != null) {
                r60Var.L1(comment);
                return;
            }
            return;
        }
        if (i == 2) {
            r60 r60Var2 = this.U;
            Comment comment2 = this.W;
            if (r60Var2 != null) {
                r60Var2.Q0(comment2);
                return;
            }
            return;
        }
        if (i != 3) {
            return;
        }
        r60 r60Var3 = this.U;
        Comment comment3 = this.W;
        if (r60Var3 != null) {
            r60Var3.O1(comment3);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        int i;
        String str;
        String str2;
        String str3;
        String str4;
        int i2;
        long j2;
        long j3;
        synchronized (this) {
            j = this.a0;
            this.a0 = 0L;
        }
        Comment comment = this.W;
        String str5 = this.V;
        long j4 = j & 11;
        if (j4 != 0) {
            if ((j & 9) == 0 || comment == null) {
                str2 = null;
                str3 = null;
                str4 = null;
            } else {
                str2 = comment.userName;
                str3 = comment.text;
                str4 = comment.date;
            }
            str = comment != null ? comment.userProfilePic : null;
            boolean zEquals = str != null ? str.equals(str5) : false;
            if (j4 != 0) {
                if (zEquals) {
                    j2 = j | 32;
                    j3 = 128;
                } else {
                    j2 = j | 16;
                    j3 = 64;
                }
                j = j2 | j3;
            }
            int i3 = zEquals ? 0 : 8;
            i = zEquals ? 8 : 0;
            i2 = i3;
        } else {
            i = 0;
            str = null;
            str2 = null;
            str3 = null;
            str4 = null;
            i2 = 0;
        }
        if ((11 & j) != 0) {
            this.M.setVisibility(i2);
            this.N.setVisibility(i2);
            this.Q.setVisibility(i);
            this.T.setVisibility(i2);
        }
        if ((8 & j) != 0) {
            TextView textView = this.N;
            d3.a(textView, R.string.delete, textView);
            st2.c(this.N, this.Z, null);
            TextView textView2 = this.Q;
            d3.a(textView2, R.string.report, textView2);
            st2.c(this.Q, this.X, null);
            TextView textView3 = this.T;
            d3.a(textView3, R.string.delete, textView3);
            st2.c(this.T, this.Y, null);
        }
        if ((j & 9) != 0) {
            oy1.c(this.O, str, null, null, null);
            nl6.r(this.P, str2);
            nl6.r(this.R, str3);
            gm4.c(this.S, str4);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean o() {
        synchronized (this) {
            return this.a0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void p() {
        synchronized (this) {
            this.a0 = 8L;
        }
        x();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean u(int i, Object obj, int i2) {
        return false;
    }
}
