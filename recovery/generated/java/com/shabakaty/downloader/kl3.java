package com.shabakaty.downloader;

import android.app.Activity;
import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build;
import android.view.View;
import androidx.navigation.NavController;
import com.liulishuo.filedownloader.BuildConfig;
import com.liulishuo.filedownloader.model.FileDownloadStatus;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import zendesk.support.request.CellBase;

/* JADX INFO: loaded from: classes.dex */
public class kl3 {
    public static float a(float f, float f2, float f3) {
        if (f < f2) {
            return f2;
        }
        return f > f3 ? f3 : f;
    }

    public static int b(int i, int i2, int i3) {
        if (i < i2) {
            return i2;
        }
        return i > i3 ? i3 : i;
    }

    public static final NavController c(Activity activity, int i) {
        View viewFindViewById;
        j32.f(activity, "$this$findNavController");
        int i2 = s2.c;
        if (Build.VERSION.SDK_INT >= 28) {
            viewFindViewById = activity.requireViewById(i);
        } else {
            viewFindViewById = activity.findViewById(i);
            if (viewFindViewById == null) {
                throw new IllegalArgumentException("ID does not reference a View inside this Activity");
            }
        }
        NavController navControllerB = fx2.b(viewFindViewById);
        if (navControllerB != null) {
            return navControllerB;
        }
        throw new IllegalStateException("Activity " + activity + " does not have a NavController set on " + i);
    }

    public static int d(SQLiteDatabase sQLiteDatabase, int i, String str) throws cm0 {
        try {
            if (!sy4.S(sQLiteDatabase, "ExoPlayerVersions")) {
                return -1;
            }
            Cursor cursorQuery = sQLiteDatabase.query("ExoPlayerVersions", new String[]{"version"}, "feature = ? AND instance_uid = ?", new String[]{Integer.toString(i), str}, null, null, null);
            try {
                if (cursorQuery.getCount() == 0) {
                    cursorQuery.close();
                    return -1;
                }
                cursorQuery.moveToNext();
                int i2 = cursorQuery.getInt(0);
                cursorQuery.close();
                return i2;
            } catch (Throwable th) {
                if (cursorQuery != null) {
                    try {
                        cursorQuery.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
            throw new cm0(e);
        } catch (SQLException e) {
            throw new cm0(e);
        }
    }

    public static String e(String str, String str2) {
        int length = str.length() - str2.length();
        if (length < 0 || length > 1) {
            throw new IllegalArgumentException("Invalid input received");
        }
        StringBuilder sb = new StringBuilder(str2.length() + str.length());
        for (int i = 0; i < str.length(); i++) {
            sb.append(str.charAt(i));
            if (str2.length() > i) {
                sb.append(str2.charAt(i));
            }
        }
        return sb.toString();
    }

    public static long f(ka3 ka3Var, int i, int i2) {
        ka3Var.E(i);
        if (ka3Var.a() < 5) {
            return CellBase.ID_SYSTEM_MESSAGE_REQUEST_CLOSED;
        }
        int iF = ka3Var.f();
        if ((8388608 & iF) != 0 || ((2096896 & iF) >> 8) != i2) {
            return CellBase.ID_SYSTEM_MESSAGE_REQUEST_CLOSED;
        }
        if (((iF & 32) != 0) && ka3Var.t() >= 7 && ka3Var.a() >= 7) {
            if ((ka3Var.t() & 16) == 16) {
                byte[] bArr = new byte[6];
                System.arraycopy(ka3Var.a, ka3Var.b, bArr, 0, 6);
                ka3Var.b += 6;
                return ((((long) bArr[0]) & 255) << 25) | ((((long) bArr[1]) & 255) << 17) | ((((long) bArr[2]) & 255) << 9) | ((((long) bArr[3]) & 255) << 1) | ((((long) bArr[4]) & 255) >> 7);
            }
        }
        return CellBase.ID_SYSTEM_MESSAGE_REQUEST_CLOSED;
    }

    public static void g(SQLiteDatabase sQLiteDatabase, int i, String str, int i2) throws cm0 {
        try {
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS ExoPlayerVersions (feature INTEGER NOT NULL,instance_uid TEXT NOT NULL,version INTEGER NOT NULL,PRIMARY KEY (feature, instance_uid))");
            ContentValues contentValues = new ContentValues();
            contentValues.put("feature", Integer.valueOf(i));
            contentValues.put("instance_uid", str);
            contentValues.put("version", Integer.valueOf(i2));
            sQLiteDatabase.replaceOrThrow("ExoPlayerVersions", null, contentValues);
        } catch (SQLException e) {
            throw new cm0(e);
        }
    }

    public static double h(double d) {
        if (Double.isNaN(d)) {
            return 0.0d;
        }
        if (Double.isInfinite(d) || d == 0.0d || d == 0.0d) {
            return d;
        }
        return Math.floor(Math.abs(d)) * ((double) (d > 0.0d ? 1 : -1));
    }

    public static int i(byte[] bArr, int i) {
        return ((bArr[i + 3] & FileDownloadStatus.error) << 24) | (bArr[i] & FileDownloadStatus.error) | ((bArr[i + 1] & FileDownloadStatus.error) << 8) | ((bArr[i + 2] & FileDownloadStatus.error) << 16);
    }

    public static long j(long j, long j2, long j3) {
        long j4 = (j ^ j2) * j3;
        long j5 = ((j4 ^ (j4 >>> 47)) ^ j2) * j3;
        return (j5 ^ (j5 >>> 47)) * j3;
    }

    public static long k(byte[] bArr) {
        int length = bArr.length;
        if (length < 0 || length > bArr.length) {
            throw new IndexOutOfBoundsException(gl3.a(67, "Out of bound index with offput: 0 and length: ", length));
        }
        int i = 37;
        long j = -5435081209227447693L;
        if (length <= 32) {
            if (length > 16) {
                long j2 = ((long) (length << 1)) - 7286425919675154353L;
                long jN = n(bArr, 0) * (-5435081209227447693L);
                long jN2 = n(bArr, 8);
                int i2 = length + 0;
                long jN3 = n(bArr, i2 - 8) * j2;
                return j((n(bArr, i2 - 16) * (-7286425919675154353L)) + Long.rotateRight(jN3, 30) + Long.rotateRight(jN + jN2, 43), Long.rotateRight(jN2 - 7286425919675154353L, 18) + jN + jN3, j2);
            }
            if (length >= 8) {
                long j3 = ((long) (length << 1)) - 7286425919675154353L;
                long jN4 = n(bArr, 0) - 7286425919675154353L;
                long jN5 = n(bArr, (length + 0) - 8);
                return j((Long.rotateRight(jN5, 37) * j3) + jN4, (Long.rotateRight(jN4, 25) + jN5) * j3, j3);
            }
            if (length >= 4) {
                return j(((long) length) + ((((long) i(bArr, 0)) & 4294967295L) << 3), ((long) i(bArr, (length + 0) - 4)) & 4294967295L, ((long) (length << 1)) - 7286425919675154353L);
            }
            if (length <= 0) {
                return -7286425919675154353L;
            }
            long j4 = (((long) ((bArr[0] & FileDownloadStatus.error) + ((bArr[(length >> 1) + 0] & FileDownloadStatus.error) << 8))) * (-7286425919675154353L)) ^ (((long) (length + ((bArr[(length - 1) + 0] & FileDownloadStatus.error) << 2))) * (-4348849565147123417L));
            return (j4 ^ (j4 >>> 47)) * (-7286425919675154353L);
        }
        if (length <= 64) {
            long j5 = ((long) (length << 1)) - 7286425919675154353L;
            long jN6 = n(bArr, 0) * (-7286425919675154353L);
            long jN7 = n(bArr, 8);
            int i3 = length + 0;
            long jN8 = n(bArr, i3 - 8) * j5;
            long jRotateRight = Long.rotateRight(jN8, 30) + Long.rotateRight(jN6 + jN7, 43) + (n(bArr, i3 - 16) * (-7286425919675154353L));
            long j6 = j(jRotateRight, Long.rotateRight(jN7 - 7286425919675154353L, 18) + jN6 + jN8, j5);
            long jN9 = n(bArr, 16) * j5;
            long jN10 = n(bArr, 24);
            long jN11 = (n(bArr, i3 - 32) + jRotateRight) * j5;
            return j(Long.rotateRight(jN11, 30) + Long.rotateRight(jN9 + jN10, 43) + ((n(bArr, i3 - 24) + j6) * j5), Long.rotateRight(jN10 + jN6, 18) + jN9 + jN11, j5);
        }
        long j7 = 2480279821605975764L;
        long[] jArr = new long[2];
        long[] jArr2 = new long[2];
        int i4 = length - 1;
        int i5 = ((i4 / 64) << 6) + 0;
        int i6 = i4 & 63;
        int i7 = (i5 + i6) - 63;
        long jN12 = n(bArr, 0) + 95310865018149119L;
        char c = 0;
        long j8 = 1390051526045402406L;
        int i8 = 0;
        while (true) {
            int i9 = i6;
            long jRotateRight2 = Long.rotateRight(n(bArr, i8 + 8) + jN12 + j7 + jArr[c], i) * j;
            long jRotateRight3 = Long.rotateRight(n(bArr, i8 + 48) + j7 + jArr[1], 42) * j;
            long j9 = jRotateRight2 ^ jArr2[1];
            long jN13 = n(bArr, i8 + 40) + jArr[0] + jRotateRight3;
            long jRotateRight4 = Long.rotateRight(j8 + jArr2[0], 33) * j;
            int i10 = i5;
            l(bArr, i8, jArr[1] * j, j9 + jArr2[0], jArr);
            l(bArr, i8 + 32, jArr2[1] + jRotateRight4, n(bArr, i8 + 16) + jN13, jArr2);
            i8 += 64;
            if (i8 == i10) {
                long j10 = ((j9 & 255) << 1) - 5435081209227447693L;
                jArr2[0] = jArr2[0] + ((long) i9);
                jArr[0] = jArr[0] + jArr2[0];
                jArr2[0] = jArr2[0] + jArr[0];
                long jRotateRight5 = Long.rotateRight(n(bArr, i7 + 8) + jRotateRight4 + jN13 + jArr[0], 37) * j10;
                long jRotateRight6 = Long.rotateRight(n(bArr, i7 + 48) + jN13 + jArr[1], 42) * j10;
                long j11 = jRotateRight5 ^ (jArr2[1] * 9);
                long jN14 = n(bArr, i7 + 40) + (jArr[0] * 9) + jRotateRight6;
                long jRotateRight7 = Long.rotateRight(j9 + jArr2[0], 33) * j10;
                l(bArr, i7, jArr[1] * j10, j11 + jArr2[0], jArr);
                l(bArr, i7 + 32, jArr2[1] + jRotateRight7, n(bArr, i7 + 16) + jN14, jArr2);
                return j((((jN14 >>> 47) ^ jN14) * (-4348849565147123417L)) + j(jArr[0], jArr2[0], j10) + j11, j(jArr[1], jArr2[1], j10) + jRotateRight7, j10);
            }
            i = 37;
            c = 0;
            i5 = i10;
            i6 = i9;
            j = -5435081209227447693L;
            j7 = jN13;
            j8 = j9;
            jN12 = jRotateRight4;
        }
    }

    public static void l(byte[] bArr, int i, long j, long j2, long[] jArr) {
        long jN = n(bArr, i);
        long jN2 = n(bArr, i + 8);
        long jN3 = n(bArr, i + 16);
        long jN4 = n(bArr, i + 24);
        long j3 = j + jN;
        long j4 = jN2 + j3 + jN3;
        long jRotateRight = Long.rotateRight(j4, 44) + Long.rotateRight(j2 + j3 + jN4, 21);
        jArr[0] = j4 + jN4;
        jArr[1] = jRotateRight + j3;
    }

    public static int m(double d) {
        if (Double.isNaN(d) || Double.isInfinite(d) || d == 0.0d) {
            return 0;
        }
        return (int) ((Math.floor(Math.abs(d)) * ((double) (d > 0.0d ? 1 : -1))) % 4.294967296E9d);
    }

    public static long n(byte[] bArr, int i) {
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr, i, 8);
        byteBufferWrap.order(ByteOrder.LITTLE_ENDIAN);
        return byteBufferWrap.getLong();
    }

    public static int o(np4 np4Var) {
        int iM = m(np4Var.h("runtime.counter").f().doubleValue() + 1.0d);
        if (iM > 1000000) {
            throw new IllegalStateException("Instructions allowed exceeded");
        }
        np4Var.j("runtime.counter", new ug5(Double.valueOf(iM)));
        return iM;
    }

    public static long p(double d) {
        return ((long) m(d)) & 4294967295L;
    }

    public static op5 q(String str) {
        op5 op5Var = null;
        if (str != null && !str.isEmpty()) {
            op5Var = (op5) ((HashMap) op5.C0).get(Integer.valueOf(Integer.parseInt(str)));
        }
        if (op5Var != null) {
            return op5Var;
        }
        throw new IllegalArgumentException(String.format("Unsupported commandId %s", str));
    }

    public static Object r(gj5 gj5Var) {
        if (gj5.j.equals(gj5Var)) {
            return null;
        }
        if (gj5.i.equals(gj5Var)) {
            return BuildConfig.FLAVOR;
        }
        if (gj5Var instanceof hi5) {
            return s((hi5) gj5Var);
        }
        if (!(gj5Var instanceof uf5)) {
            return !gj5Var.f().isNaN() ? gj5Var.f() : gj5Var.h();
        }
        ArrayList arrayList = new ArrayList();
        uf5 uf5Var = (uf5) gj5Var;
        Objects.requireNonNull(uf5Var);
        qj5 qj5Var = new qj5(uf5Var);
        while (qj5Var.hasNext()) {
            Object objR = r((gj5) qj5Var.next());
            if (objR != null) {
                arrayList.add(objR);
            }
        }
        return arrayList;
    }

    public static Map<String, Object> s(hi5 hi5Var) {
        HashMap map = new HashMap();
        Objects.requireNonNull(hi5Var);
        for (String str : new ArrayList(hi5Var.r.keySet())) {
            Object objR = r(hi5Var.m(str));
            if (objR != null) {
                map.put(str, objR);
            }
        }
        return map;
    }

    public static void t(String str, int i, List<gj5> list) {
        if (list.size() != i) {
            throw new IllegalArgumentException(String.format("%s operation requires %s parameters found %s", str, Integer.valueOf(i), Integer.valueOf(list.size())));
        }
    }

    public static void u(String str, int i, List<gj5> list) {
        if (list.size() < i) {
            throw new IllegalArgumentException(String.format("%s operation requires at least %s parameters found %s", str, Integer.valueOf(i), Integer.valueOf(list.size())));
        }
    }

    public static void v(String str, int i, List<gj5> list) {
        if (list.size() > i) {
            throw new IllegalArgumentException(String.format("%s operation requires at most %s parameters found %s", str, Integer.valueOf(i), Integer.valueOf(list.size())));
        }
    }

    public static boolean w(gj5 gj5Var) {
        if (gj5Var == null) {
            return false;
        }
        Double dF = gj5Var.f();
        return !dF.isNaN() && dF.doubleValue() >= 0.0d && dF.equals(Double.valueOf(Math.floor(dF.doubleValue())));
    }

    public static boolean x(gj5 gj5Var, gj5 gj5Var2) {
        if (!gj5Var.getClass().equals(gj5Var2.getClass())) {
            return false;
        }
        if ((gj5Var instanceof hk5) || (gj5Var instanceof ri5)) {
            return true;
        }
        if (gj5Var instanceof ug5) {
            if (Double.isNaN(gj5Var.f().doubleValue()) || Double.isNaN(gj5Var2.f().doubleValue())) {
                return false;
            }
            return gj5Var.f().equals(gj5Var2.f());
        }
        if (gj5Var instanceof ck5) {
            return gj5Var.h().equals(gj5Var2.h());
        }
        if (gj5Var instanceof eg5) {
            return gj5Var.i().equals(gj5Var2.i());
        }
        return gj5Var == gj5Var2;
    }
}
