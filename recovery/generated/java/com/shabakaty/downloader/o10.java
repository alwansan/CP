package com.shabakaty.downloader;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import com.cinemana.pro.R;
import com.facebook.drawee.view.SimpleDraweeView;
import com.google.android.exoplayer2.ui.PlayerView;
import com.shabakaty.cinemana.player.CinemanaPlayerControllerView;

/* JADX INFO: compiled from: CinemanaPlayerViewBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class o10 extends n10 {
    public static final SparseIntArray V;
    public long U;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        V = sparseIntArray;
        sparseIntArray.put(R.id.exo_player_view, 2);
        sparseIntArray.put(R.id.accessibility_subtitles, 3);
        sparseIntArray.put(R.id.player_seek_animation_layout, 4);
        sparseIntArray.put(R.id.seek_image, 5);
        sparseIntArray.put(R.id.seek_period, 6);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public o10(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 7, null, V);
        super(gl0Var, view, 0, (TextView) objArrS[3], (CinemanaPlayerControllerView) objArrS[1], (PlayerView) objArrS[2], (LinearLayout) objArrS[4], (ConstraintLayout) objArrS[0], (SimpleDraweeView) objArrS[5], (TextView) objArrS[6]);
        this.U = -1L;
        this.N.setTag(null);
        this.Q.setTag(null);
        view.setTag(R.id.dataBinding, this);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        if (38 == i) {
        } else {
            if (16 != i) {
                return false;
            }
            G((p10) obj);
        }
        return true;
    }

    @Override // com.shabakaty.downloader.n10
    public void G(p10 p10Var) {
        this.T = p10Var;
        synchronized (this) {
            this.U |= 2;
        }
        f(16);
        x();
    }

    @Override // com.shabakaty.downloader.n10
    public void H(q10 q10Var) {
    }

    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        synchronized (this) {
            j = this.U;
            this.U = 0L;
        }
        p10 p10Var = this.T;
        if ((j & 6) != 0) {
            this.N.setNavigator(p10Var);
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
