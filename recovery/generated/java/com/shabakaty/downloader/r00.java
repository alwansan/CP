package com.shabakaty.downloader;

import com.shabakaty.cinemana.player.CinemanaPlayerControllerView;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class r00 implements j2 {
    public final /* synthetic */ int a = 0;
    public final /* synthetic */ Object b;

    public /* synthetic */ r00(CinemanaPlayerControllerView cinemanaPlayerControllerView) {
        this.b = cinemanaPlayerControllerView;
    }

    @Override // com.shabakaty.downloader.j2
    public final void run() {
        switch (this.a) {
            case 0:
                CinemanaPlayerControllerView cinemanaPlayerControllerView = (CinemanaPlayerControllerView) this.b;
                int i = CinemanaPlayerControllerView.E;
                j32.e(cinemanaPlayerControllerView, "this$0");
                cinemanaPlayerControllerView.animate().alpha(0.0f).setDuration(200L).withEndAction(new s00(cinemanaPlayerControllerView, 3)).start();
                mu0 mu0Var = cinemanaPlayerControllerView.u;
                if (mu0Var != null) {
                    mu0Var.h();
                    break;
                }
                break;
            default:
                tu1 tu1Var = (tu1) this.b;
                j32.e(tu1Var, "this$0");
                zi2.k(tu1Var.d);
                ((wt1) tu1Var.f()).e();
                break;
        }
    }
}
