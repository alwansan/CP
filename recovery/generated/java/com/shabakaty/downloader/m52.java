package com.shabakaty.downloader;

import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import com.cinemana.pro.R;
import com.facebook.drawee.view.SimpleDraweeView;
import com.google.android.material.button.MaterialButton;
import com.shabakaty.cinemana.domain.models.local.VideoModel;

/* JADX INFO: compiled from: ItemSliderBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class m52 extends h42 implements lm0.a {
    public final mm0 T;
    public final mm0 U;
    public long V;

    /* JADX WARN: Illegal instructions before constructor call */
    public m52(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 5, null, null);
        super(gl0Var, view, 0, (TextView) objArrS[3], (TextView) objArrS[2], (MaterialButton) objArrS[4], (ConstraintLayout) objArrS[0], (SimpleDraweeView) objArrS[1]);
        this.V = -1L;
        this.M.setTag(null);
        this.O.setTag(null);
        ((MaterialButton) this.P).setTag(null);
        ((ConstraintLayout) this.Q).setTag(null);
        this.N.setTag("VideoThumb");
        view.setTag(R.id.dataBinding, this);
        this.T = new lm0(this, 1);
        this.U = new lm0(this, 2);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        if (11 == i) {
            this.S = (VideoModel) obj;
            synchronized (this) {
                this.V |= 1;
            }
            f(11);
            x();
        } else {
            if (3 != i) {
                return false;
            }
            this.R = (v84) obj;
            synchronized (this) {
                this.V |= 2;
            }
            f(3);
            x();
        }
        return true;
    }

    @Override // com.shabakaty.downloader.lm0.a
    public final void d(int i, View view) {
        if (i == 1) {
            v84 v84Var = (v84) this.R;
            VideoModel videoModel = this.S;
            if (v84Var != null) {
                v84Var.a(videoModel, view);
                return;
            }
            return;
        }
        if (i != 2) {
            return;
        }
        v84 v84Var2 = (v84) this.R;
        VideoModel videoModel2 = this.S;
        if (v84Var2 != null) {
            v84Var2.g(videoModel2, view);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        synchronized (this) {
            j = this.V;
            this.V = 0L;
        }
        VideoModel videoModel = this.S;
        long j2 = 5 & j;
        if (j2 == 0 || videoModel == null) {
            str = null;
            str2 = null;
            str3 = null;
            str4 = null;
            str5 = null;
        } else {
            str = videoModel.arTitle;
            str2 = videoModel.enTitle;
            str3 = videoModel.imgObjUrl;
            str4 = videoModel.enContent;
            str5 = videoModel.arContent;
        }
        if (j2 != 0) {
            gm4.e(this.M, str4, str5);
            gm4.e(this.O, str2, str);
            nl6.w(this.N, videoModel);
            oy1.c(this.N, str3, null, null, null);
        }
        if ((j & 4) != 0) {
            Object obj = this.P;
            e3.a((MaterialButton) obj, R.string.watch_now, (MaterialButton) obj);
            st2.c((MaterialButton) this.P, this.U, null);
            st2.b((ConstraintLayout) this.Q, Boolean.TRUE);
            st2.c((ConstraintLayout) this.Q, this.T, null);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean o() {
        synchronized (this) {
            return this.V != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void p() {
        synchronized (this) {
            this.V = 4L;
        }
        x();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean u(int i, Object obj, int i2) {
        return false;
    }
}
