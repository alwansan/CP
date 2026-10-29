package com.shabakaty.downloader;

import android.graphics.Color;
import android.text.Spannable;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.Toolbar;
import androidx.navigation.NavController;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public class ol3 {
    public static void a(Spannable spannable, Object obj, int i, int i2, int i3) {
        for (Object obj2 : spannable.getSpans(i, i2, obj.getClass())) {
            if (spannable.getSpanStart(obj2) == i && spannable.getSpanEnd(obj2) == i2 && spannable.getSpanFlags(obj2) == i3) {
                spannable.removeSpan(obj2);
            }
        }
        spannable.setSpan(obj, i, i2, i3);
    }

    public static String b(String str) {
        StringBuilder sbA = nl3.a(dl3.a(str, dl3.a(str, 5)), ".", str, ",.", str);
        sbA.append(" *");
        return sbA.toString();
    }

    public static <T extends View> T c(View view, int i) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            T t = (T) viewGroup.getChildAt(i2).findViewById(i);
            if (t != null) {
                return t;
            }
        }
        return null;
    }

    public static final pe0 d(vt3 vt3Var) {
        j32.e(vt3Var, "$this$queryDispatcher");
        Map<String, Object> map = vt3Var.l;
        j32.d(map, "backingFieldMap");
        Object u61Var = map.get("QueryDispatcher");
        if (u61Var == null) {
            Executor executor = vt3Var.b;
            j32.d(executor, "queryExecutor");
            u61Var = new u61(executor);
            map.put("QueryDispatcher", u61Var);
        }
        return (pe0) u61Var;
    }

    public static final pe0 e(vt3 vt3Var) {
        j32.e(vt3Var, "$this$transactionDispatcher");
        Map<String, Object> map = vt3Var.l;
        j32.d(map, "backingFieldMap");
        Object u61Var = map.get("TransactionDispatcher");
        if (u61Var == null) {
            Executor executor = vt3Var.c;
            j32.d(executor, "transactionExecutor");
            u61Var = new u61(executor);
            map.put("TransactionDispatcher", u61Var);
        }
        return (pe0) u61Var;
    }

    public static final androidx.navigation.g f(tm1<? super cx2, qv4> tm1Var) {
        j32.f(tm1Var, "optionsBuilder");
        cx2 cx2Var = new cx2();
        tm1Var.invoke(cx2Var);
        androidx.navigation.g.a aVar = cx2Var.a;
        aVar.a = cx2Var.b;
        aVar.b = cx2Var.c;
        aVar.c = false;
        return aVar.a();
    }

    public static final void g(Toolbar toolbar, NavController navController, m9 m9Var) {
        j32.f(toolbar, "$this$setupWithNavController");
        j32.f(navController, "navController");
        j32.f(m9Var, "configuration");
        navController.a(new fo4(toolbar, m9Var));
        toolbar.setNavigationOnClickListener(new wx2(navController, m9Var));
    }

    public static void h(Toolbar toolbar, NavController navController, m9 m9Var, int i) {
        int i2 = i & 2;
        m9 m9Var2 = null;
        if (i2 != 0) {
            androidx.navigation.c cVarG = navController.g();
            j32.b(cVarG, "navController.graph");
            n9 n9Var = n9.r;
            HashSet hashSet = new HashSet();
            while (cVarG instanceof androidx.navigation.d) {
                androidx.navigation.d dVar = (androidx.navigation.d) cVarG;
                cVarG = dVar.s(dVar.A);
            }
            hashSet.add(Integer.valueOf(cVarG.t));
            Object o9Var = n9Var;
            if (n9Var != null) {
                o9Var = new o9(n9Var, 0);
            }
            m9Var2 = new m9(hashSet, null, (m9.b) o9Var, null);
        }
        g(toolbar, navController, m9Var2);
    }

    public static String i(int i) {
        return sy4.n("rgba(%d,%d,%d,%.3f)", Integer.valueOf(Color.red(i)), Integer.valueOf(Color.green(i)), Integer.valueOf(Color.blue(i)), Double.valueOf(((double) Color.alpha(i)) / 255.0d));
    }

    public static gj5 j(ai5 ai5Var, gj5 gj5Var, np4 np4Var, List<gj5> list) {
        ck5 ck5Var = (ck5) gj5Var;
        if (ai5Var.l(ck5Var.r)) {
            gj5 gj5VarM = ai5Var.m(ck5Var.r);
            if (gj5VarM instanceof bh5) {
                return ((bh5) gj5VarM).a(np4Var, list);
            }
            throw new IllegalArgumentException(String.format("%s is not a function", ck5Var.r));
        }
        if (!"hasOwnProperty".equals(ck5Var.r)) {
            throw new IllegalArgumentException(String.format("Object has no function %s", ck5Var.r));
        }
        kl3.t("hasOwnProperty", 1, list);
        return ai5Var.l(np4Var.f(list.get(0)).h()) ? gj5.n : gj5.o;
    }

    public static gj5 k(pj6 pj6Var) {
        if (pj6Var == null) {
            return gj5.i;
        }
        int iB = pj6Var.B() - 1;
        if (iB == 1) {
            return pj6Var.A() ? new ck5(pj6Var.v()) : gj5.p;
        }
        if (iB == 2) {
            return pj6Var.z() ? new ug5(Double.valueOf(pj6Var.s())) : new ug5(null);
        }
        if (iB == 3) {
            return pj6Var.y() ? new eg5(Boolean.valueOf(pj6Var.x())) : new eg5(null);
        }
        if (iB != 4) {
            throw new IllegalArgumentException("Unknown type found. Cannot convert entity");
        }
        List<pj6> listW = pj6Var.w();
        ArrayList arrayList = new ArrayList();
        Iterator<pj6> it = listW.iterator();
        while (it.hasNext()) {
            arrayList.add(k(it.next()));
        }
        return new mj5(pj6Var.u(), arrayList);
    }

    public static gj5 l(Object obj) {
        if (obj == null) {
            return gj5.j;
        }
        if (obj instanceof String) {
            return new ck5((String) obj);
        }
        if (obj instanceof Double) {
            return new ug5((Double) obj);
        }
        if (obj instanceof Long) {
            return new ug5(Double.valueOf(((Long) obj).doubleValue()));
        }
        if (obj instanceof Integer) {
            return new ug5(Double.valueOf(((Integer) obj).doubleValue()));
        }
        if (obj instanceof Boolean) {
            return new eg5((Boolean) obj);
        }
        if (!(obj instanceof Map)) {
            if (!(obj instanceof List)) {
                throw new IllegalArgumentException("Invalid value type");
            }
            uf5 uf5Var = new uf5();
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                uf5Var.E(uf5Var.s(), l(it.next()));
            }
            return uf5Var;
        }
        hi5 hi5Var = new hi5();
        Map map = (Map) obj;
        for (Object string : map.keySet()) {
            gj5 gj5VarL = l(map.get(string));
            if (string != null) {
                if (!(string instanceof String)) {
                    string = string.toString();
                }
                hi5Var.n((String) string, gj5VarL);
            }
        }
        return hi5Var;
    }
}
