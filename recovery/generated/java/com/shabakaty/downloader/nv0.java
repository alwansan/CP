package com.shabakaty.downloader;

import android.content.Context;
import com.cinemana.pro.permissions.DownloadPermissionFlow;
import com.shabakaty.cinemana.utils.download.DownloadActionsHandlerScope;
import com.shabakaty.downloader.views.DownloadButton;

/* JADX INFO: compiled from: DownloadsActionsHandler.kt */
/* JADX INFO: loaded from: classes.dex */
public final class nv0 extends af2 implements rm1<qv4> {
    public final /* synthetic */ DownloadActionsHandlerScope r;
    public final /* synthetic */ tm1<DownloadButton, qv4> s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public nv0(DownloadActionsHandlerScope downloadActionsHandlerScope, tm1<? super DownloadButton, qv4> tm1Var) {
        super(0);
        this.r = downloadActionsHandlerScope;
        this.s = tm1Var;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0025  */
    @Override // com.shabakaty.downloader.rm1
    public qv4 invoke() {
        DownloadActionsHandlerScope downloadActionsHandlerScope = this.r;
        if (downloadActionsHandlerScope.v) {
            Context contextF = downloadActionsHandlerScope.f();
            if (contextF == null) {
                downloadActionsHandlerScope.v = false;
            } else if (DownloadPermissionFlow.afterReturn(contextF)) {
                downloadActionsHandlerScope.v = false;
                DownloadButton downloadButton = downloadActionsHandlerScope.u;
                if (downloadButton != null) {
                    this.s.invoke(downloadButton);
                }
            } else if (!DownloadPermissionFlow.hasPending()) {
                downloadActionsHandlerScope.v = false;
            }
        }
        return qv4.a;
    }
}
