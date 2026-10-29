package com.shabakaty.downloader;

import com.shabakaty.cinemana.helpers.casting.DLNAControllerService;
import com.shabakaty.cinemana.player.VideoPlayerActivity;
import com.shabakaty.cinemana.ui.home_activity.CastButton;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class n5 implements xc0 {
    public static final /* synthetic */ n5 s = new n5(0);
    public static final /* synthetic */ n5 t = new n5(1);
    public static final /* synthetic */ n5 u = new n5(2);
    public static final /* synthetic */ n5 v = new n5(3);
    public static final /* synthetic */ n5 w = new n5(4);
    public final /* synthetic */ int r;

    public /* synthetic */ n5(int i) {
        this.r = i;
    }

    @Override // com.shabakaty.downloader.xc0
    public final void accept(Object obj) {
        switch (this.r) {
            case 0:
                a63 a63Var = p5.f;
                hc1.a().b((Throwable) obj);
                break;
            case 1:
                DLNAControllerService dLNAControllerService = DLNAControllerService.G;
                break;
            case 2:
                wt2.k((Throwable) obj);
                break;
            case 3:
                int i = VideoPlayerActivity.A;
                break;
            default:
                int i2 = CastButton.z;
                break;
        }
    }
}
