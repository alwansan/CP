package com.shabakaty.downloader;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: LiveDataExtensions.kt */
/* JADX INFO: loaded from: classes.dex */
public final class zi2 {
    public static final <T> void a(mj<List<T>> mjVar, List<T> list) {
        j32.e(mjVar, "<this>");
        ArrayList arrayList = new ArrayList();
        tj tjVar = (tj) mjVar.getValue();
        List arrayList2 = tjVar == null ? null : (List) tjVar.b;
        if (arrayList2 == null) {
            arrayList2 = new ArrayList();
        }
        arrayList.addAll(arrayList2);
        if (list == null) {
            list = new ArrayList<>();
        }
        arrayList.addAll(list);
        mjVar.setValue(arrayList.isEmpty() ? new tj<>(tj.a.EMPTY, arrayList, null, null, 12) : new tj<>(tj.a.SUCCESS, arrayList, null, null, 12));
    }

    public static final <B, T extends List<? extends B>> B b(mj<T> mjVar, int i) {
        List list;
        j32.e(mjVar, "<this>");
        tj tjVar = (tj) mjVar.getValue();
        if (tjVar == null || (list = (List) tjVar.b) == null) {
            return null;
        }
        return (B) list.get(i);
    }

    public static final <T> boolean c(xv2<tj<T>> xv2Var) {
        j32.e(xv2Var, "<this>");
        tj<T> value = xv2Var.getValue();
        return (value == null ? null : value.a) == tj.a.EMPTY;
    }

    public static final <T> boolean d(xv2<tj<T>> xv2Var) {
        j32.e(xv2Var, "<this>");
        tj<T> value = xv2Var.getValue();
        return (value == null ? null : value.a) == tj.a.ERROR;
    }

    public static final <T> boolean e(xv2<tj<T>> xv2Var) {
        j32.e(xv2Var, "<this>");
        tj<T> value = xv2Var.getValue();
        return (value == null ? null : value.a) == tj.a.LOADING;
    }

    public static final <T> void f(xv2<T> xv2Var) {
        j32.e(xv2Var, "<this>");
        xv2Var.setValue(xv2Var.getValue());
    }

    public static final void g(xv2<tj.a> xv2Var) {
        j32.e(xv2Var, "<this>");
        xv2Var.postValue(tj.a.ERROR);
    }

    public static final <T> void h(mj<T> mjVar, T t) {
        j32.e(mjVar, "<this>");
        if (t == null) {
            tj tjVar = (tj) mjVar.getValue();
            t = tjVar == null ? null : tjVar.b;
        }
        mjVar.postValue(new tj(tj.a.LOADING, t, null, null, 12));
    }

    public static final void i(xv2<tj.a> xv2Var) {
        j32.e(xv2Var, "<this>");
        xv2Var.postValue(tj.a.LOADING);
    }

    public static final void k(xv2<tj.a> xv2Var) {
        j32.e(xv2Var, "<this>");
        xv2Var.postValue(tj.a.SUCCESS);
    }

    public static final <T> void l(mj<T> mjVar) {
        j32.e(mjVar, "<this>");
        mjVar.postValue(new tj(tj.a.EMPTY, null, null, null, 12));
    }

    public static final <T> void m(mj<T> mjVar, Throwable th) {
        j32.e(mjVar, "<this>");
        mjVar.postValue(new tj(tj.a.ERROR, mjVar.a(), th, null, 8));
    }

    public static final <T> void n(mj<T> mjVar, T t) {
        j32.e(mjVar, "<this>");
        if (t == null) {
            tj tjVar = (tj) mjVar.getValue();
            t = tjVar == null ? null : tjVar.b;
        }
        mjVar.postValue(new tj(tj.a.SUCCESS, t, null, null, 12));
    }
}
