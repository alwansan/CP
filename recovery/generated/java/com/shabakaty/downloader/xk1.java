package com.shabakaty.downloader;

import android.graphics.drawable.ColorDrawable;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.core.widget.NestedScrollView;
import androidx.databinding.ViewDataBinding;
import com.cinemana.pro.R;
import com.google.android.exoplayer2.ui.SubtitleView;
import com.google.android.material.button.MaterialButton;
import com.shabakaty.cinemana.data.db.settings.SettingsEntity;

/* JADX INFO: compiled from: FragmentSubtitlesSettingsBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class xk1 extends wk1 implements i63.a {
    public static final SparseIntArray r0;
    public final View.OnClickListener j0;
    public final View.OnClickListener k0;
    public final View.OnClickListener l0;
    public final View.OnClickListener m0;
    public final View.OnClickListener n0;
    public final View.OnClickListener o0;
    public final View.OnClickListener p0;
    public long q0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        r0 = sparseIntArray;
        sparseIntArray.put(R.id.settings_subtitle_background_img, 21);
        sparseIntArray.put(R.id.settings_subtitle_view, 22);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public xk1(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 23, null, r0);
        super(gl0Var, view, 1, (MaterialButton) objArrS[20], (TextView) objArrS[19], (AppCompatImageView) objArrS[21], (SubtitleView) objArrS[22], (LinearLayout) objArrS[16], (TextView) objArrS[18], (TextView) objArrS[15], (LinearLayout) objArrS[12], (TextView) objArrS[14], (TextView) objArrS[11], (LinearLayout) objArrS[8], (TextView) objArrS[10], (TextView) objArrS[7], (TextView) objArrS[6], (TextView) objArrS[5], (TextView) objArrS[2], (TextView) objArrS[1], (TextView) objArrS[4], (TextView) objArrS[3], (View) objArrS[17], (View) objArrS[13], (View) objArrS[9]);
        this.q0 = -1L;
        this.M.setTag(null);
        ((NestedScrollView) objArrS[0]).setTag(null);
        this.N.setTag(null);
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
        this.a0.setTag(null);
        this.b0.setTag(null);
        this.c0.setTag(null);
        this.d0.setTag(null);
        this.e0.setTag(null);
        this.f0.setTag(null);
        this.g0.setTag(null);
        view.setTag(R.id.dataBinding, this);
        this.j0 = new i63(this, 6);
        this.k0 = new i63(this, 2);
        this.l0 = new i63(this, 7);
        this.m0 = new i63(this, 3);
        this.n0 = new i63(this, 1);
        this.o0 = new i63(this, 4);
        this.p0 = new i63(this, 5);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        if (16 == i) {
            this.h0 = (ah4) obj;
            synchronized (this) {
                this.q0 |= 2;
            }
            f(16);
            x();
        } else {
            if (38 != i) {
                return false;
            }
            this.i0 = (ih4) obj;
            synchronized (this) {
                this.q0 |= 4;
            }
            f(38);
            x();
        }
        return true;
    }

    @Override // com.shabakaty.downloader.i63.a
    public final void b(int i, View view) {
        switch (i) {
            case 1:
                ah4 ah4Var = this.h0;
                if (ah4Var != null) {
                    ah4Var.J1();
                }
                break;
            case 2:
                ah4 ah4Var2 = this.h0;
                if (ah4Var2 != null) {
                    ah4Var2.N();
                }
                break;
            case 3:
                ah4 ah4Var3 = this.h0;
                if (ah4Var3 != null) {
                    ah4Var3.p1();
                }
                break;
            case 4:
                ah4 ah4Var4 = this.h0;
                if (ah4Var4 != null) {
                    ah4Var4.X();
                }
                break;
            case 5:
                ah4 ah4Var5 = this.h0;
                if (ah4Var5 != null) {
                    ah4Var5.b0();
                }
                break;
            case 6:
                ah4 ah4Var6 = this.h0;
                if (ah4Var6 != null) {
                    ah4Var6.y1();
                }
                break;
            case 7:
                ah4 ah4Var7 = this.h0;
                if (ah4Var7 != null) {
                    ah4Var7.B();
                }
                break;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        int i;
        String str;
        String str2;
        int i2;
        String str3;
        String str4;
        int i3;
        int i4;
        hg4 hg4Var;
        gg4 gg4Var;
        fg4 fg4Var;
        synchronized (this) {
            j = this.q0;
            this.q0 = 0L;
        }
        ih4 ih4Var = this.i0;
        long j2 = 13 & j;
        int i5 = 0;
        if (j2 != 0) {
            gc4<SettingsEntity> gc4Var = ih4Var != null ? ih4Var.g : null;
            h35.a(this, 0, gc4Var);
            SettingsEntity value = gc4Var != null ? gc4Var.getValue() : null;
            pg4 pg4Var = value != null ? value.subtitlesSettings : null;
            if (pg4Var != null) {
                i2 = pg4Var.b;
                gg4Var = pg4Var.f;
                fg4Var = pg4Var.d;
                i3 = pg4Var.a;
                i4 = pg4Var.c;
                hg4Var = pg4Var.e;
            } else {
                hg4Var = null;
                i2 = 0;
                gg4Var = null;
                fg4Var = null;
                i3 = 0;
                i4 = 0;
            }
            str2 = String.format("#%08X", Integer.valueOf(i2));
            str = String.format("#%08X", Integer.valueOf(i3));
            str4 = String.format("#%08X", Integer.valueOf(i4));
            str3 = gg4Var != null ? gg4Var.a : null;
            int i6 = fg4Var != null ? fg4Var.b : 0;
            i = hg4Var != null ? hg4Var.b : 0;
            i5 = i6;
        } else {
            i = 0;
            str = null;
            str2 = null;
            i2 = 0;
            str3 = null;
            str4 = null;
            i3 = 0;
            i4 = 0;
        }
        if ((j & 8) != 0) {
            this.M.setOnClickListener(this.l0);
            MaterialButton materialButton = this.M;
            e3.a(materialButton, R.string.reset_txt, materialButton);
            TextView textView = this.N;
            d3.a(textView, R.string.reset_subtitles_settings_txt, textView);
            this.P.setOnClickListener(this.j0);
            TextView textView2 = this.R;
            d3.a(textView2, R.string.subtitles_background_color_txt, textView2);
            this.S.setOnClickListener(this.p0);
            TextView textView3 = this.U;
            d3.a(textView3, R.string.subtitles_color_txt, textView3);
            this.V.setOnClickListener(this.o0);
            TextView textView4 = this.X;
            d3.a(textView4, R.string.subtitles_edge_color, textView4);
            this.Y.setOnClickListener(this.m0);
            TextView textView5 = this.Z;
            d3.a(textView5, R.string.subtitles_edge_type_txt, textView5);
            this.a0.setOnClickListener(this.n0);
            TextView textView6 = this.b0;
            d3.a(textView6, R.string.font_type_txt, textView6);
            this.c0.setOnClickListener(this.k0);
            TextView textView7 = this.d0;
            d3.a(textView7, R.string.font_size, textView7);
        }
        if (j2 != 0) {
            nl6.r(this.Q, str4);
            nl6.r(this.T, str);
            nl6.r(this.W, str2);
            this.Y.setText(i5);
            nl6.r(this.a0, str3);
            this.c0.setText(i);
            this.e0.setBackground(new ColorDrawable(i4));
            this.f0.setBackground(new ColorDrawable(i3));
            this.g0.setBackground(new ColorDrawable(i2));
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean o() {
        synchronized (this) {
            return this.q0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void p() {
        synchronized (this) {
            this.q0 = 8L;
        }
        x();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean u(int i, Object obj, int i2) {
        if (i != 0) {
            return false;
        }
        if (i2 != 0) {
            return false;
        }
        synchronized (this) {
            this.q0 |= 1;
        }
        return true;
    }
}
