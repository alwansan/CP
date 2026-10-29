package com.shabakaty.downloader;

import com.liulishuo.filedownloader.BuildConfig;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.RandomAccess;
import java.util.Set;

/* JADX INFO: compiled from: _Collections.kt */
/* JADX INFO: loaded from: classes2.dex */
public class m50 extends l50 {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: Sequences.kt */
    public static final class a<T> implements l04<T> {
        public final /* synthetic */ Iterable a;

        public a(Iterable iterable) {
            this.a = iterable;
        }

        @Override // com.shabakaty.downloader.l04
        public Iterator<T> iterator() {
            return this.a.iterator();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: _Collections.kt */
    public static final class b<T> extends af2 implements rm1<Iterator<? extends T>> {
        public final /* synthetic */ Iterable<T> r;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public b(Iterable<? extends T> iterable) {
            super(0);
            this.r = iterable;
        }

        @Override // com.shabakaty.downloader.rm1
        public Object invoke() {
            return this.r.iterator();
        }
    }

    public static final <T> Set<T> A0(Iterable<? extends T> iterable) {
        j32.e(iterable, "<this>");
        if (iterable instanceof Collection) {
            return new LinkedHashSet((Collection) iterable);
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        v0(iterable, linkedHashSet);
        return linkedHashSet;
    }

    public static final <T> Set<T> B0(Iterable<? extends T> iterable) {
        j32.e(iterable, "<this>");
        if (!(iterable instanceof Collection)) {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            v0(iterable, linkedHashSet);
            LinkedHashSet linkedHashSet2 = linkedHashSet;
            j32.e(linkedHashSet2, "<this>");
            int size = linkedHashSet2.size();
            if (size != 0) {
                return size != 1 ? linkedHashSet2 : nl6.s(linkedHashSet2.iterator().next());
            }
            return c31.r;
        }
        Collection collection = (Collection) iterable;
        int size2 = collection.size();
        if (size2 == 0) {
            return c31.r;
        }
        if (size2 == 1) {
            return nl6.s(iterable instanceof List ? ((List) iterable).get(0) : iterable.iterator().next());
        }
        LinkedHashSet linkedHashSet3 = new LinkedHashSet(kf5.i(collection.size()));
        v0(iterable, linkedHashSet3);
        return linkedHashSet3;
    }

    public static final <T> Iterable<o02<T>> C0(Iterable<? extends T> iterable) {
        j32.e(iterable, "<this>");
        return new p02(new b(iterable));
    }

    public static final <T, R> List<x93<T, R>> D0(Iterable<? extends T> iterable, Iterable<? extends R> iterable2) {
        j32.e(iterable, "<this>");
        Iterator<? extends T> it = iterable.iterator();
        Iterator<? extends R> it2 = iterable2.iterator();
        ArrayList arrayList = new ArrayList(Math.min(i50.O(iterable, 10), i50.O(iterable2, 10)));
        while (it.hasNext() && it2.hasNext()) {
            arrayList.add(new x93(it.next(), it2.next()));
        }
        return arrayList;
    }

    public static final <T> l04<T> S(Iterable<? extends T> iterable) {
        j32.e(iterable, "<this>");
        return new a(iterable);
    }

    public static final <T> boolean T(Iterable<? extends T> iterable, T t) {
        int iIndexOf;
        j32.e(iterable, "<this>");
        if (iterable instanceof Collection) {
            return ((Collection) iterable).contains(t);
        }
        if (iterable instanceof List) {
            iIndexOf = ((List) iterable).indexOf(t);
        } else {
            int i = 0;
            for (T t2 : iterable) {
                if (i < 0) {
                    iq6.x();
                    throw null;
                }
                if (j32.a(t, t2)) {
                    iIndexOf = i;
                } else {
                    i++;
                }
            }
            iIndexOf = -1;
        }
        return iIndexOf >= 0;
    }

    public static final <T> List<T> U(Iterable<? extends T> iterable) {
        j32.e(iterable, "<this>");
        return x0(A0(iterable));
    }

    public static final <T> List<T> V(Iterable<? extends T> iterable, int i) {
        ArrayList arrayList;
        j32.e(iterable, "<this>");
        int i2 = 0;
        if (!(i >= 0)) {
            throw new IllegalArgumentException(qj2.a("Requested element count ", i, " is less than zero.").toString());
        }
        if (i == 0) {
            return x0(iterable);
        }
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            int size = collection.size() - i;
            if (size <= 0) {
                return w21.r;
            }
            if (size == 1) {
                return iq6.o(h0(iterable));
            }
            arrayList = new ArrayList(size);
            if (iterable instanceof List) {
                if (iterable instanceof RandomAccess) {
                    int size2 = collection.size();
                    while (i < size2) {
                        arrayList.add(((List) iterable).get(i));
                        i++;
                    }
                } else {
                    ListIterator listIterator = ((List) iterable).listIterator(i);
                    while (listIterator.hasNext()) {
                        arrayList.add(listIterator.next());
                    }
                }
                return arrayList;
            }
        } else {
            arrayList = new ArrayList();
        }
        for (T t : iterable) {
            if (i2 >= i) {
                arrayList.add(t);
            } else {
                i2++;
            }
        }
        return iq6.u(arrayList);
    }

    public static final <T> List<T> W(List<? extends T> list, int i) {
        j32.e(list, "<this>");
        if (!(i >= 0)) {
            throw new IllegalArgumentException(qj2.a("Requested element count ", i, " is less than zero.").toString());
        }
        int size = list.size() - i;
        return u0(list, size >= 0 ? size : 0);
    }

    public static final <T> List<T> X(Iterable<? extends T> iterable, tm1<? super T, Boolean> tm1Var) {
        j32.e(iterable, "<this>");
        ArrayList arrayList = new ArrayList();
        for (T t : iterable) {
            if (tm1Var.invoke(t).booleanValue()) {
                arrayList.add(t);
            }
        }
        return arrayList;
    }

    public static final <T> T Y(Iterable<? extends T> iterable) {
        if (iterable instanceof List) {
            return (T) Z((List) iterable);
        }
        Iterator<? extends T> it = iterable.iterator();
        if (it.hasNext()) {
            return it.next();
        }
        throw new NoSuchElementException("Collection is empty.");
    }

    public static final <T> T Z(List<? extends T> list) {
        j32.e(list, "<this>");
        if (list.isEmpty()) {
            throw new NoSuchElementException("List is empty.");
        }
        return list.get(0);
    }

    public static final <T> T a0(Iterable<? extends T> iterable) {
        j32.e(iterable, "<this>");
        if (iterable instanceof List) {
            List list = (List) iterable;
            if (list.isEmpty()) {
                return null;
            }
            return (T) list.get(0);
        }
        Iterator<? extends T> it = iterable.iterator();
        if (it.hasNext()) {
            return it.next();
        }
        return null;
    }

    public static final <T> T b0(List<? extends T> list) {
        j32.e(list, "<this>");
        if (list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    public static final <T> T c0(List<? extends T> list, int i) {
        j32.e(list, "<this>");
        if (i < 0 || i > iq6.h(list)) {
            return null;
        }
        return list.get(i);
    }

    public static final <T, A extends Appendable> A d0(Iterable<? extends T> iterable, A a2, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, tm1<? super T, ? extends CharSequence> tm1Var) throws IOException {
        j32.e(iterable, "<this>");
        j32.e(a2, "buffer");
        j32.e(charSequence, "separator");
        j32.e(charSequence2, "prefix");
        j32.e(charSequence3, "postfix");
        j32.e(charSequence4, "truncated");
        a2.append(charSequence2);
        int i2 = 0;
        for (T t : iterable) {
            i2++;
            if (i2 > 1) {
                a2.append(charSequence);
            }
            if (i >= 0 && i2 > i) {
                break;
            }
            bp.b(a2, t, tm1Var);
        }
        if (i >= 0 && i2 > i) {
            a2.append(charSequence4);
        }
        a2.append(charSequence3);
        return a2;
    }

    public static /* synthetic */ Appendable e0(Iterable iterable, Appendable appendable, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, tm1 tm1Var, int i2) throws IOException {
        d0(iterable, appendable, (i2 & 2) != 0 ? ", " : charSequence, (i2 & 4) != 0 ? BuildConfig.FLAVOR : charSequence2, (i2 & 8) != 0 ? BuildConfig.FLAVOR : charSequence3, (i2 & 16) != 0 ? -1 : i, (i2 & 32) != 0 ? "..." : null, (i2 & 64) != 0 ? null : tm1Var);
        return appendable;
    }

    public static final <T> String f0(Iterable<? extends T> iterable, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, tm1<? super T, ? extends CharSequence> tm1Var) throws IOException {
        j32.e(iterable, "<this>");
        j32.e(charSequence, "separator");
        j32.e(charSequence2, "prefix");
        j32.e(charSequence3, "postfix");
        j32.e(charSequence4, "truncated");
        StringBuilder sb = new StringBuilder();
        d0(iterable, sb, charSequence, charSequence2, charSequence3, i, charSequence4, tm1Var);
        String string = sb.toString();
        j32.d(string, "joinTo(StringBuilder(), …ed, transform).toString()");
        return string;
    }

    public static /* synthetic */ String g0(Iterable iterable, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, tm1 tm1Var, int i2) {
        if ((i2 & 1) != 0) {
            charSequence = ", ";
        }
        return f0(iterable, charSequence, (i2 & 2) != 0 ? BuildConfig.FLAVOR : charSequence2, (i2 & 4) != 0 ? BuildConfig.FLAVOR : charSequence3, (i2 & 8) != 0 ? -1 : i, (i2 & 16) != 0 ? "..." : null, (i2 & 32) != 0 ? null : tm1Var);
    }

    public static final <T> T h0(Iterable<? extends T> iterable) {
        if (iterable instanceof List) {
            return (T) i0((List) iterable);
        }
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException("Collection is empty.");
        }
        T next = it.next();
        while (it.hasNext()) {
            next = it.next();
        }
        return next;
    }

    public static final <T> T i0(List<? extends T> list) {
        j32.e(list, "<this>");
        if (list.isEmpty()) {
            throw new NoSuchElementException("List is empty.");
        }
        return list.get(iq6.h(list));
    }

    public static final <T> T j0(Iterable<? extends T> iterable) {
        if (iterable instanceof List) {
            List list = (List) iterable;
            if (list.isEmpty()) {
                return null;
            }
            return (T) list.get(list.size() - 1);
        }
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            return null;
        }
        T next = it.next();
        while (it.hasNext()) {
            next = it.next();
        }
        return next;
    }

    public static final <T> T k0(List<? extends T> list) {
        j32.e(list, "<this>");
        if (list.isEmpty()) {
            return null;
        }
        return list.get(list.size() - 1);
    }

    public static final <T> List<T> l0(Iterable<? extends T> iterable, Iterable<? extends T> iterable2) {
        j32.e(iterable, "<this>");
        j32.e(iterable2, "elements");
        if (iterable instanceof Collection) {
            return n0((Collection) iterable, iterable2);
        }
        ArrayList arrayList = new ArrayList();
        k50.R(arrayList, iterable);
        k50.R(arrayList, iterable2);
        return arrayList;
    }

    public static final <T> List<T> m0(Iterable<? extends T> iterable, T t) {
        j32.e(iterable, "<this>");
        if (iterable instanceof Collection) {
            return o0((Collection) iterable, t);
        }
        ArrayList arrayList = new ArrayList();
        k50.R(arrayList, iterable);
        arrayList.add(t);
        return arrayList;
    }

    public static final <T> List<T> n0(Collection<? extends T> collection, Iterable<? extends T> iterable) {
        j32.e(collection, "<this>");
        j32.e(iterable, "elements");
        if (!(iterable instanceof Collection)) {
            ArrayList arrayList = new ArrayList(collection);
            k50.R(arrayList, iterable);
            return arrayList;
        }
        Collection collection2 = (Collection) iterable;
        ArrayList arrayList2 = new ArrayList(collection2.size() + collection.size());
        arrayList2.addAll(collection);
        arrayList2.addAll(collection2);
        return arrayList2;
    }

    public static final <T> List<T> o0(Collection<? extends T> collection, T t) {
        ArrayList arrayList = new ArrayList(collection.size() + 1);
        arrayList.addAll(collection);
        arrayList.add(t);
        return arrayList;
    }

    public static final <T> T p0(Iterable<? extends T> iterable) {
        j32.e(iterable, "<this>");
        if (iterable instanceof List) {
            return (T) q0((List) iterable);
        }
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException("Collection is empty.");
        }
        T next = it.next();
        if (it.hasNext()) {
            throw new IllegalArgumentException("Collection has more than one element.");
        }
        return next;
    }

    public static final <T> T q0(List<? extends T> list) {
        j32.e(list, "<this>");
        int size = list.size();
        if (size == 0) {
            throw new NoSuchElementException("List is empty.");
        }
        if (size == 1) {
            return list.get(0);
        }
        throw new IllegalArgumentException("List has more than one element.");
    }

    public static final <T> T r0(Iterable<? extends T> iterable) {
        j32.e(iterable, "<this>");
        if (iterable instanceof List) {
            List list = (List) iterable;
            if (list.size() == 1) {
                return (T) list.get(0);
            }
            return null;
        }
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            return null;
        }
        T next = it.next();
        if (it.hasNext()) {
            return null;
        }
        return next;
    }

    public static final <T> T s0(List<? extends T> list) {
        j32.e(list, "<this>");
        if (list.size() == 1) {
            return list.get(0);
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> List<T> t0(Iterable<? extends T> iterable, Comparator<? super T> comparator) {
        j32.e(iterable, "<this>");
        if (!(iterable instanceof Collection)) {
            List<T> listY0 = y0(iterable);
            j50.P(listY0, comparator);
            return listY0;
        }
        Collection collection = (Collection) iterable;
        if (collection.size() <= 1) {
            return x0(iterable);
        }
        Object[] array = collection.toArray(new Object[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        if (array.length > 1) {
            Arrays.sort(array, comparator);
        }
        return hd.F(array);
    }

    public static final <T> List<T> u0(Iterable<? extends T> iterable, int i) {
        j32.e(iterable, "<this>");
        int i2 = 0;
        if (!(i >= 0)) {
            throw new IllegalArgumentException(qj2.a("Requested element count ", i, " is less than zero.").toString());
        }
        if (i == 0) {
            return w21.r;
        }
        if (iterable instanceof Collection) {
            if (i >= ((Collection) iterable).size()) {
                return x0(iterable);
            }
            if (i == 1) {
                return iq6.o(Y(iterable));
            }
        }
        ArrayList arrayList = new ArrayList(i);
        Iterator<? extends T> it = iterable.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
            i2++;
            if (i2 == i) {
                break;
            }
        }
        return iq6.u(arrayList);
    }

    public static final <T, C extends Collection<? super T>> C v0(Iterable<? extends T> iterable, C c) {
        Iterator<? extends T> it = iterable.iterator();
        while (it.hasNext()) {
            c.add(it.next());
        }
        return c;
    }

    public static final <T> HashSet<T> w0(Iterable<? extends T> iterable) {
        HashSet<T> hashSet = new HashSet<>(kf5.i(i50.O(iterable, 12)));
        v0(iterable, hashSet);
        return hashSet;
    }

    public static final <T> List<T> x0(Iterable<? extends T> iterable) {
        j32.e(iterable, "<this>");
        if (!(iterable instanceof Collection)) {
            return iq6.u(y0(iterable));
        }
        Collection collection = (Collection) iterable;
        int size = collection.size();
        if (size == 0) {
            return w21.r;
        }
        if (size != 1) {
            return z0(collection);
        }
        return iq6.o(iterable instanceof List ? ((List) iterable).get(0) : iterable.iterator().next());
    }

    public static final <T> List<T> y0(Iterable<? extends T> iterable) {
        if (iterable instanceof Collection) {
            return z0((Collection) iterable);
        }
        ArrayList arrayList = new ArrayList();
        v0(iterable, arrayList);
        return arrayList;
    }

    public static final <T> List<T> z0(Collection<? extends T> collection) {
        j32.e(collection, "<this>");
        return new ArrayList(collection);
    }
}
