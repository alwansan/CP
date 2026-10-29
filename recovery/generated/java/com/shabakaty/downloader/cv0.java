package com.shabakaty.downloader;

import com.shabakaty.cinemana.utils.download.DownloadActionsHandlerScope;
import zendesk.support.request.CellBase;

/* JADX INFO: compiled from: DownloadsActionsHandler.kt */
/* JADX INFO: loaded from: classes.dex */
@pm0(c = "com.shabakaty.cinemana.utils.download.DownloadActionsHandlerScope", f = "DownloadsActionsHandler.kt", l = {162, 163}, m = "deleteDownloadedVideo")
public final class cv0 extends xd0 {
    public Object u;
    public Object v;
    public /* synthetic */ Object w;
    public final /* synthetic */ DownloadActionsHandlerScope x;
    public int y;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cv0(DownloadActionsHandlerScope downloadActionsHandlerScope, ud0<? super cv0> ud0Var) {
        super(ud0Var);
        this.x = downloadActionsHandlerScope;
    }

    @Override // com.shabakaty.downloader.bj
    public final Object t(Object obj) {
        this.w = obj;
        this.y |= CellBase.GROUP_ID_SYSTEM_MESSAGE;
        return DownloadActionsHandlerScope.a(this.x, this);
    }
}
