package com.shabakaty.cinemana.ui.home_activity;

import com.cinemana.pro.R;
import com.shabakaty.downloader.af2;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.qv4;
import com.shabakaty.downloader.tm1;
import com.shabakaty.downloader.u7;

/* JADX INFO: compiled from: HomeActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a extends af2 implements tm1<u7, qv4> {
    public static final a r = new a();

    public a() {
        super(1);
    }

    @Override // com.shabakaty.downloader.tm1
    public qv4 invoke(u7 u7Var) {
        u7 u7Var2 = u7Var;
        j32.e(u7Var2, "$this$anim");
        u7Var2.d = R.anim.slide_out_down;
        return qv4.a;
    }
}
