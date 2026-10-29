package com.shabakaty.downloader;

import android.content.Context;
import android.os.Bundle;
import com.shabakaty.downloader.workers.RenewPathsWorker;
import java.io.Serializable;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.1 */
/* JADX INFO: loaded from: classes.dex */
public class tp6 implements pr2 {
    public static final mu0 a(mu0 mu0Var, c90 c90Var) {
        if (c90Var != null) {
            c90Var.b(mu0Var);
        }
        return mu0Var;
    }

    public static final <T extends gn> void b(T t, List<T> list) {
        j32.e(list, "list");
        list.add(t);
    }

    public static final <T extends gn> void c(T t, List<T> list, int i) {
        j32.e(list, "list");
        list.add(i, t);
    }

    public static float d(float f, float f2, float f3, float f4) {
        return (float) Math.hypot(f3 - f, f4 - f2);
    }

    public static int e(long j) {
        return (int) (j ^ (j >>> 32));
    }

    public static float f(float f, float f2, float f3) {
        return (f3 * f2) + ((1.0f - f3) * f);
    }

    public static final void g(Context context) {
        t73.a aVar = new t73.a(RenewPathsWorker.class);
        aVar.c.add("RenewPaths");
        t73 t73VarA = aVar.a();
        j32.d(t73VarA, "OneTimeWorkRequestBuilde…\"RenewPaths\")\n\t\t\t.build()");
        r75 r75VarB = r75.b(context);
        j32.d(r75VarB, "getInstance(context)");
        r75VarB.a("RenewPaths", 2, t73VarA);
    }

    public static <T> fp6<T> h(fp6<T> fp6Var) {
        if ((fp6Var instanceof mp6) || (fp6Var instanceof kp6)) {
            return fp6Var;
        }
        return fp6Var instanceof Serializable ? new kp6(fp6Var) : new mp6(fp6Var);
    }

    public static <T> T i(Bundle bundle, String str, Class<T> cls, T t) {
        T t2 = (T) bundle.get(str);
        if (t2 == null) {
            return t;
        }
        if (cls.isAssignableFrom(t2.getClass())) {
            return t2;
        }
        throw new IllegalStateException(String.format("Invalid conditional user property field type. '%s' expected [%s] but was [%s]", str, cls.getCanonicalName(), t2.getClass().getCanonicalName()));
    }

    public static Object j(Object obj, int i) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException(gl3.a(20, "at index ", i));
    }

    public static void k(Bundle bundle, Object obj) {
        if (obj instanceof Double) {
            bundle.putDouble("value", ((Double) obj).doubleValue());
        } else if (obj instanceof Long) {
            bundle.putLong("value", ((Long) obj).longValue());
        } else {
            bundle.putString("value", obj.toString());
        }
    }
}
