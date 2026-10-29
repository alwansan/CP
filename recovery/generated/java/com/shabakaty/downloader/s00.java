package com.shabakaty.downloader;

import com.shabakaty.cinemana.player.CinemanaPlayerControllerView;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class s00 implements Runnable {
    public final /* synthetic */ int r;
    public final /* synthetic */ CinemanaPlayerControllerView s;

    public /* synthetic */ s00(CinemanaPlayerControllerView cinemanaPlayerControllerView, int i) {
        this.r = i;
        if (i != 1) {
        }
        this.s = cinemanaPlayerControllerView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.r) {
            case 0:
                CinemanaPlayerControllerView cinemanaPlayerControllerView = this.s;
                int i = CinemanaPlayerControllerView.E;
                j32.e(cinemanaPlayerControllerView, "this$0");
                s45.l(cinemanaPlayerControllerView);
                break;
            case 1:
                CinemanaPlayerControllerView.v(this.s);
                break;
            case 2:
                CinemanaPlayerControllerView cinemanaPlayerControllerView2 = this.s;
                int i2 = CinemanaPlayerControllerView.E;
                j32.e(cinemanaPlayerControllerView2, "this$0");
                s45.j(cinemanaPlayerControllerView2);
                break;
            default:
                CinemanaPlayerControllerView cinemanaPlayerControllerView3 = this.s;
                int i3 = CinemanaPlayerControllerView.E;
                j32.e(cinemanaPlayerControllerView3, "this$0");
                s45.j(cinemanaPlayerControllerView3);
                break;
        }
    }
}
