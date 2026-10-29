package com.shabakaty.cinemana.mod;

import android.app.AlertDialog;
import android.os.Handler;
import android.os.Looper;
import android.webkit.WebView;
import com.shabakaty.cinemana.player.CinemanaPlayerControllerView;
import com.shabakaty.downloader.s64;

/* JADX INFO: loaded from: classes2.dex */
public final class SubtitlePreviewUpdater implements Runnable {
    private final CinemanaPlayerControllerView controller;
    private final AlertDialog dialog;
    private final Handler handler = new Handler(Looper.getMainLooper());
    private final WebView web;

    public SubtitlePreviewUpdater(WebView webView, CinemanaPlayerControllerView cinemanaPlayerControllerView, AlertDialog alertDialog) {
        this.web = webView;
        this.controller = cinemanaPlayerControllerView;
        this.dialog = alertDialog;
    }

    @Override // java.lang.Runnable
    public void run() {
        s64 player;
        AlertDialog alertDialog = this.dialog;
        if (alertDialog == null || !alertDialog.isShowing()) {
            return;
        }
        CinemanaPlayerControllerView cinemanaPlayerControllerView = this.controller;
        if (cinemanaPlayerControllerView != null && (player = cinemanaPlayerControllerView.getPlayer()) != null) {
            this.web.evaluateJavascript("setCurrent(" + String.valueOf(player.C()) + ")", null);
        }
        this.handler.postDelayed(this, 500L);
    }
}
