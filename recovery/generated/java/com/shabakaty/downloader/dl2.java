package com.shabakaty.downloader;

import com.cinemana.pro.R;
import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.usermanagement.UserManagement;
import com.shabakaty.usermanagement.callbacks.ForgotPasswordCallback;
import com.shabakaty.usermanagement.callbacks.LoginCallback;
import com.shabakaty.usermanagement.callbacks.ResetPasswordCallback;

/* JADX INFO: compiled from: LoginViewModel.kt */
/* JADX INFO: loaded from: classes.dex */
public final class dl2 extends cl2<yk2> {
    public final UserManagement h;
    public final ox4 i;
    public LoginCallback j;
    public final d k;
    public final kf2 l;
    public final b m;
    public final xv2<String> n;
    public final xv2<String> o;
    public String p;
    public String q;
    public String r;
    public String s;
    public final xv2<Boolean> t;

    /* JADX INFO: compiled from: LoginViewModel.kt */
    public static final class a extends af2 implements rm1<mq3> {
        public static final a r = new a();

        public a() {
            super(0);
        }

        @Override // com.shabakaty.downloader.rm1
        public mq3 invoke() {
            return new mq3("[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?");
        }
    }

    /* JADX INFO: compiled from: LoginViewModel.kt */
    public static final class b implements ForgotPasswordCallback {
        public b() {
        }

        @Override // com.shabakaty.usermanagement.callbacks.ForgotPasswordCallback
        public void onForgotPasswordRequestResult(boolean z) {
            if (!z) {
                ((yk2) dl2.this.f()).q(R.string.recovery_failed_txt);
            } else {
                ((yk2) dl2.this.f()).q(R.string.please_check_your_email_txt);
                ((yk2) dl2.this.f()).M1();
            }
        }
    }

    /* JADX INFO: compiled from: LoginViewModel.kt */
    public static final class c implements LoginCallback {
        public c() {
        }

        @Override // com.shabakaty.usermanagement.callbacks.LoginCallback
        public void onLoginResult(boolean z) {
            if (z) {
                return;
            }
            dl2.this.r();
        }
    }

    /* JADX INFO: compiled from: LoginViewModel.kt */
    public static final class d implements ResetPasswordCallback {
        public d() {
        }

        @Override // com.shabakaty.usermanagement.callbacks.ResetPasswordCallback
        public void onResetPasswordRequestResult(boolean z) {
            if (!z) {
                ((yk2) dl2.this.f()).q(R.string.reset_failed_txt);
            } else {
                ((yk2) dl2.this.f()).q(R.string.reset_success_txt);
                ((yk2) dl2.this.f()).x();
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dl2(UserManagement userManagement, ox4 ox4Var, al2 al2Var) {
        super(al2Var);
        j32.e(userManagement, "userManagement");
        j32.e(ox4Var, "userActionsUseCases");
        j32.e(al2Var, "loginStateObserver");
        this.h = userManagement;
        this.i = ox4Var;
        this.j = new c();
        this.k = new d();
        this.l = ng2.a(a.r);
        LoginCallback loginCallback = this.j;
        if (loginCallback != null) {
            userManagement.setLoginCallback(loginCallback);
        }
        this.m = new b();
        this.n = new xv2<>();
        this.o = new xv2<>();
        this.p = BuildConfig.FLAVOR;
        this.q = BuildConfig.FLAVOR;
        this.r = BuildConfig.FLAVOR;
        this.s = BuildConfig.FLAVOR;
        this.t = new xv2<>();
    }

    @Override // com.shabakaty.downloader.cl2
    public void l() {
        nh3.y(e(), null, 0, new el2(this, null), 3, null);
        this.t.postValue(Boolean.FALSE);
        ((yk2) f()).j1();
    }

    @Override // com.shabakaty.downloader.cl2
    public void o(Throwable th) {
        r();
    }

    @Override // com.shabakaty.downloader.xk, com.shabakaty.downloader.o35
    public void onCleared() {
        super.onCleared();
        this.j = null;
    }

    public final void p() {
        this.n.setValue(((yk2) f()).J());
        this.o.setValue(((yk2) f()).m1());
        String value = this.n.getValue();
        if (!(value == null || ne4.D(value))) {
            String value2 = this.o.getValue();
            if (!(value2 == null || ne4.D(value2))) {
                this.t.postValue(Boolean.TRUE);
                UserManagement userManagement = this.h;
                String value3 = this.n.getValue();
                String str = BuildConfig.FLAVOR;
                if (value3 == null) {
                    value3 = BuildConfig.FLAVOR;
                }
                String value4 = this.o.getValue();
                if (value4 != null) {
                    str = value4;
                }
                userManagement.login(value3, str);
                return;
            }
        }
        ((yk2) f()).q(R.string.both_fields_are_required_txt);
    }

    public final void q(boolean z) {
        this.t.postValue(Boolean.valueOf(z));
    }

    public final void r() {
        this.t.postValue(Boolean.FALSE);
        try {
            ((yk2) f()).G0();
        } catch (Throwable th) {
            j96.b(th);
        }
    }
}
