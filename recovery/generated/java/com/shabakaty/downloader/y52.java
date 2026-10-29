package com.shabakaty.downloader;

import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import com.cinemana.pro.R;
import com.facebook.drawee.view.SimpleDraweeView;
import com.shabakaty.cinemana.domain.models.local.Category;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import java.util.List;

/* JADX INFO: compiled from: ItemWatchedBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class y52 extends i52 implements lm0.a {
    public final ConstraintLayout U;
    public final mm0 V;
    public long W;

    /* JADX WARN: Illegal instructions before constructor call */
    public y52(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 7, null, null);
        super(gl0Var, view, 0, (TextView) objArrS[1], (SimpleDraweeView) objArrS[6], (TextView) objArrS[4], (TextView) objArrS[2], (TextView) objArrS[5], (TextView) objArrS[3]);
        this.W = -1L;
        this.O.setTag(null);
        ConstraintLayout constraintLayout = (ConstraintLayout) objArrS[0];
        this.U = constraintLayout;
        constraintLayout.setTag(null);
        this.N.setTag("VideoThumb");
        this.P.setTag("text_color|secondary_text,text_size|subheading");
        this.Q.setTag("text_color|secondary_text,text_size|subheading");
        ((TextView) this.M).setTag(null);
        ((TextView) this.R).setTag("text_color|secondary_text,text_size|subheading");
        view.setTag(R.id.dataBinding, this);
        this.V = new lm0(this, 1);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        if (11 == i) {
            this.S = (VideoModel) obj;
            synchronized (this) {
                this.W |= 1;
            }
            f(11);
            x();
        } else {
            if (3 != i) {
                return false;
            }
            this.T = (pk) obj;
            synchronized (this) {
                this.W |= 2;
            }
            f(3);
            x();
        }
        return true;
    }

    @Override // com.shabakaty.downloader.lm0.a
    public final void d(int i, View view) {
        pk pkVar = (pk) this.T;
        VideoModel videoModel = this.S;
        if (pkVar != null) {
            pkVar.a(videoModel, view);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        String str;
        List<Category> list;
        String str2;
        String strC;
        int i;
        String strA;
        String strB;
        String str3;
        String str4;
        String str5;
        synchronized (this) {
            j = this.W;
            this.W = 0L;
        }
        VideoModel videoModel = this.S;
        long j2 = j & 5;
        if (j2 != 0) {
            if (videoModel != null) {
                str2 = videoModel.stars;
                strC = videoModel.c();
                strB = videoModel.b();
                str3 = videoModel.nb;
                str5 = videoModel.kind;
                str = videoModel.imgMediumThumbObjUrl;
                str4 = videoModel.year;
                list = videoModel.categories;
            } else {
                list = null;
                str2 = null;
                strC = null;
                str = null;
                str4 = null;
                strB = null;
                str3 = null;
                str5 = null;
            }
            boolean zEquals = str5 != null ? str5.equals("1") : false;
            if (j2 != 0) {
                j |= zEquals ? 16L : 8L;
            }
            strA = el3.a(str4, ", ");
            i = zEquals ? 8 : 0;
        } else {
            str = null;
            list = null;
            str2 = null;
            strC = null;
            i = 0;
            strA = null;
            strB = null;
            str3 = null;
        }
        if ((5 & j) != 0) {
            nl6.r(this.O, strC);
            nl6.w(this.U, videoModel);
            oy1.c(this.N, str, null, null, null);
            gm4.b(this.P, list, null);
            this.Q.setVisibility(i);
            nl6.r(this.Q, strB);
            nl6.r((TextView) this.M, str2);
            nl6.r((TextView) this.R, strA);
            if (ViewDataBinding.G >= 21) {
                this.N.setTransitionName(str3);
            }
        }
        if ((j & 4) != 0) {
            this.O.setSelected(true);
            st2.c(this.U, this.V, null);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean o() {
        synchronized (this) {
            return this.W != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void p() {
        synchronized (this) {
            this.W = 4L;
        }
        x();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean u(int i, Object obj, int i2) {
        return false;
    }
}
