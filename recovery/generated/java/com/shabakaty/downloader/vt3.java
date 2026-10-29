package com.shabakaty.downloader;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.content.Context;
import android.database.Cursor;
import android.os.CancellationSignal;
import android.os.Looper;
import android.util.Log;
import androidx.room.migration.Migration;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: compiled from: RoomDatabase.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class vt3 {

    @Deprecated
    public volatile yh4 a;
    public Executor b;
    public Executor c;
    public zh4 d;
    public boolean f;

    @Deprecated
    public List<b> g;
    public qf j;
    public final ReentrantReadWriteLock i = new ReentrantReadWriteLock();
    public final ThreadLocal<Integer> k = new ThreadLocal<>();
    public final Map<String, Object> l = Collections.synchronizedMap(new HashMap());
    public final v32 e = c();
    public final Map<Class<?>, Object> m = new HashMap();
    public Map<Class<? extends wf>, wf> h = new HashMap();

    /* JADX INFO: compiled from: RoomDatabase.java */
    public static class a<T extends vt3> {
        public final Class<T> a;
        public final String b;
        public final Context c;
        public ArrayList<b> d;
        public Executor e;
        public Executor f;
        public zh4.c g;
        public boolean h;
        public boolean j;
        public Set<Integer> l;
        public boolean i = true;
        public final c k = new c();

        public a(Context context, Class<T> cls, String str) {
            this.c = context;
            this.a = cls;
            this.b = str;
        }

        public a<T> a(Migration... migrationArr) {
            if (this.l == null) {
                this.l = new HashSet();
            }
            for (Migration migration : migrationArr) {
                this.l.add(Integer.valueOf(migration.a));
                this.l.add(Integer.valueOf(migration.b));
            }
            this.k.a(migrationArr);
            return this;
        }

        @SuppressLint({"RestrictedApi"})
        public T b() {
            Executor executor;
            Context context = this.c;
            if (context == null) {
                throw new IllegalArgumentException("Cannot provide null context for the database.");
            }
            if (this.a == null) {
                throw new IllegalArgumentException("Must provide an abstract class that extends RoomDatabase");
            }
            Executor executor2 = this.e;
            if (executor2 == null && this.f == null) {
                Executor executor3 = sc.u;
                this.f = executor3;
                this.e = executor3;
            } else if (executor2 != null && this.f == null) {
                this.f = executor2;
            } else if (executor2 == null && (executor = this.f) != null) {
                this.e = executor;
            }
            zh4.c zl1Var = this.g;
            if (zl1Var == null) {
                zl1Var = new zl1();
            }
            zh4.c cVar = zl1Var;
            String str = this.b;
            c cVar2 = this.k;
            ArrayList<b> arrayList = this.d;
            boolean z = this.h;
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            bm0 bm0Var = new bm0(context, str, cVar, cVar2, arrayList, z, (activityManager == null || activityManager.isLowRamDevice()) ? 2 : 3, this.e, this.f, false, this.i, this.j, null, null, null, null, null, null);
            Class<T> cls = this.a;
            String name = cls.getPackage().getName();
            String canonicalName = cls.getCanonicalName();
            if (!name.isEmpty()) {
                canonicalName = canonicalName.substring(name.length() + 1);
            }
            String str2 = canonicalName.replace('.', '_') + "_Impl";
            try {
                T t = (T) Class.forName(name.isEmpty() ? str2 : name + "." + str2, true, cls.getClassLoader()).newInstance();
                t.d = t.d(bm0Var);
                Set<Class<? extends wf>> setF = t.f();
                BitSet bitSet = new BitSet();
                Iterator<Class<? extends wf>> it = setF.iterator();
                while (true) {
                    int i = -1;
                    if (!it.hasNext()) {
                        for (int size = bm0Var.g.size() - 1; size >= 0; size--) {
                            if (!bitSet.get(size)) {
                                throw new IllegalArgumentException("Unexpected auto migration specs found. Annotate AutoMigrationSpec implementation with @ProvidedAutoMigrationSpec annotation or remove this spec from the builder.");
                            }
                        }
                        Iterator<ht2> it2 = t.e().iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                break;
                            }
                            ht2 next = it2.next();
                            if (!Collections.unmodifiableMap(bm0Var.d.a).containsKey(Integer.valueOf(next.a))) {
                                bm0Var.d.a(next);
                            }
                        }
                        dw3 dw3Var = (dw3) t.o(dw3.class, t.d);
                        if (dw3Var != null) {
                            dw3Var.x = bm0Var;
                        }
                        if (((tf) t.o(tf.class, t.d)) != null) {
                            Objects.requireNonNull(t.e);
                            throw null;
                        }
                        t.d.setWriteAheadLoggingEnabled(bm0Var.i == 3);
                        t.g = bm0Var.e;
                        t.b = bm0Var.j;
                        t.c = new rp4(bm0Var.k);
                        t.f = bm0Var.h;
                        Map<Class<?>, List<Class<?>>> mapG = t.g();
                        BitSet bitSet2 = new BitSet();
                        for (Map.Entry<Class<?>, List<Class<?>>> entry : mapG.entrySet()) {
                            Class<?> key = entry.getKey();
                            for (Class<?> cls2 : entry.getValue()) {
                                int size2 = bm0Var.f.size() - 1;
                                while (true) {
                                    if (size2 < 0) {
                                        size2 = -1;
                                        break;
                                    }
                                    if (cls2.isAssignableFrom(bm0Var.f.get(size2).getClass())) {
                                        bitSet2.set(size2);
                                        break;
                                    }
                                    size2--;
                                }
                                if (size2 < 0) {
                                    throw new IllegalArgumentException("A required type converter (" + cls2 + ") for " + key.getCanonicalName() + " is missing in the database configuration.");
                                }
                                t.m.put(cls2, bm0Var.f.get(size2));
                            }
                        }
                        for (int size3 = bm0Var.f.size() - 1; size3 >= 0; size3--) {
                            if (!bitSet2.get(size3)) {
                                throw new IllegalArgumentException("Unexpected type converter " + bm0Var.f.get(size3) + ". Annotate TypeConverter class with @ProvidedTypeConverter annotation or remove this converter from the builder.");
                            }
                        }
                        return t;
                    }
                    Class<? extends wf> next2 = it.next();
                    for (int size4 = bm0Var.g.size() - 1; size4 >= 0; size4--) {
                        if (next2.isAssignableFrom(bm0Var.g.get(size4).getClass())) {
                            bitSet.set(size4);
                            i = size4;
                            break;
                        }
                    }
                    if (i < 0) {
                        StringBuilder sbA = um3.a("A required auto migration spec (");
                        sbA.append(next2.getCanonicalName());
                        sbA.append(") is missing in the database configuration.");
                        throw new IllegalArgumentException(sbA.toString());
                    }
                    t.h.put(next2, bm0Var.g.get(i));
                }
            } catch (ClassNotFoundException unused) {
                StringBuilder sbA2 = um3.a("cannot find implementation for ");
                sbA2.append(cls.getCanonicalName());
                sbA2.append(". ");
                sbA2.append(str2);
                sbA2.append(" does not exist");
                throw new RuntimeException(sbA2.toString());
            } catch (IllegalAccessException unused2) {
                StringBuilder sbA3 = um3.a("Cannot access the constructor");
                sbA3.append(cls.getCanonicalName());
                throw new RuntimeException(sbA3.toString());
            } catch (InstantiationException unused3) {
                StringBuilder sbA4 = um3.a("Failed to create an instance of ");
                sbA4.append(cls.getCanonicalName());
                throw new RuntimeException(sbA4.toString());
            }
        }
    }

    /* JADX INFO: compiled from: RoomDatabase.java */
    public static abstract class b {
        public void a(yh4 yh4Var) {
        }
    }

    /* JADX INFO: compiled from: RoomDatabase.java */
    public static class c {
        public HashMap<Integer, TreeMap<Integer, ht2>> a = new HashMap<>();

        public void a(ht2... ht2VarArr) {
            for (ht2 ht2Var : ht2VarArr) {
                int i = ht2Var.a;
                int i2 = ht2Var.b;
                TreeMap<Integer, ht2> treeMap = this.a.get(Integer.valueOf(i));
                if (treeMap == null) {
                    treeMap = new TreeMap<>();
                    this.a.put(Integer.valueOf(i), treeMap);
                }
                ht2 ht2Var2 = treeMap.get(Integer.valueOf(i2));
                if (ht2Var2 != null) {
                    Log.w("ROOM", "Overriding migration " + ht2Var2 + " with " + ht2Var);
                }
                treeMap.put(Integer.valueOf(i2), ht2Var);
            }
        }
    }

    /* JADX INFO: compiled from: RoomDatabase.java */
    public interface d {
        void a(String str, List<Object> list);
    }

    public void a() {
        if (this.f) {
            return;
        }
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            throw new IllegalStateException("Cannot access database on the main thread since it may potentially lock the UI for a long period of time.");
        }
    }

    public void b() {
        if (!h() && this.k.get() != null) {
            throw new IllegalStateException("Cannot access database on a different coroutine context inherited from a suspending transaction.");
        }
    }

    public abstract v32 c();

    public abstract zh4 d(bm0 bm0Var);

    public List<ht2> e() {
        return Collections.emptyList();
    }

    public Set<Class<? extends wf>> f() {
        return Collections.emptySet();
    }

    public Map<Class<?>, List<Class<?>>> g() {
        return Collections.emptyMap();
    }

    public boolean h() {
        return this.d.getWritableDatabase().b1();
    }

    public final void i() {
        a();
        yh4 writableDatabase = this.d.getWritableDatabase();
        this.e.i(writableDatabase);
        if (writableDatabase.i1()) {
            writableDatabase.m0();
        } else {
            writableDatabase.A();
        }
    }

    public final void j() {
        this.d.getWritableDatabase().F0();
        if (h()) {
            return;
        }
        v32 v32Var = this.e;
        if (v32Var.e.compareAndSet(false, true)) {
            v32Var.d.b.execute(v32Var.k);
        }
    }

    public void k(yh4 yh4Var) {
        v32 v32Var = this.e;
        synchronized (v32Var) {
            if (v32Var.f) {
                Log.e("ROOM", "Invalidation tracker is initialized twice :/.");
                return;
            }
            yh4Var.H("PRAGMA temp_store = MEMORY;");
            yh4Var.H("PRAGMA recursive_triggers='ON';");
            yh4Var.H("CREATE TEMP TABLE room_table_modification_log(table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)");
            v32Var.i(yh4Var);
            v32Var.g = yh4Var.Q("UPDATE room_table_modification_log SET invalidated = 0 WHERE invalidated = 1 ");
            v32Var.f = true;
        }
    }

    public boolean l() {
        qf qfVar = this.j;
        if (qfVar != null) {
            return !qfVar.a;
        }
        yh4 yh4Var = this.a;
        return yh4Var != null && yh4Var.isOpen();
    }

    public Cursor m(bi4 bi4Var, CancellationSignal cancellationSignal) {
        a();
        b();
        return cancellationSignal != null ? this.d.getWritableDatabase().a1(bi4Var, cancellationSignal) : this.d.getWritableDatabase().H0(bi4Var);
    }

    @Deprecated
    public void n() {
        this.d.getWritableDatabase().i0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <T> T o(Class<T> cls, zh4 zh4Var) {
        if (cls.isInstance(zh4Var)) {
            return zh4Var;
        }
        if (zh4Var instanceof yp0) {
            return (T) o(cls, ((yp0) zh4Var).a());
        }
        return null;
    }
}
