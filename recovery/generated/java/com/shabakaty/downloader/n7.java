package com.shabakaty.downloader;

import android.os.Handler;
import android.os.Looper;
import java.util.Objects;

/* JADX INFO: compiled from: AndroidSchedulers.java */
/* JADX INFO: loaded from: classes.dex */
public final class n7 {
    public static final wx3 a;

    /* JADX INFO: compiled from: AndroidSchedulers.java */
    public static final class a {
        public static final wx3 a = new es1(new Handler(Looper.getMainLooper()), false);
    }

    static {
        try {
            wx3 wx3Var = a.a;
            if (wx3Var == null) {
                throw new NullPointerException("Scheduler Callable returned null");
            }
            a = wx3Var;
        } catch (Throwable th) {
            throw d61.d(th);
        }
    }

    public static wx3 a() {
        wx3 wx3Var = a;
        Objects.requireNonNull(wx3Var, "scheduler == null");
        return wx3Var;
    }
}
