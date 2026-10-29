package com.shabakaty.downloader;

import android.content.Context;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.databinding.ViewDataBinding;
import com.cinemana.pro.R;
import com.facebook.drawee.view.SimpleDraweeView;
import com.shabakaty.cinemana.ca1.Native98;
import com.shabakaty.cinemana.data.db.downloads.CinemanaDownloadItem;
import com.shabakaty.cinemana.features.DownloadTitle127;
import com.shabakaty.cinemana.features.MkvStateStore;
import com.shabakaty.downloader.views.DownloadButton;

/* JADX INFO: compiled from: ItemDownloadBindingImpl.java */
/* JADX INFO: loaded from: classes6.dex */
public class o42 extends n42 implements i63.a, lm0.a {
    public static final SparseIntArray a0;
    public final View.OnClickListener U;
    public final View.OnClickListener V;
    public final View.OnClickListener W;
    public final mm0 X;
    public final View.OnClickListener Y;
    public long Z;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        a0 = sparseIntArray;
        sparseIntArray.put(R.id.guideline3, 7);
        sparseIntArray.put(R.id.imageView4, 8);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public o42(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 9, null, a0);
        super(gl0Var, view, 0, (DownloadButton) objArrS[6], (TextView) objArrS[5], (TextView) objArrS[3], (TextView) objArrS[4], (TextView) objArrS[2], (Guideline) objArrS[7], (SimpleDraweeView) objArrS[8], (SimpleDraweeView) objArrS[1]);
        this.Z = -1L;
        this.M.setTag(null);
        this.N.setTag(null);
        this.O.setTag(null);
        this.P.setTag(null);
        this.Q.setTag(null);
        ((ConstraintLayout) objArrS[0]).setTag(null);
        this.R.setTag("VideoThumb");
        view.setTag(R.id.dataBinding, this);
        this.U = new i63(this, 2);
        this.V = new i63(this, 5);
        this.W = new i63(this, 3);
        this.X = new lm0(this, 1);
        this.Y = new i63(this, 4);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        if (11 == i) {
            this.S = (CinemanaDownloadItem) obj;
            synchronized (this) {
                this.Z |= 1;
            }
            f(11);
            x();
        } else {
            if (3 != i) {
                return false;
            }
            this.T = (qw0) obj;
            synchronized (this) {
                this.Z |= 2;
            }
            f(3);
            x();
        }
        return true;
    }

    @Override // com.shabakaty.downloader.i63.a
    public final void b(int i, View view) {
        Context context = view.getContext();
        CinemanaDownloadItem cinemanaDownloadItem = this.S;
        if (MkvStateStore.isBusy(context, cinemanaDownloadItem)) {
            Toast.makeText(context, MkvStateStore.message(context, cinemanaDownloadItem), 0).show();
            return;
        }
        if (i == 2) {
            qw0 qw0Var = this.T;
            CinemanaDownloadItem cinemanaDownloadItem2 = this.S;
            if (qw0Var != null) {
                qw0Var.E(cinemanaDownloadItem2, (DownloadButton) view);
                return;
            }
            return;
        }
        if (i == 3) {
            qw0 qw0Var2 = this.T;
            CinemanaDownloadItem cinemanaDownloadItem3 = this.S;
            if (qw0Var2 != null) {
                qw0Var2.D0(cinemanaDownloadItem3, (DownloadButton) view, this.R);
                return;
            }
            return;
        }
        if (i == 4) {
            qw0 qw0Var3 = this.T;
            CinemanaDownloadItem cinemanaDownloadItem4 = this.S;
            if (qw0Var3 != null) {
                qw0Var3.e1(cinemanaDownloadItem4, (DownloadButton) view);
                return;
            }
            return;
        }
        if (i != 5) {
            return;
        }
        qw0 qw0Var4 = this.T;
        CinemanaDownloadItem cinemanaDownloadItem5 = this.S;
        if (qw0Var4 != null) {
            qw0Var4.l0(cinemanaDownloadItem5, (DownloadButton) view);
        }
    }

    @Override // com.shabakaty.downloader.lm0.a
    public final void d(int i, View view) {
        Context context = view.getContext();
        CinemanaDownloadItem cinemanaDownloadItem = this.S;
        if (MkvStateStore.isBusy(context, cinemanaDownloadItem)) {
            Toast.makeText(context, MkvStateStore.message(context, cinemanaDownloadItem), 0).show();
            return;
        }
        qw0 qw0Var = this.T;
        CinemanaDownloadItem cinemanaDownloadItem2 = this.S;
        if (qw0Var != null) {
            qw0Var.U0(cinemanaDownloadItem2);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        int i;
        String strA;
        int i2;
        String str;
        String str2;
        String str3;
        String str4;
        int i3;
        String str5;
        String strMessage;
        int i4;
        String str6;
        synchronized (this) {
            j = this.Z;
            this.Z = 0L;
        }
        CinemanaDownloadItem cinemanaDownloadItem = this.S;
        long j2 = j & 5;
        if (j2 != 0) {
            if (cinemanaDownloadItem != null) {
                DownloadTitle127.cleanItem(cinemanaDownloadItem);
                str = cinemanaDownloadItem.stars;
                str2 = cinemanaDownloadItem.title;
                str5 = cinemanaDownloadItem.imgThumbObjUrl;
                strMessage = cinemanaDownloadItem.a();
                str6 = cinemanaDownloadItem.kind;
                str3 = cinemanaDownloadItem.id;
                str4 = cinemanaDownloadItem.imgObjUrl;
                i4 = cinemanaDownloadItem.sizeMB;
            } else {
                i4 = 0;
                str = null;
                str2 = null;
                str3 = null;
                str4 = null;
                str5 = null;
                strMessage = null;
                str6 = null;
            }
            boolean zIsEmpty = str != null ? str.isEmpty() : false;
            if (j2 != 0) {
                j |= zIsEmpty ? 64L : 32L;
            }
            boolean zEquals = str6 != null ? str6.equals("1") : false;
            if ((j & 5) != 0) {
                j |= zEquals ? 16L : 8L;
            }
            String strValueOf = String.valueOf(i4);
            boolean z = i4 <= 0;
            if ((5 & j) != 0) {
                j |= z ? 256L : 128L;
            }
            i = zIsEmpty ? 8 : 0;
            i3 = zEquals ? 8 : 0;
            strA = el3.a(strValueOf, " MB");
            i2 = z ? 8 : 0;
        } else {
            i = 0;
            strA = null;
            i2 = 0;
            str = null;
            str2 = null;
            str3 = null;
            str4 = null;
            i3 = 0;
            str5 = null;
            strMessage = null;
        }
        CinemanaDownloadItem cinemanaDownloadItem2 = this.S;
        Context context = this.M.getContext();
        if (MkvStateStore.isBusy(context, cinemanaDownloadItem2)) {
            strMessage = MkvStateStore.message(context, this.S);
        }
        if ((j & 4) != 0) {
            DownloadButton downloadButton = this.M;
            nl6.q(downloadButton, downloadButton.getResources().getString(R.string.download_txt));
            st2.d(this.M, this.U);
            st2.e(this.M, this.W);
            st2.f(this.M, this.Y);
            st2.g(this.M, this.V);
            gm4.b(this.P, null, Boolean.TRUE);
            st2.c(this.R, this.X, null);
        }
        if ((j & 5) != 0) {
            this.M.setExternalId(str3);
            this.N.setVisibility(i);
            nl6.r(this.N, str);
            fm4.a(this.O, strMessage);
            this.O.setVisibility(i3);
            this.P.setVisibility(i2);
            nl6.r(this.P, strA);
            nl6.r(this.Q, q00.ca1CleanPlayerTitle130(str2));
            oy1.c(this.R, str4, null, null, str5);
            if (ViewDataBinding.G >= 21) {
                this.R.setTransitionName(str3);
            }
        }
        Native98.bound(this);
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
