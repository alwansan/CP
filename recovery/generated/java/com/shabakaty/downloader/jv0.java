package com.shabakaty.downloader;

import com.shabakaty.cinemana.domain.models.local.Subtitle;
import com.shabakaty.cinemana.utils.download.DownloadActionsHandlerScope;

/* JADX INFO: compiled from: DownloadsActionsHandler.kt */
/* JADX INFO: loaded from: classes.dex */
public final class jv0 extends af2 implements tm1<dy0, qv4> {
    public final /* synthetic */ DownloadActionsHandlerScope r;
    public final /* synthetic */ Subtitle s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public jv0(DownloadActionsHandlerScope downloadActionsHandlerScope, Subtitle subtitle) {
        super(1);
        this.r = downloadActionsHandlerScope;
        this.s = subtitle;
    }

    @Override // com.shabakaty.downloader.tm1
    public qv4 invoke(dy0 dy0Var) {
        dy0 dy0Var2 = dy0Var;
        j32.e(dy0Var2, "$this$null");
        dy0Var2.c(new hv0(this.r, this.s));
        dy0Var2.a(new iv0(this.r));
        return qv4.a;
    }
}
