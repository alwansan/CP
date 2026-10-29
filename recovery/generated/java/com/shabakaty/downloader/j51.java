package com.shabakaty.downloader;

import android.os.Looper;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import java.util.logging.Level;

/* JADX INFO: compiled from: EventBus.java */
/* JADX INFO: loaded from: classes2.dex */
public class j51 {
    public static volatile j51 q;
    public static final l51 r = new l51();
    public static final Map<Class<?>, List<Class<?>>> s = new HashMap();
    public final Map<Class<?>, CopyOnWriteArrayList<nf4>> a;
    public final Map<Object, List<Class<?>>> b;
    public final Map<Class<?>, Object> c;
    public final ThreadLocal<b> d;
    public final am2 e;
    public final me3 f;
    public final ii g;
    public final na6 h;
    public final kf4 i;
    public final ExecutorService j;
    public final boolean k;
    public final boolean l;
    public final boolean m;
    public final boolean n;
    public final boolean o;
    public final uk2 p;

    /* JADX INFO: compiled from: EventBus.java */
    public class a extends ThreadLocal<b> {
        public a(j51 j51Var) {
        }

        @Override // java.lang.ThreadLocal
        public b initialValue() {
            return new b();
        }
    }

    /* JADX INFO: compiled from: EventBus.java */
    public static final class b {
        public final List<Object> a = new ArrayList();
        public boolean b;
        public boolean c;
        public Object d;
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0053  */
    /* JADX WARN: Code duplicated, block: B:9:0x0024  */
    public j51() {
        Looper mainLooper;
        uk2 h7Var;
        Looper mainLooper2;
        am2.a aVar;
        l51 l51Var = r;
        this.d = new a(this);
        Objects.requireNonNull(l51Var);
        if (h7.a) {
            try {
                mainLooper = Looper.getMainLooper();
            } catch (RuntimeException unused) {
                mainLooper = null;
            }
            if (mainLooper != null) {
                h7Var = new h7("EventBus");
            } else {
                h7Var = new uk2.a();
            }
        } else {
            h7Var = new uk2.a();
        }
        this.p = h7Var;
        this.a = new HashMap();
        this.b = new HashMap();
        this.c = new ConcurrentHashMap();
        if (h7.a) {
            try {
                mainLooper2 = Looper.getMainLooper();
            } catch (RuntimeException unused2) {
                mainLooper2 = null;
            }
            if (mainLooper2 == null) {
                aVar = null;
            } else {
                aVar = new am2.a(mainLooper2);
            }
        } else {
            aVar = null;
        }
        this.e = aVar;
        this.f = aVar != null ? new cs1(this, aVar.a, 10) : null;
        this.g = new ii(this);
        this.h = new na6(this);
        this.i = new kf4(null, false, false);
        this.k = true;
        this.l = true;
        this.m = true;
        this.n = true;
        this.o = true;
        this.j = l51Var.a;
    }

    public static void a(List<Class<?>> list, Class<?>[] clsArr) {
        for (Class<?> cls : clsArr) {
            if (!list.contains(cls)) {
                list.add(cls);
                a(list, cls.getInterfaces());
            }
        }
    }

    public static j51 b() {
        j51 j51Var = q;
        if (j51Var == null) {
            synchronized (j51.class) {
                j51Var = q;
                if (j51Var == null) {
                    j51Var = new j51();
                    q = j51Var;
                }
            }
        }
        return j51Var;
    }

    public void c(mb3 mb3Var) {
        Object obj = mb3Var.a;
        nf4 nf4Var = mb3Var.b;
        mb3Var.a = null;
        mb3Var.b = null;
        mb3Var.c = null;
        List<mb3> list = mb3.d;
        synchronized (list) {
            if (((ArrayList) list).size() < 10000) {
                ((ArrayList) list).add(mb3Var);
            }
        }
        if (nf4Var.c) {
            d(nf4Var, obj);
        }
    }

    public void d(nf4 nf4Var, Object obj) {
        try {
            nf4Var.b.a.invoke(nf4Var.a, obj);
        } catch (IllegalAccessException e) {
            throw new IllegalStateException("Unexpected exception", e);
        } catch (InvocationTargetException e2) {
            Throwable cause = e2.getCause();
            if (!(obj instanceof hf4)) {
                if (this.k) {
                    uk2 uk2Var = this.p;
                    Level level = Level.SEVERE;
                    StringBuilder sbA = um3.a("Could not dispatch event: ");
                    sbA.append(obj.getClass());
                    sbA.append(" to subscribing class ");
                    sbA.append(nf4Var.a.getClass());
                    uk2Var.b(level, sbA.toString(), cause);
                }
                if (this.m) {
                    f(new hf4(this, cause, obj, nf4Var.a));
                    return;
                }
                return;
            }
            if (this.k) {
                uk2 uk2Var2 = this.p;
                Level level2 = Level.SEVERE;
                StringBuilder sbA2 = um3.a("SubscriberExceptionEvent subscriber ");
                sbA2.append(nf4Var.a.getClass());
                sbA2.append(" threw an exception");
                uk2Var2.b(level2, sbA2.toString(), cause);
                hf4 hf4Var = (hf4) obj;
                uk2 uk2Var3 = this.p;
                StringBuilder sbA3 = um3.a("Initial event ");
                sbA3.append(hf4Var.b);
                sbA3.append(" caused exception in ");
                sbA3.append(hf4Var.c);
                uk2Var3.b(level2, sbA3.toString(), hf4Var.a);
            }
        }
    }

    public final boolean e() {
        am2 am2Var = this.e;
        if (am2Var != null) {
            if (!(((am2.a) am2Var).a == Looper.myLooper())) {
                return false;
            }
        }
        return true;
    }

    public void f(Object obj) {
        b bVar = this.d.get();
        List<Object> list = bVar.a;
        list.add(obj);
        if (bVar.b) {
            return;
        }
        bVar.c = e();
        bVar.b = true;
        while (!list.isEmpty()) {
            try {
                g(list.remove(0), bVar);
            } catch (Throwable th) {
                bVar.b = false;
                bVar.c = false;
                throw th;
            }
        }
        bVar.b = false;
        bVar.c = false;
    }

    public final void g(Object obj, b bVar) {
        boolean zH;
        List list;
        Class<?> cls = obj.getClass();
        if (this.o) {
            Map<Class<?>, List<Class<?>>> map = s;
            synchronized (map) {
                List list2 = (List) ((HashMap) map).get(cls);
                list = list2;
                if (list2 == null) {
                    ArrayList arrayList = new ArrayList();
                    for (Class<?> superclass = cls; superclass != null; superclass = superclass.getSuperclass()) {
                        arrayList.add(superclass);
                        a(arrayList, superclass.getInterfaces());
                    }
                    ((HashMap) s).put(cls, arrayList);
                    list = arrayList;
                }
            }
            int size = list.size();
            zH = false;
            for (int i = 0; i < size; i++) {
                zH |= h(obj, bVar, (Class) list.get(i));
            }
        } else {
            zH = h(obj, bVar, cls);
        }
        if (zH) {
            return;
        }
        if (this.l) {
            this.p.a(Level.FINE, "No subscribers registered for event " + cls);
        }
        if (!this.n || cls == qz2.class || cls == hf4.class) {
            return;
        }
        f(new qz2(this, obj));
    }

    public final boolean h(Object obj, b bVar, Class<?> cls) {
        CopyOnWriteArrayList<nf4> copyOnWriteArrayList;
        synchronized (this) {
            copyOnWriteArrayList = this.a.get(cls);
        }
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.isEmpty()) {
            return false;
        }
        for (nf4 nf4Var : copyOnWriteArrayList) {
            bVar.d = obj;
            j(nf4Var, obj, bVar.c);
        }
        return true;
    }

    public void i(Object obj) {
        synchronized (this.c) {
            this.c.put(obj.getClass(), obj);
        }
        f(obj);
    }

    public final void j(nf4 nf4Var, Object obj, boolean z) {
        int iOrdinal = nf4Var.b.b.ordinal();
        if (iOrdinal == 0) {
            d(nf4Var, obj);
            return;
        }
        if (iOrdinal == 1) {
            if (z) {
                d(nf4Var, obj);
                return;
            } else {
                this.f.a(nf4Var, obj);
                return;
            }
        }
        if (iOrdinal == 2) {
            me3 me3Var = this.f;
            if (me3Var != null) {
                me3Var.a(nf4Var, obj);
                return;
            } else {
                d(nf4Var, obj);
                return;
            }
        }
        if (iOrdinal == 3) {
            if (z) {
                this.g.a(nf4Var, obj);
                return;
            } else {
                d(nf4Var, obj);
                return;
            }
        }
        if (iOrdinal == 4) {
            this.h.a(nf4Var, obj);
        } else {
            StringBuilder sbA = um3.a("Unknown thread mode: ");
            sbA.append(nf4Var.b.b);
            throw new IllegalStateException(sbA.toString());
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x003f  */
    public void k(Object obj) {
        if4 if4VarB;
        Class<?> cls = obj.getClass();
        kf4 kf4Var = this.i;
        Objects.requireNonNull(kf4Var);
        List<jf4> listB = (List) ((ConcurrentHashMap) kf4.a).get(cls);
        if (listB == null) {
            kf4.a aVarC = kf4Var.c();
            aVarC.e = cls;
            aVarC.f = false;
            aVarC.g = null;
            while (aVarC.e != null) {
                if4 if4Var = aVarC.g;
                if (if4Var == null || if4Var.b() == null) {
                    if4VarB = null;
                } else {
                    if4VarB = aVarC.g.b();
                    if (aVarC.e != if4VarB.c()) {
                        if4VarB = null;
                    }
                }
                aVarC.g = if4VarB;
                if (if4VarB != null) {
                    for (jf4 jf4Var : if4VarB.a()) {
                        if (aVarC.a(jf4Var.a, jf4Var.c)) {
                            aVarC.a.add(jf4Var);
                        }
                    }
                } else {
                    kf4Var.a(aVarC);
                }
                aVarC.c();
            }
            listB = kf4Var.b(aVarC);
            if (((ArrayList) listB).isEmpty()) {
                throw new rz2("Subscriber " + cls + " and its super classes have no public methods with the @Subscribe annotation");
            }
            ((ConcurrentHashMap) kf4.a).put(cls, listB);
        }
        synchronized (this) {
            Iterator<jf4> it = listB.iterator();
            while (it.hasNext()) {
                l(obj, it.next());
            }
        }
    }

    public final void l(Object obj, jf4 jf4Var) {
        Object value;
        Class<?> cls = jf4Var.c;
        nf4 nf4Var = new nf4(obj, jf4Var);
        CopyOnWriteArrayList<nf4> copyOnWriteArrayList = this.a.get(cls);
        if (copyOnWriteArrayList == null) {
            copyOnWriteArrayList = new CopyOnWriteArrayList<>();
            this.a.put(cls, copyOnWriteArrayList);
        } else if (copyOnWriteArrayList.contains(nf4Var)) {
            StringBuilder sbA = um3.a("Subscriber ");
            sbA.append(obj.getClass());
            sbA.append(" already registered to event ");
            sbA.append(cls);
            throw new rz2(sbA.toString());
        }
        int size = copyOnWriteArrayList.size();
        for (int i = 0; i <= size; i++) {
            if (i == size || jf4Var.d > copyOnWriteArrayList.get(i).b.d) {
                copyOnWriteArrayList.add(i, nf4Var);
                break;
            }
        }
        List<Class<?>> arrayList = this.b.get(obj);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            this.b.put(obj, arrayList);
        }
        arrayList.add(cls);
        if (jf4Var.e) {
            if (!this.o) {
                Object obj2 = this.c.get(cls);
                if (obj2 != null) {
                    j(nf4Var, obj2, e());
                    return;
                }
                return;
            }
            for (Map.Entry<Class<?>, Object> entry : this.c.entrySet()) {
                if (cls.isAssignableFrom(entry.getKey()) && (value = entry.getValue()) != null) {
                    j(nf4Var, value, e());
                }
            }
        }
    }

    public synchronized void m(Object obj) {
        List<Class<?>> list = this.b.get(obj);
        if (list != null) {
            Iterator<Class<?>> it = list.iterator();
            while (it.hasNext()) {
                CopyOnWriteArrayList<nf4> copyOnWriteArrayList = this.a.get(it.next());
                if (copyOnWriteArrayList != null) {
                    int size = copyOnWriteArrayList.size();
                    int i = 0;
                    while (i < size) {
                        nf4 nf4Var = copyOnWriteArrayList.get(i);
                        if (nf4Var.a == obj) {
                            nf4Var.c = false;
                            copyOnWriteArrayList.remove(i);
                            i--;
                            size--;
                        }
                        i++;
                    }
                }
            }
            this.b.remove(obj);
        } else {
            this.p.a(Level.WARNING, "Subscriber to unregister was not registered before: " + obj.getClass());
        }
    }

    public String toString() {
        StringBuilder sbA = lh4.a("EventBus[indexCount=", 0, ", eventInheritance=");
        sbA.append(this.o);
        sbA.append("]");
        return sbA.toString();
    }
}
