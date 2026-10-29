package com.shabakaty.downloader;

import com.cinemana.pro.R;
import com.shabakaty.usermanagement.callbacks.VerifyDeviceCallback;

/* JADX INFO: compiled from: QrLoginViewModel.kt */
/* JADX INFO: loaded from: classes.dex */
public final class ek3 implements VerifyDeviceCallback {
    public final /* synthetic */ fk3 a;

    public ek3(fk3 fk3Var) {
        this.a = fk3Var;
    }

    @Override // com.shabakaty.usermanagement.callbacks.VerifyDeviceCallback
    public void onVerifyResult(boolean z) {
        this.a.g.postValue(Boolean.FALSE);
        if (!z) {
            this.a.f().q(R.string.qr_login_fail);
        } else {
            this.a.f().q(R.string.qr_login_success);
            this.a.f().k1();
        }
    }
}
