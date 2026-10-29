package com.shabakaty.downloader;

import com.shabakaty.cinemana.helpers.casting.DLNAControllerService;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class nx4 implements xc0 {
    public static final /* synthetic */ nx4 s = new nx4(0);
    public static final /* synthetic */ nx4 t = new nx4(1);
    public static final /* synthetic */ nx4 u = new nx4(2);
    public static final /* synthetic */ nx4 v = new nx4(3);
    public final /* synthetic */ int r;

    public /* synthetic */ nx4(int i) {
        this.r = i;
    }

    @Override // com.shabakaty.downloader.xc0
    public final void accept(Object obj) {
        switch (this.r) {
            case 0:
                break;
            case 1:
                DLNAControllerService dLNAControllerService = DLNAControllerService.G;
                break;
            case 2:
                wt2.k((Throwable) obj);
                break;
            default:
                break;
        }
    }
}
