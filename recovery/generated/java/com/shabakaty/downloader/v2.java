package com.shabakaty.downloader;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.databinding.ViewDataBinding;
import com.cinemana.pro.R;
import com.facebook.drawee.view.SimpleDraweeView;

/* JADX INFO: compiled from: ActivityDlnaControlsBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class v2 extends u2 {
    public static final SparseIntArray a0;
    public long Z;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        a0 = sparseIntArray;
        sparseIntArray.put(R.id.arrow, 2);
        sparseIntArray.put(R.id.movie_wallpaper, 3);
        sparseIntArray.put(R.id.playbackControls, 4);
        sparseIntArray.put(R.id.video_title, 5);
        sparseIntArray.put(R.id.rewind, 6);
        sparseIntArray.put(R.id.playPause, 7);
        sparseIntArray.put(R.id.time_current, 8);
        sparseIntArray.put(R.id.player_playback_seek_bar, 9);
        sparseIntArray.put(R.id.time, 10);
        sparseIntArray.put(R.id.muteBtn, 11);
        sparseIntArray.put(R.id.subtitleToggle, 12);
        sparseIntArray.put(R.id.skippingToggle, 13);
        sparseIntArray.put(R.id.qualityToggle, 14);
        sparseIntArray.put(R.id.castingLoadingBackground, 15);
        sparseIntArray.put(R.id.castingBuffering, 16);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public v2(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 17, null, a0);
        super(gl0Var, view, 0, (ImageView) objArrS[2], (RelativeLayout) objArrS[0], (ProgressBar) objArrS[16], (RelativeLayout) objArrS[15], (ImageButton) objArrS[1], (SimpleDraweeView) objArrS[3], (ImageView) objArrS[11], (ImageButton) objArrS[7], (LinearLayout) objArrS[4], (SeekBar) objArrS[9], (ImageView) objArrS[14], (ImageButton) objArrS[6], (ImageView) objArrS[13], (ImageButton) objArrS[12], (TextView) objArrS[10], (TextView) objArrS[8], (TextView) objArrS[5]);
        this.Z = -1L;
        this.N.setTag(null);
        this.O.setTag(null);
        view.setTag(R.id.dataBinding, this);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        return true;
    }

    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        synchronized (this) {
            j = this.Z;
            this.Z = 0L;
        }
        if ((j & 1) != 0) {
            ImageButton imageButton = this.O;
            nl6.q(imageButton, imageButton.getResources().getString(R.string.fastforward_txt));
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
            this.Z = 1L;
        }
        x();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean u(int i, Object obj, int i2) {
        return false;
    }
}
