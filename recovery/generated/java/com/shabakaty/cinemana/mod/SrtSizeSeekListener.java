package com.shabakaty.cinemana.mod;

import android.widget.SeekBar;
import android.widget.TextView;
import com.shabakaty.cinemana.ca1.I18n161;
import com.shabakaty.cinemana.player.CinemanaPlayerControllerView;

/* JADX INFO: loaded from: classes2.dex */
public class SrtSizeSeekListener implements SeekBar.OnSeekBarChangeListener {
    private final CinemanaPlayerControllerView controller;
    private final TextView label;

    public SrtSizeSeekListener(CinemanaPlayerControllerView cinemanaPlayerControllerView, TextView textView) {
        this.controller = cinemanaPlayerControllerView;
        this.label = textView;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
        if (z) {
            int i2 = i + 10;
            this.label.setText(I18n161.t("حجم الخط: ") + i2 + "%");
            SrtSettingsHelper.applyPercent(this.controller, i2);
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
    }
}
