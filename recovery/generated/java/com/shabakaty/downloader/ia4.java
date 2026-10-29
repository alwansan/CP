package com.shabakaty.downloader;

import com.shabakaty.cinemana.domain.models.local.StatusInfo;

/* JADX INFO: compiled from: SplashViewModel.kt */
/* JADX INFO: loaded from: classes.dex */
public final class ia4 extends af2 implements tm1<StatusInfo.StatusComponent, qv4> {
    public final /* synthetic */ ka4 r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ia4(ka4 ka4Var) {
        super(1);
        this.r = ka4Var;
    }

    @Override // com.shabakaty.downloader.tm1
    public qv4 invoke(StatusInfo.StatusComponent statusComponent) {
        q14 q14Var;
        StatusInfo.StatusComponent statusComponent2 = statusComponent;
        qv4 qv4Var = null;
        if (statusComponent2 != null && (q14Var = statusComponent2.serviceStatus) != null) {
            ka4 ka4Var = this.r;
            if (q14Var instanceof q14.b) {
                ka4Var.f.b.putBoolean("key_service_is_down", false).apply();
                ka4Var.l();
            } else {
                ka4Var.f().z1(q14Var);
            }
            qv4Var = qv4.a;
        }
        if (qv4Var == null) {
            ka4 ka4Var2 = this.r;
            ka4Var2.f.b.putBoolean("key_service_is_down", false).apply();
            ka4Var2.l();
        }
        return qv4.a;
    }
}
