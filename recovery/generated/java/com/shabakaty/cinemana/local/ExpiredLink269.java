package com.shabakaty.cinemana.local;

import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import com.liulishuo.filedownloader.BuildConfig;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes11.dex */
public final class ExpiredLink269 {
    static final ExecutorService worker = Executors.newSingleThreadExecutor();
    static final Set<Integer> pending = Collections.newSetFromMap(new ConcurrentHashMap());

    static class Row {
        String database;
        String id;
        String image;
        String path;
        long progress;
        String quality = BuildConfig.FLAVOR;
        String status;
        int task;
        String title;
        String url;

        Row() {
        }
    }

    static boolean allowed(Object obj, int i) throws Exception {
        return ((Boolean) Class.forName("com.shabakaty.cinemana.ca1.Restart108").getMethod("canRetry", Object.class, Integer.TYPE).invoke(null, obj, Integer.valueOf(i))).booleanValue();
    }

    public static boolean beforeRetry(final Object obj, final int i) {
        try {
            final Context context = (Context) obj.getClass().getField("a").get(obj);
            Row row = row(context, i);
            if (row != null && row.id != null && row.id.matches("[0-9]{1,20}") && row.path != null && row.path.toLowerCase(Locale.ROOT).endsWith(".mp4")) {
                boolean z = context.getSharedPreferences("link_repair269", 0).getBoolean("bad_" + i, false);
                if (!expired(row.url, System.currentTimeMillis()) && !z) {
                    return false;
                }
                if (running(i)) {
                    return true;
                }
                String strStatus = status(row);
                if (!z && !Arrays.asList("ERROR", "RETRY", "WARN").contains(strStatus)) {
                    return false;
                }
                if (!strStatus.equals("COMPLETED") && !strStatus.equals("PAUSED") && allowed(obj, i)) {
                    SharedPreferences sharedPreferences = context.getSharedPreferences("link_repair269", 0);
                    long j = sharedPreferences.getLong("attempt_" + row.id, 0L);
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    if (jCurrentTimeMillis - j < 300000) {
                        return true;
                    }
                    int i2 = sharedPreferences.getInt("count_" + row.id, 0);
                    long j2 = sharedPreferences.getLong("day_" + row.id, 0L);
                    if (jCurrentTimeMillis - j2 > 86400000) {
                        j2 = jCurrentTimeMillis;
                        i2 = 0;
                    }
                    if (i2 >= 3 || !pending.add(Integer.valueOf(i))) {
                        return true;
                    }
                    sharedPreferences.edit().putLong("attempt_" + row.id, jCurrentTimeMillis).putLong("day_" + row.id, j2).putInt("count_" + row.id, i2 + 1).apply();
                    worker.execute(new Runnable() { // from class: com.shabakaty.cinemana.local.ExpiredLink269$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            ExpiredLink269.lambda$beforeRetry$0(context, obj, i);
                        }
                    });
                }
                return true;
            }
            return false;
        } catch (Exception e) {
            LocalRuntime.failure("link_guard", e);
            return false;
        }
    }

    static boolean cancelled(Context context, int i, String str) {
        if (!context.getSharedPreferences("ca1_delete_intent", 0).getBoolean(str, false)) {
            if (!context.getSharedPreferences("ca1_restart108", 0).getString("intent:" + i, BuildConfig.FLAVOR).endsWith("|PAUSE")) {
                try {
                    Method declaredMethod = Class.forName("com.shabakaty.cinemana.ca1.Queue110").getDeclaredMethod("isPaused", Integer.TYPE);
                    declaredMethod.setAccessible(true);
                    return ((Boolean) declaredMethod.invoke(null, Integer.valueOf(i))).booleanValue();
                } catch (Exception unused) {
                    return false;
                }
            }
        }
        return true;
    }

    static List<String> candidates(JSONArray jSONArray, String str, String str2, long j) throws Exception {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObject = jSONArray.getJSONObject(i);
            String strOptString = jSONObject.optString("videoUrl");
            if (safe(strOptString) && !strOptString.equals(str) && !expired(strOptString, j)) {
                if (sameMedia(str, strOptString)) {
                    linkedHashSet.add(strOptString);
                } else if (!str2.isEmpty() && (resolution(str2).equals(resolution(jSONObject.optString("name"))) || resolution(str2).equals(resolution(jSONObject.optString("resolution"))))) {
                    linkedHashSet2.add(strOptString);
                }
            }
        }
        ArrayList arrayList = new ArrayList(linkedHashSet);
        arrayList.addAll(linkedHashSet2);
        return arrayList;
    }

    static boolean expired(String str, long j) {
        long jExpiry = expiry(str);
        return jExpiry > 0 && jExpiry <= (j / 1000) + 30;
    }

    static long expiry(String str) {
        try {
            String rawQuery = new URI(str).getRawQuery();
            if (rawQuery == null) {
                return 0L;
            }
            for (String str2 : rawQuery.split("&")) {
                String[] strArrSplit = str2.split("=", 2);
                if (strArrSplit.length == 2 && strArrSplit[0].equalsIgnoreCase("Expires")) {
                    return Long.parseLong(strArrSplit[1]);
                }
            }
            return 0L;
        } catch (Exception unused) {
            return 0L;
        }
    }

    public static void failed(Context context, Object obj, Throwable th) {
        if (context == null || obj == null || th == null) {
            return;
        }
        try {
            if (rejected(String.valueOf(th.getMessage()))) {
                int iIntValue = ((Number) obj.getClass().getMethod("getId", new Class[0]).invoke(obj, new Object[0])).intValue();
                context.getSharedPreferences("link_repair269", 0).edit().putBoolean("bad_" + iIntValue, true).apply();
                LocalRuntime.log("link_rejected task=" + iIntValue);
            }
        } catch (Exception e) {
            LocalRuntime.failure("link_error_trace", e);
        }
    }

    static /* synthetic */ void lambda$beforeRetry$0(Context context, Object obj, int i) {
        try {
            try {
                recover(context, obj, i);
            } catch (Exception e) {
                LocalRuntime.failure("link_refresh", e);
            }
        } finally {
            pending.remove(Integer.valueOf(i));
        }
    }

    static boolean probe(String str) throws Throwable {
        HttpURLConnection httpURLConnection = null;
        try {
            try {
                HttpURLConnection httpURLConnection2 = (HttpURLConnection) new URL(str).openConnection();
                try {
                    httpURLConnection2.setConnectTimeout(3000);
                    httpURLConnection2.setReadTimeout(4000);
                    httpURLConnection2.setInstanceFollowRedirects(false);
                    httpURLConnection2.setRequestProperty("Range", "bytes=0-15");
                    httpURLConnection2.setRequestProperty("Accept-Encoding", "identity");
                    int responseCode = httpURLConnection2.getResponseCode();
                    LocalRuntime.log("link_probe status=" + responseCode);
                    if (responseCode != 200 && responseCode != 206) {
                        if (httpURLConnection2 != null) {
                            httpURLConnection2.disconnect();
                        }
                        return false;
                    }
                    InputStream inputStream = httpURLConnection2.getInputStream();
                    try {
                        byte[] bArr = new byte[12];
                        int i = 0;
                        while (i < 12) {
                            int i2 = inputStream.read(bArr, i, 12 - i);
                            if (i2 <= 0) {
                                break;
                            }
                            i += i2;
                        }
                        boolean z = i >= 8 && bArr[4] == 102 && bArr[5] == 116 && bArr[6] == 121 && bArr[7] == 112;
                        if (inputStream != null) {
                            inputStream.close();
                        }
                        if (httpURLConnection2 != null) {
                            httpURLConnection2.disconnect();
                        }
                        return z;
                    } catch (Throwable th) {
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                        }
                        throw th;
                    }
                } catch (Exception e) {
                    e = e;
                    httpURLConnection = httpURLConnection2;
                    LocalRuntime.failure("link_probe", e);
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    return false;
                } catch (Throwable th3) {
                    th = th3;
                    httpURLConnection = httpURLConnection2;
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    throw th;
                }
            } catch (Throwable th4) {
                th = th4;
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    static void recover(Context context, Object obj, int i) throws Exception {
        String next;
        SQLiteDatabase sQLiteDatabase;
        SQLiteDatabase sQLiteDatabaseOpenDatabase;
        Row row = row(context, i);
        if (row != null && row.id.matches("[0-9]{1,20}") && allowed(obj, i)) {
            LocalRuntime.log("link_refresh_begin id=" + row.id + " expired=" + expired(row.url, System.currentTimeMillis()));
            if (row.progress <= 0 && new File(row.path).length() <= 0) {
                if (new File(row.path + ".temp").length() <= 0) {
                    String[] strArrDatabaseList = context.databaseList();
                    int length = strArrDatabaseList.length;
                    int i2 = 0;
                    int i3 = 0;
                    while (true) {
                        int i4 = 2;
                        SQLiteDatabase sQLiteDatabaseOpenDatabase2 = null;
                        if (i3 >= length) {
                            List<String> listCandidates = candidates(new JSONArray(Metadata269.get("transcoddedFiles/id/" + row.id + "?ca1_refresh=" + System.currentTimeMillis(), 1048576)), row.url, row.quality, System.currentTimeMillis());
                            LocalRuntime.log("link_candidates id=" + row.id + " count=" + listCandidates.size());
                            Iterator<String> it = listCandidates.iterator();
                            int i5 = 0;
                            while (true) {
                                if (it.hasNext()) {
                                    next = it.next();
                                    int i6 = i5 + 1;
                                    if (i5 < 3) {
                                        if (probe(next)) {
                                            break;
                                        } else {
                                            i5 = i6;
                                        }
                                    }
                                }
                                next = null;
                                break;
                            }
                            if (next == null) {
                                LocalRuntime.log("link_refresh_no_verified_candidate id=" + row.id);
                                return;
                            }
                            Row row2 = row(context, i);
                            if (row2 == null || !row2.url.equals(row.url) || row2.progress > 0 || running(i) || !allowed(obj, i)) {
                                return;
                            }
                            Object objInvoke = obj.getClass().getMethod("m", String.class, String.class, String.class, String.class, String.class, Integer.class).invoke(obj, next, row.path, row.title, row.image, row.id, null);
                            Object obj2 = objInvoke.getClass().getField("a").get(objInvoke);
                            int iIntValue = ((Number) obj2.getClass().getMethod("getId", new Class[0]).invoke(obj2, new Object[0])).intValue();
                            if (iIntValue == 0 || iIntValue == i) {
                                throw new IOException("task identity did not change");
                            }
                            SQLiteDatabase sQLiteDatabaseOpenDatabase3 = SQLiteDatabase.openDatabase(context.getDatabasePath(row.database).getPath(), null, 0);
                            try {
                                ContentValues contentValues = new ContentValues();
                                contentValues.put("task_id", Integer.valueOf(iIntValue));
                                contentValues.put("url", next);
                                int iUpdate = sQLiteDatabaseOpenDatabase3.update("Downloads", contentValues, "task_id=? AND external_id=? AND url=? AND progress_bytes=0", new String[]{String.valueOf(i), row.id, row.url});
                                sQLiteDatabaseOpenDatabase3.close();
                                if (iUpdate != 1) {
                                    return;
                                }
                                String[] strArrDatabaseList2 = context.databaseList();
                                int length2 = strArrDatabaseList2.length;
                                int i7 = 0;
                                while (i7 < length2) {
                                    try {
                                        sQLiteDatabaseOpenDatabase = SQLiteDatabase.openDatabase(context.getDatabasePath(strArrDatabaseList2[i7]).getPath(), null, i2);
                                        try {
                                            ContentValues contentValues2 = new ContentValues();
                                            contentValues2.put("downloadTaskId", Integer.valueOf(iIntValue));
                                            String[] strArr = new String[i4];
                                            strArr[0] = row.id;
                                            strArr[1] = String.valueOf(i);
                                            sQLiteDatabaseOpenDatabase.update("CinemanaDownloadItem", contentValues2, "id=? AND downloadTaskId=?", strArr);
                                            if (sQLiteDatabaseOpenDatabase != null) {
                                                sQLiteDatabaseOpenDatabase.close();
                                            }
                                        } catch (SQLiteException unused) {
                                            if (sQLiteDatabaseOpenDatabase != null) {
                                            }
                                            i7++;
                                            i4 = 2;
                                            i2 = 0;
                                        } catch (Throwable th) {
                                            th = th;
                                            sQLiteDatabase = sQLiteDatabaseOpenDatabase;
                                            if (sQLiteDatabase != null) {
                                                sQLiteDatabase.close();
                                            }
                                            throw th;
                                        }
                                    } catch (SQLiteException unused2) {
                                        sQLiteDatabaseOpenDatabase = null;
                                    } catch (Throwable th2) {
                                        th = th2;
                                        sQLiteDatabase = null;
                                    }
                                    i7++;
                                    i4 = 2;
                                    i2 = 0;
                                }
                                if (cancelled(context, i, row.id) || !allowed(obj, iIntValue)) {
                                    LocalRuntime.log("link_refresh_cancelled id=" + row.id);
                                    return;
                                }
                                obj.getClass().getMethod("q", objInvoke.getClass(), Boolean.TYPE).invoke(obj, objInvoke, false);
                                LocalRuntime.log("link_refresh_queued id=" + row.id + " old_task=" + i + " new_task=" + iIntValue + " same_media=" + sameMedia(row.url, next));
                                return;
                            } catch (Throwable th3) {
                                sQLiteDatabaseOpenDatabase3.close();
                                throw th3;
                            }
                        }
                        try {
                            sQLiteDatabaseOpenDatabase2 = SQLiteDatabase.openDatabase(context.getDatabasePath(strArrDatabaseList[i3]).getPath(), null, 1);
                            Cursor cursorRawQuery = sQLiteDatabaseOpenDatabase2.rawQuery("SELECT qualityName FROM CinemanaDownloadItem WHERE id=? AND downloadTaskId=?", new String[]{row.id, String.valueOf(i)});
                            try {
                                if (cursorRawQuery.moveToFirst()) {
                                    row.quality = cursorRawQuery.isNull(0) ? BuildConfig.FLAVOR : cursorRawQuery.getString(0);
                                }
                                cursorRawQuery.close();
                                if (sQLiteDatabaseOpenDatabase2 != null) {
                                    sQLiteDatabaseOpenDatabase2.close();
                                }
                            } catch (Throwable th4) {
                                cursorRawQuery.close();
                                throw th4;
                            }
                        } catch (SQLiteException unused3) {
                            if (sQLiteDatabaseOpenDatabase2 != null) {
                            }
                        } catch (Throwable th5) {
                            if (sQLiteDatabaseOpenDatabase2 != null) {
                                sQLiteDatabaseOpenDatabase2.close();
                            }
                            throw th5;
                        }
                        i3++;
                    }
                }
            }
            LocalRuntime.log("link_refresh_wait_partial id=" + row.id);
        }
    }

    static boolean rejected(String str) {
        return str != null && str.matches("(?is).*(?:code(?: error)?[:= ]+|HTTP[ /]*)(401|403|404)(?:\\D.*|$)");
    }

    static String resolution(String str) {
        return str == null ? BuildConfig.FLAVOR : str.toLowerCase(Locale.ROOT).replace(" ", BuildConfig.FLAVOR);
    }

    static Row row(Context context, int i) throws Exception {
        String[] strArrDatabaseList = context.databaseList();
        int length = strArrDatabaseList.length;
        int i2 = 0;
        while (true) {
            SQLiteDatabase sQLiteDatabaseOpenDatabase = null;
            if (i2 >= length) {
                return null;
            }
            String str = strArrDatabaseList[i2];
            if (!str.endsWith("-wal") && !str.endsWith("-shm") && !str.endsWith("-journal")) {
                try {
                    sQLiteDatabaseOpenDatabase = SQLiteDatabase.openDatabase(context.getDatabasePath(str).getPath(), null, 1);
                    Cursor cursorRawQuery = sQLiteDatabaseOpenDatabase.rawQuery("SELECT * FROM Downloads WHERE task_id=?", new String[]{String.valueOf(i)});
                    try {
                        if (cursorRawQuery.moveToFirst()) {
                            Row row = new Row();
                            row.database = str;
                            row.task = i;
                            row.id = cursorRawQuery.getString(cursorRawQuery.getColumnIndexOrThrow("external_id"));
                            row.url = cursorRawQuery.getString(cursorRawQuery.getColumnIndexOrThrow("url"));
                            row.path = cursorRawQuery.getString(cursorRawQuery.getColumnIndexOrThrow(FileDownloadModel.PATH));
                            row.title = cursorRawQuery.getString(cursorRawQuery.getColumnIndexOrThrow("title"));
                            row.image = cursorRawQuery.getString(cursorRawQuery.getColumnIndexOrThrow("img"));
                            row.progress = cursorRawQuery.getLong(cursorRawQuery.getColumnIndexOrThrow("progress_bytes"));
                            row.status = cursorRawQuery.getString(cursorRawQuery.getColumnIndexOrThrow(FileDownloadModel.STATUS));
                            cursorRawQuery.close();
                            if (sQLiteDatabaseOpenDatabase != null) {
                                sQLiteDatabaseOpenDatabase.close();
                            }
                            return row;
                        }
                        cursorRawQuery.close();
                        if (sQLiteDatabaseOpenDatabase != null) {
                            sQLiteDatabaseOpenDatabase.close();
                        }
                    } catch (Throwable th) {
                        cursorRawQuery.close();
                        throw th;
                    }
                } catch (SQLiteException unused) {
                    if (sQLiteDatabaseOpenDatabase != null) {
                    }
                } catch (Throwable th2) {
                    if (sQLiteDatabaseOpenDatabase != null) {
                        sQLiteDatabaseOpenDatabase.close();
                    }
                    throw th2;
                }
            }
            i2++;
        }
    }

    static boolean running(int i) {
        try {
            Class<?> cls = Class.forName("com.liulishuo.filedownloader.FileDownloadList");
            Object objInvoke = cls.getMethod("get", Integer.TYPE).invoke(cls.getMethod("getImpl", new Class[0]).invoke(null, new Object[0]), Integer.valueOf(i));
            if (objInvoke == null) {
                return false;
            }
            return ((Boolean) Class.forName("com.liulishuo.filedownloader.BaseDownloadTask").getMethod("isRunning", new Class[0]).invoke(Class.forName("com.liulishuo.filedownloader.BaseDownloadTask$IRunningTask").getMethod("getOrigin", new Class[0]).invoke(objInvoke, new Object[0]), new Object[0])).booleanValue();
        } catch (Exception unused) {
            return false;
        }
    }

    static boolean safe(String str) {
        try {
            URI uri = new URI(str);
            String host = uri.getHost();
            if (!"https".equals(uri.getScheme()) || host == null) {
                return false;
            }
            return host.equals("shabakaty.cc") || host.endsWith(".shabakaty.cc") || host.equals("shabakaty.com") || host.endsWith(".shabakaty.com");
        } catch (Exception unused) {
            return false;
        }
    }

    static boolean sameMedia(String str, String str2) {
        try {
            URI uri = new URI(str);
            URI uri2 = new URI(str2);
            return uri.getHost() != null && uri.getHost().equalsIgnoreCase(uri2.getHost()) && uri.getPath().equals(uri2.getPath());
        } catch (Exception unused) {
            return false;
        }
    }

    static String status(Row row) {
        try {
            for (Object obj : Class.forName("com.shabakaty.downloader.xc4").getEnumConstants()) {
                if (String.valueOf(obj.getClass().getField("r").getInt(obj)).equals(row.status)) {
                    return ((Enum) obj).name();
                }
            }
            return "UNKNOWN";
        } catch (Exception unused) {
            return "UNKNOWN";
        }
    }
}
