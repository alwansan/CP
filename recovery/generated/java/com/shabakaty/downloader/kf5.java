package com.shabakaty.downloader;

import android.content.res.Resources;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.graphics.Point;
import android.text.TextUtils;
import com.skydoves.colorpickerview.ColorPickerView;
import java.io.File;
import java.util.Collections;
import java.util.Formatter;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import zendesk.support.request.CellBase;

/* JADX INFO: compiled from: com.google.mlkit:common@@17.1.1 */
/* JADX INFO: loaded from: classes.dex */
public class kf5 implements pr2 {
    public static final void a(Throwable th, Throwable th2) {
        j32.e(th, "<this>");
        j32.e(th2, "exception");
        if (th != th2) {
            sc3.a.a(th, th2);
        }
    }

    public static int b(yu0 yu0Var, boolean z) {
        int i = z ? yu0Var.c : yu0Var.b;
        int i2 = z ? yu0Var.b : yu0Var.c;
        byte[][] bArr = (byte[][]) yu0Var.d;
        int i3 = 0;
        for (int i4 = 0; i4 < i; i4++) {
            byte b = -1;
            int i5 = 0;
            for (int i6 = 0; i6 < i2; i6++) {
                byte b2 = z ? bArr[i4][i6] : bArr[i6][i4];
                if (b2 == b) {
                    i5++;
                } else {
                    if (i5 >= 5) {
                        i3 += (i5 - 5) + 3;
                    }
                    b = b2;
                    i5 = 1;
                }
            }
            if (i5 >= 5) {
                i3 = (i5 - 5) + 3 + i3;
            }
        }
        return i3;
    }

    public static Point c(ColorPickerView colorPickerView, Point point, Point point2) {
        if (((int) Math.sqrt((Math.abs(point2.y - point.y) * Math.abs(point2.y - point.y)) + (Math.abs(point2.x - point.x) * Math.abs(point2.x - point.x)))) <= 3) {
            return point2;
        }
        Point point3 = new Point((point2.x + point.x) / 2, (point2.y + point.y) / 2);
        return colorPickerView.c((float) point3.x, (float) point3.y) == 0 ? c(colorPickerView, point3, point2) : c(colorPickerView, point, point3);
    }

    public static Point d(ColorPickerView colorPickerView, Point point) {
        Point point2 = new Point(colorPickerView.getMeasuredWidth() / 2, colorPickerView.getMeasuredHeight() / 2);
        if (!(colorPickerView.u.getDrawable() != null && (colorPickerView.u.getDrawable() instanceof u50))) {
            return c(colorPickerView, point, point2);
        }
        float width = colorPickerView.getWidth() * 0.5f;
        float height = colorPickerView.getHeight() * 0.5f;
        float f = point.x - width;
        float f2 = point.y - height;
        float fMin = Math.min(width, height);
        double dSqrt = Math.sqrt((f2 * f2) + (f * f));
        double d = fMin;
        if (dSqrt > d) {
            double d2 = d / dSqrt;
            f = (float) (((double) f) * d2);
            f2 = (float) (((double) f2) * d2);
        }
        return new Point((int) (f + width), (int) (f2 + height));
    }

    public static final int e(int i) {
        return (int) (i * Resources.getSystem().getDisplayMetrics().density);
    }

    public static String f(String str, String str2) {
        return String.format("%s/project/%s/performance/app/android:%s", "https://console.firebase.google.com", str, str2);
    }

    public static boolean g(byte[] bArr, int i, int i2) {
        int iMin = Math.min(i2, bArr.length);
        for (int iMax = Math.max(i, 0); iMax < iMin; iMax++) {
            if (bArr[iMax] == 1) {
                return false;
            }
        }
        return true;
    }

    public static boolean h(byte[][] bArr, int i, int i2, int i3) {
        int iMin = Math.min(i3, bArr.length);
        for (int iMax = Math.max(i2, 0); iMax < iMin; iMax++) {
            if (bArr[iMax][i] == 1) {
                return false;
            }
        }
        return true;
    }

    public static final int i(int i) {
        if (i < 0) {
            return i;
        }
        if (i < 3) {
            return i + 1;
        }
        if (i < 1073741824) {
            return (int) ((i / 0.75f) + 1.0f);
        }
        return Integer.MAX_VALUE;
    }

    public static final <K, V> Map<K, V> j(x93<? extends K, ? extends V> x93Var) {
        j32.e(x93Var, "pair");
        Map<K, V> mapSingletonMap = Collections.singletonMap(x93Var.r, x93Var.s);
        j32.d(mapSingletonMap, "singletonMap(pair.first, pair.second)");
        return mapSingletonMap;
    }

    public static final String k(long j) {
        StringBuilder sb = new StringBuilder();
        Formatter formatter = new Formatter(sb, Locale.getDefault());
        if (j == CellBase.ID_SYSTEM_MESSAGE_REQUEST_CLOSED) {
            j = 0;
        }
        long j2 = (j + ((long) 500)) / ((long) 1000);
        long j3 = 60;
        long j4 = j2 % j3;
        long j5 = (j2 / j3) % j3;
        long j6 = j2 / ((long) 3600);
        sb.setLength(0);
        if (j6 > 0) {
            String string = formatter.format(Locale.ENGLISH, "%d:%02d:%02d", Long.valueOf(j6), Long.valueOf(j5), Long.valueOf(j4)).toString();
            j32.d(string, "formatter.format(Locale.…utes, seconds).toString()");
            return string;
        }
        String string2 = formatter.format(Locale.ENGLISH, "%02d:%02d", Long.valueOf(j5), Long.valueOf(j4)).toString();
        j32.d(string2, "formatter.format(Locale.…utes, seconds).toString()");
        return string2;
    }

    public static <K, V> LinkedHashMap<K, V> l(int i) {
        int i2;
        if (i < 3) {
            i2 = i + 1;
        } else {
            i2 = i < 1073741824 ? (int) ((i / 0.75f) + 1.0f) : Integer.MAX_VALUE;
        }
        return new LinkedHashMap<>(i2);
    }

    public static void m(Throwable th) {
        if (th instanceof VirtualMachineError) {
            throw ((VirtualMachineError) th);
        }
        if (th instanceof ThreadDeath) {
            throw ((ThreadDeath) th);
        }
        if (th instanceof LinkageError) {
            throw ((LinkageError) th);
        }
    }

    public static final <K, V> Map<K, V> n(Map<? extends K, ? extends V> map) {
        Map.Entry<? extends K, ? extends V> next = map.entrySet().iterator().next();
        Map<K, V> mapSingletonMap = Collections.singletonMap(next.getKey(), next.getValue());
        j32.d(mapSingletonMap, "with(entries.iterator().…ingletonMap(key, value) }");
        return mapSingletonMap;
    }

    public static int o(int i) {
        return (int) (((long) Integer.rotateLeft((int) (((long) i) * (-862048943)), 15)) * 461845907);
    }

    /**
     * Reconstructed from com/shabakaty/downloader/kf5.p Smali. This method
     * audits an existing SQLite table and creates it (or adds optional columns)
     * when required. Keep the MLKit/GMS monitor logging and cursor lifecycle.
     */
    public static void p(com.google.android.gms.measurement.internal.b monitor,
            SQLiteDatabase database, String table, String createSql,
            String requiredColumns, String[] extraColumnSql) throws Throwable {
        if (monitor == null) {
            throw new IllegalArgumentException("Monitor must not be null");
        }

        Cursor existing = null;
        try {
            boolean found;
            try {
                existing = database.query("SQLITE_MASTER", new String[]{"name"},
                        "name=?", new String[]{table}, null, null, null);
                found = existing.moveToFirst();
                existing.close();
                existing = null;
            } catch (SQLiteException error) {
                monitor.i.e("Error querying for table", table, error);
                if (existing != null) {
                    existing.close();
                    existing = null;
                }
                found = false;
            }
            if (!found) {
                database.execSQL(createSql);
            }
        } finally {
            if (existing != null) {
                existing.close();
            }
        }

        try {
            HashSet<String> present = new HashSet<>();
            Cursor columns = database.rawQuery("SELECT * FROM " + table + " LIMIT 0", null);
            try {
                Collections.addAll(present, columns.getColumnNames());
            } finally {
                columns.close();
            }
            for (String required : requiredColumns.split(",")) {
                if (!present.remove(required)) {
                    throw new SQLiteException("Table " + table
                            + " is missing required column: " + required);
                }
            }
            if (extraColumnSql != null) {
                for (int i = 0; i < extraColumnSql.length; i += 2) {
                    if (!present.remove(extraColumnSql[i])) {
                        database.execSQL(extraColumnSql[i + 1]);
                    }
                }
            }
            if (!present.isEmpty()) {
                monitor.i.e("Table has extra columns. table, columns",
                        table, TextUtils.join(", ", present));
            }
        } catch (SQLiteException error) {
            monitor.f.d("Failed to verify columns on table that was just created", table);
            throw error;
        }
    }

    public static int q(int i) {
        return (int) (((long) Integer.rotateLeft((int) (((long) i) * (-862048943)), 15)) * 461845907);
    }

    public static void r(com.google.android.gms.measurement.internal.b bVar, SQLiteDatabase sQLiteDatabase) {
        if (bVar == null) {
            throw new IllegalArgumentException("Monitor must not be null");
        }
        File file = new File(sQLiteDatabase.getPath());
        if (!file.setReadable(false, false)) {
            bVar.i.c("Failed to turn off database read permission");
        }
        if (!file.setWritable(false, false)) {
            bVar.i.c("Failed to turn off database write permission");
        }
        if (!file.setReadable(true, true)) {
            bVar.i.c("Failed to turn on database read permission for owner");
        }
        if (file.setWritable(true, true)) {
            return;
        }
        bVar.i.c("Failed to turn on database write permission for owner");
    }
}
