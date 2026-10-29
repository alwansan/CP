package com.shabakaty.downloader;

import android.view.View;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.databinding.ViewDataBinding;
import com.cinemana.pro.R;

/* JADX INFO: compiled from: FragmentSettingsListBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class jk1 extends aj1 implements i63.a {
    public final TextView R;
    public final TextView S;
    public final TextView T;
    public final View.OnClickListener U;
    public final View.OnClickListener V;
    public final View.OnClickListener W;
    public long X;

    /* JADX WARN: Illegal instructions before constructor call */
    public jk1(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 7, null, null);
        super(gl0Var, view, 0, (CardView) objArrS[3], (CardView) objArrS[1], (CardView) objArrS[5]);
        this.X = -1L;
        ((ScrollView) objArrS[0]).setTag(null);
        TextView textView = (TextView) objArrS[2];
        this.R = textView;
        textView.setTag(null);
        TextView textView2 = (TextView) objArrS[4];
        this.S = textView2;
        textView2.setTag(null);
        TextView textView3 = (TextView) objArrS[6];
        this.T = textView3;
        textView3.setTag(null);
        ((CardView) this.M).setTag(null);
        ((CardView) this.N).setTag(null);
        ((CardView) this.O).setTag(null);
        view.setTag(R.id.dataBinding, this);
        this.U = new i63(this, 3);
        this.V = new i63(this, 1);
        this.W = new i63(this, 2);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        if (38 == i) {
            this.Q = (d34) obj;
        } else {
            if (16 != i) {
                return false;
            }
            this.P = (kk1) obj;
            synchronized (this) {
                this.X |= 2;
            }
            f(16);
            x();
        }
        return true;
    }

    @Override // com.shabakaty.downloader.i63.a
    public final void b(int i, View view) {
        if (i == 1) {
            kk1 kk1Var = (kk1) this.P;
            if (kk1Var != null) {
                kk1Var.N0();
                return;
            }
            return;
        }
        if (i == 2) {
            kk1 kk1Var2 = (kk1) this.P;
            if (kk1Var2 != null) {
                kk1Var2.R0();
                return;
            }
            return;
        }
        if (i != 3) {
            return;
        }
        kk1 kk1Var3 = (kk1) this.P;
        if (kk1Var3 != null) {
            kk1Var3.Y0();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        synchronized (this) {
            j = this.X;
            this.X = 0L;
        }
        if ((j & 4) != 0) {
            TextView textView = this.R;
            d3.a(textView, R.string.general_txt, textView);
            TextView textView2 = this.S;
            d3.a(textView2, R.string.filter_settings_txt, textView2);
            TextView textView3 = this.T;
            d3.a(textView3, R.string.subtitles_txt, textView3);
            ((CardView) this.M).setOnClickListener(this.W);
            ((CardView) this.N).setOnClickListener(this.V);
            ((CardView) this.O).setOnClickListener(this.U);
            Object obj = this.O;
            nl6.q((CardView) obj, ((CardView) obj).getResources().getString(R.string.subtitles_txt));
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean o() {
        synchronized (this) {
            return this.X != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void p() {
        synchronized (this) {
            this.X = 4L;
        }
        x();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean u(int i, Object obj, int i2) {
        return false;
    }
}
