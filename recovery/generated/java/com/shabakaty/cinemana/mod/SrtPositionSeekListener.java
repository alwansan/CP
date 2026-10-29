package com.shabakaty.cinemana.mod;

import android.widget.SeekBar;
import com.shabakaty.cinemana.player.CinemanaPlayerControllerView;

/* JADX INFO: loaded from: classes2.dex */
public class SrtPositionSeekListener implements SeekBar.OnSeekBarChangeListener {
    private final CinemanaPlayerControllerView controller;

    public SrtPositionSeekListener(CinemanaPlayerControllerView cinemanaPlayerControllerView) {
        this.controller = cinemanaPlayerControllerView;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
        float f = i - 200;
        SrtSettingsHelper.applyTranslationY(this.controller, f);
        SrtSettingsHelper.saveTranslationY(this.controller.getContext(), f);
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
    }
}
