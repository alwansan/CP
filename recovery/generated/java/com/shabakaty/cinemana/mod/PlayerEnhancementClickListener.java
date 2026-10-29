package com.shabakaty.cinemana.mod;

import android.view.View;
import com.shabakaty.cinemana.player.CinemanaPlayerControllerView;

/* JADX INFO: loaded from: classes2.dex */
public final class PlayerEnhancementClickListener implements View.OnClickListener {
    private final CinemanaPlayerControllerView controller;

    public PlayerEnhancementClickListener(CinemanaPlayerControllerView cinemanaPlayerControllerView) {
        this.controller = cinemanaPlayerControllerView;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        PlayerEnhancements.performMultiSkip(this.controller);
    }
}
