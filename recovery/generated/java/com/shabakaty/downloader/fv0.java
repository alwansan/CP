package com.shabakaty.downloader;

import com.connectsdk.R;
import com.shabakaty.cinemana.utils.download.DownloadActionsHandlerScope;
import zendesk.support.request.CellBase;

/* JADX INFO: compiled from: DownloadsActionsHandler.kt */
/* JADX INFO: loaded from: classes.dex */
@pm0(c = "com.shabakaty.cinemana.utils.download.DownloadActionsHandlerScope", f = "DownloadsActionsHandler.kt", l = {R.styleable.AppCompatTheme_windowFixedHeightMajor}, m = "maybeInsertNewDownloadItem")
public final class fv0 extends xd0 {
    public Object u;
    public /* synthetic */ Object v;
    public final /* synthetic */ DownloadActionsHandlerScope w;
    public int x;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fv0(DownloadActionsHandlerScope downloadActionsHandlerScope, ud0<? super fv0> ud0Var) {
        super(ud0Var);
        this.w = downloadActionsHandlerScope;
    }

    @Override // com.shabakaty.downloader.bj
    public final Object t(Object obj) {
        this.v = obj;
        this.x |= CellBase.GROUP_ID_SYSTEM_MESSAGE;
        return DownloadActionsHandlerScope.c(this.w, null, this);
    }
}
