package com.shabakaty.downloader;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.widget.NestedScrollView;
import androidx.databinding.ViewDataBinding;
import androidx.lifecycle.LiveData;
import com.cinemana.pro.R;
import com.facebook.drawee.view.SimpleDraweeView;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import com.shabakaty.cinemana.domain.models.local.user.LogoutResponse;
import com.shabakaty.cinemana.utils.ExpandableTextView;
import com.shabakaty.cinemana.utils.StatusView;
import java.util.List;

/* JADX INFO: compiled from: FragmentVideoInfoBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class kl1 extends jl1 implements lm0.a {
    public static final ViewDataBinding.e t0;
    public static final SparseIntArray u0;
    public final StatusView j0;
    public final AppCompatImageView k0;
    public final mm0 l0;
    public final mm0 m0;
    public final mm0 n0;
    public final mm0 o0;
    public final mm0 p0;
    public final mm0 q0;
    public final mm0 r0;
    public long s0;

    static {
        ViewDataBinding.e eVar = new ViewDataBinding.e(25);
        t0 = eVar;
        eVar.a(3, new String[]{"video_info_top_actions_layout", "video_info_seasons_layout", "video_info_cast_and_crew_layout", "videos_layout"}, new int[]{15, 16, 17, 18}, new int[]{R.layout.video_info_top_actions_layout, R.layout.video_info_seasons_layout, R.layout.video_info_cast_and_crew_layout, R.layout.videos_layout});
        SparseIntArray sparseIntArray = new SparseIntArray();
        u0 = sparseIntArray;
        sparseIntArray.put(R.id.video_info_appbar, 19);
        sparseIntArray.put(R.id.video_info_collapsing_toolbar, 20);
        sparseIntArray.put(R.id.video_info_poster_fade_overlay, 21);
        sparseIntArray.put(R.id.video_info_toolbar, 22);
        sparseIntArray.put(R.id.root_scroll_view, 23);
        sparseIntArray.put(R.id.likes_dislikes, 24);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public kl1(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 25, t0, u0);
        super(gl0Var, view, 10, (SimpleDraweeView) objArrS[6], (LinearLayout) objArrS[24], (ConstraintLayout) objArrS[3], (NestedScrollView) objArrS[23], (FloatingActionButton) objArrS[13], (AppBarLayout) objArrS[19], (s05) objArrS[17], (CollapsingToolbarLayout) objArrS[20], (ExpandableTextView) objArrS[7], (TextView) objArrS[9], (TextView) objArrS[11], (TextView) objArrS[8], (TextView) objArrS[5], (SimpleDraweeView) objArrS[1], (AppCompatImageView) objArrS[21], (a35) objArrS[18], (CoordinatorLayout) objArrS[0], (MaterialButton) objArrS[12], (TextView) objArrS[10], (Toolbar) objArrS[22], (m15) objArrS[15], (TextView) objArrS[4], (k15) objArrS[16]);
        this.s0 = -1L;
        this.M.setTag(null);
        StatusView statusView = (StatusView) objArrS[14];
        this.j0 = statusView;
        statusView.setTag(null);
        AppCompatImageView appCompatImageView = (AppCompatImageView) objArrS[2];
        this.k0 = appCompatImageView;
        appCompatImageView.setTag(null);
        this.N.setTag(null);
        this.P.setTag(null);
        s05 s05Var = this.R;
        if (s05Var != null) {
            s05Var.B = this;
        }
        this.S.setTag(null);
        this.T.setTag(null);
        this.U.setTag(null);
        this.V.setTag(null);
        this.W.setTag(null);
        this.X.setTag(null);
        a35 a35Var = this.Z;
        if (a35Var != null) {
            a35Var.B = this;
        }
        this.a0.setTag(null);
        this.b0.setTag(null);
        this.c0.setTag(null);
        m15 m15Var = this.e0;
        if (m15Var != null) {
            m15Var.B = this;
        }
        this.f0.setTag(null);
        k15 k15Var = this.g0;
        if (k15Var != null) {
            k15Var.B = this;
        }
        view.setTag(R.id.dataBinding, this);
        this.l0 = new lm0(this, 4);
        this.m0 = new lm0(this, 7);
        this.n0 = new lm0(this, 2);
        this.o0 = new lm0(this, 5);
        this.p0 = new lm0(this, 3);
        this.q0 = new lm0(this, 6);
        this.r0 = new lm0(this, 1);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void B(rh2 rh2Var) {
        super.B(rh2Var);
        this.e0.B(rh2Var);
        this.g0.B(rh2Var);
        this.R.B(rh2Var);
        this.Z.B(rh2Var);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        if (16 == i) {
            this.i0 = (j15) obj;
            synchronized (this) {
                this.s0 |= 1024;
            }
            f(16);
            x();
        } else {
            if (38 != i) {
                return false;
            }
            this.h0 = (u15) obj;
            synchronized (this) {
                this.s0 |= 2048;
            }
            f(38);
            x();
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.shabakaty.downloader.lm0.a
    public final void d(int i, View view) {
        f74<tj<LogoutResponse>> f74VarB;
        f74<tj<LogoutResponse>> f74VarF;
        VideoModel videoModel;
        VideoModel videoModel2;
        f74<tj<LogoutResponse>> f74VarF2;
        VideoModel videoModel3;
        VideoModel videoModel4;
        q25 q25Var = null;
        switch (i) {
            case 1:
                u15 u15Var = this.h0;
                if (u15Var != null) {
                    if (!u15Var.j.isLoggedIn()) {
                        ((j15) u15Var.f()).q(R.string.login_message);
                    } else {
                        lx4.a aVar = (lx4.a) u15Var.u().d.getValue();
                        if (aVar.a()) {
                            aVar.c(false);
                            f74VarB = aVar.b();
                        } else {
                            aVar.c(true);
                            f74VarB = aVar.b();
                        }
                        f74<tj<LogoutResponse>> f74Var = f74VarB;
                        if (f74Var != null) {
                            xk.d(u15Var, f74Var, new x15(u15Var), null, 2, null);
                        }
                        u15Var.l.b(u15Var.B, 21);
                    }
                }
                break;
            case 2:
                j15 j15Var = this.i0;
                if (j15Var != null) {
                    j15Var.r1();
                }
                break;
            case 3:
                u15 u15Var2 = this.h0;
                if (u15Var2 != null) {
                    if (!u15Var2.j.isLoggedIn()) {
                        ((j15) u15Var2.f()).q(R.string.login_message);
                    } else {
                        lx4.b bVar = (lx4.b) u15Var2.u().e.getValue();
                        if (bVar.e()) {
                            bVar.c(-1);
                            f74VarF = bVar.g();
                        } else {
                            if (bVar.d()) {
                                bVar.b(-1);
                            }
                            tj tjVar = (tj) bVar.a.a.getValue();
                            q25 q25Var2 = (tjVar == null || (videoModel2 = (VideoModel) tjVar.b) == null) ? null : videoModel2.status;
                            if (q25Var2 != null) {
                                q25Var2.r = true;
                            }
                            tj tjVar2 = (tj) bVar.a.a.getValue();
                            if (tjVar2 != null && (videoModel = (VideoModel) tjVar2.b) != null) {
                                q25Var = videoModel.status;
                            }
                            if (q25Var != null) {
                                q25Var.u = false;
                            }
                            bVar.c(1);
                            f74VarF = bVar.f();
                        }
                        f74<tj<LogoutResponse>> f74Var2 = f74VarF;
                        if (f74Var2 != null) {
                            xk.d(u15Var2, f74Var2, new a25(u15Var2), null, 2, null);
                        }
                        u15Var2.l.b(u15Var2.B, 23);
                    }
                }
                break;
            case 4:
                u15 u15Var3 = this.h0;
                if (u15Var3 != null) {
                    if (!u15Var3.j.isLoggedIn()) {
                        ((j15) u15Var3.f()).q(R.string.login_message);
                    } else {
                        lx4.b bVar2 = (lx4.b) u15Var3.u().e.getValue();
                        if (bVar2.d()) {
                            bVar2.b(-1);
                            f74VarF2 = bVar2.g();
                        } else {
                            if (bVar2.e()) {
                                bVar2.c(-1);
                            }
                            tj tjVar3 = (tj) bVar2.a.a.getValue();
                            q25 q25Var3 = (tjVar3 == null || (videoModel4 = (VideoModel) tjVar3.b) == null) ? null : videoModel4.status;
                            if (q25Var3 != null) {
                                q25Var3.r = false;
                            }
                            tj tjVar4 = (tj) bVar2.a.a.getValue();
                            if (tjVar4 != null && (videoModel3 = (VideoModel) tjVar4.b) != null) {
                                q25Var = videoModel3.status;
                            }
                            if (q25Var != null) {
                                q25Var.u = true;
                            }
                            bVar2.b(1);
                            f74VarF2 = bVar2.f();
                        }
                        f74<tj<LogoutResponse>> f74Var3 = f74VarF2;
                        if (f74Var3 != null) {
                            xk.d(u15Var3, f74Var3, new z15(u15Var3), null, 2, null);
                        }
                        u15Var3.l.b(u15Var3.B, 24);
                    }
                }
                break;
            case 5:
                j15 j15Var2 = this.i0;
                if (j15Var2 != null) {
                    j15Var2.O();
                }
                break;
            case 6:
                j15 j15Var3 = this.i0;
                if (j15Var3 != null) {
                    j15Var3.n();
                }
                break;
            case 7:
                j15 j15Var4 = this.i0;
                if (j15Var4 != null) {
                    j15Var4.e();
                }
                break;
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x01ac  */
    /* JADX WARN: Code duplicated, block: B:102:0x01af  */
    /* JADX WARN: Code duplicated, block: B:103:0x01b2  */
    /* JADX WARN: Code duplicated, block: B:105:0x01be  */
    /* JADX WARN: Code duplicated, block: B:107:0x01db  */
    /* JADX WARN: Code duplicated, block: B:108:0x01de  */
    /* JADX WARN: Code duplicated, block: B:110:0x01e1  */
    /* JADX WARN: Code duplicated, block: B:111:0x01ea  */
    /* JADX WARN: Code duplicated, block: B:114:0x01f5 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:115:0x01f7  */
    /* JADX WARN: Code duplicated, block: B:116:0x01fb  */
    /* JADX WARN: Code duplicated, block: B:120:0x0206 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:121:0x0208  */
    /* JADX WARN: Code duplicated, block: B:122:0x020b  */
    /* JADX WARN: Code duplicated, block: B:125:0x021a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:126:0x021c  */
    /* JADX WARN: Code duplicated, block: B:127:0x0221  */
    /* JADX WARN: Code duplicated, block: B:133:0x0231  */
    /* JADX WARN: Code duplicated, block: B:135:0x0235 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:136:0x0237  */
    /* JADX WARN: Code duplicated, block: B:137:0x0240  */
    /* JADX WARN: Code duplicated, block: B:139:0x0245 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:140:0x0247  */
    /* JADX WARN: Code duplicated, block: B:141:0x024b  */
    /* JADX WARN: Code duplicated, block: B:144:0x0252  */
    /* JADX WARN: Code duplicated, block: B:145:0x0256  */
    /* JADX WARN: Code duplicated, block: B:146:0x025a  */
    /* JADX WARN: Code duplicated, block: B:195:0x0364 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:196:0x0366  */
    /* JADX WARN: Code duplicated, block: B:197:0x036b  */
    /* JADX WARN: Code duplicated, block: B:199:0x036e  */
    /* JADX WARN: Code duplicated, block: B:200:0x0371  */
    /* JADX WARN: Code duplicated, block: B:203:0x037a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:204:0x037c  */
    /* JADX WARN: Code duplicated, block: B:205:0x0381  */
    /* JADX WARN: Code duplicated, block: B:208:0x038c  */
    /* JADX WARN: Code duplicated, block: B:209:0x0393  */
    /* JADX WARN: Code duplicated, block: B:211:0x0396  */
    /* JADX WARN: Code duplicated, block: B:212:0x039d  */
    /* JADX WARN: Code duplicated, block: B:215:0x03a6  */
    /* JADX WARN: Code duplicated, block: B:216:0x03a8  */
    /* JADX WARN: Code duplicated, block: B:218:0x03ab A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:219:0x03ad  */
    /* JADX WARN: Code duplicated, block: B:220:0x03b7  */
    /* JADX WARN: Code duplicated, block: B:224:0x03ca A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:225:0x03cc  */
    /* JADX WARN: Code duplicated, block: B:226:0x03d2  */
    /* JADX WARN: Code duplicated, block: B:229:0x03db  */
    /* JADX WARN: Code duplicated, block: B:230:0x03eb  */
    /* JADX WARN: Code duplicated, block: B:233:0x03fe  */
    /* JADX WARN: Code duplicated, block: B:234:0x0402  */
    /* JADX WARN: Code duplicated, block: B:236:0x0416  */
    /* JADX WARN: Code duplicated, block: B:239:0x042b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:240:0x042d  */
    /* JADX WARN: Code duplicated, block: B:241:0x0432  */
    /* JADX WARN: Code duplicated, block: B:244:0x043c  */
    /* JADX WARN: Code duplicated, block: B:245:0x0443  */
    /* JADX WARN: Code duplicated, block: B:247:0x0446  */
    /* JADX WARN: Code duplicated, block: B:248:0x044b  */
    /* JADX WARN: Code duplicated, block: B:299:0x05cb A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:300:0x05cd  */
    /* JADX WARN: Code duplicated, block: B:301:0x05db  */
    /* JADX WARN: Code duplicated, block: B:303:0x05df  */
    /* JADX WARN: Code duplicated, block: B:304:0x05f1  */
    /* JADX WARN: Code duplicated, block: B:305:0x05f4  */
    /* JADX WARN: Code duplicated, block: B:308:0x0603 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:309:0x0605  */
    /* JADX WARN: Code duplicated, block: B:311:0x0608 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:312:0x060a  */
    /* JADX WARN: Code duplicated, block: B:313:0x0610  */
    /* JADX WARN: Code duplicated, block: B:316:0x0619  */
    /* JADX WARN: Code duplicated, block: B:317:0x061b A[PHI: r2
      0x061b: PHI (r2v2 long) = (r2v1 long), (r2v12 long) binds: [B:307:0x0601, B:315:0x0617] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:320:0x0624 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:322:0x0627  */
    /* JADX WARN: Code duplicated, block: B:324:0x062b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:325:0x062d  */
    /* JADX WARN: Code duplicated, block: B:326:0x0633  */
    /* JADX WARN: Code duplicated, block: B:330:0x063d  */
    /* JADX WARN: Code duplicated, block: B:331:0x0640 A[PHI: r2
      0x0640: PHI (r2v4 long) = (r2v3 long), (r2v10 long) binds: [B:319:0x0622, B:328:0x063a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:334:0x064b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:336:0x064e  */
    /* JADX WARN: Code duplicated, block: B:338:0x0654 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:339:0x0656  */
    /* JADX WARN: Code duplicated, block: B:340:0x065c  */
    /* JADX WARN: Code duplicated, block: B:343:0x0665  */
    /* JADX WARN: Code duplicated, block: B:344:0x0668  */
    /* JADX WARN: Code duplicated, block: B:346:0x0671  */
    /* JADX WARN: Code duplicated, block: B:349:0x0680  */
    /* JADX WARN: Code duplicated, block: B:350:0x0702  */
    /* JADX WARN: Code duplicated, block: B:353:0x0710  */
    /* JADX WARN: Code duplicated, block: B:355:0x071f  */
    /* JADX WARN: Code duplicated, block: B:356:0x0721  */
    /* JADX WARN: Code duplicated, block: B:360:0x07c8  */
    /* JADX WARN: Code duplicated, block: B:363:0x07e6  */
    /* JADX WARN: Code duplicated, block: B:365:0x07f6  */
    /* JADX WARN: Code duplicated, block: B:368:0x0806  */
    /* JADX WARN: Code duplicated, block: B:36:0x0075  */
    /* JADX WARN: Code duplicated, block: B:371:0x0813  */
    /* JADX WARN: Code duplicated, block: B:373:0x083c  */
    /* JADX WARN: Code duplicated, block: B:374:0x0845  */
    /* JADX WARN: Code duplicated, block: B:378:0x085d  */
    /* JADX WARN: Code duplicated, block: B:37:0x007a  */
    /* JADX WARN: Code duplicated, block: B:381:0x086c  */
    /* JADX WARN: Code duplicated, block: B:384:0x0879  */
    /* JADX WARN: Code duplicated, block: B:386:0x0899  */
    /* JADX WARN: Code duplicated, block: B:387:0x08a8  */
    /* JADX WARN: Code duplicated, block: B:391:0x08c1  */
    /* JADX WARN: Code duplicated, block: B:394:0x08cf  */
    /* JADX WARN: Code duplicated, block: B:40:0x0081 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:41:0x0083  */
    /* JADX WARN: Code duplicated, block: B:42:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:44:0x00c9 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:45:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:46:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:49:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:50:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:53:0x00fa A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:54:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:55:0x0104  */
    /* JADX WARN: Code duplicated, block: B:58:0x0111 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:59:0x0113  */
    /* JADX WARN: Code duplicated, block: B:60:0x0117  */
    /* JADX WARN: Code duplicated, block: B:64:0x0122 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:65:0x0124  */
    /* JADX WARN: Code duplicated, block: B:66:0x012f  */
    /* JADX WARN: Code duplicated, block: B:69:0x013d  */
    /* JADX WARN: Code duplicated, block: B:70:0x0142  */
    /* JADX WARN: Code duplicated, block: B:73:0x014c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:74:0x014e  */
    /* JADX WARN: Code duplicated, block: B:75:0x0152  */
    /* JADX WARN: Code duplicated, block: B:78:0x0159  */
    /* JADX WARN: Code duplicated, block: B:79:0x015b  */
    /* JADX WARN: Code duplicated, block: B:81:0x015f  */
    /* JADX WARN: Code duplicated, block: B:82:0x0164  */
    /* JADX WARN: Code duplicated, block: B:85:0x016e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:86:0x0170  */
    /* JADX WARN: Code duplicated, block: B:87:0x0174  */
    /* JADX WARN: Code duplicated, block: B:91:0x0183  */
    /* JADX WARN: Code duplicated, block: B:92:0x0187  */
    /* JADX WARN: Code duplicated, block: B:95:0x0192  */
    /* JADX WARN: Code duplicated, block: B:96:0x019b  */
    /* JADX WARN: Code duplicated, block: B:99:0x01a9  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        mj<VideoModel> mjVar;
        String str;
        int i;
        int i2;
        boolean z;
        tj<List<VideoModel>> value;
        boolean z2;
        boolean z3;
        LiveData<?> liveData;
        boolean z4;
        String str2;
        String str3;
        tj.a aVar;
        tj tjVar;
        String str4;
        String str5;
        String str6;
        String str7;
        boolean z5;
        boolean z6;
        boolean z7;
        long j2;
        int i3;
        int i4;
        int i5;
        String str8;
        String str9;
        String str10;
        int i6;
        int i7;
        int i8;
        List<VideoModel> list;
        String str11;
        mj<List<VideoModel>> mjVar2;
        String str12;
        boolean z8;
        mj<List<VideoModel>> mjVar3;
        boolean z9;
        String string;
        String str13;
        long j3;
        int i9;
        long j4;
        int i10;
        long j5;
        int i11;
        TextView textView;
        ColorStateList colorStateListG;
        int i12;
        uj2.b bVar;
        Resources resources;
        String str14;
        String strJ;
        int i13;
        int i14;
        long j6;
        long j7;
        long j8;
        int i15;
        int i16;
        String str15;
        String str16;
        String str17;
        String str18;
        String str19;
        int i17;
        int i18;
        boolean z10;
        boolean zEquals;
        tj.a aVar2;
        String str20;
        String str21;
        int i19;
        mj<VideoModel> mjVar4;
        String str22;
        boolean z11;
        String str23;
        int i20;
        int i21;
        String str24;
        boolean zIsEmpty;
        boolean z12;
        tj<List<VideoModel>> value2;
        mj<List<VideoModel>> mjVar5;
        tj<List<VideoModel>> tjVar2;
        String str25;
        boolean z13;
        String str26;
        long j9;
        String str27;
        tj tjVar3;
        boolean z14;
        int i22;
        LiveData<?> liveData2;
        tj tjVar4;
        Boolean bool;
        boolean zA;
        boolean z15;
        String string2;
        int i23;
        long j10;
        long j11;
        long j12;
        VideoModel videoModelV;
        String str28;
        tj.a aVar3;
        int i24;
        VideoModel videoModel;
        long j13;
        String str29;
        boolean z16;
        String str30;
        String str31;
        String str32;
        String str33;
        String str34;
        int i25;
        int i26;
        String str35;
        boolean z17;
        long j14;
        int i27;
        String str36;
        long j15;
        boolean zEquals2;
        long j16;
        long j17;
        String str37;
        q25 q25Var;
        String str38;
        boolean z18;
        boolean z19;
        boolean z20;
        boolean zIsEmpty2;
        boolean zIsEmpty3;
        int i28;
        int i29;
        int i30;
        long j18;
        long j19;
        long j20;
        long j21;
        long j22;
        long j23;
        boolean z21;
        tj.a aVar4 = tj.a.SUCCESS;
        synchronized (this) {
            j = this.s0;
            this.s0 = 0L;
        }
        j15 j15Var = this.i0;
        u15 u15Var = this.h0;
        if ((6585 & j) != 0) {
            if ((6289 & j) != 0) {
                mj<VideoModel> mjVar6 = u15Var != null ? u15Var.t : null;
                E(0, mjVar6);
                tj<VideoModel> value3 = mjVar6 != null ? mjVar6.getValue() : null;
                long j24 = j & 6145;
                if (j24 != 0) {
                    if (value3 != null) {
                        aVar3 = value3.a;
                        str28 = value3.c;
                    } else {
                        str28 = null;
                        aVar3 = null;
                    }
                    boolean z22 = aVar3 == aVar4;
                    if (j24 != 0) {
                        j |= z22 ? 4294967296L : 2147483648L;
                    }
                    if (!z22) {
                        i24 = 8;
                    }
                    if (value3 != null) {
                        videoModel = value3.b;
                    } else {
                        videoModel = null;
                    }
                    j13 = j & 6145;
                    if (j13 != 0) {
                        if (videoModel != null) {
                            q25 q25Var2 = videoModel.status;
                            String str39 = videoModel.imgMediumThumbObjUrl;
                            String str40 = videoModel.videoLikesNumber;
                            String str41 = videoModel.videoDisLikesNumber;
                            String str42 = videoModel.enContent;
                            String str43 = videoModel.arContent;
                            z21 = videoModel.showComments;
                            str37 = videoModel.trailer;
                            str35 = videoModel.imgObjUrl;
                            str38 = videoModel.parentSkipping;
                            str32 = str41;
                            str31 = str40;
                            str29 = str43;
                            str30 = str39;
                            str34 = str42;
                            q25Var = q25Var2;
                        } else {
                            str34 = null;
                            str37 = null;
                            str35 = null;
                            str32 = null;
                            str31 = null;
                            str29 = null;
                            str30 = null;
                            q25Var = null;
                            str38 = null;
                            z18 = false;
                        }
                        if (j13 != 0) {
                            if (z18) {
                                j23 = 1073741824;
                            } else {
                                j23 = 536870912;
                            }
                            j |= j23;
                        }
                        if (q25Var != null) {
                            boolean z23 = q25Var.r;
                            boolean z24 = q25Var.u;
                            boolean z25 = q25Var.v;
                            z16 = z24;
                            z19 = z23;
                            z20 = z25;
                        } else {
                            z19 = false;
                            z16 = false;
                            z20 = false;
                        }
                        if ((j & 6145) != 0) {
                            if (z19) {
                                j |= 274877906944L;
                            } else {
                                j |= 137438953472L;
                            }
                        }
                        if ((j & 6145) != 0) {
                            if (z16) {
                                j22 = 262144;
                            } else {
                                j22 = 131072;
                            }
                            j |= j22;
                        }
                        if ((j & 6145) != 0) {
                            if (z20) {
                                j20 = j | 4194304;
                                j21 = 1099511627776L;
                            } else {
                                j20 = j | 2097152;
                                j21 = 549755813888L;
                            }
                            j = j20 | j21;
                        }
                        if (str34 != null) {
                            zIsEmpty2 = str34.isEmpty();
                        } else {
                            zIsEmpty2 = false;
                        }
                        if ((j & 6145) != 0) {
                            if (zIsEmpty2) {
                                j19 = 16777216;
                            } else {
                                j19 = 8388608;
                            }
                            j |= j19;
                        }
                        if (z18) {
                            i15 = 0;
                        } else {
                            i15 = 8;
                        }
                        if (str37 != null) {
                            zIsEmpty3 = str37.isEmpty();
                        } else {
                            zIsEmpty3 = false;
                        }
                        if ((j & 6145) != 0) {
                            if (zIsEmpty3) {
                                j18 = 1048576;
                            } else {
                                j18 = 524288;
                            }
                            j |= j18;
                        }
                        j14 = j;
                        Resources resources2 = this.k0.getResources();
                        if (z20) {
                            i28 = R.string.remove_from_favorites_txt;
                        } else {
                            i28 = R.string.add_to_favorites_txt;
                        }
                        String string3 = resources2.getString(i28);
                        AppCompatImageView appCompatImageView = this.k0;
                        if (z20) {
                            i29 = R.color.colorAccent;
                        } else {
                            i29 = R.color.primaryTextColor;
                        }
                        int iL = ViewDataBinding.l(appCompatImageView, i29);
                        if (zIsEmpty2) {
                            i30 = 8;
                        } else {
                            i30 = 0;
                        }
                        if (zIsEmpty3) {
                            i26 = 8;
                        } else {
                            i26 = 0;
                        }
                        z17 = z19;
                        str33 = str38;
                        i25 = i30;
                        i27 = iL;
                        str19 = string3;
                    } else {
                        str29 = null;
                        z16 = false;
                        str30 = null;
                        str31 = null;
                        str32 = null;
                        str33 = null;
                        str34 = null;
                        i25 = 0;
                        i26 = 0;
                        str35 = null;
                        z17 = false;
                        j14 = j;
                        str19 = null;
                        i27 = 0;
                        i15 = 0;
                    }
                    if (videoModel != null) {
                        str36 = videoModel.kind;
                    } else {
                        str36 = null;
                    }
                    if (str36 != null) {
                        zEquals = str36.equals("2");
                    } else {
                        zEquals = false;
                    }
                    if ((j14 & 6145) != 0) {
                        if (zEquals) {
                            j17 = 67108864;
                        } else {
                            j17 = 33554432;
                        }
                        j14 |= j17;
                    }
                    if ((j14 & 6273) != 0) {
                        if (zEquals) {
                            j14 |= 281474976710656L;
                        } else {
                            j14 |= 140737488355328L;
                        }
                    }
                    if ((j14 & 6161) != 0) {
                        if (zEquals) {
                            j14 |= 1125899906842624L;
                        } else {
                            j14 |= 562949953421312L;
                        }
                    }
                    j15 = j14 & 6145;
                    if (j15 != 0 || zEquals) {
                        i16 = 0;
                    } else {
                        i16 = 8;
                    }
                    if (j15 != 0) {
                        if (str36 != null) {
                            zEquals2 = str36.equals("1");
                        } else {
                            zEquals2 = false;
                        }
                        if (j15 != 0) {
                            if (zEquals2) {
                                j16 = 65536;
                            } else {
                                j16 = 32768;
                            }
                            j14 |= j16;
                        }
                        if (zEquals2) {
                            i2 = 6;
                        } else {
                            i2 = 4;
                        }
                    } else {
                        zEquals = zEquals;
                        i2 = 0;
                    }
                    String str44 = str33;
                    i20 = i27;
                    j = j14;
                    z10 = z17;
                    str18 = str35;
                    i18 = i26;
                    str17 = str32;
                    str21 = str34;
                    i19 = i25;
                    i17 = i24;
                    str16 = str31;
                    str20 = str29;
                    str22 = str30;
                    z11 = z16;
                    str15 = str28;
                    aVar2 = aVar3;
                    mjVar4 = mjVar6;
                    str23 = str44;
                } else {
                    str28 = null;
                    aVar3 = null;
                }
                i24 = 0;
                if (value3 != null) {
                    videoModel = value3.b;
                } else {
                    videoModel = null;
                }
                j13 = j & 6145;
                if (j13 != 0) {
                    if (videoModel != null) {
                        q25 q25Var3 = videoModel.status;
                        String str310 = videoModel.imgMediumThumbObjUrl;
                        String str45 = videoModel.videoLikesNumber;
                        String str46 = videoModel.videoDisLikesNumber;
                        String str47 = videoModel.enContent;
                        String str48 = videoModel.arContent;
                        z21 = videoModel.showComments;
                        str37 = videoModel.trailer;
                        str35 = videoModel.imgObjUrl;
                        str38 = videoModel.parentSkipping;
                        str32 = str46;
                        str31 = str45;
                        str29 = str48;
                        str30 = str310;
                        str34 = str47;
                        q25Var = q25Var3;
                    } else {
                        str34 = null;
                        str37 = null;
                        str35 = null;
                        str32 = null;
                        str31 = null;
                        str29 = null;
                        str30 = null;
                        q25Var = null;
                        str38 = null;
                        z18 = false;
                    }
                    if (j13 != 0) {
                        if (z18) {
                            j23 = 1073741824;
                        } else {
                            j23 = 536870912;
                        }
                        j |= j23;
                    }
                    if (q25Var != null) {
                        boolean z26 = q25Var.r;
                        boolean z27 = q25Var.u;
                        boolean z28 = q25Var.v;
                        z16 = z27;
                        z19 = z26;
                        z20 = z28;
                    } else {
                        z19 = false;
                        z16 = false;
                        z20 = false;
                    }
                    if ((j & 6145) != 0) {
                        if (z19) {
                            j |= 274877906944L;
                        } else {
                            j |= 137438953472L;
                        }
                    }
                    if ((j & 6145) != 0) {
                        if (z16) {
                            j22 = 262144;
                        } else {
                            j22 = 131072;
                        }
                        j |= j22;
                    }
                    if ((j & 6145) != 0) {
                        if (z20) {
                            j20 = j | 4194304;
                            j21 = 1099511627776L;
                        } else {
                            j20 = j | 2097152;
                            j21 = 549755813888L;
                        }
                        j = j20 | j21;
                    }
                    if (str34 != null) {
                        zIsEmpty2 = str34.isEmpty();
                    } else {
                        zIsEmpty2 = false;
                    }
                    if ((j & 6145) != 0) {
                        if (zIsEmpty2) {
                            j19 = 16777216;
                        } else {
                            j19 = 8388608;
                        }
                        j |= j19;
                    }
                    if (z18) {
                        i15 = 0;
                    } else {
                        i15 = 8;
                    }
                    if (str37 != null) {
                        zIsEmpty3 = str37.isEmpty();
                    } else {
                        zIsEmpty3 = false;
                    }
                    if ((j & 6145) != 0) {
                        if (zIsEmpty3) {
                            j18 = 1048576;
                        } else {
                            j18 = 524288;
                        }
                        j |= j18;
                    }
                    j14 = j;
                    Resources resources3 = this.k0.getResources();
                    if (z20) {
                        i28 = R.string.remove_from_favorites_txt;
                    } else {
                        i28 = R.string.add_to_favorites_txt;
                    }
                    String string4 = resources3.getString(i28);
                    AppCompatImageView appCompatImageView2 = this.k0;
                    if (z20) {
                        i29 = R.color.colorAccent;
                    } else {
                        i29 = R.color.primaryTextColor;
                    }
                    int iL2 = ViewDataBinding.l(appCompatImageView2, i29);
                    if (zIsEmpty2) {
                        i30 = 8;
                    } else {
                        i30 = 0;
                    }
                    if (zIsEmpty3) {
                        i26 = 8;
                    } else {
                        i26 = 0;
                    }
                    z17 = z19;
                    str33 = str38;
                    i25 = i30;
                    i27 = iL2;
                    str19 = string4;
                } else {
                    str29 = null;
                    z16 = false;
                    str30 = null;
                    str31 = null;
                    str32 = null;
                    str33 = null;
                    str34 = null;
                    i25 = 0;
                    i26 = 0;
                    str35 = null;
                    z17 = false;
                    j14 = j;
                    str19 = null;
                    i27 = 0;
                    i15 = 0;
                }
                if (videoModel != null) {
                    str36 = videoModel.kind;
                } else {
                    str36 = null;
                }
                if (str36 != null) {
                    zEquals = str36.equals("2");
                } else {
                    zEquals = false;
                }
                if ((j14 & 6145) != 0) {
                    if (zEquals) {
                        j17 = 67108864;
                    } else {
                        j17 = 33554432;
                    }
                    j14 |= j17;
                }
                if ((j14 & 6273) != 0) {
                    if (zEquals) {
                        j14 |= 281474976710656L;
                    } else {
                        j14 |= 140737488355328L;
                    }
                }
                if ((j14 & 6161) != 0) {
                    if (zEquals) {
                        j14 |= 1125899906842624L;
                    } else {
                        j14 |= 562949953421312L;
                    }
                }
                j15 = j14 & 6145;
                if (j15 != 0) {
                    i16 = 0;
                } else {
                    i16 = 0;
                }
                if (j15 != 0) {
                    if (str36 != null) {
                        zEquals2 = str36.equals("1");
                    } else {
                        zEquals2 = false;
                    }
                    if (j15 != 0) {
                        if (zEquals2) {
                            j16 = 65536;
                        } else {
                            j16 = 32768;
                        }
                        j14 |= j16;
                    }
                    if (zEquals2) {
                        i2 = 6;
                    } else {
                        i2 = 4;
                    }
                } else {
                    zEquals = zEquals;
                    i2 = 0;
                }
                String str49 = str33;
                i20 = i27;
                j = j14;
                z10 = z17;
                str18 = str35;
                i18 = i26;
                str17 = str32;
                str21 = str34;
                i19 = i25;
                i17 = i24;
                str16 = str31;
                str20 = str29;
                str22 = str30;
                z11 = z16;
                str15 = str28;
                aVar2 = aVar3;
                mjVar4 = mjVar6;
                str23 = str49;
            } else {
                i2 = 0;
                i15 = 0;
                i16 = 0;
                str15 = null;
                str16 = null;
                str17 = null;
                str18 = null;
                str19 = null;
                i17 = 0;
                i18 = 0;
                z10 = false;
                zEquals = false;
                aVar2 = null;
                str20 = null;
                str21 = null;
                i19 = 0;
                mjVar4 = null;
                str22 = null;
                z11 = false;
                str23 = null;
                i20 = 0;
            }
            long j25 = j & 6152;
            if (j25 != 0) {
                LiveData<?> liveData3 = u15Var != null ? u15Var.w : null;
                i21 = i20;
                E(3, liveData3);
                hd0 value4 = liveData3 != null ? liveData3.getValue() : null;
                str24 = value4 != null ? value4.a : null;
                String strTrim = str24 != null ? str24.trim() : null;
                zIsEmpty = strTrim != null ? strTrim.isEmpty() : false;
                if (j25 != 0) {
                    j |= zIsEmpty ? 268435456L : 134217728L;
                }
            } else {
                i2 = i2;
                i21 = i20;
                str24 = null;
                zIsEmpty = false;
            }
            if ((j & 6160) != 0) {
                mjVar5 = u15Var != null ? u15Var.v : null;
                z12 = zIsEmpty;
                E(4, mjVar5);
                value2 = mjVar5 != null ? mjVar5.getValue() : null;
            } else {
                str24 = str24;
                z12 = zIsEmpty;
                value2 = null;
                mjVar5 = null;
            }
            if ((j & 6176) != 0) {
                u43 u43Var = u15Var != null ? u15Var.x : null;
                tjVar2 = value2;
                str25 = str23;
                F(5, u43Var, ViewDataBinding.I);
                z13 = u43Var != null ? u43Var.s : false;
                if ((j & 6144) == 0) {
                    str26 = null;
                } else {
                    if (u15Var != null) {
                        videoModelV = u15Var.v();
                    } else {
                        videoModelV = null;
                    }
                    if (videoModelV != null) {
                        str26 = videoModelV.nb;
                    } else {
                        str26 = null;
                    }
                }
                j9 = j & 6272;
                if (j9 != 0) {
                    if (u15Var != null) {
                        liveData = u15Var.y;
                    } else {
                        liveData = null;
                    }
                    E(7, liveData);
                    if (liveData != null) {
                        tjVar3 = (tj) liveData.getValue();
                    } else {
                        tjVar3 = null;
                    }
                    if (tjVar3 != null) {
                        bool = (Boolean) tjVar3.b;
                    } else {
                        bool = null;
                    }
                    zA = ViewDataBinding.A(bool);
                    if (bool == null) {
                        z15 = true;
                    } else {
                        z15 = false;
                    }
                    if (j9 != 0) {
                        if (zA) {
                            j11 = j | 16384;
                            j12 = 17592186044416L;
                        } else {
                            j11 = j | 8192;
                            j12 = 8796093022208L;
                        }
                        j = j11 | j12;
                    }
                    if ((j & 6272) != 0) {
                        if (z15) {
                            j10 = 70368744177664L;
                        } else {
                            j10 = 35184372088832L;
                        }
                        j |= j10;
                    }
                    if (zA) {
                        string2 = this.c0.getResources().getString(R.string.subscribed_txt);
                    } else {
                        string2 = this.c0.getResources().getString(R.string.subscribe_txt);
                    }
                    TextView textView2 = this.c0;
                    if (zA) {
                        i23 = R.color.colorAccent;
                    } else {
                        i23 = R.color.primaryTextColor;
                    }
                    int iL3 = ViewDataBinding.l(textView2, i23);
                    z14 = !z15;
                    str27 = string2;
                    i22 = iL3;
                    j = j;
                    z4 = zA;
                } else {
                    z13 = z13;
                    str27 = null;
                    tjVar3 = null;
                    z14 = false;
                    liveData = null;
                    i22 = 0;
                    z4 = false;
                }
                if ((j & 6400) != 0) {
                    if (u15Var != null) {
                        liveData2 = u15Var.u;
                    } else {
                        liveData2 = null;
                    }
                    E(8, liveData2);
                    if (liveData2 != null) {
                        tjVar4 = (tj) liveData2.getValue();
                    } else {
                        tjVar4 = null;
                    }
                    List<VideoModel> list2 = tjVar4 != null ? (List) tjVar4.b : null;
                    z6 = z14;
                    z5 = z11;
                    i7 = i17;
                    str4 = str17;
                    i3 = i18;
                    i4 = i16;
                    i = i21;
                    str5 = str26;
                    i5 = i22;
                    tjVar = tjVar3;
                    i6 = i19;
                    str2 = str24;
                    z = zEquals;
                    str3 = str27;
                    aVar = aVar2;
                    str7 = str18;
                    z7 = z10;
                    str8 = str25;
                    mjVar = mjVar4;
                    str = str22;
                    str11 = str16;
                    str12 = str21;
                    mjVar2 = mjVar5;
                    list = list2;
                    z2 = z12;
                    value = tjVar2;
                    z3 = z13;
                    j = j;
                    j2 = 137438953472L;
                    String str50 = str19;
                    i8 = i15;
                    str6 = str20;
                    str9 = str15;
                    str10 = str50;
                } else {
                    j = j;
                }
                z6 = z14;
                z5 = z11;
                i7 = i17;
                str4 = str17;
                i3 = i18;
                i4 = i16;
                i = i21;
                str5 = str26;
                i5 = i22;
                tjVar = tjVar3;
                i6 = i19;
                str2 = str24;
                z = zEquals;
                str3 = str27;
                aVar = aVar2;
                str7 = str18;
                z7 = z10;
                str8 = str25;
                mjVar = mjVar4;
                str = str22;
                str11 = str16;
                str12 = str21;
                mjVar2 = mjVar5;
                list = list2;
                z2 = z12;
                value = tjVar2;
                z3 = z13;
                j = j;
                j2 = 137438953472L;
                String str51 = str19;
                i8 = i15;
                str6 = str20;
                str9 = str15;
                str10 = str51;
            } else {
                mjVar5 = mjVar5;
                tjVar2 = value2;
                str25 = str23;
            }
            if ((j & 6144) == 0) {
                str26 = null;
            } else {
                if (u15Var != null) {
                    videoModelV = u15Var.v();
                } else {
                    videoModelV = null;
                }
                if (videoModelV != null) {
                    str26 = videoModelV.nb;
                } else {
                    str26 = null;
                }
            }
            j9 = j & 6272;
            if (j9 != 0) {
                if (u15Var != null) {
                    liveData = u15Var.y;
                } else {
                    liveData = null;
                }
                E(7, liveData);
                if (liveData != null) {
                    tjVar3 = (tj) liveData.getValue();
                } else {
                    tjVar3 = null;
                }
                if (tjVar3 != null) {
                    bool = (Boolean) tjVar3.b;
                } else {
                    bool = null;
                }
                zA = ViewDataBinding.A(bool);
                if (bool == null) {
                    z15 = true;
                } else {
                    z15 = false;
                }
                if (j9 != 0) {
                    if (zA) {
                        j11 = j | 16384;
                        j12 = 17592186044416L;
                    } else {
                        j11 = j | 8192;
                        j12 = 8796093022208L;
                    }
                    j = j11 | j12;
                }
                if ((j & 6272) != 0) {
                    if (z15) {
                        j10 = 70368744177664L;
                    } else {
                        j10 = 35184372088832L;
                    }
                    j |= j10;
                }
                if (zA) {
                    string2 = this.c0.getResources().getString(R.string.subscribed_txt);
                } else {
                    string2 = this.c0.getResources().getString(R.string.subscribe_txt);
                }
                TextView textView3 = this.c0;
                if (zA) {
                    i23 = R.color.colorAccent;
                } else {
                    i23 = R.color.primaryTextColor;
                }
                int iL4 = ViewDataBinding.l(textView3, i23);
                z14 = !z15;
                str27 = string2;
                i22 = iL4;
                j = j;
                z4 = zA;
            } else {
                z13 = z13;
                str27 = null;
                tjVar3 = null;
                z14 = false;
                liveData = null;
                i22 = 0;
                z4 = false;
            }
            if ((j & 6400) != 0) {
                if (u15Var != null) {
                    liveData2 = u15Var.u;
                } else {
                    liveData2 = null;
                }
                E(8, liveData2);
                if (liveData2 != null) {
                    tjVar4 = (tj) liveData2.getValue();
                } else {
                    tjVar4 = null;
                }
                if (tjVar4 != null) {
                }
                z6 = z14;
                z5 = z11;
                i7 = i17;
                str4 = str17;
                i3 = i18;
                i4 = i16;
                i = i21;
                str5 = str26;
                i5 = i22;
                tjVar = tjVar3;
                i6 = i19;
                str2 = str24;
                z = zEquals;
                str3 = str27;
                aVar = aVar2;
                str7 = str18;
                z7 = z10;
                str8 = str25;
                mjVar = mjVar4;
                str = str22;
                str11 = str16;
                str12 = str21;
                mjVar2 = mjVar5;
                list = list2;
                z2 = z12;
                value = tjVar2;
                z3 = z13;
                j = j;
                j2 = 137438953472L;
                String str52 = str19;
                i8 = i15;
                str6 = str20;
                str9 = str15;
                str10 = str52;
            } else {
                j = j;
            }
            z6 = z14;
            z5 = z11;
            i7 = i17;
            str4 = str17;
            i3 = i18;
            i4 = i16;
            i = i21;
            str5 = str26;
            i5 = i22;
            tjVar = tjVar3;
            i6 = i19;
            str2 = str24;
            z = zEquals;
            str3 = str27;
            aVar = aVar2;
            str7 = str18;
            z7 = z10;
            str8 = str25;
            mjVar = mjVar4;
            str = str22;
            str11 = str16;
            str12 = str21;
            mjVar2 = mjVar5;
            list = list2;
            z2 = z12;
            value = tjVar2;
            z3 = z13;
            j = j;
            j2 = 137438953472L;
            String str53 = str19;
            i8 = i15;
            str6 = str20;
            str9 = str15;
            str10 = str53;
        } else {
            mjVar = null;
            str = null;
            i = 0;
            i2 = 0;
            z = false;
            value = null;
            z2 = false;
            z3 = false;
            liveData = null;
            z4 = false;
            str2 = null;
            str3 = null;
            aVar = null;
            tjVar = null;
            str4 = null;
            str5 = null;
            str6 = null;
            str7 = null;
            z5 = false;
            z6 = false;
            z7 = false;
            j2 = 137438953472L;
            i3 = 0;
            i4 = 0;
            i5 = 0;
            str8 = null;
            str9 = null;
            str10 = null;
            i6 = 0;
            i7 = 0;
            i8 = 0;
            list = null;
            str11 = null;
            mjVar2 = null;
            str12 = null;
        }
        String string5 = (j & j2) != 0 ? this.V.getResources().getString(R.string.like_this_video_with_others_txt, str11) : null;
        if ((j & 1125899906842624L) == 0) {
            z8 = false;
            mjVar3 = mjVar2;
        } else {
            mjVar3 = u15Var != null ? u15Var.v : mjVar2;
            E(4, mjVar3);
            if (mjVar3 != null) {
                value = mjVar3.getValue();
            }
            tj<List<VideoModel>> tjVar5 = value;
            if ((tjVar5 != null ? tjVar5.a : null) == aVar4) {
                z8 = true;
            } else {
                mjVar2 = mjVar3;
                z8 = false;
                mjVar3 = mjVar2;
            }
        }
        String string6 = (j & 131072) != 0 ? this.T.getResources().getString(R.string.dislike_this_video_with_others_txt, str4) : null;
        boolean z29 = (j & 134217728) != 0 && str2 == null;
        if ((j & 281474976710656L) != 0) {
            LiveData<?> liveData4 = u15Var != null ? u15Var.y : liveData;
            E(7, liveData4);
            tj tjVar6 = liveData4 != null ? (tj) liveData4.getValue() : tjVar;
            z9 = (tjVar6 != null ? tjVar6.a : null) == aVar4;
            if ((j & 6145) != 0) {
                if (z5) {
                    string = this.T.getResources().getString(R.string.remove_dislike_txt);
                } else {
                    string = string6;
                }
                if (z7) {
                    string5 = this.V.getResources().getString(R.string.remove_like_txt);
                }
            } else {
                string5 = null;
                string = null;
            }
            str13 = string5;
            j3 = j & 6152;
            if (j3 == 0) {
                i9 = 0;
            } else {
                if (z2) {
                    z29 = true;
                }
                if (j3 != 0) {
                    if (z29) {
                        j8 = 17179869184L;
                    } else {
                        j8 = 8589934592L;
                    }
                    j |= j8;
                }
                if (z29) {
                    i9 = 4;
                } else {
                    i9 = 0;
                }
            }
            j4 = j & 6273;
            if (j4 == 0) {
                i10 = 0;
            } else {
                if (!z) {
                    z9 = false;
                }
                if (j4 != 0) {
                    if (z9) {
                        j7 = 4398046511104L;
                    } else {
                        j7 = 2199023255552L;
                    }
                    j |= j7;
                }
                if (z9) {
                    i10 = 0;
                } else {
                    i10 = 8;
                }
            }
            j5 = j & 6161;
            if (j5 != 0) {
                if (!z) {
                    z8 = false;
                }
                if (j5 != 0) {
                    if (z8) {
                        j6 = 68719476736L;
                    } else {
                        j6 = 34359738368L;
                    }
                    j |= j6;
                }
                if (z8) {
                    i14 = 0;
                } else {
                    i14 = 8;
                }
                i11 = i14;
            } else {
                i11 = 0;
            }
            if ((j & 4096) != 0) {
                SimpleDraweeView simpleDraweeView = this.M;
                nl6.q(simpleDraweeView, simpleDraweeView.getResources().getString(R.string.has_parental_skipping_txt));
                st2.c(this.k0, this.r0, null);
                st2.c(this.P, this.m0, null);
                this.S.setTrimLength(140);
                st2.c(this.T, this.l0, null);
                TextView textView4 = this.U;
                d3.a(textView4, R.string.txt_episodes, textView4);
                st2.c(this.V, this.p0, null);
                this.Z.G(Boolean.FALSE);
                this.Z.M(this.v.getResources().getString(R.string.more_like_this));
                MaterialButton materialButton = this.b0;
                e3.a(materialButton, R.string.show_comments, materialButton);
                st2.c(this.b0, this.q0, null);
                st2.c(this.c0, this.o0, null);
                TextView textView5 = this.f0;
                d3.a(textView5, R.string.watch_trailer, textView5);
                st2.c(this.f0, this.n0, null);
            }
            if ((j & 6145) != 0) {
                SimpleDraweeView simpleDraweeView2 = this.M;
                j32.e(simpleDraweeView2, "draweeView");
                if (j32.a(str8, "1")) {
                    i13 = 0;
                } else {
                    i13 = 8;
                }
                simpleDraweeView2.setVisibility(i13);
                this.j0.setMessage(str9);
                this.j0.setStatus(aVar);
                nl6.q(this.k0, str10);
                this.k0.setSupportImageTintList(ColorStateList.valueOf(i));
                this.N.setVisibility(i7);
                this.S.setVisibility(i6);
                String str54 = str6;
                String str55 = str12;
                gm4.e(this.S, str55, str54);
                nl6.p(this.S, str55, str54);
                nl6.q(this.T, string);
                nl6.r(this.T, str4);
                gm4.g(this.T, Boolean.valueOf(z5));
                nl6.q(this.V, str13);
                nl6.r(this.V, str11);
                gm4.g(this.V, Boolean.valueOf(z7));
                String str56 = str7;
                oy1.c(this.X, str56, null, null, str);
                oy1.b(this.X, Boolean.TRUE, str56);
                this.Z.I(Integer.valueOf(i2));
                this.Z.N(Boolean.valueOf(z));
                this.b0.setVisibility(i8);
                this.f0.setVisibility(i3);
                this.g0.v.setVisibility(i4);
                this.g0.H(mjVar);
            }
            if ((5120 & j) != 0) {
                this.j0.setNavigator(j15Var);
                this.R.G(j15Var);
                this.Z.J(j15Var);
                this.e0.G(j15Var);
            }
            if ((j & 6144) != 0) {
                this.R.H(u15Var);
                this.e0.H(u15Var);
                if (ViewDataBinding.G >= 21) {
                    this.X.setTransitionName(str5);
                }
            }
            if ((6161 & j) != 0) {
                this.U.setVisibility(i11);
            }
            if ((j & 6152) != 0) {
                this.W.setVisibility(i12);
                TextView textView6 = this.W;
                j32.e(textView6, "<this>");
                bVar = uj2.c;
                resources = textView6.getResources();
                j32.d(resources, "resources");
                if (j32.a(bVar.b(resources).getLanguage(), "en")) {
                    i12 = i9;
                    str14 = str2;
                    strJ = j32.j("Parental rating: ", str14);
                } else {
                    i12 = i9;
                    str14 = str2;
                    strJ = j32.j("التصنيف العمري: ", str14);
                }
                nl6.q(textView6, strJ);
                nl6.r(this.W, str14);
            }
            if ((j & 6176) != 0) {
                this.Z.H(Boolean.valueOf(z3));
            }
            if ((j & 6400) != 0) {
                this.Z.P(list);
            }
            if ((j & 6272) != 0) {
                this.c0.setTextColor(i5);
                nl6.r(this.c0, str3);
                this.c0.setEnabled(z6);
                textView = this.c0;
                j32.e(textView, "<this>");
                if (z4) {
                    Context context = textView.getContext();
                    j32.d(context, "context");
                    colorStateListG = wt2.g(context, R.color.colorAccent);
                } else {
                    Context context2 = textView.getContext();
                    j32.d(context2, "context");
                    colorStateListG = wt2.g(context2, R.color.primaryTextColor);
                }
                im4.b(textView, colorStateListG);
            }
            if ((j & 6273) != 0) {
                this.c0.setVisibility(i10);
            }
            if ((j & 6160) != 0) {
                this.g0.G(mjVar3);
            }
            this.e0.j();
            this.g0.j();
            this.R.j();
            this.Z.j();
        }
        string6 = string6;
        if ((j & 6145) != 0) {
            if (z5) {
                string = this.T.getResources().getString(R.string.remove_dislike_txt);
            } else {
                string = string6;
            }
            if (z7) {
                string5 = this.V.getResources().getString(R.string.remove_like_txt);
            }
        } else {
            string5 = null;
            string = null;
        }
        str13 = string5;
        j3 = j & 6152;
        if (j3 == 0) {
            i9 = 0;
        } else {
            if (z2) {
                z29 = true;
            }
            if (j3 != 0) {
                if (z29) {
                    j8 = 17179869184L;
                } else {
                    j8 = 8589934592L;
                }
                j |= j8;
            }
            if (z29) {
                i9 = 4;
            } else {
                i9 = 0;
            }
        }
        j4 = j & 6273;
        if (j4 == 0) {
            i10 = 0;
        } else {
            if (!z) {
                z9 = false;
            }
            if (j4 != 0) {
                if (z9) {
                    j7 = 4398046511104L;
                } else {
                    j7 = 2199023255552L;
                }
                j |= j7;
            }
            if (z9) {
                i10 = 0;
            } else {
                i10 = 8;
            }
        }
        j5 = j & 6161;
        if (j5 != 0) {
            if (!z) {
                z8 = false;
            }
            if (j5 != 0) {
                if (z8) {
                    j6 = 68719476736L;
                } else {
                    j6 = 34359738368L;
                }
                j |= j6;
            }
            if (z8) {
                i14 = 0;
            } else {
                i14 = 8;
            }
            i11 = i14;
        } else {
            i11 = 0;
        }
        if ((j & 4096) != 0) {
            SimpleDraweeView simpleDraweeView3 = this.M;
            nl6.q(simpleDraweeView3, simpleDraweeView3.getResources().getString(R.string.has_parental_skipping_txt));
            st2.c(this.k0, this.r0, null);
            st2.c(this.P, this.m0, null);
            this.S.setTrimLength(140);
            st2.c(this.T, this.l0, null);
            TextView textView7 = this.U;
            d3.a(textView7, R.string.txt_episodes, textView7);
            st2.c(this.V, this.p0, null);
            this.Z.G(Boolean.FALSE);
            this.Z.M(this.v.getResources().getString(R.string.more_like_this));
            MaterialButton materialButton2 = this.b0;
            e3.a(materialButton2, R.string.show_comments, materialButton2);
            st2.c(this.b0, this.q0, null);
            st2.c(this.c0, this.o0, null);
            TextView textView8 = this.f0;
            d3.a(textView8, R.string.watch_trailer, textView8);
            st2.c(this.f0, this.n0, null);
        }
        if ((j & 6145) != 0) {
            SimpleDraweeView simpleDraweeView4 = this.M;
            j32.e(simpleDraweeView4, "draweeView");
            if (j32.a(str8, "1")) {
                i13 = 0;
            } else {
                i13 = 8;
            }
            simpleDraweeView4.setVisibility(i13);
            this.j0.setMessage(str9);
            this.j0.setStatus(aVar);
            nl6.q(this.k0, str10);
            this.k0.setSupportImageTintList(ColorStateList.valueOf(i));
            this.N.setVisibility(i7);
            this.S.setVisibility(i6);
            String str57 = str6;
            String str58 = str12;
            gm4.e(this.S, str58, str57);
            nl6.p(this.S, str58, str57);
            nl6.q(this.T, string);
            nl6.r(this.T, str4);
            gm4.g(this.T, Boolean.valueOf(z5));
            nl6.q(this.V, str13);
            nl6.r(this.V, str11);
            gm4.g(this.V, Boolean.valueOf(z7));
            String str59 = str7;
            oy1.c(this.X, str59, null, null, str);
            oy1.b(this.X, Boolean.TRUE, str59);
            this.Z.I(Integer.valueOf(i2));
            this.Z.N(Boolean.valueOf(z));
            this.b0.setVisibility(i8);
            this.f0.setVisibility(i3);
            this.g0.v.setVisibility(i4);
            this.g0.H(mjVar);
        }
        if ((5120 & j) != 0) {
            this.j0.setNavigator(j15Var);
            this.R.G(j15Var);
            this.Z.J(j15Var);
            this.e0.G(j15Var);
        }
        if ((j & 6144) != 0) {
            this.R.H(u15Var);
            this.e0.H(u15Var);
            if (ViewDataBinding.G >= 21) {
                this.X.setTransitionName(str5);
            }
        }
        if ((6161 & j) != 0) {
            this.U.setVisibility(i11);
        }
        if ((j & 6152) != 0) {
            this.W.setVisibility(i12);
            TextView textView9 = this.W;
            j32.e(textView9, "<this>");
            bVar = uj2.c;
            resources = textView9.getResources();
            j32.d(resources, "resources");
            if (j32.a(bVar.b(resources).getLanguage(), "en")) {
                i12 = i9;
                str14 = str2;
                strJ = j32.j("Parental rating: ", str14);
            } else {
                i12 = i9;
                str14 = str2;
                strJ = j32.j("التصنيف العمري: ", str14);
            }
            nl6.q(textView9, strJ);
            nl6.r(this.W, str14);
        }
        if ((j & 6176) != 0) {
            this.Z.H(Boolean.valueOf(z3));
        }
        if ((j & 6400) != 0) {
            this.Z.P(list);
        }
        if ((j & 6272) != 0) {
            this.c0.setTextColor(i5);
            nl6.r(this.c0, str3);
            this.c0.setEnabled(z6);
            textView = this.c0;
            j32.e(textView, "<this>");
            if (z4) {
                Context context3 = textView.getContext();
                j32.d(context3, "context");
                colorStateListG = wt2.g(context3, R.color.colorAccent);
            } else {
                Context context4 = textView.getContext();
                j32.d(context4, "context");
                colorStateListG = wt2.g(context4, R.color.primaryTextColor);
            }
            im4.b(textView, colorStateListG);
        }
        if ((j & 6273) != 0) {
            this.c0.setVisibility(i10);
        }
        if ((j & 6160) != 0) {
            this.g0.G(mjVar3);
        }
        this.e0.j();
        this.g0.j();
        this.R.j();
        this.Z.j();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean o() {
        synchronized (this) {
            if (this.s0 != 0) {
                return true;
            }
            return this.e0.o() || this.g0.o() || this.R.o() || this.Z.o();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void p() {
        synchronized (this) {
            this.s0 = 4096L;
        }
        this.e0.p();
        this.g0.p();
        this.R.p();
        this.Z.p();
        x();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean u(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                if (i2 != 0) {
                    return false;
                }
                synchronized (this) {
                    this.s0 |= 1;
                    break;
                }
                return true;
            case 1:
                if (i2 != 0) {
                    return false;
                }
                synchronized (this) {
                    this.s0 |= 2;
                    break;
                }
                return true;
            case 2:
                if (i2 != 0) {
                    return false;
                }
                synchronized (this) {
                    this.s0 |= 4;
                    break;
                }
                return true;
            case 3:
                if (i2 != 0) {
                    return false;
                }
                synchronized (this) {
                    this.s0 |= 8;
                    break;
                }
                return true;
            case 4:
                if (i2 != 0) {
                    return false;
                }
                synchronized (this) {
                    this.s0 |= 16;
                    break;
                }
                return true;
            case 5:
                if (i2 != 0) {
                    return false;
                }
                synchronized (this) {
                    this.s0 |= 32;
                    break;
                }
                return true;
            case 6:
                if (i2 != 0) {
                    return false;
                }
                synchronized (this) {
                    this.s0 |= 64;
                    break;
                }
                return true;
            case 7:
                if (i2 != 0) {
                    return false;
                }
                synchronized (this) {
                    this.s0 |= 128;
                    break;
                }
                return true;
            case 8:
                if (i2 != 0) {
                    return false;
                }
                synchronized (this) {
                    this.s0 |= 256;
                    break;
                }
                return true;
            case 9:
                if (i2 != 0) {
                    return false;
                }
                synchronized (this) {
                    this.s0 |= 512;
                    break;
                }
                return true;
            default:
                return false;
        }
    }
}
