package com.shabakaty.downloader;

import com.cinemana.pro.R;
import com.shabakaty.cinemana.ui.login.SignUpActivity;

/* JADX INFO: compiled from: SignUpActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class y54 extends af2 implements tm1<Boolean, qv4> {
    public final /* synthetic */ SignUpActivity r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y54(SignUpActivity signUpActivity) {
        super(1);
        this.r = signUpActivity;
    }

    @Override // com.shabakaty.downloader.tm1
    public qv4 invoke(Boolean bool) {
        boolean zBooleanValue = bool.booleanValue();
        T t = this.r.t;
        j32.c(t);
        ((x3) t).N.setEnabled(zBooleanValue);
        T t2 = this.r.t;
        j32.c(t2);
        ((x3) t2).N.setBackgroundTintList(zBooleanValue ? wt2.g(this.r, R.color.colorAccent) : wt2.g(this.r, R.color.secondaryTextColor));
        return qv4.a;
    }
}
