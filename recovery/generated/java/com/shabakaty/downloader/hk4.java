package com.shabakaty.downloader;

import android.database.Cursor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

/* JADX INFO: compiled from: TableInfo.java */
/* JADX INFO: loaded from: classes.dex */
public final class hk4 {
    public final String a;
    public final Map<String, a> b;
    public final Set<b> c;
    public final Set<d> d;

    /* JADX INFO: compiled from: TableInfo.java */
    public static final class a {
        public final String a;
        public final String b;
        public final int c;
        public final boolean d;
        public final int e;
        public final String f;
        public final int g;

        public a(String str, String str2, boolean z, int i, String str3, int i2) {
            this.a = str;
            this.b = str2;
            this.d = z;
            this.e = i;
            int i3 = 5;
            if (str2 != null) {
                String upperCase = str2.toUpperCase(Locale.US);
                if (upperCase.contains("INT")) {
                    i3 = 3;
                } else if (upperCase.contains("CHAR") || upperCase.contains("CLOB") || upperCase.contains("TEXT")) {
                    i3 = 2;
                } else if (!upperCase.contains("BLOB")) {
                    i3 = (upperCase.contains("REAL") || upperCase.contains("FLOA") || upperCase.contains("DOUB")) ? 4 : 1;
                }
            }
            this.c = i3;
            this.f = str3;
            this.g = i2;
        }

        public static boolean a(String str, String str2) {
            boolean z;
            if (str2 == null) {
                return false;
            }
            if (str.equals(str2)) {
                return true;
            }
            if (str.length() != 0) {
                int i = 0;
                int i2 = 0;
                while (true) {
                    if (i >= str.length()) {
                        if (i2 == 0) {
                            z = true;
                            break;
                        }
                    } else {
                        char cCharAt = str.charAt(i);
                        if (i != 0 || cCharAt == '(') {
                            if (cCharAt == '(') {
                                i2++;
                            } else if (cCharAt != ')' || (i2 = i2 - 1) != 0 || i == str.length() - 1) {
                            }
                            i++;
                        }
                    }
                    z = false;
                    break;
                }
            }
            z = false;
            break;
            if (z) {
                return str.substring(1, str.length() - 1).trim().equals(str2);
            }
            return false;
        }

        public boolean equals(Object obj) {
            String str;
            String str2;
            String str3;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (this.e != aVar.e || !this.a.equals(aVar.a) || this.d != aVar.d) {
                return false;
            }
            if (this.g == 1 && aVar.g == 2 && (str3 = this.f) != null && !a(str3, aVar.f)) {
                return false;
            }
            if (this.g == 2 && aVar.g == 1 && (str2 = aVar.f) != null && !a(str2, this.f)) {
                return false;
            }
            int i = this.g;
            return (i == 0 || i != aVar.g || ((str = this.f) == null ? aVar.f == null : a(str, aVar.f))) && this.c == aVar.c;
        }

        public int hashCode() {
            return (((((this.a.hashCode() * 31) + this.c) * 31) + (this.d ? 1231 : 1237)) * 31) + this.e;
        }

        public String toString() {
            StringBuilder sbA = um3.a("Column{name='");
            gk4.a(sbA, this.a, '\'', ", type='");
            gk4.a(sbA, this.b, '\'', ", affinity='");
            sbA.append(this.c);
            sbA.append('\'');
            sbA.append(", notNull=");
            sbA.append(this.d);
            sbA.append(", primaryKeyPosition=");
            sbA.append(this.e);
            sbA.append(", defaultValue='");
            sbA.append(this.f);
            sbA.append('\'');
            sbA.append('}');
            return sbA.toString();
        }
    }

    /* JADX INFO: compiled from: TableInfo.java */
    public static final class b {
        public final String a;
        public final String b;
        public final String c;
        public final List<String> d;
        public final List<String> e;

        public b(String str, String str2, String str3, List<String> list, List<String> list2) {
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.d = Collections.unmodifiableList(list);
            this.e = Collections.unmodifiableList(list2);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            if (this.a.equals(bVar.a) && this.b.equals(bVar.b) && this.c.equals(bVar.c) && this.d.equals(bVar.d)) {
                return this.e.equals(bVar.e);
            }
            return false;
        }

        public int hashCode() {
            return this.e.hashCode() + ((this.d.hashCode() + ik4.a(this.c, ik4.a(this.b, this.a.hashCode() * 31, 31), 31)) * 31);
        }

        public String toString() {
            StringBuilder sbA = um3.a("ForeignKey{referenceTable='");
            gk4.a(sbA, this.a, '\'', ", onDelete='");
            gk4.a(sbA, this.b, '\'', ", onUpdate='");
            gk4.a(sbA, this.c, '\'', ", columnNames=");
            sbA.append(this.d);
            sbA.append(", referenceColumnNames=");
            sbA.append(this.e);
            sbA.append('}');
            return sbA.toString();
        }
    }

    /* JADX INFO: compiled from: TableInfo.java */
    public static class c implements Comparable<c> {
        public final int r;
        public final int s;
        public final String t;
        public final String u;

        public c(int i, int i2, String str, String str2) {
            this.r = i;
            this.s = i2;
            this.t = str;
            this.u = str2;
        }

        @Override // java.lang.Comparable
        public int compareTo(c cVar) {
            c cVar2 = cVar;
            int i = this.r - cVar2.r;
            return i == 0 ? this.s - cVar2.s : i;
        }
    }

    /* JADX INFO: compiled from: TableInfo.java */
    public static final class d {
        public final String a;
        public final boolean b;
        public final List<String> c;

        public d(String str, boolean z, List<String> list) {
            this.a = str;
            this.b = z;
            this.c = list;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            if (this.b == dVar.b && this.c.equals(dVar.c)) {
                return this.a.startsWith("index_") ? dVar.a.startsWith("index_") : this.a.equals(dVar.a);
            }
            return false;
        }

        public int hashCode() {
            return this.c.hashCode() + ((((this.a.startsWith("index_") ? -1184239155 : this.a.hashCode()) * 31) + (this.b ? 1 : 0)) * 31);
        }

        public String toString() {
            StringBuilder sbA = um3.a("Index{name='");
            gk4.a(sbA, this.a, '\'', ", unique=");
            sbA.append(this.b);
            sbA.append(", columns=");
            sbA.append(this.c);
            sbA.append('}');
            return sbA.toString();
        }
    }

    public hk4(String str, Map<String, a> map, Set<b> set, Set<d> set2) {
        this.a = str;
        this.b = Collections.unmodifiableMap(map);
        this.c = Collections.unmodifiableSet(set);
        this.d = set2 == null ? null : Collections.unmodifiableSet(set2);
    }

    public static hk4 a(yh4 yh4Var, String str) {
        List<c> list;
        int i;
        Cursor cursorY0 = yh4Var.y0("PRAGMA table_info(`" + str + "`)");
        HashMap map = new HashMap();
        try {
            if (cursorY0.getColumnCount() > 0) {
                int columnIndex = cursorY0.getColumnIndex("name");
                int columnIndex2 = cursorY0.getColumnIndex("type");
                int columnIndex3 = cursorY0.getColumnIndex("notnull");
                int columnIndex4 = cursorY0.getColumnIndex("pk");
                int columnIndex5 = cursorY0.getColumnIndex("dflt_value");
                while (cursorY0.moveToNext()) {
                    String string = cursorY0.getString(columnIndex);
                    map.put(string, new a(string, cursorY0.getString(columnIndex2), cursorY0.getInt(columnIndex3) != 0, cursorY0.getInt(columnIndex4), cursorY0.getString(columnIndex5), 2));
                }
            }
            cursorY0.close();
            HashSet hashSet = new HashSet();
            Cursor cursorY1 = yh4Var.y0("PRAGMA foreign_key_list(`" + str + "`)");
            try {
                int columnIndex6 = cursorY1.getColumnIndex("id");
                int columnIndex7 = cursorY1.getColumnIndex("seq");
                int columnIndex8 = cursorY1.getColumnIndex("table");
                int columnIndex9 = cursorY1.getColumnIndex("on_delete");
                int columnIndex10 = cursorY1.getColumnIndex("on_update");
                List<c> listB = b(cursorY1);
                int count = cursorY1.getCount();
                int i2 = 0;
                while (i2 < count) {
                    cursorY1.moveToPosition(i2);
                    if (cursorY1.getInt(columnIndex7) != 0) {
                        list = listB;
                        i = count;
                    } else {
                        int i3 = cursorY1.getInt(columnIndex6);
                        ArrayList arrayList = new ArrayList();
                        ArrayList arrayList2 = new ArrayList();
                        for (c cVar : (ArrayList) listB) {
                            List<c> list2 = listB;
                            int i4 = count;
                            if (cVar.r == i3) {
                                arrayList.add(cVar.t);
                                arrayList2.add(cVar.u);
                            }
                            count = i4;
                            listB = list2;
                        }
                        list = listB;
                        i = count;
                        hashSet.add(new b(cursorY1.getString(columnIndex8), cursorY1.getString(columnIndex9), cursorY1.getString(columnIndex10), arrayList, arrayList2));
                    }
                    i2++;
                    columnIndex6 = columnIndex6;
                    columnIndex7 = columnIndex7;
                    count = i;
                    listB = list;
                }
                cursorY1.close();
                Cursor cursorY2 = yh4Var.y0("PRAGMA index_list(`" + str + "`)");
                try {
                    int columnIndex11 = cursorY2.getColumnIndex("name");
                    int columnIndex12 = cursorY2.getColumnIndex("origin");
                    int columnIndex13 = cursorY2.getColumnIndex("unique");
                    HashSet hashSet2 = null;
                    if (columnIndex11 == -1 || columnIndex12 == -1 || columnIndex13 == -1) {
                        cursorY2.close();
                        break;
                    }
                    HashSet hashSet3 = new HashSet();
                    while (true) {
                        if (!cursorY2.moveToNext()) {
                            cursorY2.close();
                            hashSet2 = hashSet3;
                            break;
                        }
                        if ("c".equals(cursorY2.getString(columnIndex12))) {
                            d dVarC = c(yh4Var, cursorY2.getString(columnIndex11), cursorY2.getInt(columnIndex13) == 1);
                            if (dVarC == null) {
                                cursorY2.close();
                                break;
                            }
                            hashSet3.add(dVarC);
                        }
                    }
                    return new hk4(str, map, hashSet, hashSet2);
                } catch (Throwable th) {
                    cursorY2.close();
                    throw th;
                }
            } catch (Throwable th2) {
                cursorY1.close();
                throw th2;
            }
        } catch (Throwable th3) {
            cursorY0.close();
            throw th3;
        }
    }

    public static List<c> b(Cursor cursor) {
        int columnIndex = cursor.getColumnIndex("id");
        int columnIndex2 = cursor.getColumnIndex("seq");
        int columnIndex3 = cursor.getColumnIndex("from");
        int columnIndex4 = cursor.getColumnIndex("to");
        int count = cursor.getCount();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < count; i++) {
            cursor.moveToPosition(i);
            arrayList.add(new c(cursor.getInt(columnIndex), cursor.getInt(columnIndex2), cursor.getString(columnIndex3), cursor.getString(columnIndex4)));
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    public static d c(yh4 yh4Var, String str, boolean z) {
        Cursor cursorY0 = yh4Var.y0("PRAGMA index_xinfo(`" + str + "`)");
        try {
            int columnIndex = cursorY0.getColumnIndex("seqno");
            int columnIndex2 = cursorY0.getColumnIndex("cid");
            int columnIndex3 = cursorY0.getColumnIndex("name");
            if (columnIndex != -1 && columnIndex2 != -1 && columnIndex3 != -1) {
                TreeMap treeMap = new TreeMap();
                while (cursorY0.moveToNext()) {
                    if (cursorY0.getInt(columnIndex2) >= 0) {
                        treeMap.put(Integer.valueOf(cursorY0.getInt(columnIndex)), cursorY0.getString(columnIndex3));
                    }
                }
                ArrayList arrayList = new ArrayList(treeMap.size());
                arrayList.addAll(treeMap.values());
                return new d(str, z, arrayList);
            }
            return null;
        } finally {
            cursorY0.close();
        }
    }

    public boolean equals(Object obj) {
        Set<d> set;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof hk4)) {
            return false;
        }
        hk4 hk4Var = (hk4) obj;
        String str = this.a;
        if (str == null ? hk4Var.a != null : !str.equals(hk4Var.a)) {
            return false;
        }
        Map<String, a> map = this.b;
        if (map == null ? hk4Var.b != null : !map.equals(hk4Var.b)) {
            return false;
        }
        Set<b> set2 = this.c;
        if (set2 == null ? hk4Var.c != null : !set2.equals(hk4Var.c)) {
            return false;
        }
        Set<d> set3 = this.d;
        if (set3 == null || (set = hk4Var.d) == null) {
            return true;
        }
        return set3.equals(set);
    }

    public int hashCode() {
        String str = this.a;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        Map<String, a> map = this.b;
        int iHashCode2 = (iHashCode + (map != null ? map.hashCode() : 0)) * 31;
        Set<b> set = this.c;
        return iHashCode2 + (set != null ? set.hashCode() : 0);
    }

    public String toString() {
        StringBuilder sbA = um3.a("TableInfo{name='");
        gk4.a(sbA, this.a, '\'', ", columns=");
        sbA.append(this.b);
        sbA.append(", foreignKeys=");
        sbA.append(this.c);
        sbA.append(", indices=");
        sbA.append(this.d);
        sbA.append('}');
        return sbA.toString();
    }
}
