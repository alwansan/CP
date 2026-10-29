package com.shabakaty.downloader;

import com.shabakaty.cinemana.player.CinemanaPlayerView;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class c10 implements Runnable {
    public final /* synthetic */ int r;
    public final /* synthetic */ CinemanaPlayerView s;

    public /* synthetic */ c10(CinemanaPlayerView cinemanaPlayerView, int i) {
        this.r = i;
        this.s = cinemanaPlayerView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.r) {
            case 0:
                CinemanaPlayerView cinemanaPlayerView = this.s;
                int i = CinemanaPlayerView.z;
                j32.e(cinemanaPlayerView, "this$0");
                cinemanaPlayerView.getBinding().P.animate().alpha(0.0f).setDuration(800L).withEndAction(new c10(cinemanaPlayerView, 1)).start();
                break;
            default:
                CinemanaPlayerView.n(this.s);
                break;
        }
    }
}
