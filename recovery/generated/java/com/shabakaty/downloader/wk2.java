package com.shabakaty.downloader;

import android.view.KeyEvent;
import android.widget.TextView;
import com.shabakaty.cinemana.ui.login.LoginActivity;
import com.shabakaty.cinemana.ui.login.SignUpActivity;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class wk2 implements TextView.OnEditorActionListener {
    public final /* synthetic */ int r = 0;
    public final /* synthetic */ Object s;

    public /* synthetic */ wk2(SignUpActivity signUpActivity) {
        this.s = signUpActivity;
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        switch (this.r) {
            case 0:
                LoginActivity loginActivity = (LoginActivity) this.s;
                int i2 = LoginActivity.z;
                j32.e(loginActivity, "this$0");
                if (i != 6 && i != 0) {
                    return false;
                }
                T t = loginActivity.t;
                j32.c(t);
                if (!((c3) t).M.isEnabled()) {
                    return false;
                }
                loginActivity.F().p();
                return true;
            default:
                SignUpActivity signUpActivity = (SignUpActivity) this.s;
                int i3 = SignUpActivity.w;
                j32.e(signUpActivity, "this$0");
                if (i != 6 && i != 0) {
                    return false;
                }
                T t2 = signUpActivity.t;
                j32.c(t2);
                if (!((x3) t2).N.isEnabled()) {
                    return false;
                }
                signUpActivity.x0();
                return true;
        }
    }
}
