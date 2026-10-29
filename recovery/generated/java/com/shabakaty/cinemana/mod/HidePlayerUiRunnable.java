package com.shabakaty.cinemana.mod;

import com.shabakaty.cinemana.player.CinemanaPlayerControllerView;

/* JADX INFO: loaded from: classes2.dex */
public final class HidePlayerUiRunnable implements Runnable {
    private final CinemanaPlayerControllerView controller;

    public HidePlayerUiRunnable(CinemanaPlayerControllerView cinemanaPlayerControllerView) {
        this.controller = cinemanaPlayerControllerView;
    }

    @Override // java.lang.Runnable
    public void run() {
        CinemanaPlayerControllerView cinemanaPlayerControllerView = this.controller;
        if (cinemanaPlayerControllerView != null) {
            PlayerEnhancements.hideAllPlayerUi(cinemanaPlayerControllerView);
        }
    }
}
