package com.shabakaty.cinemana.utils.user;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import com.shabakaty.cinemana.ui.login.LoginActivity;
import com.shabakaty.usermanagement.utils.account.AccountAuthenticator;
import kotlin.Metadata;

/* JADX INFO: compiled from: AccountAuthenticatorService.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/shabakaty/cinemana/utils/user/AccountAuthenticatorService;", "Landroid/app/Service;", "<init>", "()V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final class AccountAuthenticatorService extends Service {
    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return new AccountAuthenticator(this, LoginActivity.class).getIBinder();
    }
}
