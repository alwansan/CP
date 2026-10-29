package com.shabakaty.cinemana.mod;

import com.shabakaty.cinemana.player.CinemanaPlayerControllerView;
import com.shabakaty.downloader.qv4;
import com.shabakaty.downloader.rm1;

/* JADX INFO: loaded from: classes2.dex */
public final class SubtitlePreviewAction implements rm1 {
    private final CinemanaPlayerControllerView controller;

    public SubtitlePreviewAction(CinemanaPlayerControllerView cinemanaPlayerControllerView) {
        this.controller = cinemanaPlayerControllerView;
    }

    @Override // com.shabakaty.downloader.rm1
    public Object invoke() {
        SubtitlePreviewHelper.showPreview(this.controller);
        return qv4.a;
    }
}
