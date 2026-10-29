package com.shabakaty.downloader;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import com.cinemana.pro.R;
import com.facebook.drawee.view.SimpleDraweeView;
import com.shabakaty.cinemana.domain.models.local.Category;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import java.util.List;

/* JADX INFO: compiled from: ItemBaseVideoBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class e42 extends d42 implements lm0.a {
    public static final SparseIntArray a0;
    public final ConstraintLayout U;
    public final SimpleDraweeView V;
    public final TextView W;
    public final ProgressBar X;
    public final mm0 Y;
    public long Z;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        a0 = sparseIntArray;
        sparseIntArray.put(R.id.cardView, 10);
        sparseIntArray.put(R.id.linear_layout, 11);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public e42(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 12, null, a0);
        super(gl0Var, view, 0, (CardView) objArrS[10], (LinearLayout) objArrS[11], (TextView) objArrS[8], (TextView) objArrS[5], (SimpleDraweeView) objArrS[1], (TextView) objArrS[4], (TextView) objArrS[6], (TextView) objArrS[9]);
        this.Z = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArrS[0];
        this.U = constraintLayout;
        constraintLayout.setTag(null);
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) objArrS[2];
        this.V = simpleDraweeView;
        simpleDraweeView.setTag(null);
        TextView textView = (TextView) objArrS[3];
        this.W = textView;
        textView.setTag(null);
        ProgressBar progressBar = (ProgressBar) objArrS[7];
        this.X = progressBar;
        progressBar.setTag(null);
        this.M.setTag("text_color|secondary_text,text_size|subheading");
        this.N.setTag(null);
        this.O.setTag("VideoThumb");
        this.P.setTag(null);
        this.Q.setTag(null);
        this.R.setTag("text_color|secondary_text,text_size|subheading");
        view.setTag(R.id.dataBinding, this);
        this.Y = new lm0(this, 1);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        if (11 == i) {
            this.T = (VideoModel) obj;
            synchronized (this) {
                this.Z |= 1;
            }
            f(11);
            x();
        } else {
            if (3 != i) {
                return false;
            }
            this.S = (pk) obj;
            synchronized (this) {
                this.Z |= 2;
            }
            f(3);
            x();
        }
        return true;
    }

    @Override // com.shabakaty.downloader.lm0.a
    public final void d(int i, View view) {
        pk pkVar = this.S;
        VideoModel videoModel = this.T;
        if (pkVar != null) {
            pkVar.a(videoModel, view);
        }
    }

    /* JADX WARN: Code duplicated, block: B:32:0x0074  */
    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        long j2;
        boolean z;
        String strA;
        List<Category> list;
        String str;
        String str2;
        q25 q25Var;
        String str3;
        String str4;
        String str5;
        boolean zIsEmpty;
        int i;
        int i2;
        long j3;
        long j4;
        String str6;
        long j5;
        long j6;
        synchronized (this) {
            j = this.Z;
            this.Z = 0L;
        }
        VideoModel videoModel = this.T;
        long j7 = 5 & j;
        if (j7 != 0) {
            if (videoModel != null) {
                str = videoModel.stars;
                str2 = videoModel.nb;
                str3 = videoModel.arTitle;
                str4 = videoModel.enTitle;
                str5 = videoModel.imgMediumThumbObjUrl;
                str6 = videoModel.year;
                list = videoModel.categories;
                q25Var = videoModel.status;
            } else {
                str6 = null;
                list = null;
                str = null;
                str2 = null;
                q25Var = null;
                str3 = null;
                str4 = null;
                str5 = null;
            }
            strA = el3.a(str6, ", ");
            if (q25Var != null) {
                j6 = q25Var.x;
                j5 = 0;
            } else {
                j5 = 0;
                j6 = 0;
            }
            z = j6 == j5;
            if (j7 == 0) {
                j2 = 128;
            } else if (z) {
                j |= 256;
                j2 = 128;
            } else {
                j2 = 128;
                j |= 128;
            }
        } else {
            j2 = 128;
            z = false;
            strA = null;
            list = null;
            str = null;
            str2 = null;
            q25Var = null;
            str3 = null;
            str4 = null;
            str5 = null;
        }
        if ((j2 & j) == 0) {
            zIsEmpty = false;
        } else {
            String str7 = videoModel != null ? videoModel.duration : null;
            if (str7 != null) {
                zIsEmpty = str7.isEmpty();
            } else {
                zIsEmpty = false;
            }
        }
        long j8 = 5 & j;
        if (j8 != 0) {
            if (z) {
                zIsEmpty = true;
            }
            if (j8 != 0) {
                j = zIsEmpty ? j | 64 : j | 32;
            }
        } else {
            zIsEmpty = false;
        }
        boolean z2 = ((j & 32) == 0 || q25Var == null) ? false : q25Var.s;
        long j9 = 5 & j;
        if (j9 != 0) {
            if (zIsEmpty) {
                z2 = true;
            }
            if (j9 != 0) {
                if (z2) {
                    j3 = j | 16;
                    j4 = 1024;
                } else {
                    j3 = j | 8;
                    j4 = 512;
                }
                j = j3 | j4;
            }
            i2 = z2 ? 0 : 8;
            i = z2 ? 8 : 0;
        } else {
            i = 0;
            i2 = 0;
        }
        if ((5 & j) != 0) {
            nl6.w(this.U, videoModel);
            oy1.a(this.V, videoModel);
            gm4.f(this.W, videoModel);
            this.X.setVisibility(i);
            st2.j(this.X, videoModel);
            gm4.b(this.M, list, Boolean.TRUE);
            this.N.setVisibility(i2);
            nl6.r(this.N, str);
            oy1.c(this.O, str5, null, null, null);
            gm4.e(this.P, str4, str3);
            gm4.h(this.Q, videoModel);
            nl6.r(this.R, strA);
            if (ViewDataBinding.G >= 21) {
                this.O.setTransitionName(str2);
            }
        }
        if ((j & 4) != 0) {
            st2.b(this.U, Boolean.TRUE);
            st2.c(this.U, this.Y, null);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean o() {
        synchronized (this) {
            return this.Z != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void p() {
        synchronized (this) {
            this.Z = 4L;
        }
        x();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean u(int i, Object obj, int i2) {
        return false;
    }
}
