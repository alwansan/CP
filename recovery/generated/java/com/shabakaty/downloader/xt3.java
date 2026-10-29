package com.shabakaty.downloader;

import android.database.Cursor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.TreeMap;

/* JADX INFO: compiled from: RoomOpenHelper.java */
/* JADX INFO: loaded from: classes.dex */
public class xt3 extends zh4.a {
    public bm0 b;
    public final a c;
    public final String d;
    public final String e;

    /* JADX INFO: compiled from: RoomOpenHelper.java */
    public static abstract class a {
        public final int a;

        public a(int i) {
            this.a = i;
        }

        public abstract void a(yh4 yh4Var);

        public abstract void b(yh4 yh4Var);

        public abstract void c(yh4 yh4Var);

        public abstract void d(yh4 yh4Var);

        public abstract void e(yh4 yh4Var);

        public abstract void f(yh4 yh4Var);

        public abstract b g(yh4 yh4Var);
    }

    /* JADX INFO: compiled from: RoomOpenHelper.java */
    public static class b {
        public final boolean a;
        public final String b;

        public b(boolean z, String str) {
            this.a = z;
            this.b = str;
        }
    }

    public xt3(bm0 bm0Var, a aVar, String str, String str2) {
        super(aVar.a);
        this.b = bm0Var;
        this.c = aVar;
        this.d = str;
        this.e = str2;
    }

    @Override // com.shabakaty.downloader.zh4.a
    public void b(yh4 yh4Var) {
    }

    @Override // com.shabakaty.downloader.zh4.a
    public void c(yh4 yh4Var) {
        Cursor cursorH0 = ((xl1) yh4Var).H0(new qz2("SELECT count(*) FROM sqlite_master WHERE name != 'android_metadata'"));
        try {
            boolean z = false;
            if (cursorH0.moveToFirst() && cursorH0.getInt(0) == 0) {
                z = true;
            }
            cursorH0.close();
            this.c.a(yh4Var);
            if (!z) {
                b bVarG = this.c.g(yh4Var);
                if (!bVarG.a) {
                    StringBuilder sbA = um3.a("Pre-packaged database has an invalid schema: ");
                    sbA.append(bVarG.b);
                    throw new IllegalStateException(sbA.toString());
                }
            }
            g(yh4Var);
            this.c.c(yh4Var);
        } catch (Throwable th) {
            cursorH0.close();
            throw th;
        }
    }

    @Override // com.shabakaty.downloader.zh4.a
    public void d(yh4 yh4Var, int i, int i2) {
        f(yh4Var, i, i2);
    }

    @Override // com.shabakaty.downloader.zh4.a
    public void e(yh4 yh4Var) {
        Cursor cursorH0 = ((xl1) yh4Var).H0(new qz2("SELECT 1 FROM sqlite_master WHERE type = 'table' AND name='room_master_table'"));
        try {
            boolean z = cursorH0.moveToFirst() && cursorH0.getInt(0) != 0;
            cursorH0.close();
            if (z) {
                Cursor cursorH1 = ((xl1) yh4Var).H0(new qz2("SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1"));
                try {
                    String string = cursorH1.moveToFirst() ? cursorH1.getString(0) : null;
                    cursorH1.close();
                    if (!this.d.equals(string) && !this.e.equals(string)) {
                        throw new IllegalStateException("Room cannot verify the data integrity. Looks like you've changed schema but forgot to update the version number. You can simply fix this by increasing the version number.");
                    }
                } catch (Throwable th) {
                    cursorH1.close();
                    throw th;
                }
            } else {
                b bVarG = this.c.g(yh4Var);
                if (!bVarG.a) {
                    StringBuilder sbA = um3.a("Pre-packaged database has an invalid schema: ");
                    sbA.append(bVarG.b);
                    throw new IllegalStateException(sbA.toString());
                }
                this.c.e(yh4Var);
                g(yh4Var);
            }
            this.c.d(yh4Var);
            this.b = null;
        } catch (Throwable th2) {
            cursorH0.close();
            throw th2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0024  */
    /* JADX WARN: Code duplicated, block: B:18:0x0034 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:19:0x0036  */
    /* JADX WARN: Code duplicated, block: B:20:0x003b  */
    /* JADX WARN: Code duplicated, block: B:24:0x0049  */
    /* JADX WARN: Code duplicated, block: B:38:0x0079 A[LOOP:1: B:11:0x001d->B:38:0x0079, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:50:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:61:0x0077 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:64:0x0077 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:65:0x0063 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:66:0x0072 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:69:? A[LOOP:2: B:22:0x0043->B:69:?, LOOP_END, SYNTHETIC] */
    @Override // com.shabakaty.downloader.zh4.a
    public void f(yh4 yh4Var, int i, int i2) {
        List listEmptyList;
        TreeMap<Integer, ht2> treeMap;
        Set<Integer> setKeySet;
        Iterator<Integer> it;
        int iIntValue;
        boolean z;
        bm0 bm0Var = this.b;
        boolean z2 = true;
        if (bm0Var != null) {
            vt3.c cVar = bm0Var.d;
            Objects.requireNonNull(cVar);
            if (i == i2) {
                listEmptyList = Collections.emptyList();
            } else {
                boolean z3 = i2 > i;
                ArrayList arrayList = new ArrayList();
                int i3 = i;
                while (true) {
                    if (z3) {
                        if (i3 < i2) {
                            treeMap = cVar.a.get(Integer.valueOf(i3));
                            if (treeMap != null) {
                                if (z3) {
                                    setKeySet = treeMap.descendingKeySet();
                                } else {
                                    setKeySet = treeMap.keySet();
                                }
                                it = setKeySet.iterator();
                                while (true) {
                                    if (it.hasNext()) {
                                        iIntValue = i3;
                                        z = false;
                                        break;
                                    } else {
                                        iIntValue = it.next().intValue();
                                        if (z3 ? !(iIntValue < i2 || iIntValue >= i3) : !(iIntValue > i2 || iIntValue <= i3)) {
                                            arrayList.add(treeMap.get(Integer.valueOf(iIntValue)));
                                            z = true;
                                            break;
                                        }
                                    }
                                }
                                if (!z) {
                                    i3 = iIntValue;
                                }
                            }
                            listEmptyList = null;
                        } else {
                            listEmptyList = arrayList;
                        }
                    } else if (i3 > i2) {
                        treeMap = cVar.a.get(Integer.valueOf(i3));
                        if (treeMap != null) {
                            if (z3) {
                                setKeySet = treeMap.descendingKeySet();
                            } else {
                                setKeySet = treeMap.keySet();
                            }
                            it = setKeySet.iterator();
                            while (true) {
                                if (it.hasNext()) {
                                    iIntValue = i3;
                                    z = false;
                                    break;
                                } else {
                                    iIntValue = it.next().intValue();
                                    if (z3 ? !(iIntValue < i2 || iIntValue >= i3) : !(iIntValue > i2 || iIntValue <= i3)) {
                                        arrayList.add(treeMap.get(Integer.valueOf(iIntValue)));
                                        z = true;
                                        break;
                                    }
                                }
                            }
                            if (!z) {
                                i3 = iIntValue;
                            }
                        }
                        listEmptyList = null;
                    } else {
                        listEmptyList = arrayList;
                    }
                }
            }
            if (listEmptyList != null) {
                this.c.f(yh4Var);
                Iterator it2 = listEmptyList.iterator();
                while (it2.hasNext()) {
                    ((ht2) it2.next()).a(yh4Var);
                }
                b bVarG = this.c.g(yh4Var);
                if (!bVarG.a) {
                    StringBuilder sbA = um3.a("Migration didn't properly handle: ");
                    sbA.append(bVarG.b);
                    throw new IllegalStateException(sbA.toString());
                }
                this.c.e(yh4Var);
                g(yh4Var);
            } else {
                z2 = false;
            }
        } else {
            z2 = false;
        }
        if (z2) {
            return;
        }
        bm0 bm0Var2 = this.b;
        if (bm0Var2 == null || bm0Var2.a(i, i2)) {
            throw new IllegalStateException(wt3.a("A migration from ", i, " to ", i2, " was required but not found. Please provide the necessary Migration path via RoomDatabase.Builder.addMigration(Migration ...) or allow for destructive migrations via one of the RoomDatabase.Builder.fallbackToDestructiveMigration* methods."));
        }
        this.c.b(yh4Var);
        this.c.a(yh4Var);
    }

    public final void g(yh4 yh4Var) {
        yh4Var.H("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
        yh4Var.H("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '" + this.d + "')");
    }
}
