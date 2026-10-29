package com.shabakaty.downloader;

import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import com.cinemana.pro.R;
import com.facebook.drawee.view.SimpleDraweeView;
import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.cinemana.ca1.ContinueActions262;
import com.shabakaty.cinemana.domain.models.local.Category;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import java.util.List;

/* JADX INFO: compiled from: ItemBaseVideoWideBindingImpl.java */
/* JADX INFO: loaded from: classes6.dex */
public class i42 extends h42 implements lm0.a {
    public final ConstraintLayout T;
    public final mm0 U;
    public long V;

    /* JADX WARN: Illegal instructions before constructor call */
    public i42(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 6, null, null);
        super(gl0Var, view, 0, (TextView) objArrS[1], (SimpleDraweeView) objArrS[5], (TextView) objArrS[3], (TextView) objArrS[4], (TextView) objArrS[2]);
        this.V = -1L;
        this.M.setTag(null);
        ConstraintLayout constraintLayout = (ConstraintLayout) objArrS[0];
        this.T = constraintLayout;
        constraintLayout.setTag(null);
        this.N.setTag("VideoThumb");
        this.O.setTag("text_color|secondary_text,text_size|subheading");
        ((TextView) this.P).setTag(null);
        ((TextView) this.Q).setTag("text_color|secondary_text,text_size|subheading");
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
            this.R = (pk) obj;
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
        pk pkVar = (pk) this.R;
        VideoModel videoModel = this.S;
        if (pkVar != null) {
            pkVar.a(videoModel, view);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        String string;
        String strA;
        String str;
        String strC;
        List<Category> list;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        synchronized (this) {
            j = this.V;
            this.V = 0L;
        }
        VideoModel videoModel = this.S;
        long j2 = 5;
        long j3 = j & 5;
        if (j3 != 0) {
            if (videoModel != null) {
                str = videoModel.stars;
                strC = videoModel.c();
                str4 = videoModel.nb;
                str5 = videoModel.imgMediumThumbObjUrl;
                str6 = videoModel.year;
                list = videoModel.categories;
            } else {
                str = null;
                strC = null;
                list = null;
                str4 = null;
                str5 = null;
                str6 = null;
            }
            string = ((TextView) this.P).getResources().getString(R.string.video_rating_description_txt, str);
            boolean zIsEmpty = list != null ? list.isEmpty() : false;
            if (j3 != 0) {
                j |= zIsEmpty ? 16L : 8L;
            }
            strA = el3.a(str6, zIsEmpty ? BuildConfig.FLAVOR : ", ");
            str2 = str4;
            str3 = str5;
            j2 = 5;
        } else {
            string = null;
            strA = null;
            str = null;
            strC = null;
            list = null;
            str2 = null;
            str3 = null;
        }
        if ((j2 & j) != 0) {
            nl6.r(this.M, strC);
            nl6.w(this.T, videoModel);
            oy1.c(this.N, str3, null, null, null);
            gm4.b(this.O, list, null);
            nl6.q((TextView) this.P, string);
            nl6.r((TextView) this.P, str);
            nl6.r((TextView) this.Q, strA);
            if (ViewDataBinding.G >= 21) {
                this.N.setTransitionName(str2);
            }
        }
        if ((j & 4) != 0) {
            this.M.setSelected(true);
            st2.c(this.T, this.U, null);
        }
        ContinueActions262.bindWide(this);
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
