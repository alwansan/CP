package com.shabakaty.downloader;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: ParentalSkipHandler.kt */
/* JADX INFO: loaded from: classes.dex */
public final class ja3 {
    public j71 a;
    public long b;
    public List<Long> c;
    public List<Long> d;
    public int e;
    public boolean f;
    public boolean g;

    public ja3(j71 j71Var, List<Double> list, List<Double> list2) {
        j32.e(j71Var, "player");
        this.a = j71Var;
        w21 w21Var = w21.r;
        this.c = w21Var;
        this.d = w21Var;
        this.f = true;
        this.g = true;
        c(list, list2);
    }

    public final void a() {
        Object objB;
        if (!this.g) {
            return;
        }
        this.b = this.a.C();
        int i = 0;
        int size = this.c.size() - 1;
        if (size < 0) {
            return;
        }
        while (true) {
            int i2 = i + 1;
            if (this.b >= this.c.get(i).longValue() - 250 && this.b < this.d.get(i).longValue() + 250) {
                this.e = i;
                try {
                    if (this.g && (!this.d.isEmpty())) {
                        this.b = this.a.C();
                        int i3 = this.e;
                        if (i3 != -1) {
                            this.a.q(this.d.get(i3).longValue() + 250);
                            this.e = -1;
                        }
                    }
                    objB = qv4.a;
                } catch (Throwable th) {
                    objB = j96.b(th);
                }
                Throwable thA = dt3.a(objB);
                if (thA == null) {
                    return;
                }
                wt2.j(thA);
                return;
            }
            this.e = -1;
            if (i2 > size) {
                return;
            } else {
                i = i2;
            }
        }
    }

    public final void b(boolean z) {
        if (!z) {
            this.g = false;
        } else {
            if (!this.f) {
                this.g = true;
                return;
            }
            this.f = false;
            this.g = true;
            a();
        }
    }

    public final void c(List<Double> list, List<Double> list2) {
        this.e = 0;
        ArrayList arrayList = new ArrayList(i50.O(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(Long.valueOf(((long) ((Number) it.next()).doubleValue()) * 1000));
        }
        this.c = arrayList;
        ArrayList arrayList2 = new ArrayList(i50.O(list2, 10));
        Iterator<T> it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList2.add(Long.valueOf(((long) ((Number) it2.next()).doubleValue()) * 1000));
        }
        this.d = arrayList2;
    }
}
