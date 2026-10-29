package com.shabakaty.downloader;

import android.content.Context;
import android.os.Build;
import com.google.android.material.floatingactionbutton.FloatingActionButton;

/* JADX INFO: compiled from: ChromeCastController.kt */
/* JADX INFO: loaded from: classes.dex */
public final class yz {
    public static yz f;
    public Context a;
    public FloatingActionButton b;
    public xw c;
    public z14<xw> d;
    public tw e;

    public yz(Context context) {
        this.a = context;
        tw twVarD = tw.d(context);
        j32.d(twVarD, "getSharedInstance(context)");
        this.e = twVarD;
        if (Build.VERSION.SDK_INT >= 24) {
            j32.d(this.a.getResources().getConfiguration().getLocales().get(0).getLanguage(), "{\n\t\t\tcontext.resources.c…cales.get(0).language\n\t\t}");
        } else {
            j32.d(this.a.getResources().getConfiguration().locale.getLanguage(), "{\n\t\t\t@Suppress(\"DEPRECAT…ation.locale.language\n\t\t}");
        }
    }
}
