package com.shabakaty.cinemana.mod;

import android.view.View;
import com.shabakaty.cinemana.player.CinemanaPlayerControllerView;

/* JADX INFO: loaded from: classes2.dex */
public class XPlayerClickListener implements View.OnClickListener {
    private final CinemanaPlayerControllerView controller;

    public XPlayerClickListener(CinemanaPlayerControllerView cinemanaPlayerControllerView) {
        this.controller = cinemanaPlayerControllerView;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        XPlayerHelper.openInXPlayer(this.controller);
    }
}
