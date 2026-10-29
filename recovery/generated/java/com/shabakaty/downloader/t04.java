package com.shabakaty.downloader;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: _Sequences.kt */
/* JADX INFO: loaded from: classes2.dex */
public class t04 extends s04 {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: Iterables.kt */
    public static final class a<T> implements Iterable<T>, uc2 {
        public final /* synthetic */ l04 r;

        public a(l04 l04Var) {
            this.r = l04Var;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return this.r.iterator();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* JADX INFO: compiled from: _Sequences.kt */
    public /* synthetic */ class b<R> extends co1 implements tm1<l04<? extends R>, Iterator<? extends R>> {
        public static final b r = new b();

        public b() {
            super(1, l04.class, "iterator", "iterator()Ljava/util/Iterator;", 0);
        }

        @Override // com.shabakaty.downloader.tm1
        public Object invoke(Object obj) {
            l04 l04Var = (l04) obj;
            j32.e(l04Var, "p0");
            return l04Var.iterator();
        }
    }

    public static final <T> Iterable<T> A(l04<? extends T> l04Var) {
        return new a(l04Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> l04<T> B(l04<? extends T> l04Var, int i) {
        if (!(i >= 0)) {
            throw new IllegalArgumentException(qj2.a("Requested element count ", i, " is less than zero.").toString());
        }
        if (i == 0) {
            return l04Var;
        }
        return l04Var instanceof f11 ? ((f11) l04Var).a(i) : new e11(l04Var, i);
    }

    public static final <T> l04<T> C(l04<? extends T> l04Var, tm1<? super T, Boolean> tm1Var) {
        j32.e(tm1Var, "predicate");
        return new pb1(l04Var, true, tm1Var);
    }

    public static final <T> l04<T> D(l04<? extends T> l04Var, tm1<? super T, Boolean> tm1Var) {
        j32.e(tm1Var, "predicate");
        return new pb1(l04Var, false, tm1Var);
    }

    public static final <T> T E(l04<? extends T> l04Var) {
        Iterator<? extends T> it = l04Var.iterator();
        if (it.hasNext()) {
            return it.next();
        }
        return null;
    }

    public static final <T, R> l04<R> F(l04<? extends T> l04Var, tm1<? super T, ? extends l04<? extends R>> tm1Var) {
        j32.e(tm1Var, "transform");
        return new ae1(l04Var, tm1Var, b.r);
    }

    public static final <T, R> l04<R> G(l04<? extends T> l04Var, tm1<? super T, ? extends R> tm1Var) {
        j32.e(tm1Var, "transform");
        return new bq4(l04Var, tm1Var);
    }

    public static final <T, R> l04<R> H(l04<? extends T> l04Var, tm1<? super T, ? extends R> tm1Var) {
        j32.e(tm1Var, "transform");
        return D(new bq4(l04Var, tm1Var), u04.r);
    }

    public static final <T> l04<T> I(l04<? extends T> l04Var, T t) {
        return q04.w(q04.z(l04Var, q04.z(t)));
    }

    public static final <T> List<T> J(l04<? extends T> l04Var) {
        return iq6.u(K(l04Var));
    }

    public static final <T> List<T> K(l04<? extends T> l04Var) {
        ArrayList arrayList = new ArrayList();
        Iterator<? extends T> it = l04Var.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return arrayList;
    }
}
