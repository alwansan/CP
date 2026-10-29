package com.shabakaty.downloader;

import android.content.Context;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-cast-framework@@19.0.0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class a24 {
    public final Context a;
    public final String b;
    public final a c = new a(null);

    /* JADX INFO: compiled from: com.google.android.gms:play-services-cast-framework@@19.0.0 */
    public class a extends we5 {
        public a(ml3 ml3Var) {
        }
    }

    public a24(Context context, String str) {
        Objects.requireNonNull(context, "null reference");
        this.a = context.getApplicationContext();
        com.google.android.gms.common.internal.a.f(str);
        this.b = str;
    }

    public abstract s14 a(String str);

    public abstract boolean b();
}
