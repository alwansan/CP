package com.shabakaty.downloader;

import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;

/* JADX INFO: compiled from: Gson.java */
/* JADX INFO: loaded from: classes.dex */
public final class lr1 {
    public static final cu4<?> n = cu4.get(Object.class);
    public final ThreadLocal<Map<cu4<?>, a<?>>> a;
    public final Map<cu4<?>, wr4<?>> b;
    public final nc0 c;
    public final q92 d;
    public final List<xr4> e;
    public final Map<Type, w12<?>> f;
    public final boolean g;
    public final boolean h;
    public final boolean i;
    public final boolean j;
    public final boolean k;
    public final List<xr4> l;
    public final List<xr4> m;

    /* JADX INFO: compiled from: Gson.java */
    public static class a<T> extends wr4<T> {
        public wr4<T> a;

        @Override // com.shabakaty.downloader.wr4
        public T a(ga2 ga2Var) {
            wr4<T> wr4Var = this.a;
            if (wr4Var != null) {
                return wr4Var.a(ga2Var);
            }
            throw new IllegalStateException();
        }

        @Override // com.shabakaty.downloader.wr4
        public void b(pa2 pa2Var, T t) {
            wr4<T> wr4Var = this.a;
            if (wr4Var == null) {
                throw new IllegalStateException();
            }
            wr4Var.b(pa2Var, t);
        }
    }

    public lr1() {
        this(m61.u, qa1.r, Collections.emptyMap(), false, false, false, true, false, false, false, il2.r, null, 2, 2, Collections.emptyList(), Collections.emptyList(), Collections.emptyList());
    }

    public static void a(double d) {
        if (Double.isNaN(d) || Double.isInfinite(d)) {
            throw new IllegalArgumentException(d + " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.");
        }
    }

    public <T> T b(z92 z92Var, Class<T> cls) {
        return (T) ml3.c(cls).cast(z92Var == null ? null : c(new la2(z92Var), cls));
    }

    public <T> T c(ga2 ga2Var, Type type) {
        boolean z = ga2Var.s;
        boolean z2 = true;
        ga2Var.s = true;
        try {
            try {
                try {
                    ga2Var.L();
                    z2 = false;
                    T tA = f(cu4.get(type)).a(ga2Var);
                    ga2Var.s = z;
                    return tA;
                } catch (IOException e) {
                    throw new ja2(e);
                } catch (AssertionError e2) {
                    AssertionError assertionError = new AssertionError("AssertionError (GSON 2.8.8): " + e2.getMessage());
                    assertionError.initCause(e2);
                    throw assertionError;
                }
            } catch (EOFException e3) {
                if (!z2) {
                    throw new ja2(e3);
                }
                ga2Var.s = z;
                return null;
            } catch (IllegalStateException e4) {
                throw new ja2(e4);
            }
        } catch (Throwable th) {
            ga2Var.s = z;
            throw th;
        }
    }

    public <T> T d(Reader reader, Type type) {
        ga2 ga2Var = new ga2(reader);
        ga2Var.s = this.k;
        T t = (T) c(ga2Var, type);
        if (t != null) {
            try {
                if (ga2Var.L() != ka2.END_DOCUMENT) {
                    throw new aa2("JSON document was not fully consumed.");
                }
            } catch (bm2 e) {
                throw new ja2(e);
            } catch (IOException e2) {
                throw new aa2(e2);
            }
        }
        return t;
    }

    public <T> T e(String str, Class<T> cls) {
        return (T) ml3.c(cls).cast(str == null ? null : d(new StringReader(str), cls));
    }

    public <T> wr4<T> f(cu4<T> cu4Var) {
        wr4<T> wr4Var = (wr4) this.b.get(cu4Var == null ? n : cu4Var);
        if (wr4Var != null) {
            return wr4Var;
        }
        Map<cu4<?>, a<?>> map = this.a.get();
        boolean z = false;
        if (map == null) {
            map = new HashMap<>();
            this.a.set(map);
            z = true;
        }
        a<?> aVar = map.get(cu4Var);
        if (aVar != null) {
            return aVar;
        }
        try {
            a<?> aVar2 = new a<>();
            map.put(cu4Var, aVar2);
            Iterator<xr4> it = this.e.iterator();
            while (it.hasNext()) {
                wr4<T> wr4VarA = it.next().a(this, cu4Var);
                if (wr4VarA != null) {
                    if (aVar2.a != null) {
                        throw new AssertionError();
                    }
                    aVar2.a = wr4VarA;
                    this.b.put(cu4Var, wr4VarA);
                    map.remove(cu4Var);
                    if (z) {
                        this.a.remove();
                    }
                    return wr4VarA;
                }
            }
            throw new IllegalArgumentException("GSON (2.8.8) cannot handle " + cu4Var);
        } catch (Throwable th) {
            map.remove(cu4Var);
            if (z) {
                this.a.remove();
            }
            throw th;
        }
    }

    public <T> wr4<T> g(xr4 xr4Var, cu4<T> cu4Var) {
        if (!this.e.contains(xr4Var)) {
            xr4Var = this.d;
        }
        boolean z = false;
        for (xr4 xr4Var2 : this.e) {
            if (z) {
                wr4<T> wr4VarA = xr4Var2.a(this, cu4Var);
                if (wr4VarA != null) {
                    return wr4VarA;
                }
            } else if (xr4Var2 == xr4Var) {
                z = true;
            }
        }
        throw new IllegalArgumentException("GSON cannot serialize " + cu4Var);
    }

    public pa2 h(Writer writer) throws IOException {
        if (this.h) {
            writer.write(")]}'\n");
        }
        pa2 pa2Var = new pa2(writer);
        if (this.j) {
            pa2Var.u = "  ";
            pa2Var.v = ": ";
        }
        pa2Var.z = this.g;
        return pa2Var;
    }

    public String i(Object obj) {
        if (obj == null) {
            z92 z92Var = ba2.a;
            StringWriter stringWriter = new StringWriter();
            k(z92Var, stringWriter);
            return stringWriter.toString();
        }
        Type type = obj.getClass();
        StringWriter stringWriter2 = new StringWriter();
        m(obj, type, stringWriter2);
        return stringWriter2.toString();
    }

    public void j(z92 z92Var, pa2 pa2Var) {
        boolean z = pa2Var.w;
        pa2Var.w = true;
        boolean z2 = pa2Var.x;
        pa2Var.x = this.i;
        boolean z3 = pa2Var.z;
        pa2Var.z = this.g;
        try {
            try {
                ((zr4.u) zr4.C).b(pa2Var, z92Var);
                pa2Var.w = z;
                pa2Var.x = z2;
                pa2Var.z = z3;
            } catch (IOException e) {
                throw new aa2(e);
            } catch (AssertionError e2) {
                AssertionError assertionError = new AssertionError("AssertionError (GSON 2.8.8): " + e2.getMessage());
                assertionError.initCause(e2);
                throw assertionError;
            }
        } catch (Throwable th) {
            pa2Var.w = z;
            pa2Var.x = z2;
            pa2Var.z = z3;
            throw th;
        }
    }

    public void k(z92 z92Var, Appendable appendable) {
        try {
            j(z92Var, h(appendable instanceof Writer ? (Writer) appendable : new zd4.a(appendable)));
        } catch (IOException e) {
            throw new aa2(e);
        }
    }

    public void l(Object obj, Type type, pa2 pa2Var) {
        wr4 wr4VarF = f(cu4.get(type));
        boolean z = pa2Var.w;
        pa2Var.w = true;
        boolean z2 = pa2Var.x;
        pa2Var.x = this.i;
        boolean z3 = pa2Var.z;
        pa2Var.z = this.g;
        try {
            try {
                try {
                    wr4VarF.b(pa2Var, obj);
                    pa2Var.w = z;
                    pa2Var.x = z2;
                    pa2Var.z = z3;
                } catch (IOException e) {
                    throw new aa2(e);
                }
            } catch (AssertionError e2) {
                AssertionError assertionError = new AssertionError("AssertionError (GSON 2.8.8): " + e2.getMessage());
                assertionError.initCause(e2);
                throw assertionError;
            }
        } catch (Throwable th) {
            pa2Var.w = z;
            pa2Var.x = z2;
            pa2Var.z = z3;
            throw th;
        }
    }

    public void m(Object obj, Type type, Appendable appendable) {
        try {
            l(obj, type, h(appendable instanceof Writer ? (Writer) appendable : new zd4.a(appendable)));
        } catch (IOException e) {
            throw new aa2(e);
        }
    }

    public String toString() {
        return "{serializeNulls:" + this.g + ",factories:" + this.e + ",instanceCreators:" + this.c + "}";
    }

    public lr1(m61 m61Var, ra1 ra1Var, Map<Type, w12<?>> map, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, il2 il2Var, String str, int i, int i2, List<xr4> list, List<xr4> list2, List<xr4> list3) {
        wr4 ir1Var;
        wr4 gr1Var;
        wr4 hr1Var;
        this.a = new ThreadLocal<>();
        this.b = new ConcurrentHashMap();
        this.f = map;
        nc0 nc0Var = new nc0(map);
        this.c = nc0Var;
        this.g = z;
        this.h = z3;
        this.i = z4;
        this.j = z5;
        this.k = z6;
        this.l = list;
        this.m = list2;
        ArrayList arrayList = new ArrayList();
        arrayList.add(zr4.D);
        arrayList.add(o43.b);
        arrayList.add(m61Var);
        arrayList.addAll(list3);
        arrayList.add(zr4.r);
        arrayList.add(zr4.g);
        arrayList.add(zr4.d);
        arrayList.add(zr4.e);
        arrayList.add(zr4.f);
        if (il2Var == il2.r) {
            ir1Var = zr4.k;
        } else {
            ir1Var = new ir1();
        }
        arrayList.add(new cs4(Long.TYPE, Long.class, ir1Var));
        Class cls = Double.TYPE;
        if (z7) {
            gr1Var = zr4.m;
        } else {
            gr1Var = new gr1(this);
        }
        arrayList.add(new cs4(cls, Double.class, gr1Var));
        Class cls2 = Float.TYPE;
        if (z7) {
            hr1Var = zr4.l;
        } else {
            hr1Var = new hr1(this);
        }
        arrayList.add(new cs4(cls2, Float.class, hr1Var));
        arrayList.add(zr4.n);
        arrayList.add(zr4.h);
        arrayList.add(zr4.i);
        arrayList.add(new bs4(AtomicLong.class, new vr4(new jr1(ir1Var))));
        arrayList.add(new bs4(AtomicLongArray.class, new vr4(new kr1(ir1Var))));
        arrayList.add(zr4.j);
        arrayList.add(zr4.o);
        arrayList.add(zr4.s);
        arrayList.add(zr4.t);
        arrayList.add(new bs4(BigDecimal.class, zr4.p));
        arrayList.add(new bs4(BigInteger.class, zr4.q));
        arrayList.add(zr4.u);
        arrayList.add(zr4.v);
        arrayList.add(zr4.x);
        arrayList.add(zr4.y);
        arrayList.add(zr4.B);
        arrayList.add(zr4.w);
        arrayList.add(zr4.b);
        arrayList.add(gm0.b);
        arrayList.add(zr4.A);
        arrayList.add(ln4.b);
        arrayList.add(va4.b);
        arrayList.add(zr4.z);
        arrayList.add(ed.c);
        arrayList.add(zr4.a);
        arrayList.add(new g50(nc0Var));
        arrayList.add(new om2(nc0Var, z2));
        q92 q92Var = new q92(nc0Var);
        this.d = q92Var;
        arrayList.add(q92Var);
        arrayList.add(zr4.E);
        arrayList.add(new lq3(nc0Var, ra1Var, m61Var, q92Var));
        this.e = Collections.unmodifiableList(arrayList);
    }
}
