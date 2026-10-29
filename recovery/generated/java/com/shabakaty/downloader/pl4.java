package com.shabakaty.downloader;

import android.graphics.drawable.Drawable;
import com.liulishuo.filedownloader.BuildConfig;

/* JADX INFO: compiled from: TextButtonItem.kt */
/* JADX INFO: loaded from: classes.dex */
public final class pl4 extends gn {
    public Drawable a;
    public String b;
    public rm1<qv4> c;
    public String d;
    public boolean e;

    public pl4() {
        this(null, null, null, null, false, 31);
    }

    public /* synthetic */ pl4(Drawable drawable, String str, rm1 rm1Var, String str2, boolean z, int i) {
        this(null, (i & 2) != 0 ? BuildConfig.FLAVOR : str, (i & 4) != 0 ? null : rm1Var, (i & 8) == 0 ? null : BuildConfig.FLAVOR, (i & 16) != 0 ? true : z);
    }

    public final void a(String str) {
        j32.e(str, "<set-?>");
        this.b = str;
    }

    public pl4(Drawable drawable, String str, rm1<qv4> rm1Var, String str2, boolean z) {
        j32.e(str, "listItemName");
        j32.e(str2, "value");
        this.a = drawable;
        this.b = str;
        this.c = rm1Var;
        this.d = str2;
        this.e = z;
    }
}
