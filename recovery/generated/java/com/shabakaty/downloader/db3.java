package com.shabakaty.downloader;

import com.shabakaty.cinemana.utils.download.PausedDownloadHandler;
import zendesk.support.request.CellBase;

/* JADX INFO: compiled from: PausedDownloadHandler.kt */
/* JADX INFO: loaded from: classes.dex */
@pm0(c = "com.shabakaty.cinemana.utils.download.PausedDownloadHandler", f = "PausedDownloadHandler.kt", l = {26, 28}, m = "handlePauseClick")
public final class db3 extends xd0 {
    public Object u;
    public Object v;
    public /* synthetic */ Object w;
    public final /* synthetic */ PausedDownloadHandler x;
    public int y;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public db3(PausedDownloadHandler pausedDownloadHandler, ud0<? super db3> ud0Var) {
        super(ud0Var);
        this.x = pausedDownloadHandler;
    }

    @Override // com.shabakaty.downloader.bj
    public final Object t(Object obj) {
        this.w = obj;
        this.y |= CellBase.GROUP_ID_SYSTEM_MESSAGE;
        return PausedDownloadHandler.p(this.x, this);
    }
}
