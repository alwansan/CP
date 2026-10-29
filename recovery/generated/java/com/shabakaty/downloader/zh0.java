package com.shabakaty.downloader;

import com.connectsdk.service.capability.listeners.ResponseListener;
import com.connectsdk.service.command.ServiceCommandError;

/* JADX INFO: compiled from: DLNAControllerService.kt */
/* JADX INFO: loaded from: classes.dex */
public final class zh0 implements ResponseListener<Object> {
    public final /* synthetic */ vj3<Long> a;
    public final /* synthetic */ ho3 b;

    public zh0(vj3<Long> vj3Var, int i, ho3 ho3Var) {
        this.a = vj3Var;
        this.b = ho3Var;
    }

    @Override // com.connectsdk.service.capability.listeners.ErrorListener
    public void onError(ServiceCommandError serviceCommandError) {
        if (serviceCommandError != null) {
            hc1.a().b(serviceCommandError);
        }
        this.a.e(Long.valueOf(250));
        this.b.r = false;
    }

    @Override // com.connectsdk.service.capability.listeners.ResponseListener
    public void onSuccess(Object obj) {
        this.a.e(Long.valueOf(250));
        this.b.r = false;
    }
}
