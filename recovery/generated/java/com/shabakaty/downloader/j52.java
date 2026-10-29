package com.shabakaty.downloader;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.databinding.ViewDataBinding;
import com.cinemana.pro.R;
import com.facebook.drawee.view.SimpleDraweeView;
import com.shabakaty.cinemana.domain.models.local.VideoModel;

/* JADX INFO: compiled from: ItemNotificationBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class j52 extends i52 implements lm0.a {
    public static final SparseIntArray X;
    public final ConstraintLayout U;
    public final mm0 V;
    public long W;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        X = sparseIntArray;
        sparseIntArray.put(R.id.guideline3, 5);
        sparseIntArray.put(R.id.imageView4, 6);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public j52(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 7, null, X);
        super(gl0Var, view, 0, (Guideline) objArrS[5], (SimpleDraweeView) objArrS[6], (TextView) objArrS[3], (TextView) objArrS[4], (TextView) objArrS[2], (SimpleDraweeView) objArrS[1]);
        this.W = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArrS[0];
        this.U = constraintLayout;
        constraintLayout.setTag(null);
        this.O.setTag(null);
        this.P.setTag(null);
        this.Q.setTag(null);
        ((SimpleDraweeView) this.R).setTag("VideoThumb");
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
            this.T = (u03) obj;
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
        u03 u03Var = (u03) this.T;
        VideoModel videoModel = this.S;
        if (u03Var != null) {
            u03Var.a(videoModel, view);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        String str;
        String strC;
        String strA;
        String str2;
        String strA2;
        String str3;
        String str4;
        String str5;
        synchronized (this) {
            j = this.W;
            this.W = 0L;
        }
        VideoModel videoModel = this.S;
        long j2 = 5 & j;
        if (j2 != 0) {
            if (videoModel != null) {
                strC = videoModel.c();
                str3 = videoModel.season;
                str2 = videoModel.nb;
                str4 = videoModel.episodeNummer;
                str5 = videoModel.imgObjUrl;
                str = videoModel.publishDate;
            } else {
                str = null;
                strC = null;
                str3 = null;
                str2 = null;
                str4 = null;
                str5 = null;
            }
            String str6 = this.O.getResources().getString(R.string.txt_season) + " " + str3;
            strA2 = el3.a("https://cnth2.shabakaty.cc/", str5);
            StringBuilder sbA = um3.a(el3.a(str6, " "));
            sbA.append(this.O.getResources().getString(R.string.txt_episode));
            strA = el3.a(el3.a(sbA.toString(), " "), str4);
        } else {
            str = null;
            strC = null;
            strA = null;
            str2 = null;
            strA2 = null;
        }
        if ((j & 4) != 0) {
            st2.c(this.U, this.V, null);
        }
        if (j2 != 0) {
            nl6.r(this.O, strA);
            gm4.c(this.P, str);
            nl6.r(this.Q, strC);
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) this.R;
            String str7 = null;
            VideoModel videoModel2 = this.S;
            if (videoModel2 != null) {
                String str8 = videoModel2.imgMediumThumbObjUrl;
                if (str8 != null && str8.length() > 0) {
                    strA2 = str8;
                }
                str7 = videoModel2.imgThumbObjUrl;
            }
            oy1.c(simpleDraweeView, strA2, null, null, str7);
            if (ViewDataBinding.G >= 21) {
                ((SimpleDraweeView) this.R).setTransitionName(str2);
            }
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
