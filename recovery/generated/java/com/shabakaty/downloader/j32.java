package com.shabakaty.downloader;

import java.util.Arrays;

/* JADX INFO: compiled from: Intrinsics.java */
/* JADX INFO: loaded from: classes2.dex */
public class j32 {

    /* JADX INFO: compiled from: Intrinsics.java */
    public static class a {
    }

    public static boolean a(Object obj, Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        return obj.equals(obj2);
    }

    public static void b(Object obj, String str) {
        if (obj != null) {
            return;
        }
        IllegalStateException illegalStateException = new IllegalStateException(el3.a(str, " must not be null"));
        i(illegalStateException, j32.class.getName());
        throw illegalStateException;
    }

    public static void c(Object obj) {
        if (obj != null) {
            return;
        }
        NullPointerException nullPointerException = new NullPointerException();
        i(nullPointerException, j32.class.getName());
        throw nullPointerException;
    }

    public static void d(Object obj, String str) {
        if (obj != null) {
            return;
        }
        NullPointerException nullPointerException = new NullPointerException(el3.a(str, " must not be null"));
        i(nullPointerException, j32.class.getName());
        throw nullPointerException;
    }

    public static void e(Object obj, String str) {
        if (obj != null) {
            return;
        }
        NullPointerException nullPointerException = new NullPointerException(h(str));
        i(nullPointerException, j32.class.getName());
        throw nullPointerException;
    }

    public static void f(Object obj, String str) {
        if (obj != null) {
            return;
        }
        IllegalArgumentException illegalArgumentException = new IllegalArgumentException(h(str));
        i(illegalArgumentException, j32.class.getName());
        throw illegalArgumentException;
    }

    public static int g(int i, int i2) {
        if (i < i2) {
            return -1;
        }
        return i == i2 ? 0 : 1;
    }

    public static String h(String str) {
        StackTraceElement stackTraceElement = Thread.currentThread().getStackTrace()[4];
        return "Parameter specified as non-null is null: method " + stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName() + ", parameter " + str;
    }

    public static <T extends Throwable> T i(T t, String str) {
        StackTraceElement[] stackTrace = t.getStackTrace();
        int length = stackTrace.length;
        int i = -1;
        for (int i2 = 0; i2 < length; i2++) {
            if (str.equals(stackTrace[i2].getClassName())) {
                i = i2;
            }
        }
        t.setStackTrace((StackTraceElement[]) Arrays.copyOfRange(stackTrace, i + 1, length));
        return t;
    }

    public static String j(String str, Object obj) {
        return c50.a(str, obj);
    }

    public static void k() {
        le2 le2Var = new le2();
        i(le2Var, j32.class.getName());
        throw le2Var;
    }

    public static void l(String str) {
        pv4 pv4Var = new pv4(jp2.a("lateinit property ", str, " has not been initialized"));
        i(pv4Var, j32.class.getName());
        throw pv4Var;
    }
}
