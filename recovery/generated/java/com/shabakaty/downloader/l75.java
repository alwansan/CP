package com.shabakaty.downloader;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: compiled from: WorkContinuationImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class l75 extends xa3 {
    public static final String j = ok2.e("WorkContinuationImpl");
    public final r75 a;
    public final String b;
    public final int c;
    public final List<? extends a85> d;
    public final List<String> e;
    public final List<String> f;
    public final List<l75> g;
    public boolean h;
    public x73 i;

    /* JADX WARN: Incorrect types in method signature: (Lcom/shabakaty/downloader/r75;Ljava/lang/String;Ljava/lang/Object;Ljava/util/List<+Lcom/shabakaty/downloader/a85;>;Ljava/util/List<Lcom/shabakaty/downloader/l75;>;)V */
    public l75(r75 r75Var, String str, int i, List list, List list2) {
        super(1);
        this.a = r75Var;
        this.b = str;
        this.c = i;
        this.d = list;
        this.g = list2;
        this.e = new ArrayList(list.size());
        this.f = new ArrayList();
        if (list2 != null) {
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                this.f.addAll(((l75) it.next()).f);
            }
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            String strA = ((a85) list.get(i2)).a();
            this.e.add(strA);
            this.f.add(strA);
        }
    }

    public static boolean e(l75 l75Var, Set<String> set) {
        set.addAll(l75Var.e);
        Set<String> setF = f(l75Var);
        Iterator<String> it = set.iterator();
        while (it.hasNext()) {
            if (((HashSet) setF).contains(it.next())) {
                return true;
            }
        }
        List<l75> list = l75Var.g;
        if (list != null && !list.isEmpty()) {
            Iterator<l75> it2 = list.iterator();
            while (it2.hasNext()) {
                if (e(it2.next(), set)) {
                    return true;
                }
            }
        }
        set.removeAll(l75Var.e);
        return false;
    }

    public static Set<String> f(l75 l75Var) {
        HashSet hashSet = new HashSet();
        List<l75> list = l75Var.g;
        if (list != null && !list.isEmpty()) {
            Iterator<l75> it = list.iterator();
            while (it.hasNext()) {
                hashSet.addAll(it.next().e);
            }
        }
        return hashSet;
    }

    public x73 d() {
        if (this.h) {
            ok2.c().f(j, String.format("Already enqueued work ids (%s)", TextUtils.join(", ", this.e)), new Throwable[0]);
        } else {
            u31 u31Var = new u31(this);
            ((s75) this.a.d).a.execute(u31Var);
            this.i = u31Var.s;
        }
        return this.i;
    }
}
