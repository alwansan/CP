package com.shabakaty.downloader;

import android.annotation.SuppressLint;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.util.Log;
import androidx.lifecycle.LiveData;
import com.connectsdk.service.command.ServiceCommand;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: compiled from: InvalidationTracker.java */
/* JADX INFO: loaded from: classes.dex */
public class v32 {
    public static final String[] l = {"UPDATE", ServiceCommand.TYPE_DEL, "INSERT"};
    public final String[] b;
    public Map<String, Set<String>> c;
    public final vt3 d;
    public volatile ci4 g;
    public b h;
    public final ag6 i;
    public AtomicBoolean e = new AtomicBoolean(false);
    public volatile boolean f = false;

    @SuppressLint({"RestrictedApi"})
    public final sw3<c, d> j = new sw3<>();
    public Runnable k = new a();
    public final HashMap<String, Integer> a = new HashMap<>();

    /* JADX INFO: compiled from: InvalidationTracker.java */
    public class a implements Runnable {
        public a() {
        }

        public final Set<Integer> a() {
            HashSet hashSet = new HashSet();
            Cursor cursorM = v32.this.d.m(new qz2("SELECT * FROM room_table_modification_log WHERE invalidated = 1;"), null);
            while (cursorM.moveToNext()) {
                try {
                    hashSet.add(Integer.valueOf(cursorM.getInt(0)));
                } catch (Throwable th) {
                    cursorM.close();
                    throw th;
                }
            }
            cursorM.close();
            if (!hashSet.isEmpty()) {
                v32.this.g.P();
            }
            return hashSet;
        }

        @Override // java.lang.Runnable
        public void run() {
            Set<Integer> setA;
            ReentrantReadWriteLock.ReadLock lock = v32.this.d.i.readLock();
            lock.lock();
            try {
                try {
                    if (v32.this.c() && v32.this.e.compareAndSet(true, false) && !v32.this.d.h()) {
                        try {
                            yh4 writableDatabase = v32.this.d.d.getWritableDatabase();
                            writableDatabase.m0();
                            try {
                                setA = a();
                                try {
                                    writableDatabase.i0();
                                    writableDatabase.F0();
                                } catch (Throwable th) {
                                    th = th;
                                    writableDatabase.F0();
                                    throw th;
                                }
                            } catch (Throwable th2) {
                                th = th2;
                            }
                        } catch (SQLiteException e) {
                            e = e;
                            Log.e("ROOM", "Cannot run invalidation tracker. Is the db closed?", e);
                        } catch (IllegalStateException e2) {
                            e = e2;
                            Log.e("ROOM", "Cannot run invalidation tracker. Is the db closed?", e);
                        }
                        lock.unlock();
                        Objects.requireNonNull(v32.this);
                        if (setA == null || setA.isEmpty()) {
                            return;
                        }
                        synchronized (v32.this.j) {
                            Iterator<Map.Entry<c, d>> it = v32.this.j.iterator();
                            while (true) {
                                sw3.e eVar = (sw3.e) it;
                                if (eVar.hasNext()) {
                                    d dVar = (d) ((Map.Entry) eVar.next()).getValue();
                                    int length = dVar.a.length;
                                    Set<String> hashSet = null;
                                    for (int i = 0; i < length; i++) {
                                        if (setA.contains(Integer.valueOf(dVar.a[i]))) {
                                            if (length == 1) {
                                                hashSet = dVar.d;
                                            } else {
                                                if (hashSet == null) {
                                                    hashSet = new HashSet<>(length);
                                                }
                                                hashSet.add(dVar.b[i]);
                                            }
                                        }
                                    }
                                    if (hashSet != null) {
                                        dVar.c.a(hashSet);
                                    }
                                }
                            }
                        }
                        return;
                    }
                    lock.unlock();
                    Objects.requireNonNull(v32.this);
                } catch (Throwable th3) {
                    lock.unlock();
                    Objects.requireNonNull(v32.this);
                    throw th3;
                }
            } catch (SQLiteException | IllegalStateException e3) {
                e = e3;
                setA = null;
            }
        }
    }

    /* JADX INFO: compiled from: InvalidationTracker.java */
    public static class b {
        public final long[] a;
        public final boolean[] b;
        public final int[] c;
        public boolean d;
        public boolean e;

        public b(int i) {
            long[] jArr = new long[i];
            this.a = jArr;
            boolean[] zArr = new boolean[i];
            this.b = zArr;
            this.c = new int[i];
            Arrays.fill(jArr, 0L);
            Arrays.fill(zArr, false);
        }

        public int[] a() {
            synchronized (this) {
                if (this.d && !this.e) {
                    int length = this.a.length;
                    int i = 0;
                    while (true) {
                        int i2 = 1;
                        if (i >= length) {
                            this.e = true;
                            this.d = false;
                            return this.c;
                        }
                        boolean z = this.a[i] > 0;
                        boolean[] zArr = this.b;
                        if (z != zArr[i]) {
                            int[] iArr = this.c;
                            if (!z) {
                                i2 = 2;
                            }
                            iArr[i] = i2;
                        } else {
                            this.c[i] = 0;
                        }
                        zArr[i] = z;
                        i++;
                    }
                }
                return null;
            }
        }
    }

    /* JADX INFO: compiled from: InvalidationTracker.java */
    public static abstract class c {
        public final String[] a;

        public c(String[] strArr) {
            this.a = (String[]) Arrays.copyOf(strArr, strArr.length);
        }

        public abstract void a(Set<String> set);
    }

    /* JADX INFO: compiled from: InvalidationTracker.java */
    public static class d {
        public final int[] a;
        public final String[] b;
        public final c c;
        public final Set<String> d;

        public d(c cVar, int[] iArr, String[] strArr) {
            this.c = cVar;
            this.a = iArr;
            this.b = strArr;
            if (iArr.length != 1) {
                this.d = null;
                return;
            }
            HashSet hashSet = new HashSet();
            hashSet.add(strArr[0]);
            this.d = Collections.unmodifiableSet(hashSet);
        }
    }

    /* JADX INFO: compiled from: InvalidationTracker.java */
    public static class e extends c {
        public final v32 b;
        public final WeakReference<c> c;

        public e(v32 v32Var, c cVar) {
            super(cVar.a);
            this.b = v32Var;
            this.c = new WeakReference<>(cVar);
        }

        @Override // com.shabakaty.downloader.v32.c
        public void a(Set<String> set) {
            c cVar = this.c.get();
            if (cVar == null) {
                this.b.d(this);
            } else {
                cVar.a(set);
            }
        }
    }

    public v32(vt3 vt3Var, Map<String, String> map, Map<String, Set<String>> map2, String... strArr) {
        this.d = vt3Var;
        this.h = new b(strArr.length);
        this.c = map2;
        this.i = new ag6(vt3Var);
        int length = strArr.length;
        this.b = new String[length];
        for (int i = 0; i < length; i++) {
            String str = strArr[i];
            Locale locale = Locale.US;
            String lowerCase = str.toLowerCase(locale);
            this.a.put(lowerCase, Integer.valueOf(i));
            String str2 = map.get(strArr[i]);
            if (str2 != null) {
                this.b[i] = str2.toLowerCase(locale);
            } else {
                this.b[i] = lowerCase;
            }
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String value = entry.getValue();
            Locale locale2 = Locale.US;
            String lowerCase2 = value.toLowerCase(locale2);
            if (this.a.containsKey(lowerCase2)) {
                String lowerCase3 = entry.getKey().toLowerCase(locale2);
                HashMap<String, Integer> map3 = this.a;
                map3.put(lowerCase3, map3.get(lowerCase2));
            }
        }
    }

    @SuppressLint({"RestrictedApi"})
    public void a(c cVar) {
        d dVarL;
        boolean z;
        String[] strArrE = e(cVar.a);
        int length = strArrE.length;
        int[] iArr = new int[length];
        int length2 = strArrE.length;
        for (int i = 0; i < length2; i++) {
            Integer num = this.a.get(strArrE[i].toLowerCase(Locale.US));
            if (num == null) {
                StringBuilder sbA = um3.a("There is no table with name ");
                sbA.append(strArrE[i]);
                throw new IllegalArgumentException(sbA.toString());
            }
            iArr[i] = num.intValue();
        }
        d dVar = new d(cVar, iArr, strArrE);
        synchronized (this.j) {
            dVarL = this.j.l(cVar, dVar);
        }
        if (dVarL == null) {
            b bVar = this.h;
            synchronized (bVar) {
                z = false;
                for (int i2 = 0; i2 < length; i2++) {
                    int i3 = iArr[i2];
                    long[] jArr = bVar.a;
                    long j = jArr[i3];
                    jArr[i3] = 1 + j;
                    if (j == 0) {
                        bVar.d = true;
                        z = true;
                    }
                }
            }
            if (z) {
                h();
            }
        }
    }

    public <T> LiveData<T> b(String[] strArr, boolean z, Callable<T> callable) {
        ag6 ag6Var = this.i;
        String[] strArrE = e(strArr);
        for (String str : strArrE) {
            if (!this.a.containsKey(str.toLowerCase(Locale.US))) {
                throw new IllegalArgumentException(el3.a("There is no table with name ", str));
            }
        }
        Objects.requireNonNull(ag6Var);
        return new zt3((vt3) ag6Var.t, ag6Var, z, callable, strArrE);
    }

    public boolean c() {
        if (!this.d.l()) {
            return false;
        }
        if (!this.f) {
            this.d.d.getWritableDatabase();
        }
        if (this.f) {
            return true;
        }
        Log.e("ROOM", "database is not initialized even though it is open");
        return false;
    }

    @SuppressLint({"RestrictedApi"})
    public void d(c cVar) {
        d dVarM;
        boolean z;
        synchronized (this.j) {
            dVarM = this.j.m(cVar);
        }
        if (dVarM != null) {
            b bVar = this.h;
            int[] iArr = dVarM.a;
            synchronized (bVar) {
                z = false;
                for (int i : iArr) {
                    long[] jArr = bVar.a;
                    long j = jArr[i];
                    jArr[i] = j - 1;
                    if (j == 1) {
                        bVar.d = true;
                        z = true;
                    }
                }
            }
            if (z) {
                h();
            }
        }
    }

    public final String[] e(String[] strArr) {
        HashSet hashSet = new HashSet();
        for (String str : strArr) {
            String lowerCase = str.toLowerCase(Locale.US);
            if (this.c.containsKey(lowerCase)) {
                hashSet.addAll(this.c.get(lowerCase));
            } else {
                hashSet.add(str);
            }
        }
        return (String[]) hashSet.toArray(new String[hashSet.size()]);
    }

    public final void f(yh4 yh4Var, int i) {
        yh4Var.H("INSERT OR IGNORE INTO room_table_modification_log VALUES(" + i + ", 0)");
        String str = this.b[i];
        StringBuilder sb = new StringBuilder();
        for (String str2 : l) {
            sb.setLength(0);
            sb.append("CREATE TEMP TRIGGER IF NOT EXISTS ");
            sb.append("`");
            sb.append("room_table_modification_trigger_");
            u32.a(sb, str, "_", str2, "`");
            u32.a(sb, " AFTER ", str2, " ON `", str);
            u32.a(sb, "` BEGIN UPDATE ", "room_table_modification_log", " SET ", "invalidated");
            u32.a(sb, " = 1", " WHERE ", "table_id", " = ");
            sb.append(i);
            sb.append(" AND ");
            sb.append("invalidated");
            sb.append(" = 0");
            sb.append("; END");
            yh4Var.H(sb.toString());
        }
    }

    public final void g(yh4 yh4Var, int i) {
        String str = this.b[i];
        StringBuilder sb = new StringBuilder();
        for (String str2 : l) {
            sb.setLength(0);
            sb.append("DROP TRIGGER IF EXISTS ");
            sb.append("`");
            sb.append("room_table_modification_trigger_");
            sb.append(str);
            sb.append("_");
            sb.append(str2);
            sb.append("`");
            yh4Var.H(sb.toString());
        }
    }

    public void h() {
        if (this.d.l()) {
            i(this.d.d.getWritableDatabase());
        }
    }

    public void i(yh4 yh4Var) {
        if (yh4Var.b1()) {
            return;
        }
        while (true) {
            try {
                ReentrantReadWriteLock.ReadLock lock = this.d.i.readLock();
                lock.lock();
                try {
                    int[] iArrA = this.h.a();
                    if (iArrA == null) {
                        lock.unlock();
                        return;
                    }
                    int length = iArrA.length;
                    if (yh4Var.i1()) {
                        yh4Var.m0();
                    } else {
                        yh4Var.A();
                    }
                    for (int i = 0; i < length; i++) {
                        try {
                            int i2 = iArrA[i];
                            if (i2 == 1) {
                                f(yh4Var, i);
                            } else if (i2 == 2) {
                                g(yh4Var, i);
                            }
                        } catch (Throwable th) {
                            yh4Var.F0();
                            throw th;
                        }
                    }
                    yh4Var.i0();
                    yh4Var.F0();
                    b bVar = this.h;
                    synchronized (bVar) {
                        bVar.e = false;
                    }
                    lock.unlock();
                } catch (Throwable th2) {
                    lock.unlock();
                    throw th2;
                }
            } catch (SQLiteException | IllegalStateException e2) {
                Log.e("ROOM", "Cannot run invalidation tracker. Is the db closed?", e2);
                return;
            }
        }
    }
}
