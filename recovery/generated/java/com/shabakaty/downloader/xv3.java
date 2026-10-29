package com.shabakaty.downloader;

import java.util.Objects;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: RxJavaPlugins.java */
/* JADX INFO: loaded from: classes2.dex */
public final class xv3 {
    public static volatile xc0<? super Throwable> a;

    public static wx3 a(Callable<wx3> callable) {
        try {
            wx3 wx3VarCall = callable.call();
            Objects.requireNonNull(wx3VarCall, "Scheduler Callable result can't be null");
            return wx3VarCall;
        } catch (Throwable th) {
            throw d61.d(th);
        }
    }

    public static void b(Throwable th) {
        xc0<? super Throwable> xc0Var = a;
        if (th == null) {
            th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        } else {
            boolean z = true;
            if (!(th instanceof o63) && !(th instanceof xt2) && !(th instanceof IllegalStateException) && !(th instanceof NullPointerException) && !(th instanceof IllegalArgumentException) && !(th instanceof d90)) {
                z = false;
            }
            if (!z) {
                th = new kv4(th);
            }
        }
        if (xc0Var != null) {
            try {
                xc0Var.accept(th);
                return;
            } catch (Throwable th2) {
                th2.printStackTrace();
                Thread threadCurrentThread = Thread.currentThread();
                threadCurrentThread.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread, th2);
            }
        }
        th.printStackTrace();
        Thread threadCurrentThread2 = Thread.currentThread();
        threadCurrentThread2.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread2, th);
    }
}
