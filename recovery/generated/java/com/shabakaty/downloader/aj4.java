package com.shabakaty.downloader;

import com.liulishuo.filedownloader.BuildConfig;

/* JADX INFO: compiled from: SwitchItem.kt */
/* JADX INFO: loaded from: classes.dex */
public final class aj4 extends gn {
    public final tm1<Boolean, qv4> a;
    public final boolean b;
    public final String c;

    public aj4() {
        this(null, false, null, 0, 15);
    }

    public aj4(tm1 tm1Var, boolean z, String str, int i, int i2) {
        tm1Var = (i2 & 1) != 0 ? null : tm1Var;
        z = (i2 & 2) != 0 ? false : z;
        str = (i2 & 4) != 0 ? BuildConfig.FLAVOR : str;
        j32.e(str, "text");
        this.a = tm1Var;
        this.b = z;
        this.c = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public aj4(tm1<? super Boolean, qv4> tm1Var, boolean z, String str, int i) {
        this.a = tm1Var;
        this.b = z;
        this.c = str;
    }
}
