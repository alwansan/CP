package com.shabakaty.downloader;

import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.usermanagement.UserManagement;

/* JADX INFO: compiled from: QrLoginViewModel.kt */
/* JADX INFO: loaded from: classes.dex */
public final class fk3 extends xk<dk3> {
    public UserManagement f;
    public final xv2<Boolean> g;
    public xv2<String> h;

    public fk3(UserManagement userManagement) {
        j32.e(userManagement, "userManagement");
        this.f = userManagement;
        this.g = new xv2<>();
        this.h = new xv2<>(BuildConfig.FLAVOR);
    }
}
