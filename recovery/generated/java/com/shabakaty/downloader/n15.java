package com.shabakaty.downloader;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import com.cinemana.pro.R;
import com.connectsdk.service.airplay.PListParser;
import com.google.android.material.button.MaterialButton;
import com.shabakaty.cinemana.domain.models.local.Category;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import com.shabakaty.cinemana.domain.models.local.user.LogoutResponse;
import com.shabakaty.downloader.views.DownloadButton;
import java.util.List;

/* JADX INFO: compiled from: VideoInfoTopActionsLayoutBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class n15 extends m15 implements i63.a, lm0.a {
    public final View.OnClickListener c0;
    public final mm0 d0;
    public final mm0 e0;
    public final mm0 f0;
    public final View.OnClickListener g0;
    public final View.OnClickListener h0;
    public final View.OnClickListener i0;
    public long j0;

    /* JADX WARN: Illegal instructions before constructor call */
    public n15(gl0 gl0Var, View[] viewArr) {
        Object[] objArrT = ViewDataBinding.t(gl0Var, viewArr, 14, null, null);
        super(gl0Var, viewArr[0], 2, (TextView) objArrT[8], (TextView) objArrT[11], (TextView) objArrT[5], (TextView) objArrT[1], (TextView) objArrT[4], (TextView) objArrT[6], (DownloadButton) objArrT[12], (TextView) objArrT[13], (TextView) objArrT[7], (TextView) objArrT[2], (MaterialButton) objArrT[10], (ConstraintLayout) objArrT[9], (TextView) objArrT[0], (TextView) objArrT[3]);
        this.j0 = -1L;
        this.M.setTag(null);
        this.N.setTag(null);
        this.O.setTag(null);
        this.P.setTag(null);
        this.Q.setTag(null);
        this.R.setTag(null);
        this.S.setTag(null);
        this.T.setTag(null);
        this.U.setTag(null);
        this.V.setTag(null);
        this.W.setTag(null);
        this.X.setTag(null);
        this.Y.setTag(null);
        this.Z.setTag(null);
        C(viewArr);
        this.c0 = new i63(this, 7);
        this.d0 = new lm0(this, 2);
        this.e0 = new lm0(this, 3);
        this.f0 = new lm0(this, 1);
        this.g0 = new i63(this, 4);
        this.h0 = new i63(this, 6);
        this.i0 = new i63(this, 5);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        if (16 == i) {
            G((j15) obj);
        } else {
            if (38 != i) {
                return false;
            }
            H((u15) obj);
        }
        return true;
    }

    @Override // com.shabakaty.downloader.m15
    public void G(j15 j15Var) {
        this.b0 = j15Var;
        synchronized (this) {
            this.j0 |= 4;
        }
        f(16);
        x();
    }

    @Override // com.shabakaty.downloader.m15
    public void H(u15 u15Var) {
        this.a0 = u15Var;
        synchronized (this) {
            this.j0 |= 8;
        }
        f(38);
        x();
    }

    @Override // com.shabakaty.downloader.i63.a
    public final void b(int i, View view) {
        if (i == 4) {
            j15 j15Var = this.b0;
            if (j15Var != null) {
                j15Var.V();
                return;
            }
            return;
        }
        if (i == 5) {
            j15 j15Var2 = this.b0;
            if (j15Var2 != null) {
                j15Var2.i();
                return;
            }
            return;
        }
        if (i == 6) {
            j15 j15Var3 = this.b0;
            if (j15Var3 != null) {
                j15Var3.u((DownloadButton) view);
                return;
            }
            return;
        }
        if (i != 7) {
            return;
        }
        j15 j15Var4 = this.b0;
        if (j15Var4 != null) {
            j15Var4.B0();
        }
    }

    @Override // com.shabakaty.downloader.lm0.a
    public final void d(int i, View view) {
        f74<tj<LogoutResponse>> f74VarB;
        if (i == 1) {
            j15 j15Var = this.b0;
            if (j15Var != null) {
                j15Var.t();
                return;
            }
            return;
        }
        if (i == 2) {
            j15 j15Var2 = this.b0;
            if (j15Var2 != null) {
                j15Var2.C0();
                return;
            }
            return;
        }
        if (i != 3) {
            return;
        }
        u15 u15Var = this.a0;
        if (u15Var != null) {
            if (!u15Var.j.isLoggedIn()) {
                ((j15) u15Var.f()).q(R.string.login_message);
                return;
            }
            lx4.c cVar = (lx4.c) u15Var.u().c.getValue();
            if (cVar.a()) {
                cVar.c(PListParser.TAG_FALSE);
                f74VarB = cVar.b();
            } else {
                cVar.c("1");
                f74VarB = cVar.b();
            }
            f74<tj<LogoutResponse>> f74Var = f74VarB;
            if (f74Var != null) {
                xk.d(u15Var, f74Var, new y15(u15Var), null, 2, null);
            }
            u15Var.l.b(u15Var.B, 2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:128:0x0278 A[PHI: r2
      0x0278: PHI (r2v2 long) = (r2v1 long), (r2v5 long) binds: [B:117:0x0262, B:125:0x0272] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:77:0x0191  */
    /* JADX WARN: Code duplicated, block: B:78:0x0196  */
    /* JADX WARN: Code duplicated, block: B:81:0x01a1  */
    /* JADX WARN: Code duplicated, block: B:82:0x01a8  */
    /* JADX WARN: Code duplicated, block: B:84:0x01ab  */
    /* JADX WARN: Code duplicated, block: B:85:0x01ae  */
    /* JADX WARN: Code duplicated, block: B:87:0x01b1  */
    /* JADX WARN: Code duplicated, block: B:88:0x01b8  */
    /* JADX WARN: Code duplicated, block: B:91:0x01c3 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:92:0x01c5  */
    /* JADX WARN: Code duplicated, block: B:93:0x01c9 A[PHI: r2
      0x01c9: PHI (r2v8 long) = (r2v7 long), (r2v11 long) binds: [B:90:0x01c1, B:92:0x01c5] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:94:0x01cc  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        long j2;
        long j3;
        boolean z;
        String str;
        List<Category> list;
        boolean z2;
        VideoModel videoModel;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        int i;
        String str7;
        tj tjVar;
        String str8;
        mj<VideoModel> mjVar;
        String str9;
        String str10;
        int i2;
        boolean zEquals;
        VideoModel videoModel2;
        int i3;
        Drawable drawableH;
        qv4 qv4Var;
        String strA;
        boolean zEquals2;
        int i4;
        String string;
        String str11;
        int i5;
        String string2;
        String str12;
        String str13;
        long j4;
        String str14;
        String str15;
        tj tjVar2;
        String str16;
        mj<VideoModel> mjVar2;
        VideoModel videoModel3;
        List<Category> list2;
        String str17;
        mj<List<VideoModel>> mjVar3;
        tj tjVar3;
        tj.a aVar;
        boolean zEquals3;
        String str18;
        q25 q25Var;
        String str19;
        String str20;
        String str21;
        synchronized (this) {
            j = this.j0;
            j2 = 0;
            this.j0 = 0L;
        }
        u15 u15Var = this.a0;
        if ((27 & j) != 0) {
            long j5 = j & 25;
            if (j5 != 0) {
                mjVar2 = u15Var != null ? u15Var.t : null;
                E(0, mjVar2);
                tj tjVar4 = mjVar2 != null ? (tj) mjVar2.getValue() : null;
                videoModel3 = tjVar4 != null ? (VideoModel) tjVar4.b : null;
                if (videoModel3 != null) {
                    str16 = videoModel3.duration;
                    str19 = videoModel3.videoViewsNumber;
                    str11 = videoModel3.year;
                    str20 = videoModel3.season;
                    q25Var = videoModel3.status;
                    str21 = videoModel3.episodeDesc;
                    list2 = videoModel3.categories;
                    str12 = videoModel3.kind;
                    str18 = videoModel3.stars;
                } else {
                    str18 = null;
                    q25Var = null;
                    str16 = null;
                    str19 = null;
                    str11 = null;
                    str20 = null;
                    str12 = null;
                    str21 = null;
                    list2 = null;
                }
                boolean zIsEmpty = str16 != null ? str16.isEmpty() : false;
                if (j5 != 0) {
                    j |= zIsEmpty ? 256L : 128L;
                }
                tjVar2 = tjVar4;
                String string3 = this.Y.getResources().getString(R.string.video_views_description_txt, str19);
                StringBuilder sb = new StringBuilder();
                str15 = string3;
                sb.append(this.Z.getResources().getString(R.string.txt_releaseYear));
                sb.append(" :");
                sb.append(str11);
                String string4 = sb.toString();
                StringBuilder sb2 = new StringBuilder();
                str14 = string4;
                sb2.append(this.M.getResources().getString(R.string.txt_season));
                sb2.append("  ");
                sb2.append(str20);
                String string5 = sb2.toString();
                string = this.V.getResources().getString(R.string.video_rating_description_txt, str18);
                String str22 = q25Var != null ? q25Var.w : null;
                boolean zEquals4 = str12 != null ? str12.equals("2") : false;
                if ((j & 25) != 0) {
                    j |= zEquals4 ? 16384L : 8192L;
                }
                i5 = zIsEmpty ? 8 : 0;
                String str23 = str18;
                String strA2 = el3.a(string5, "  ");
                i4 = zEquals4 ? 0 : 8;
                zEquals2 = str22 != null ? str22.equals("1") : false;
                if ((j & 25) != 0) {
                    j |= zEquals2 ? 64L : 32L;
                }
                strA = el3.a(strA2, str21);
                string2 = this.N.getResources().getString(zEquals2 ? R.string.remove_from_watch_later_txt : R.string.watch_later_txt_descriptive);
                j4 = 24;
                str13 = str23;
            } else {
                strA = null;
                zEquals2 = false;
                i4 = 0;
                string = null;
                str11 = null;
                i5 = 0;
                string2 = null;
                str12 = null;
                str13 = null;
                j4 = 24;
                str14 = null;
                str15 = null;
                tjVar2 = null;
                str16 = null;
                mjVar2 = null;
                videoModel3 = null;
                list2 = null;
            }
            if ((j & j4) != 0) {
                str17 = strA;
                VideoModel videoModelV = u15Var != null ? u15Var.v() : null;
                str9 = videoModelV != null ? videoModelV.nb : null;
                if (u15Var != null) {
                    mjVar3 = u15Var.v;
                } else {
                    mjVar3 = null;
                }
                int i6 = i4;
                E(1, mjVar3);
                if (mjVar3 != null) {
                    tjVar3 = (tj) mjVar3.getValue();
                } else {
                    tjVar3 = null;
                }
                if (tjVar3 != null) {
                    aVar = tjVar3.a;
                } else {
                    aVar = null;
                }
                if (aVar != null) {
                    zEquals3 = aVar.equals(tj.a.SUCCESS);
                } else {
                    zEquals3 = false;
                }
                if ((j & 27) == 0) {
                    j3 = 512;
                } else if (zEquals3) {
                    j |= 1024;
                    j3 = 512;
                } else {
                    j3 = 512;
                    j |= 512;
                }
                str6 = str14;
                str7 = str11;
                str8 = string;
                str10 = str16;
                z = zEquals3;
                j2 = 0;
                String str24 = str17;
                videoModel = videoModel3;
                str4 = str13;
                i = i5;
                str3 = string2;
                str5 = str15;
                tjVar = tjVar2;
                mjVar = mjVar2;
                z2 = zEquals2;
                list = list2;
                i2 = i6;
                str2 = str12;
                str = str24;
            } else {
                str17 = strA;
            }
            if (u15Var != null) {
                mjVar3 = u15Var.v;
            } else {
                mjVar3 = null;
            }
            int i7 = i4;
            E(1, mjVar3);
            if (mjVar3 != null) {
                tjVar3 = (tj) mjVar3.getValue();
            } else {
                tjVar3 = null;
            }
            if (tjVar3 != null) {
                aVar = tjVar3.a;
            } else {
                aVar = null;
            }
            if (aVar != null) {
                zEquals3 = aVar.equals(tj.a.SUCCESS);
            } else {
                zEquals3 = false;
            }
            if ((j & 27) == 0) {
                j3 = 512;
            } else if (zEquals3) {
                j |= 1024;
                j3 = 512;
            } else {
                j3 = 512;
                j |= 512;
            }
            str6 = str14;
            str7 = str11;
            str8 = string;
            str10 = str16;
            z = zEquals3;
            j2 = 0;
            String str25 = str17;
            videoModel = videoModel3;
            str4 = str13;
            i = i5;
            str3 = string2;
            str5 = str15;
            tjVar = tjVar2;
            mjVar = mjVar2;
            z2 = zEquals2;
            list = list2;
            i2 = i7;
            str2 = str12;
            str = str25;
        } else {
            j3 = 512;
            z = false;
            str = null;
            list = null;
            z2 = false;
            videoModel = null;
            str2 = null;
            str3 = null;
            str4 = null;
            str5 = null;
            str6 = null;
            i = 0;
            str7 = null;
            tjVar = null;
            str8 = null;
            mjVar = null;
            str9 = null;
            str10 = null;
            i2 = 0;
        }
        if ((j & j3) == j2) {
            zEquals = false;
            videoModel2 = videoModel;
        } else {
            mj<VideoModel> mjVar4 = u15Var != null ? u15Var.t : mjVar;
            E(0, mjVar4);
            if (mjVar4 != null) {
                tjVar = (tj) mjVar4.getValue();
            }
            tj tjVar5 = tjVar;
            if (tjVar5 != null) {
                videoModel = (VideoModel) tjVar5.b;
            }
            videoModel2 = videoModel;
            String str26 = videoModel2 != null ? videoModel2.kind : str2;
            if (str26 != null) {
                zEquals = str26.equals("1");
            } else {
                videoModel = videoModel2;
                zEquals = false;
                videoModel2 = videoModel;
            }
        }
        long j6 = j & 27;
        if (j6 == 0) {
            i3 = 0;
        } else {
            if (z) {
                zEquals = true;
            }
            if (j6 != 0) {
                j |= zEquals ? 4096L : 2048L;
            }
            if (zEquals) {
                i3 = 0;
            } else {
                i3 = 8;
            }
        }
        if ((j & 25) != 0) {
            this.M.setVisibility(i2);
            nl6.r(this.M, str);
            nl6.q(this.N, str3);
            TextView textView = this.N;
            Boolean boolValueOf = Boolean.valueOf(z2);
            j32.e(textView, "<this>");
            if (boolValueOf == null) {
                qv4Var = null;
                i3 = i3;
            } else {
                if (boolValueOf.booleanValue()) {
                    Drawable drawableD = s45.d(textView);
                    Drawable.ConstantState constantState = drawableD == null ? null : drawableD.getConstantState();
                    Context context = textView.getContext();
                    j32.d(context, "context");
                    Drawable drawableH2 = wt2.h(context, R.drawable.ic_check_mark_red);
                    if (!j32.a(constantState, drawableH2 == null ? null : drawableH2.getConstantState())) {
                        s45.f(textView, 0.7f, 1.0f, 150.0f);
                    }
                    Context context2 = textView.getContext();
                    j32.d(context2, "context");
                    drawableH = wt2.h(context2, R.drawable.ic_check_mark_red);
                } else {
                    Context context3 = textView.getContext();
                    j32.d(context3, "context");
                    drawableH = wt2.h(context3, R.drawable.ic_add);
                }
                j32.e(textView, "<this>");
                s45.i(textView, null, drawableH, null, null, 13);
                qv4Var = qv4.a;
            }
            if (qv4Var == null) {
                textView.setVisibility(8);
            }
            gm4.b(this.O, list, null);
            this.U.setVisibility(i);
            gm4.d(this.U, str10);
            nl6.q(this.V, str8);
            nl6.r(this.V, str4);
            nl6.q(this.Y, str5);
            gm4.h(this.Y, videoModel2);
            nl6.q(this.Z, str6);
            nl6.r(this.Z, str7);
        } else {
            i3 = i3;
        }
        if ((16 & j) != 0) {
            TextView textView2 = this.N;
            d3.a(textView2, R.string.watch_later_txt, textView2);
            st2.c(this.N, this.e0, null);
            DownloadButton downloadButton = this.S;
            nl6.q(downloadButton, downloadButton.getResources().getString(R.string.download_txt));
            st2.d(this.S, this.g0);
            st2.e(this.S, this.i0);
            st2.f(this.S, this.h0);
            st2.g(this.S, this.c0);
            TextView textView3 = this.T;
            d3.a(textView3, R.string.download_txt, textView3);
            st2.c(this.V, this.f0, null);
            MaterialButton materialButton = this.W;
            nl6.q(materialButton, materialButton.getResources().getString(R.string.watch_now));
            MaterialButton materialButton2 = this.W;
            e3.a(materialButton2, R.string.watch_now, materialButton2);
            st2.c(this.W, this.d0, null);
        }
        if ((24 & j) != 0) {
            this.S.setExternalId(str9);
        }
        if ((j & 27) != 0) {
            this.X.setVisibility(i3);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean o() {
        synchronized (this) {
            return this.j0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void p() {
        synchronized (this) {
            this.j0 = 16L;
        }
        x();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean u(int i, Object obj, int i2) {
        if (i == 0) {
            if (i2 != 0) {
                return false;
            }
            synchronized (this) {
                this.j0 |= 1;
            }
            return true;
        }
        if (i != 1) {
            return false;
        }
        if (i2 != 0) {
            return false;
        }
        synchronized (this) {
            this.j0 |= 2;
        }
        return true;
    }
}
