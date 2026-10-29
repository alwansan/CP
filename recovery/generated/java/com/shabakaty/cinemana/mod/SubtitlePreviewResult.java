package com.shabakaty.cinemana.mod;

import android.content.Context;
import com.shabakaty.cinemana.player.CinemanaPlayerControllerView;

/* JADX INFO: loaded from: classes2.dex */
public final class SubtitlePreviewResult implements Runnable {
    private final Context context;
    private final CinemanaPlayerControllerView controller;
    private final String text;

    public SubtitlePreviewResult(Context context, String str, CinemanaPlayerControllerView cinemanaPlayerControllerView) {
        this.context = context;
        this.text = str;
        this.controller = cinemanaPlayerControllerView;
    }

    @Override // java.lang.Runnable
    public void run() {
        SubtitlePreviewHelper.showDialog(this.context, this.text, this.controller);
    }
}
