package com.shabakaty.downloader;

import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CancellationException;

/* JADX INFO: compiled from: _Ranges.kt */
/* JADX INFO: loaded from: classes2.dex */
public class rm3 {
    public static final b74 A(qe2 qe2Var) {
        j32.e(qe2Var, "<this>");
        qw4 qw4VarW0 = qe2Var.W0();
        if (qw4VarW0 instanceof fe1) {
            return ((fe1) qw4VarW0).t;
        }
        if (qw4VarW0 instanceof b74) {
            return (b74) qw4VarW0;
        }
        throw new rz2();
    }

    public static final <T, V> Object B(me0 me0Var, V v, Object obj, hn1<? super V, ? super ud0<? super T>, ? extends Object> hn1Var, ud0<? super T> ud0Var) {
        Object objC = zm4.c(me0Var, obj);
        try {
            cb4 cb4Var = new cb4(ud0Var, me0Var);
            if (hn1Var == null) {
                throw new NullPointerException("null cannot be cast to non-null type (R, kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
            }
            gt4.c(hn1Var, 2);
            Object objO = hn1Var.o(v, cb4Var);
            zm4.a(me0Var, objC);
            if (objO == te0.COROUTINE_SUSPENDED) {
                j32.e(ud0Var, "frame");
            }
            return objO;
        } catch (Throwable th) {
            zm4.a(me0Var, objC);
            throw th;
        }
    }

    public static final fe1 a(qe2 qe2Var) {
        return (fe1) qe2Var.W0();
    }

    public static final b74 b(qe2 qe2Var) {
        j32.e(qe2Var, "<this>");
        qw4 qw4VarW0 = qe2Var.W0();
        b74 b74Var = qw4VarW0 instanceof b74 ? (b74) qw4VarW0 : null;
        if (b74Var != null) {
            return b74Var;
        }
        throw new IllegalStateException(j32.j("This is should be simple type: ", qe2Var).toString());
    }

    public static final void c(yn3<?> yn3Var, Throwable th) {
        CancellationException cancellationException = null;
        if (th != null) {
            cancellationException = (CancellationException) (th instanceof CancellationException ? th : null);
            if (cancellationException == null) {
                cancellationException = new CancellationException("Channel was consumed, consumer had failed");
                cancellationException.initCause(th);
            }
        }
        yn3Var.b(cancellationException);
    }

    public static final long d(long j, long j2) {
        return j > j2 ? j2 : j;
    }

    public static final int e(int i, int i2, int i3) {
        if (i2 <= i3) {
            if (i < i2) {
                return i2;
            }
            return i > i3 ? i3 : i;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + i3 + " is less than minimum " + i2 + '.');
    }

    public static final Object f(long j, ud0<? super qv4> ud0Var) {
        if (j <= 0) {
            return qv4.a;
        }
        gv gvVar = new gv(he0.q(ud0Var), 1);
        gvVar.F();
        if (j < Long.MAX_VALUE) {
            me0 me0Var = gvVar.u;
            int i = yd0.e;
            me0.b bVar = me0Var.get(yd0.a.r);
            if (!(bVar instanceof tp0)) {
                bVar = null;
            }
            tp0 tp0Var = (tp0) bVar;
            if (tp0Var == null) {
                tp0Var = zn0.a;
            }
            tp0Var.f(j, gvVar);
        }
        return gvVar.x();
    }

    public static final l22 g(int i, int i2) {
        return new l22(i, i2, -1);
    }

    public static final v20 h(jw2 jw2Var, int i) {
        j32.e(jw2Var, "<this>");
        return v20.f(jw2Var.a(i), jw2Var.c(i));
    }

    public static final hw2 i(jw2 jw2Var, int i) {
        j32.e(jw2Var, "<this>");
        return hw2.n(jw2Var.b(i));
    }

    public static final g30 j(qm0 qm0Var) {
        j32.e(qm0Var, "<this>");
        qm0 qm0VarC = qm0Var.c();
        if (qm0VarC == null || (qm0Var instanceof k93)) {
            return null;
        }
        j32.e(qm0VarC, "<this>");
        if (!(qm0VarC.c() instanceof k93)) {
            return j(qm0VarC);
        }
        if (qm0VarC instanceof g30) {
            return (g30) qm0VarC;
        }
        return null;
    }

    public static final boolean k(qe2 qe2Var) {
        j32.e(qe2Var, "<this>");
        return qe2Var.W0() instanceof fe1;
    }

    public static final b74 l(qe2 qe2Var) {
        j32.e(qe2Var, "<this>");
        qw4 qw4VarW0 = qe2Var.W0();
        if (qw4VarW0 instanceof fe1) {
            return ((fe1) qw4VarW0).s;
        }
        if (qw4VarW0 instanceof b74) {
            return (b74) qw4VarW0;
        }
        throw new rz2();
    }

    public static final hw2 m(hw2 hw2Var, boolean z) {
        return n(hw2Var, "set", false, z ? "is" : null, 4);
    }

    public static hw2 n(hw2 hw2Var, String str, boolean z, String str2, int i) {
        Object next;
        if ((i & 4) != 0) {
            z = true;
        }
        if ((i & 8) != 0) {
            str2 = null;
        }
        if (!hw2Var.s) {
            String strJ = hw2Var.j();
            j32.d(strJ, "methodName.identifier");
            boolean z2 = false;
            if (ne4.L(strJ, str, false, 2) && strJ.length() != str.length()) {
                char cCharAt = strJ.charAt(str.length());
                if (!('a' <= cCharAt && cCharAt < '{')) {
                    if (str2 != null) {
                        return hw2.u(j32.j(str2, re4.a0(strJ, str)));
                    }
                    if (!z) {
                        return hw2Var;
                    }
                    String strA0 = re4.a0(strJ, str);
                    if (!(strA0.length() == 0) && vd5.t(strA0, 0, true)) {
                        if (strA0.length() == 1 || !vd5.t(strA0, 1, true)) {
                            if (!(strA0.length() == 0)) {
                                char cCharAt2 = strA0.charAt(0);
                                if ('A' <= cCharAt2 && cCharAt2 < '[') {
                                    z2 = true;
                                }
                                if (z2) {
                                    char lowerCase = Character.toLowerCase(cCharAt2);
                                    String strSubstring = strA0.substring(1);
                                    j32.d(strSubstring, "this as java.lang.String).substring(startIndex)");
                                    strA0 = lowerCase + strSubstring;
                                }
                            }
                        } else {
                            Iterator<Integer> it = new n22(0, strA0.length() - 1).iterator();
                            do {
                                if (!((m22) it).t) {
                                    next = null;
                                    break;
                                }
                                next = ((k22) it).next();
                            } while (!(!vd5.t(strA0, ((Number) next).intValue(), true)));
                            Integer num = (Integer) next;
                            if (num == null) {
                                strA0 = vd5.C(strA0);
                            } else {
                                int iIntValue = num.intValue() - 1;
                                String strSubstring2 = strA0.substring(0, iIntValue);
                                j32.d(strSubstring2, "this as java.lang.String…ing(startIndex, endIndex)");
                                String strC = vd5.C(strSubstring2);
                                String strSubstring3 = strA0.substring(iIntValue);
                                j32.d(strSubstring3, "this as java.lang.String).substring(startIndex)");
                                strA0 = j32.j(strC, strSubstring3);
                            }
                        }
                    }
                    if (hw2.y(strA0)) {
                        return hw2.u(strA0);
                    }
                }
            }
        }
        return null;
    }

    public static final b74 o(b74 b74Var, List<? extends qt4> list, d9 d9Var) {
        j32.e(b74Var, "<this>");
        j32.e(list, "newArguments");
        j32.e(d9Var, "newAnnotations");
        if (list.isEmpty() && d9Var == b74Var.y()) {
            return b74Var;
        }
        return list.isEmpty() ? b74Var.Z0(d9Var) : se2.g(d9Var, b74Var.T0(), list, b74Var.U0(), null, 16);
    }

    public static qe2 p(qe2 qe2Var, List list, d9 d9Var, List list2, int i) {
        if ((i & 1) != 0) {
            list = qe2Var.S0();
        }
        if ((i & 2) != 0) {
            d9Var = qe2Var.y();
        }
        List list3 = (i & 4) != 0 ? list : null;
        j32.e(list, "newArguments");
        j32.e(d9Var, "newAnnotations");
        j32.e(list3, "newArgumentsForUpperBound");
        if ((list.isEmpty() || list == qe2Var.S0()) && d9Var == qe2Var.y()) {
            return qe2Var;
        }
        qw4 qw4VarW0 = qe2Var.W0();
        if (qw4VarW0 instanceof fe1) {
            fe1 fe1Var = (fe1) qw4VarW0;
            return se2.c(o(fe1Var.s, list, d9Var), o(fe1Var.t, list3, d9Var));
        }
        if (qw4VarW0 instanceof b74) {
            return o((b74) qw4VarW0, list, d9Var);
        }
        throw new rz2();
    }

    public static /* synthetic */ b74 q(b74 b74Var, List list, d9 d9Var, int i) {
        if ((i & 1) != 0) {
            list = b74Var.S0();
        }
        if ((i & 2) != 0) {
            d9Var = b74Var.y();
        }
        return o(b74Var, list, d9Var);
    }

    public static final q20 r(nu2 nu2Var, fi1 fi1Var, ll2 ll2Var) {
        g30 g30VarG;
        j32.e(nu2Var, "<this>");
        j32.e(fi1Var, "fqName");
        if (fi1Var.d()) {
            return null;
        }
        fi1 fi1VarE = fi1Var.e();
        j32.d(fi1VarE, "fqName.parent()");
        mr2 mr2VarS = nu2Var.t0(fi1VarE).s();
        hw2 hw2VarG = fi1Var.g();
        j32.d(hw2VarG, "fqName.shortName()");
        g30 g30VarG2 = mr2VarS.g(hw2VarG, ll2Var);
        q20 q20Var = g30VarG2 instanceof q20 ? (q20) g30VarG2 : null;
        if (q20Var != null) {
            return q20Var;
        }
        fi1 fi1VarE2 = fi1Var.e();
        j32.d(fi1VarE2, "fqName.parent()");
        q20 q20VarR = r(nu2Var, fi1VarE2, ll2Var);
        if (q20VarR == null) {
            g30VarG = null;
        } else {
            mr2 mr2VarJ0 = q20VarR.J0();
            hw2 hw2VarG2 = fi1Var.g();
            j32.d(hw2VarG2, "fqName.shortName()");
            g30VarG = mr2VarJ0.g(hw2VarG2, ll2Var);
        }
        if (g30VarG instanceof q20) {
            return (q20) g30VarG;
        }
        return null;
    }

    public static final String s(c64 c64Var, q20 q20Var, String str) {
        String strE;
        j32.e(q20Var, "classDescriptor");
        j32.e(str, "jvmDescriptor");
        e82 e82Var = e82.a;
        gi1 gi1VarJ = hr0.g(q20Var).j();
        j32.d(gi1VarJ, "fqNameSafe.toUnsafe()");
        v20 v20VarG = e82Var.g(gi1VarJ);
        if (v20VarG == null) {
            strE = nh3.g(q20Var, it4.a);
        } else {
            strE = kb2.b(v20VarG).e();
            j32.d(strE, "byClassId(it).internalName");
        }
        return c64Var.h(strE, str);
    }

    public static final l22 t(l22 l22Var, int i) {
        j32.e(l22Var, "<this>");
        boolean z = i > 0;
        Integer numValueOf = Integer.valueOf(i);
        j32.e(numValueOf, "step");
        if (z) {
            int i2 = l22Var.r;
            int i3 = l22Var.s;
            if (l22Var.t <= 0) {
                i = -i;
            }
            return new l22(i2, i3, i);
        }
        throw new IllegalArgumentException("Step must be positive, was: " + numValueOf + '.');
    }

    public static final int u(String str, int i, int i2, int i3) {
        return (int) v(str, i, i2, i3);
    }

    public static final long v(String str, long j, long j2, long j3) {
        String strW = w(str);
        if (strW == null) {
            return j;
        }
        Long lA = me4.A(strW);
        if (lA == null) {
            throw new IllegalStateException(("System property '" + str + "' has unrecognized value '" + strW + '\'').toString());
        }
        long jLongValue = lA.longValue();
        if (j2 <= jLongValue && j3 >= jLongValue) {
            return jLongValue;
        }
        throw new IllegalStateException(("System property '" + str + "' should be in range " + j2 + ".." + j3 + ", but is '" + jLongValue + '\'').toString());
    }

    public static final String w(String str) {
        int i = ek4.a;
        try {
            return System.getProperty(str);
        } catch (SecurityException unused) {
            return null;
        }
    }

    public static /* synthetic */ int x(String str, int i, int i2, int i3, int i4, Object obj) {
        if ((i4 & 4) != 0) {
            i2 = 1;
        }
        if ((i4 & 8) != 0) {
            i3 = Integer.MAX_VALUE;
        }
        return u(str, i, i2, i3);
    }

    public static /* synthetic */ long y(String str, long j, long j2, long j3, int i, Object obj) {
        if ((i & 4) != 0) {
            j2 = 1;
        }
        long j4 = j2;
        if ((i & 8) != 0) {
            j3 = Long.MAX_VALUE;
        }
        return v(str, j, j4, j3);
    }

    public static final n22 z(int i, int i2) {
        if (i2 > Integer.MIN_VALUE) {
            return new n22(i, i2 - 1);
        }
        n22 n22Var = n22.u;
        return n22.v;
    }
}
