package com.shabakaty.downloader;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.databinding.ViewDataBinding;
import com.cinemana.pro.R;
import com.facebook.drawee.view.SimpleDraweeView;
import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import com.shabakaty.cinemana.domain.models.local.home_page.VideosGroup;
import java.util.List;

/* JADX INFO: compiled from: ItemGroupBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class y42 extends k42 implements lm0.a {
    public static final SparseIntArray V;
    public final ConstraintLayout S;
    public final mm0 T;
    public long U;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        V = sparseIntArray;
        sparseIntArray.put(R.id.group_img_card, 3);
        sparseIntArray.put(R.id.guideline6, 4);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public y42(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 5, null, V);
        super(gl0Var, view, 0, (CardView) objArrS[3], (Guideline) objArrS[4], (SimpleDraweeView) objArrS[2], (TextView) objArrS[1]);
        this.U = -1L;
        ((SimpleDraweeView) this.P).setTag(null);
        this.N.setTag(null);
        ConstraintLayout constraintLayout = (ConstraintLayout) objArrS[0];
        this.S = constraintLayout;
        constraintLayout.setTag(null);
        view.setTag(R.id.dataBinding, this);
        this.T = new lm0(this, 1);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        if (11 == i) {
            this.O = (VideosGroup) obj;
            synchronized (this) {
                this.U |= 1;
            }
            f(11);
            x();
        } else {
            if (3 != i) {
                return false;
            }
            this.R = (z25) obj;
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
        z25 z25Var = (z25) this.R;
        VideosGroup videosGroup = (VideosGroup) this.O;
        if (z25Var != null) {
            z25Var.M0(videosGroup);
        }
    }

    /* JADX WARN: Code duplicated, block: B:25:0x004a  */
    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        String str;
        List<VideoModel> list;
        boolean zIsEmpty;
        String str2;
        synchronized (this) {
            j = this.U;
            this.U = 0L;
        }
        VideosGroup videosGroup = (VideosGroup) this.O;
        long j2 = j & 5;
        if (j2 != 0) {
            if (videosGroup != null) {
                list = videosGroup.videosList;
                str = videosGroup.title;
            } else {
                str = null;
                list = null;
            }
            zIsEmpty = list != null ? list.isEmpty() : false;
            if (j2 != 0) {
                j = zIsEmpty ? j | 16 : j | 8;
            }
        } else {
            str = null;
            list = null;
            zIsEmpty = false;
        }
        if ((8 & j) == 0) {
            str2 = null;
        } else {
            VideoModel videoModel = list != null ? list.get(0) : null;
            if (videoModel != null) {
                str2 = videoModel.imgMediumThumbObjUrl;
            } else {
                str2 = null;
            }
        }
        long j3 = 5 & j;
        if (j3 == 0) {
            str2 = null;
        } else if (zIsEmpty) {
            str2 = BuildConfig.FLAVOR;
        }
        if (j3 != 0) {
            oy1.c((SimpleDraweeView) this.P, str2, null, null, null);
            nl6.r(this.N, str);
            nl6.q(this.S, str);
        }
        if ((j & 4) != 0) {
            st2.c(this.S, this.T, null);
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
