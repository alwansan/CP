package com.shabakaty.downloader;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.databinding.ViewDataBinding;
import com.cinemana.pro.R;
import com.facebook.drawee.view.SimpleDraweeView;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import com.shabakaty.cinemana.local.AccountUi;
import com.shabakaty.downloader.views.DownloadButton;

/* JADX INFO: compiled from: ItemVideoInfoEpisodeBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class x52 extends w52 implements i63.a, lm0.a {
    public static final SparseIntArray h0;
    public final ConstraintLayout V;
    public final ProgressBar W;
    public final SimpleDraweeView X;
    public final SimpleDraweeView Y;
    public final View.OnClickListener Z;
    public final mm0 a0;
    public final mm0 b0;
    public final View.OnClickListener c0;
    public final mm0 d0;
    public final View.OnClickListener e0;
    public final View.OnClickListener f0;
    public long g0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        h0 = sparseIntArray;
        sparseIntArray.put(R.id.guideline2, 10);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public x52(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 11, null, h0);
        super(gl0Var, view, 0, (DownloadButton) objArrS[9], (Guideline) objArrS[10], (TextView) objArrS[8], (TextView) objArrS[6], (SimpleDraweeView) objArrS[3], (CardView) objArrS[2], (TextView) objArrS[7]);
        this.g0 = -1L;
        this.M.setTag(null);
        ConstraintLayout constraintLayout = (ConstraintLayout) objArrS[0];
        this.V = constraintLayout;
        constraintLayout.setTag(null);
        ProgressBar progressBar = (ProgressBar) objArrS[1];
        this.W = progressBar;
        progressBar.setTag(null);
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) objArrS[4];
        this.X = simpleDraweeView;
        simpleDraweeView.setTag(null);
        SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) objArrS[5];
        this.Y = simpleDraweeView2;
        simpleDraweeView2.setTag(null);
        this.N.setTag(null);
        this.O.setTag(null);
        this.P.setTag(null);
        this.Q.setTag(null);
        this.R.setTag(null);
        view.setTag(R.id.dataBinding, this);
        this.Z = new i63(this, 7);
        this.a0 = new lm0(this, 3);
        this.b0 = new lm0(this, 1);
        this.c0 = new i63(this, 4);
        this.d0 = new lm0(this, 2);
        this.e0 = new i63(this, 5);
        this.f0 = new i63(this, 6);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        if (11 == i) {
            this.U = (VideoModel) obj;
            synchronized (this) {
                this.g0 |= 1;
            }
            f(11);
            x();
        } else if (3 == i) {
            this.T = (c41) obj;
            synchronized (this) {
                this.g0 |= 2;
            }
            f(3);
            x();
        } else {
            if (22 != i) {
                return false;
            }
            G((String) obj);
        }
        return true;
    }

    @Override // com.shabakaty.downloader.w52
    public void G(String str) {
        this.S = str;
        synchronized (this) {
            this.g0 |= 4;
        }
        f(22);
        x();
    }

    @Override // com.shabakaty.downloader.i63.a
    public final void b(int i, View view) {
        if (i == 4) {
            c41 c41Var = this.T;
            VideoModel videoModel = this.U;
            if (c41Var != null) {
                c41Var.O0(videoModel, (DownloadButton) view);
                return;
            }
            return;
        }
        if (i == 5) {
            c41 c41Var2 = this.T;
            VideoModel videoModel2 = this.U;
            if (c41Var2 != null) {
                c41Var2.n1(videoModel2, (DownloadButton) view);
                return;
            }
            return;
        }
        if (i == 6) {
            c41 c41Var3 = this.T;
            VideoModel videoModel3 = this.U;
            if (c41Var3 != null) {
                c41Var3.K(videoModel3, (DownloadButton) view);
                return;
            }
            return;
        }
        if (i != 7) {
            return;
        }
        c41 c41Var4 = this.T;
        VideoModel videoModel4 = this.U;
        if (c41Var4 != null) {
            c41Var4.Q(videoModel4, (DownloadButton) view);
        }
    }

    @Override // com.shabakaty.downloader.lm0.a
    public final void d(int i, View view) {
        if (i == 1) {
            c41 c41Var = this.T;
            VideoModel videoModel = this.U;
            if (c41Var != null) {
                c41Var.a(videoModel, this.P);
                return;
            }
            return;
        }
        if (i == 2) {
            c41 c41Var2 = this.T;
            VideoModel videoModel2 = this.U;
            if (c41Var2 != null) {
                c41Var2.y0(videoModel2);
                return;
            }
            return;
        }
        if (i != 3) {
            return;
        }
        c41 c41Var3 = this.T;
        VideoModel videoModel3 = this.U;
        if (c41Var3 != null) {
            c41Var3.y0(videoModel3);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        int i;
        boolean z;
        int i2;
        String str;
        int i3;
        boolean z2;
        String str2;
        String str3;
        String str4;
        long j2;
        String str5;
        int i4;
        long j3;
        String strC;
        q25 q25Var;
        long j4;
        long j5;
        long j6;
        synchronized (this) {
            j = this.g0;
            this.g0 = 0L;
        }
        VideoModel videoModel = this.U;
        String str6 = this.S;
        if ((j & 13) != 0) {
            long j7 = j & 9;
            if (j7 != 0) {
                if (videoModel != null) {
                    str = videoModel.episodeDesc;
                    q25Var = videoModel.status;
                    str4 = videoModel.duration;
                    strC = videoModel.c();
                    str3 = videoModel.imgMediumThumbObjUrl;
                } else {
                    str = null;
                    q25Var = null;
                    str3 = null;
                    str4 = null;
                    strC = null;
                }
                if (q25Var != null) {
                    z = q25Var.s;
                    j4 = q25Var.x;
                } else {
                    j4 = 0;
                    z = false;
                }
                if (j7 != 0) {
                    if (z) {
                        j5 = j | 512;
                        j6 = 2048;
                    } else {
                        j5 = j | 256;
                        j6 = 1024;
                    }
                    j = j5 | j6;
                }
                i2 = z ? 8 : 0;
                i3 = z ? 0 : 8;
                z2 = j4 == 0;
                if ((j & 9) != 0) {
                    j = z2 ? j | 8192 : j | 4096;
                }
            } else {
                z = false;
                i2 = 0;
                str = null;
                i3 = 0;
                z2 = false;
                str3 = null;
                str4 = null;
                strC = null;
            }
            str2 = videoModel != null ? videoModel.nb : null;
            boolean zEquals = str2 != null ? str2.equals(str6) : false;
            if ((j & 13) != 0) {
                j |= zEquals ? 32L : 16L;
            }
            i = zEquals ? 0 : 8;
            str5 = strC;
            j2 = 4096;
        } else {
            i = 0;
            z = false;
            i2 = 0;
            str = null;
            i3 = 0;
            z2 = false;
            str2 = null;
            str3 = null;
            str4 = null;
            j2 = 4096;
            str5 = null;
        }
        boolean zIsEmpty = ((j & j2) == 0 || str4 == null) ? false : str4.isEmpty();
        long j8 = j & 9;
        if (j8 != 0) {
            if (z2) {
                zIsEmpty = true;
            }
            if (j8 != 0) {
                j |= zIsEmpty ? 128L : 64L;
            }
        } else {
            zIsEmpty = false;
        }
        long j9 = j & 9;
        if (j9 != 0) {
            boolean z3 = zIsEmpty ? true : z;
            if (j9 != 0) {
                j |= z3 ? 32768L : 16384L;
            }
            i4 = z3 ? 8 : 0;
        } else {
            i4 = 0;
        }
        if ((j & 8) != 0) {
            DownloadButton downloadButton = this.M;
            nl6.q(downloadButton, downloadButton.getResources().getString(R.string.download_txt));
            st2.d(this.M, this.c0);
            st2.e(this.M, this.e0);
            st2.f(this.M, this.f0);
            st2.g(this.M, this.Z);
            st2.c(this.V, this.b0, null);
            ProgressBar progressBar = this.W;
            nl6.q(progressBar, progressBar.getResources().getString(R.string.watching_progress_txt));
            SimpleDraweeView simpleDraweeView = this.X;
            nl6.q(simpleDraweeView, simpleDraweeView.getResources().getString(R.string.start_playback_txt));
            st2.c(this.X, this.d0, null);
            SimpleDraweeView simpleDraweeView2 = this.Y;
            nl6.q(simpleDraweeView2, simpleDraweeView2.getResources().getString(R.string.watched_txt));
            st2.c(this.Y, this.a0, null);
            j3 = 9;
        } else {
            j3 = 9;
        }
        if ((j3 & j) != 0) {
            this.M.setExternalId(str2);
            this.W.setVisibility(i4);
            st2.j(this.W, videoModel);
            this.X.setVisibility(i2);
            this.Y.setVisibility(i3);
            gm4.d(this.N, str4);
            nl6.r(this.O, str5);
            oy1.c(this.P, str3, null, null, null);
            nl6.r(this.R, str);
        }
        if ((j & 13) != 0) {
            this.Q.setVisibility(i);
        }
        AccountUi.watched(this);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean o() {
        synchronized (this) {
            return this.g0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void p() {
        synchronized (this) {
            this.g0 = 8L;
        }
        x();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean u(int i, Object obj, int i2) {
        return false;
    }
}
