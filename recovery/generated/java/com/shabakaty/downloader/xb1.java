package com.shabakaty.downloader;

import com.shabakaty.cinemana.utils.download.FinishedDownloadScope;
import zendesk.support.request.CellBase;

/* JADX INFO: compiled from: FinishedDownloadHandler.kt */
/* JADX INFO: loaded from: classes.dex */
@pm0(c = "com.shabakaty.cinemana.utils.download.FinishedDownloadScope", f = "FinishedDownloadHandler.kt", l = {28, 29}, m = "showFinishedDialog")
public final class xb1 extends xd0 {
    public Object u;
    public /* synthetic */ Object v;
    public final /* synthetic */ FinishedDownloadScope w;
    public int x;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xb1(FinishedDownloadScope finishedDownloadScope, ud0<? super xb1> ud0Var) {
        super(ud0Var);
        this.w = finishedDownloadScope;
    }

    @Override // com.shabakaty.downloader.bj
    public final Object t(Object obj) {
        this.v = obj;
        this.x |= CellBase.GROUP_ID_SYSTEM_MESSAGE;
        return FinishedDownloadScope.p(this.w, this);
    }
}
