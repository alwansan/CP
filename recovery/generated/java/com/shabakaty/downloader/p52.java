package com.shabakaty.downloader;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.databinding.ViewDataBinding;
import com.cinemana.pro.R;
import com.facebook.drawee.view.SimpleDraweeView;
import com.shabakaty.cinemana.domain.models.local.Category;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import java.util.List;

/* JADX INFO: compiled from: ItemSubscriptionBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class p52 extends h42 implements lm0.a {
    public static final SparseIntArray W;
    public final ConstraintLayout T;
    public final mm0 U;
    public long V;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        W = sparseIntArray;
        sparseIntArray.put(R.id.guideline3, 4);
        sparseIntArray.put(R.id.imageView4, 5);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public p52(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 6, null, W);
        super(gl0Var, view, 0, (Guideline) objArrS[4], (SimpleDraweeView) objArrS[5], (SimpleDraweeView) objArrS[1], (TextView) objArrS[3], (TextView) objArrS[2]);
        this.V = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArrS[0];
        this.T = constraintLayout;
        constraintLayout.setTag(null);
        ((SimpleDraweeView) this.Q).setTag("VideoThumb");
        this.M.setTag(null);
        this.O.setTag(null);
        view.setTag(R.id.dataBinding, this);
        this.U = new lm0(this, 1);
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
            this.R = (qf4) obj;
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
        qf4 qf4Var = (qf4) this.R;
        VideoModel videoModel = this.S;
        if (qf4Var != null) {
            qf4Var.a(videoModel, view);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        String str;
        String str2;
        String strC;
        List<Category> list;
        synchronized (this) {
            j = this.V;
            this.V = 0L;
        }
        VideoModel videoModel = this.S;
        long j2 = 5 & j;
        if (j2 == 0 || videoModel == null) {
            str = null;
            str2 = null;
            strC = null;
            list = null;
        } else {
            str2 = videoModel.imgMediumThumbObjUrl;
            strC = videoModel.c();
            list = videoModel.categories;
            str = videoModel.nb;
        }
        if ((j & 4) != 0) {
            st2.c(this.T, this.U, null);
        }
        if (j2 != 0) {
            if (ViewDataBinding.G >= 21) {
                ((SimpleDraweeView) this.Q).setTransitionName(str);
            }
            oy1.c((SimpleDraweeView) this.Q, str2, null, null, null);
            gm4.b(this.M, list, null);
            nl6.r(this.O, strC);
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
