package com.shabakaty.downloader;

/* JADX INFO: compiled from: Reflection.java */
/* JADX INFO: loaded from: classes2.dex */
public class dq3 {
    public static final fq3 a;
    public static final gc2[] b;

    static {
        fq3 fq3Var;
        try {
            fq3Var = (fq3) gq3.class.newInstance();
        } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | InstantiationException unused) {
            fq3Var = null;
        }
        if (fq3Var == null) {
            fq3Var = new fq3();
        }
        a = fq3Var;
        b = new gc2[0];
    }

    public static gc2 a(Class cls) {
        return a.b(cls);
    }

    public static xc2 b(zv2 zv2Var) {
        return a.d(zv2Var);
    }

    public static fd2 c(ci3 ci3Var) {
        return a.e(ci3Var);
    }

    public static String d(tn1 tn1Var) {
        return a.f(tn1Var);
    }
}
