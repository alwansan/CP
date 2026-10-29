package com.shabakaty.downloader;

import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.logging.Logger;

/* JADX INFO: compiled from: progressionUtil.kt */
/* JADX INFO: loaded from: classes2.dex */
public class nh3 {
    public static /* synthetic */ qw4 A(qw4 qw4Var, boolean z, int i) {
        if ((i & 1) != 0) {
            z = false;
        }
        return z(qw4Var, z);
    }

    public static final b74 B(qe2 qe2Var) {
        g32 g32Var;
        ts4 ts4VarT0 = qe2Var.T0();
        g32 g32Var2 = ts4VarT0 instanceof g32 ? (g32) ts4VarT0 : null;
        if (g32Var2 == null) {
            return null;
        }
        LinkedHashSet<qe2> linkedHashSet = g32Var2.b;
        ArrayList arrayList = new ArrayList(i50.O(linkedHashSet, 10));
        boolean z = false;
        for (qe2 qe2VarA : linkedHashSet) {
            if (eu4.h(qe2VarA)) {
                qe2VarA = A(qe2VarA.W0(), false, 1);
                z = true;
            }
            arrayList.add(qe2VarA);
        }
        if (z) {
            qe2 qe2VarA2 = g32Var2.a;
            if (qe2VarA2 == null) {
                qe2VarA2 = null;
            } else if (eu4.h(qe2VarA2)) {
                qe2VarA2 = A(qe2VarA2.W0(), false, 1);
            }
            arrayList.isEmpty();
            LinkedHashSet linkedHashSet2 = new LinkedHashSet(arrayList);
            linkedHashSet2.hashCode();
            g32Var = new g32(linkedHashSet2);
            g32Var.a = qe2VarA2;
        } else {
            g32Var = null;
        }
        if (g32Var == null) {
            return null;
        }
        return g32Var.g();
    }

    public static final b74 C(b74 b74Var, boolean z) {
        j32.e(b74Var, "<this>");
        rp0 rp0VarA = rp0.u.a(b74Var, z);
        if (rp0VarA != null) {
            return rp0VarA;
        }
        b74 b74VarB = B(b74Var);
        return b74VarB == null ? b74Var.X0(false) : b74VarB;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:55:0x0158  */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Object D(qe2 qe2Var, xb2 xb2Var, jt4 jt4Var, ht4 ht4Var, jn1 jn1Var) {
        Object objD;
        qe2 qe2Var2;
        jt4 jt4Var2;
        Object objD2;
        int iOrdinal;
        boolean z;
        boolean z2;
        j32.e(qe2Var, "kotlinType");
        j32.e(xb2Var, "factory");
        j32.e(jt4Var, "mode");
        j32.e(ht4Var, "typeMappingConfiguration");
        j32.e(jn1Var, "writeGenericType");
        qe2 qe2VarB = ht4Var.b(qe2Var);
        if (qe2VarB != null) {
            return D(qe2VarB, xb2Var, jt4Var, ht4Var, jn1Var);
        }
        if (w(qe2Var)) {
            vv2 vv2Var = ti4.a;
            w(qe2Var);
            zd2 zd2VarF = hu4.f(qe2Var);
            d9 d9VarY = qe2Var.y();
            qe2 qe2VarQ = q(qe2Var);
            List<qt4> listS = s(qe2Var);
            ArrayList arrayList = new ArrayList(i50.O(listS, 10));
            Iterator<T> it = listS.iterator();
            while (it.hasNext()) {
                arrayList.add(((qt4) it.next()).b());
            }
            int i = d9.a;
            d9 d9Var = d9.a.b;
            ts4 ts4VarM = ti4.a.m();
            j32.d(ts4VarM, "FAKE_CONTINUATION_CLASS_DESCRIPTOR.typeConstructor");
            List listO0 = m50.o0(arrayList, se2.g(d9Var, ts4VarM, iq6.o(hu4.a(r(qe2Var))), false, null, 16));
            b74 b74VarQ = hu4.f(qe2Var).q();
            j32.d(b74VarQ, "suspendFunType.builtIns.nullableAnyType");
            return D(i(zd2VarF, d9VarY, qe2VarQ, listO0, null, b74VarQ, false).X0(qe2Var.U0()), xb2Var, jt4Var, ht4Var, jn1Var);
        }
        q64 q64Var = q64.a;
        us4 us4VarR0 = e30.a.r0(q64Var, qe2Var);
        Object objE = null;
        if (e30.a.J(q64Var, us4VarR0)) {
            sf3 sf3VarT = e30.a.t(q64Var, us4VarR0);
            if (sf3VarT != null) {
                Object objA = xb2Var.a(sf3VarT);
                if (e30.a.X(q64Var, qe2Var)) {
                    z2 = true;
                } else {
                    fi1 fi1Var = ta2.o;
                    j32.d(fi1Var, "ENHANCED_NULLABILITY_ANNOTATION");
                    if (e30.a.B(q64Var, qe2Var, fi1Var)) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                }
                j32.e(objA, "possiblyPrimitiveType");
                objE = z2 ? xb2Var.e(objA) : objA;
            } else {
                sf3 sf3VarS = e30.a.s(q64Var, us4VarR0);
                if (sf3VarS != null) {
                    sb2 sb2Var = (sb2) ((EnumMap) sb2.F).get(sf3VarS);
                    if (sb2Var == null) {
                        sb2.f(4);
                        throw null;
                    }
                    objE = xb2Var.c(j32.j("[", sb2Var.j()));
                } else if (e30.a.d0(q64Var, us4VarR0)) {
                    v20 v20VarG = e82.a.g(e30.a.q(q64Var, us4VarR0));
                    if (v20VarG != null) {
                        if (jt4Var.g) {
                            String strE = kb2.b(v20VarG).e();
                            j32.d(strE, "byClassId(classId).internalName");
                            objE = xb2Var.d(strE);
                        } else {
                            List<e82.a> list = e82.m;
                            if (!(list instanceof Collection) || !list.isEmpty()) {
                                Iterator<T> it2 = list.iterator();
                                while (true) {
                                    if (!it2.hasNext()) {
                                        z = false;
                                        break;
                                    }
                                    if (j32.a(((e82.a) it2.next()).a, v20VarG)) {
                                        z = true;
                                        break;
                                    }
                                }
                            } else {
                                z = false;
                                break;
                            }
                            if (!z) {
                                String strE2 = kb2.b(v20VarG).e();
                                j32.d(strE2, "byClassId(classId).internalName");
                                objE = xb2Var.d(strE2);
                            }
                        }
                    }
                }
            }
        }
        if (objE != null) {
            if (jt4Var.a) {
                objE = xb2Var.e(objE);
            }
            jn1Var.d(qe2Var, objE, jt4Var);
            return objE;
        }
        ts4 ts4VarT0 = qe2Var.T0();
        if (ts4VarT0 instanceof g32) {
            g32 g32Var = (g32) ts4VarT0;
            qe2 qe2VarD = g32Var.a;
            if (qe2VarD == null) {
                qe2VarD = ht4Var.d(g32Var.b);
            }
            return D(hu4.m(qe2VarD), xb2Var, jt4Var, ht4Var, jn1Var);
        }
        g30 g30VarD = ts4VarT0.d();
        if (g30VarD == null) {
            throw new UnsupportedOperationException(j32.j("no descriptor for type constructor of ", qe2Var));
        }
        if (d51.i(g30VarD)) {
            Object objD3 = xb2Var.d("error/NonExistentClass");
            ht4Var.f(qe2Var, (q20) g30VarD);
            return objD3;
        }
        boolean z3 = g30VarD instanceof q20;
        if (z3 && zd2.A(qe2Var)) {
            if (qe2Var.S0().size() != 1) {
                throw new UnsupportedOperationException("arrays must have one type argument");
            }
            qt4 qt4Var = qe2Var.S0().get(0);
            qe2 qe2VarB2 = qt4Var.b();
            j32.d(qe2VarB2, "memberProjection.type");
            if (qt4Var.a() == xz4.IN_VARIANCE) {
                objD2 = xb2Var.d("java/lang/Object");
            } else {
                xz4 xz4VarA = qt4Var.a();
                j32.d(xz4VarA, "memberProjection.projectionKind");
                if (jt4Var.c || ((iOrdinal = xz4VarA.ordinal()) == 0 ? (jt4Var2 = jt4Var.i) == null : !(iOrdinal == 1 ? (jt4Var2 = jt4Var.h) != null : (jt4Var2 = jt4Var.f) != null))) {
                    jt4Var2 = jt4Var;
                }
                objD2 = D(qe2VarB2, xb2Var, jt4Var2, ht4Var, jn1Var);
            }
            return xb2Var.c(j32.j("[", xb2Var.b(objD2)));
        }
        if (!z3) {
            if (g30VarD instanceof kt4) {
                return D(hu4.g((kt4) g30VarD), xb2Var, jt4Var, ht4Var, eo1.b);
            }
            if ((g30VarD instanceof hs4) && jt4Var.j) {
                return D(((hs4) g30VarD).d0(), xb2Var, jt4Var, ht4Var, jn1Var);
            }
            throw new UnsupportedOperationException(j32.j("Unknown type ", qe2Var));
        }
        if (b12.b(g30VarD) && !jt4Var.b && (qe2Var2 = (qe2) he0.e(q64.a, qe2Var, new HashSet())) != null) {
            return D(qe2Var2, xb2Var, new jt4(jt4Var.a, true, jt4Var.c, jt4Var.d, jt4Var.e, jt4Var.f, jt4Var.g, jt4Var.h, jt4Var.i, false, RecyclerView.b0.FLAG_ADAPTER_POSITION_UNKNOWN), ht4Var, jn1Var);
        }
        if (jt4Var.c && zd2.F((q20) g30VarD)) {
            objD = xb2Var.f();
        } else {
            q20 q20Var = (q20) g30VarD;
            q20 q20VarA = q20Var.w0();
            j32.d(q20VarA, "descriptor.original");
            Object objA2 = ht4Var.a(q20VarA);
            if (objA2 == null) {
                if (q20Var.w() == w20.ENUM_ENTRY) {
                    q20Var = (q20) q20Var.c();
                }
                q20 q20VarA2 = q20Var.w0();
                j32.d(q20VarA2, "enumClassIfEnumEntry.original");
                objD = xb2Var.d(g(q20VarA2, ht4Var));
            } else {
                objD = objA2;
            }
        }
        jn1Var.d(qe2Var, objD, jt4Var);
        return objD;
    }

    public static final int E(int i, int i2) {
        int i3 = i % i2;
        return i3 >= 0 ? i3 : i3 + i2;
    }

    public static final void F(nl2 nl2Var, ll2 ll2Var, q20 q20Var, hw2 hw2Var) {
        xj2 xj2VarH;
        j32.e(nl2Var, "<this>");
        j32.e(q20Var, "scopeOwner");
        if (nl2Var == nl2.a.a || (xj2VarH = ll2Var.h()) == null) {
            return;
        }
        he3 he3VarC = nl2Var.a() ? xj2VarH.c() : he3.t;
        String strA = xj2VarH.a();
        String strB = gr0.g(q20Var).b();
        j32.d(strB, "getFqName(scopeOwner).asString()");
        ny3 ny3Var = ny3.CLASSIFIER;
        String strH = hw2Var.h();
        j32.d(strH, "name.asString()");
        nl2Var.b(strA, he3VarC, strB, ny3Var, strH);
    }

    public static final void G(nl2 nl2Var, ll2 ll2Var, k93 k93Var, hw2 hw2Var) {
        xj2 xj2VarH;
        j32.e(nl2Var, "<this>");
        j32.e(k93Var, "scopeOwner");
        String strB = k93Var.e().b();
        j32.d(strB, "scopeOwner.fqName.asString()");
        String strH = hw2Var.h();
        j32.d(strH, "name.asString()");
        if (nl2Var == nl2.a.a || (xj2VarH = ll2Var.h()) == null) {
            return;
        }
        nl2Var.b(xj2VarH.a(), nl2Var.a() ? xj2VarH.c() : he3.t, strB, ny3.PACKAGE, strH);
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0028  */
    public static final boolean H(qe2 qe2Var) {
        boolean z;
        g30 g30VarD = qe2Var.T0().d();
        if (g30VarD != null) {
            if (b12.b(g30VarD) && !j32.a(hr0.g((q20) g30VarD), tb4.e)) {
                z = true;
            } else {
                z = false;
            }
        } else {
            z = false;
        }
        return z || x(qe2Var);
    }

    public static final d9 I(bg2 bg2Var, l62 l62Var) {
        j32.e(bg2Var, "<this>");
        j32.e(l62Var, "annotationsOwner");
        return new tf2(bg2Var, l62Var, false);
    }

    public static wt4 J(List<kt4> list, tt4 tt4Var, qm0 qm0Var, List<kt4> list2) {
        if (tt4Var == null) {
            a(1);
            throw null;
        }
        if (qm0Var == null) {
            a(2);
            throw null;
        }
        if (list2 == null) {
            a(3);
            throw null;
        }
        wt4 wt4VarK = K(list, tt4Var, qm0Var, list2, null);
        if (wt4VarK != null) {
            return wt4VarK;
        }
        throw new AssertionError("Substitution failed");
    }

    /* JADX WARN: Code duplicated, block: B:22:0x00b9  */
    public static wt4 K(List<kt4> list, tt4 tt4Var, qm0 qm0Var, List<kt4> list2, boolean[] zArr) {
        wt4 wt4Var;
        if (list == null) {
            a(5);
            throw null;
        }
        if (tt4Var == null) {
            a(6);
            throw null;
        }
        if (qm0Var == null) {
            a(7);
            throw null;
        }
        if (list2 == null) {
            a(8);
            throw null;
        }
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        int i = 0;
        for (kt4 kt4Var : list) {
            lt4 lt4VarX0 = lt4.X0(qm0Var, kt4Var.y(), kt4Var.L(), kt4Var.q(), kt4Var.getName(), i, s94.a, kt4Var.q0());
            map.put(kt4Var.m(), new st4(lt4VarX0.x()));
            map2.put(kt4Var, lt4VarX0);
            list2.add(lt4VarX0);
            i++;
        }
        vs4 vs4Var = new vs4(map, false);
        wt4 wt4VarF = wt4.f(tt4Var, vs4Var);
        wt4 wt4VarF2 = wt4.f(new ut4(tt4Var), vs4Var);
        for (kt4 kt4Var2 : list) {
            lt4 lt4Var = (lt4) map2.get(kt4Var2);
            for (qe2 qe2Var : kt4Var2.getUpperBounds()) {
                g30 g30VarD = qe2Var.T0().d();
                if (g30VarD instanceof kt4) {
                    kt4 kt4Var3 = (kt4) g30VarD;
                    j32.e(kt4Var3, "typeParameter");
                    if (hu4.h(kt4Var3, null, null)) {
                        wt4Var = wt4VarF;
                    } else {
                        wt4Var = wt4VarF2;
                    }
                } else {
                    wt4Var = wt4VarF2;
                }
                qe2 qe2VarK = wt4Var.k(qe2Var, xz4.OUT_VARIANCE);
                if (qe2VarK == null) {
                    return null;
                }
                if (qe2VarK != qe2Var && zArr != null) {
                    zArr[0] = true;
                }
                lt4Var.V0(qe2VarK);
            }
            lt4Var.W0();
            lt4Var.D = true;
        }
        return wt4VarF;
    }

    public static final b74 L(b74 b74Var, b74 b74Var2) {
        j32.e(b74Var, "<this>");
        j32.e(b74Var2, "abbreviatedType");
        return vd5.r(b74Var) ? b74Var : new d(b74Var, b74Var2);
    }

    public static final <T> Object M(me0 me0Var, hn1<? super se0, ? super ud0<? super T>, ? extends Object> hn1Var, ud0<? super T> ud0Var) {
        me0 me0VarA = ud0Var.a();
        me0 me0VarPlus = me0VarA.plus(me0Var);
        bp.f(me0VarPlus);
        if (me0VarPlus == me0VarA) {
            my3 my3Var = new my3(me0VarPlus, ud0Var);
            return md0.Q(my3Var, my3Var, hn1Var);
        }
        int i = yd0.e;
        yd0.a aVar = yd0.a.r;
        if (!j32.a((yd0) me0VarPlus.get(aVar), (yd0) me0VarA.get(aVar))) {
            cu0 cu0Var = new cu0(me0VarPlus, ud0Var);
            cu0Var.n0();
            z02.A(hn1Var, cu0Var, cu0Var, null, 4);
            return cu0Var.s0();
        }
        nv4 nv4Var = new nv4(me0VarPlus, ud0Var);
        Object objC = zm4.c(me0VarPlus, null);
        try {
            return md0.Q(nv4Var, nv4Var, hn1Var);
        } finally {
            zm4.a(me0VarPlus, objC);
        }
    }

    public static /* synthetic */ void a(int i) {
        String str = i != 4 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
        Object[] objArr = new Object[i != 4 ? 3 : 2];
        switch (i) {
            case 1:
            case 6:
                objArr[0] = "originalSubstitution";
                break;
            case 2:
            case 7:
                objArr[0] = "newContainingDeclaration";
                break;
            case 3:
            case 8:
                objArr[0] = "result";
                break;
            case 4:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/types/DescriptorSubstitutor";
                break;
            case 5:
            default:
                objArr[0] = "typeParameters";
                break;
        }
        if (i != 4) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/types/DescriptorSubstitutor";
        } else {
            objArr[1] = "substituteTypeParameters";
        }
        if (i != 4) {
            objArr[2] = "substituteTypeParameters";
        }
        String str2 = String.format(str, objArr);
        if (i == 4) {
            throw new IllegalStateException(str2);
        }
    }

    public static final se0 b(me0 me0Var) {
        if (me0Var.get(e92.h) == null) {
            me0Var = me0Var.plus(new h92(null));
        }
        return new rd0(me0Var);
    }

    public static final se0 c() {
        me0.b bVarA = md0.a(null, 1);
        pe0 pe0Var = hu0.a;
        return new rd0(me0.b.a.d((l92) bVarA, wl2.a));
    }

    public static final void d(wk4 wk4Var, gl4 gl4Var, String str) {
        il4.b bVar = il4.j;
        Logger logger = il4.i;
        StringBuilder sb = new StringBuilder();
        sb.append(gl4Var.f);
        sb.append(' ');
        String str2 = String.format("%-22s", Arrays.copyOf(new Object[]{str}, 1));
        j32.d(str2, "java.lang.String.format(format, *args)");
        sb.append(str2);
        sb.append(": ");
        sb.append(wk4Var.c);
        logger.fine(sb.toString());
    }

    public static void e(se0 se0Var, CancellationException cancellationException, int i) {
        e92 e92Var = (e92) se0Var.getS().get(e92.h);
        if (e92Var != null) {
            e92Var.b(null);
            return;
        }
        throw new IllegalStateException(("Scope cannot be cancelled because it does not have a job: " + se0Var).toString());
    }

    public static final d9 f(d9 d9Var, d9 d9Var2) {
        j32.e(d9Var, "first");
        j32.e(d9Var2, "second");
        if (d9Var.isEmpty()) {
            return d9Var2;
        }
        return d9Var2.isEmpty() ? d9Var : new b90(d9Var, d9Var2);
    }

    public static final String g(q20 q20Var, ht4<?> ht4Var) {
        j32.e(q20Var, "klass");
        j32.e(ht4Var, "typeMappingConfiguration");
        String strC = ht4Var.c(q20Var);
        if (strC != null) {
            return strC;
        }
        qm0 qm0VarC = q20Var.c();
        j32.d(qm0VarC, "klass.containingDeclaration");
        hw2 name = q20Var.getName();
        ca4 ca4Var = ca4.a;
        if (name == null || name.s) {
            name = ca4.d;
        }
        String strJ = name.j();
        j32.d(strJ, "safeIdentifier(klass.name).identifier");
        if (qm0VarC instanceof k93) {
            fi1 fi1VarE = ((k93) qm0VarC).e();
            if (fi1VarE.d()) {
                return strJ;
            }
            StringBuilder sb = new StringBuilder();
            String strB = fi1VarE.b();
            j32.d(strB, "fqName.asString()");
            sb.append(ne4.G(strB, '.', '/', false, 4));
            sb.append('/');
            sb.append(strJ);
            return sb.toString();
        }
        q20 q20Var2 = qm0VarC instanceof q20 ? (q20) qm0VarC : null;
        if (q20Var2 == null) {
            throw new IllegalArgumentException("Unexpected container: " + qm0VarC + " for " + q20Var);
        }
        String strE = ht4Var.e(q20Var2);
        if (strE == null) {
            strE = g(q20Var2, ht4Var);
        }
        return strE + '$' + strJ;
    }

    public static final <R> Object h(hn1<? super se0, ? super ud0<? super R>, ? extends Object> hn1Var, ud0<? super R> ud0Var) {
        my3 my3Var = new my3(ud0Var.a(), ud0Var);
        return md0.Q(my3Var, my3Var, hn1Var);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0066  */
    public static final b74 i(zd2 zd2Var, d9 d9Var, qe2 qe2Var, List<? extends qe2> list, List<hw2> list2, qe2 qe2Var2, boolean z) {
        q20 q20VarK;
        hw2 hw2Var;
        d9 e9Var = d9Var;
        j32.e(zd2Var, "builtIns");
        j32.e(e9Var, "annotations");
        j32.e(list, "parameterTypes");
        j32.e(qe2Var2, "returnType");
        j32.e(list, "parameterTypes");
        j32.e(qe2Var2, "returnType");
        j32.e(zd2Var, "builtIns");
        int i = 0;
        ArrayList arrayList = new ArrayList(list.size() + (qe2Var != null ? 1 : 0) + 1);
        md0.b(arrayList, qe2Var == null ? null : hu4.a(qe2Var));
        for (Object obj : list) {
            int i2 = i + 1;
            if (i < 0) {
                iq6.x();
                throw null;
            }
            qe2 qe2VarK = (qe2) obj;
            if (list2 == null) {
                hw2Var = null;
            } else {
                hw2Var = list2.get(i);
                if (hw2Var.s) {
                    hw2Var = null;
                }
            }
            if (hw2Var != null) {
                fi1 fi1Var = tb4.a.r;
                hw2 hw2VarU = hw2.u("name");
                String strH = hw2Var.h();
                j32.d(strH, "name.asString()");
                go goVar = new go(zd2Var, fi1Var, kf5.j(new x93(hw2VarU, new ge4(strH))));
                int i3 = d9.a;
                List listM0 = m50.m0(qe2VarK.y(), goVar);
                j32.e(listM0, "annotations");
                qe2VarK = hu4.k(qe2VarK, ((ArrayList) listM0).isEmpty() ? d9.a.b : new e9(listM0));
            }
            arrayList.add(hu4.a(qe2VarK));
            i = i2;
        }
        arrayList.add(hu4.a(qe2Var2));
        int size = list.size();
        if (qe2Var != null) {
            size++;
        }
        j32.e(zd2Var, "builtIns");
        if (z) {
            q20VarK = zd2Var.x(size);
        } else {
            hw2 hw2Var2 = tb4.a;
            q20VarK = zd2Var.k(j32.j("Function", Integer.valueOf(size)));
        }
        j32.d(q20VarK, "if (isSuspendFunction) b…tFunction(parameterCount)");
        if (qe2Var != null) {
            j32.e(e9Var, "<this>");
            j32.e(zd2Var, "builtIns");
            fi1 fi1Var2 = tb4.a.q;
            if (!e9Var.m1(fi1Var2)) {
                int i4 = d9.a;
                List listM1 = m50.m0(e9Var, new go(zd2Var, fi1Var2, x21.r));
                j32.e(listM1, "annotations");
                e9Var = ((ArrayList) listM1).isEmpty() ? d9.a.b : new e9(listM1);
            }
        }
        return se2.e(e9Var, q20VarK, arrayList);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0030  */
    /* JADX WARN: Multi-variable type inference failed */
    public static final hw2 j(qe2 qe2Var) {
        String str;
        r8 r8VarR = qe2Var.y().r(tb4.a.r);
        if (r8VarR == null) {
            return null;
        }
        Object objR0 = m50.r0(r8VarR.l().values());
        ge4 ge4Var = objR0 instanceof ge4 ? (ge4) objR0 : null;
        if (ge4Var == null) {
            str = null;
        } else {
            str = (String) ge4Var.a;
            if (!hw2.y(str)) {
                str = null;
            }
        }
        if (str == null) {
            return null;
        }
        return hw2.u(str);
    }

    public static final String k(long j) {
        String str;
        if (j <= -999500000) {
            str = ((j - ((long) 500000000)) / ((long) 1000000000)) + " s ";
        } else if (j <= -999500) {
            str = ((j - ((long) 500000)) / ((long) 1000000)) + " ms";
        } else if (j <= 0) {
            str = ((j - ((long) 500)) / ((long) 1000)) + " µs";
        } else if (j < 999500) {
            str = ((j + ((long) 500)) / ((long) 1000)) + " µs";
        } else if (j < 999500000) {
            str = ((j + ((long) 500000)) / ((long) 1000000)) + " ms";
        } else {
            str = ((j + ((long) 500000000)) / ((long) 1000000000)) + " s ";
        }
        String str2 = String.format("%6s", Arrays.copyOf(new Object[]{str}, 1));
        j32.d(str2, "java.lang.String.format(format, *args)");
        return str2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <M extends pp1.d<M>, T> T l(pp1.d<M> dVar, pp1.f<M, T> fVar) {
        j32.e(dVar, "<this>");
        j32.e(fVar, "extension");
        if (dVar.l(fVar)) {
            return (T) dVar.k(fVar);
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <M extends pp1.d<M>, T> T m(pp1.d<M> dVar, pp1.f<M, List<T>> fVar, int i) {
        j32.e(dVar, "<this>");
        dVar.p(fVar);
        ua1<pp1.e> ua1Var = dVar.r;
        pp1.e eVar = fVar.d;
        Objects.requireNonNull(ua1Var);
        if (!eVar.u) {
            throw new IllegalArgumentException("getRepeatedField() can only be called on repeated fields.");
        }
        Object objF = ua1Var.f(eVar);
        if (i >= (objF == null ? 0 : ((List) objF).size())) {
            return null;
        }
        dVar.p(fVar);
        ua1<pp1.e> ua1Var2 = dVar.r;
        pp1.e eVar2 = fVar.d;
        Objects.requireNonNull(ua1Var2);
        if (!eVar2.u) {
            throw new IllegalArgumentException("getRepeatedField() can only be called on repeated fields.");
        }
        Object objF2 = ua1Var2.f(eVar2);
        if (objF2 != null) {
            return (T) fVar.a(((List) objF2).get(i));
        }
        throw new IndexOutOfBoundsException();
    }

    public static final vn1 n(qm0 qm0Var) {
        if (!(qm0Var instanceof q20) || !zd2.O(qm0Var)) {
            return null;
        }
        gi1 gi1VarH = hr0.h(qm0Var);
        if (!gi1VarH.f() || gi1VarH.e()) {
            return null;
        }
        vn1.a aVar = vn1.t;
        String strH = gi1VarH.h().h();
        j32.d(strH, "shortName().asString()");
        fi1 fi1VarE = gi1VarH.i().e();
        j32.d(fi1VarE, "toSafe().parent()");
        Objects.requireNonNull(aVar);
        vn1.a.C0204a c0204aA = aVar.a(strH, fi1VarE);
        if (c0204aA == null) {
            return null;
        }
        return c0204aA.a;
    }

    public static final gc2<?> o(mc2 mc2Var) {
        Object obj;
        if (mc2Var instanceof gc2) {
            return (gc2) mc2Var;
        }
        if (!(mc2Var instanceof pd2)) {
            throw new me2(j32.j("Cannot calculate JVM erasure for type: ", mc2Var));
        }
        List<ld2> upperBounds = ((pd2) mc2Var).getUpperBounds();
        Iterator<T> it = upperBounds.iterator();
        while (true) {
            obj = null;
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            g30 g30VarD = ((od2) ((ld2) next)).a.T0().d();
            q20 q20Var = g30VarD instanceof q20 ? (q20) g30VarD : null;
            if ((q20Var == null || q20Var.w() == w20.INTERFACE || q20Var.w() == w20.ANNOTATION_CLASS) ? false : true) {
                obj = next;
                break;
            }
        }
        ld2 ld2Var = (ld2) obj;
        if (ld2Var == null) {
            ld2Var = (ld2) m50.b0(upperBounds);
        }
        if (ld2Var == null) {
            return dq3.a(Object.class);
        }
        mc2 mc2VarD = ld2Var.d();
        if (mc2VarD != null) {
            return o(mc2VarD);
        }
        throw new me2(j32.j("Cannot calculate JVM erasure for type: ", ld2Var));
    }

    public static final int p(int i, int i2, int i3) {
        if (i3 > 0) {
            return i >= i2 ? i2 : i2 - E(E(i2, i3) - E(i, i3), i3);
        }
        if (i3 >= 0) {
            throw new IllegalArgumentException("Step is zero.");
        }
        if (i <= i2) {
            return i2;
        }
        int i4 = -i3;
        return i2 + E(E(i, i4) - E(i2, i4), i4);
    }

    public static final qe2 q(qe2 qe2Var) {
        u(qe2Var);
        if (qe2Var.y().r(tb4.a.q) != null) {
            return ((qt4) m50.Z(qe2Var.S0())).b();
        }
        return null;
    }

    public static final qe2 r(qe2 qe2Var) {
        u(qe2Var);
        qe2 qe2VarB = ((qt4) m50.i0(qe2Var.S0())).b();
        j32.d(qe2VarB, "arguments.last().type");
        return qe2VarB;
    }

    public static final List<qt4> s(qe2 qe2Var) {
        j32.e(qe2Var, "<this>");
        u(qe2Var);
        List<qt4> listS0 = qe2Var.S0();
        j32.e(qe2Var, "<this>");
        int i = 0;
        if (u(qe2Var)) {
            if (qe2Var.y().r(tb4.a.q) != null) {
                i = 1;
            }
        }
        return listS0.subList(i, listS0.size() - 1);
    }

    public static final boolean t(se0 se0Var) {
        e92 e92Var = (e92) se0Var.getS().get(e92.h);
        if (e92Var != null) {
            return e92Var.c();
        }
        return true;
    }

    public static final boolean u(qe2 qe2Var) {
        j32.e(qe2Var, "<this>");
        g30 g30VarD = qe2Var.T0().d();
        if (g30VarD == null) {
            return false;
        }
        j32.e(g30VarD, "<this>");
        vn1 vn1VarN = n(g30VarD);
        return vn1VarN == vn1.u || vn1VarN == vn1.v;
    }

    public static final boolean v(Throwable th) {
        Class<?> superclass = th.getClass();
        while (!j32.a(superclass.getCanonicalName(), "com.intellij.openapi.progress.ProcessCanceledException")) {
            superclass = superclass.getSuperclass();
            if (superclass == null) {
                return false;
            }
        }
        return true;
    }

    public static final boolean w(qe2 qe2Var) {
        j32.e(qe2Var, "<this>");
        g30 g30VarD = qe2Var.T0().d();
        return (g30VarD == null ? null : n(g30VarD)) == vn1.v;
    }

    public static final boolean x(qe2 qe2Var) {
        g30 g30VarD = qe2Var.T0().d();
        kt4 kt4Var = g30VarD instanceof kt4 ? (kt4) g30VarD : null;
        if (kt4Var == null) {
            return false;
        }
        return H(hu4.g(kt4Var));
    }

    public static e92 y(se0 se0Var, me0 me0Var, int i, hn1 hn1Var, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            me0Var = s21.r;
        }
        if ((i2 & 2) != 0) {
            i = 1;
        }
        me0 me0VarA = ne0.a(se0Var, me0Var);
        su.m(i);
        qb4 rg2Var = i == 2 ? new rg2(me0VarA, hn1Var) : new qb4(me0VarA, true);
        rg2Var.r0(i, rg2Var, hn1Var);
        return rg2Var;
    }

    public static final qw4 z(qw4 qw4Var, boolean z) {
        j32.e(qw4Var, "<this>");
        rp0 rp0VarA = rp0.u.a(qw4Var, z);
        if (rp0VarA != null) {
            return rp0VarA;
        }
        b74 b74VarB = B(qw4Var);
        return b74VarB == null ? qw4Var.X0(false) : b74VarB;
    }
}
