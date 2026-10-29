package com.shabakaty.cinemana.mod;

import android.view.View;
import com.shabakaty.cinemana.player.CinemanaPlayerControllerView;

/* JADX INFO: loaded from: classes2.dex */
public class SrtSettingsClickListener implements View.OnClickListener {
    private final CinemanaPlayerControllerView controller;

    public SrtSettingsClickListener(CinemanaPlayerControllerView cinemanaPlayerControllerView) {
        this.controller = cinemanaPlayerControllerView;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        SrtSettingsHelper.showDialog(this.controller);
    }
}
