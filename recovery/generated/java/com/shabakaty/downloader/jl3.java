package com.shabakaty.downloader;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import androidx.fragment.app.Fragment;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes.dex */
public class jl3 {
    public static Executor a() {
        if (kt0.r != null) {
            return kt0.r;
        }
        synchronized (kt0.class) {
            if (kt0.r == null) {
                kt0.r = new kt0();
            }
        }
        return kt0.r;
    }

    public static final <F extends Fragment> F b(View view) {
        F f;
        View view2 = view;
        while (true) {
            f = null;
            if (view2 == null) {
                break;
            }
            Fragment fragmentN = androidx.fragment.app.q.N(view2);
            if (fragmentN != null) {
                f = (F) fragmentN;
                break;
            }
            Object parent = view2.getParent();
            view2 = parent instanceof View ? (View) parent : null;
        }
        if (f != null) {
            return f;
        }
        throw new IllegalStateException("View " + view + " does not have a Fragment set");
    }

    public static int c(Context context, int i, int i2) {
        TypedValue typedValueA = cn2.a(context, i);
        return typedValueA != null ? typedValueA.data : i2;
    }

    public static int d(View view, int i) {
        return cn2.c(view.getContext(), i, view.getClass().getCanonicalName());
    }

    public static Executor e() {
        if (ft1.s != null) {
            return ft1.s;
        }
        synchronized (ft1.class) {
            if (ft1.s == null) {
                ft1.s = new ft1();
            }
        }
        return ft1.s;
    }

    public static int f(int i, int i2, float f) {
        return h60.e(h60.h(i2, Math.round(Color.alpha(i2) * f)), i);
    }

    public static void g(String str, String str2) {
        if (Log.isLoggable(str, 2)) {
            Log.v(str, str2);
        }
    }

    public static void h(String str, String str2) {
        if (Log.isLoggable(str, 5)) {
            Log.w(str, str2);
        }
    }

    public static ScheduledExecutorService i() {
        if (zl2.r != null) {
            return zl2.r;
        }
        synchronized (zl2.class) {
            if (zl2.r == null) {
                zl2.r = new ds1(new Handler(Looper.getMainLooper()));
            }
        }
        return zl2.r;
    }

    public static String j(String str, String str2, Collection collection) {
        StringBuilder sb = new StringBuilder(str);
        String upperCase = str2.toUpperCase();
        if (!upperCase.matches("[A-F0-9]+")) {
            throw new IllegalArgumentException(str2.length() != 0 ? "Invalid application ID: ".concat(str2) : new String("Invalid application ID: "));
        }
        sb.append("/");
        sb.append(upperCase);
        if (collection != null) {
            if (collection.isEmpty()) {
                throw new IllegalArgumentException("Must specify at least one namespace");
            }
            sb.append("/");
            Iterator it = collection.iterator();
            boolean z = true;
            while (it.hasNext()) {
                String string = (String) it.next();
                yw.d(string);
                if (z) {
                    z = false;
                } else {
                    sb.append(",");
                }
                if (!yw.a.matcher(string).matches()) {
                    StringBuilder sb2 = new StringBuilder(string.length());
                    for (int i = 0; i < string.length(); i++) {
                        char cCharAt = string.charAt(i);
                        if (((cCharAt >= 'A' && cCharAt <= 'Z') || (cCharAt >= 'a' && cCharAt <= 'z') || ((cCharAt >= '0' && cCharAt <= '9') || cCharAt == '_' || cCharAt == '-')) || cCharAt == '.' || cCharAt == ':') {
                            sb2.append(cCharAt);
                        } else {
                            sb2.append(String.format("%%%04x", Integer.valueOf(cCharAt & 65535)));
                        }
                    }
                    string = sb2.toString();
                }
                sb.append(string);
            }
        }
        if (collection == null) {
            sb.append("/");
        }
        return il3.a(sb, "/", "/", "ALLOW_IPV6");
    }

    public static uf5 k(uf5 uf5Var, np4 np4Var, bh5 bh5Var, Boolean bool, Boolean bool2) {
        uf5 uf5Var2 = new uf5();
        Iterator<Integer> itZ = uf5Var.z();
        while (itZ.hasNext()) {
            int iIntValue = itZ.next().intValue();
            if (uf5Var.F(iIntValue)) {
                gj5 gj5VarA = bh5Var.a(np4Var, Arrays.asList(uf5Var.u(iIntValue), new ug5(Double.valueOf(iIntValue)), uf5Var));
                if (gj5VarA.i().equals(bool)) {
                    return uf5Var2;
                }
                if (bool2 == null || gj5VarA.i().equals(bool2)) {
                    uf5Var2.E(iIntValue, gj5VarA);
                }
            }
        }
        return uf5Var2;
    }

    public static String l(String str, String[] strArr, String[] strArr2) {
        int iMin = Math.min(strArr.length, strArr2.length);
        for (int i = 0; i < iMin; i++) {
            String str2 = strArr[i];
            if ((str == null && str2 == null) || (str != null && str.equals(str2))) {
                return strArr2[i];
            }
        }
        return null;
    }

    public static gj5 m(uf5 uf5Var, np4 np4Var, List<gj5> list, boolean z) {
        gj5 gj5VarA;
        kl3.u("reduce", 1, list);
        kl3.v("reduce", 2, list);
        gj5 gj5VarF = np4Var.f(list.get(0));
        if (!(gj5VarF instanceof bh5)) {
            throw new IllegalArgumentException("Callback should be a method");
        }
        if (list.size() == 2) {
            gj5VarA = np4Var.f(list.get(1));
            if (gj5VarA instanceof ng5) {
                throw new IllegalArgumentException("Failed to parse initial value");
            }
        } else {
            if (uf5Var.s() == 0) {
                throw new IllegalStateException("Empty array with no initial value error");
            }
            gj5VarA = null;
        }
        bh5 bh5Var = (bh5) gj5VarF;
        int iS = uf5Var.s();
        int i = z ? 0 : iS - 1;
        int i2 = z ? iS - 1 : 0;
        int i3 = true == z ? 1 : -1;
        if (gj5VarA == null) {
            gj5VarA = uf5Var.u(i);
            i += i3;
        }
        while ((i2 - i) * i3 >= 0) {
            if (uf5Var.F(i)) {
                gj5VarA = bh5Var.a(np4Var, Arrays.asList(gj5VarA, uf5Var.u(i), new ug5(Double.valueOf(i)), uf5Var));
                if (gj5VarA instanceof ng5) {
                    throw new IllegalStateException("Reduce operation failed");
                }
                i += i3;
            } else {
                i += i3;
            }
        }
        return gj5VarA;
    }

    public static String n(Context context, String str, String str2) {
        Objects.requireNonNull(context, "null reference");
        Resources resources = context.getResources();
        if (TextUtils.isEmpty(str2)) {
            str2 = bd6.a(context);
        }
        return bd6.b("google_app_id", resources, str2);
    }
}
