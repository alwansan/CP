package com.shabakaty.downloader;

import com.shabakaty.cinemana.player.CinemanaPlayerView;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class d10 implements Runnable {
    public final /* synthetic */ int r;
    public final /* synthetic */ CinemanaPlayerView s;
    public final /* synthetic */ int t;

    public /* synthetic */ d10(CinemanaPlayerView cinemanaPlayerView, int i, int i2) {
        this.r = i2;
        this.s = cinemanaPlayerView;
        this.t = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.r) {
            case 0:
                CinemanaPlayerView.m(this.s, this.t);
                break;
            default:
                CinemanaPlayerView.l(this.s, this.t);
                break;
        }
    }
}
