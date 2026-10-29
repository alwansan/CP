package com.shabakaty.downloader;

import android.util.Log;
import java.util.Objects;

/* JADX INFO: compiled from: FirebaseCrashlytics.java */
/* JADX INFO: loaded from: classes.dex */
public class hc1 {
    public final zf0 a;

    public hc1(zf0 zf0Var) {
        this.a = zf0Var;
    }

    public static hc1 a() {
        ec1 ec1VarB = ec1.b();
        ec1VarB.a();
        hc1 hc1Var = (hc1) ec1VarB.d.a(hc1.class);
        Objects.requireNonNull(hc1Var, "FirebaseCrashlytics component is not present.");
        return hc1Var;
    }

    public void b(Throwable th) {
        if (th == null) {
            Log.w("FirebaseCrashlytics", "A null value was passed to recordException. Ignoring.", null);
            return;
        }
        tf0 tf0Var = this.a.f;
        Thread threadCurrentThread = Thread.currentThread();
        Objects.requireNonNull(tf0Var);
        long jCurrentTimeMillis = System.currentTimeMillis();
        hf0 hf0Var = tf0Var.d;
        hf0Var.b(new if0(hf0Var, new vf0(tf0Var, jCurrentTimeMillis, th, threadCurrentThread)));
    }
}
