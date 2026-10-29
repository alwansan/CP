package com.shabakaty.cinemana.features;

import android.content.Context;
import android.database.Cursor;
import android.util.Log;
import com.connectsdk.service.DLNAService;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public final class RenameAssets {
    private static final char[] INVALID_CHARS = {'/', '\\', ':', '*', '?', '\"', '<', '>', '|', '\n', '\r'};
    private static final String TAG = "CNM_RENAME";

    public static void trace(Context context, String str, Object obj, Throwable th) {
        try {
            Class.forName("com.shabakaty.cinemana.features.DownloadTrace").getMethod("task", Context.class, String.class, Object.class, Throwable.class).invoke(null, context, str, obj, th);
        } catch (Throwable th2) {
        }
    }

    private static String getField(Object obj, String str) {
        if (obj == null) {
            return null;
        }
        try {
            Object obj2 = obj.getClass().getField(str).get(obj);
            if (obj2 == null) {
                return null;
            }
            return obj2.toString();
        } catch (Throwable th) {
            return null;
        }
    }

    private static Object getDaoDb(Object obj) {
        if (obj == null) {
            return null;
        }
        try {
            return obj.getClass().getField("a").get(obj);
        } catch (Throwable th) {
            return null;
        }
    }

    private static Object getWritableDb(Object obj) {
        if (obj == null) {
            return null;
        }
        try {
            Object obj2 = obj.getClass().getField("a").get(obj);
            if (obj2 != null) {
                return obj2;
            }
        } catch (Throwable th) {
        }
        try {
            Object obj3 = obj.getClass().getField("d").get(obj);
            return obj3.getClass().getMethod("getWritableDatabase", new Class[0]).invoke(obj3, new Object[0]);
        } catch (Throwable th2) {
            return null;
        }
    }

    private static void execSql(Object obj, String str, Object[] objArr) {
        if (obj == null) {
            return;
        }
        try {
            obj.getClass().getMethod("k0", String.class, Object[].class).invoke(obj, str, objArr);
        } catch (Throwable th) {
            Log.e(TAG, "EXEC_FAIL " + str + " -> " + th.getMessage());
        }
    }

    private static Cursor rawQuery(Object obj, String str) {
        if (obj == null) {
            return null;
        }
        try {
            return (Cursor) obj.getClass().getMethod("y0", String.class).invoke(obj, str);
        } catch (Throwable th) {
            Log.e(TAG, "QUERY_FAIL " + str + " -> " + th.getMessage());
            return null;
        }
    }

    private static String queryString(Object obj, String str, int i) {
        Cursor cursorRawQuery = rawQuery(obj, str);
        if (cursorRawQuery == null) {
            return null;
        }
        try {
            if (cursorRawQuery.moveToFirst()) {
                String string = cursorRawQuery.getString(i);
                try {
                    cursorRawQuery.close();
                } catch (Throwable th) {
                }
                return string;
            }
            try {
                cursorRawQuery.close();
            } catch (Throwable th2) {
            }
            return null;
        } catch (Throwable th3) {
            try {
                cursorRawQuery.close();
            } catch (Throwable th4) {
            }
            return null;
        }
    }

    static String sanitize(String str) {
        boolean z;
        if (str == null) {
            return "Download";
        }
        StringBuilder sb = new StringBuilder();
        boolean z2 = false;
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            int i2 = 0;
            while (true) {
                char[] cArr = INVALID_CHARS;
                if (i2 >= cArr.length) {
                    z = false;
                    break;
                }
                if (cCharAt != cArr[i2]) {
                    i2++;
                } else {
                    z = true;
                    break;
                }
            }
            if (z) {
                cCharAt = ' ';
            }
            if (cCharAt == ' ' || cCharAt == '\t') {
                if (!z2) {
                    sb.append(' ');
                    z2 = true;
                }
            } else {
                sb.append(cCharAt);
                z2 = false;
            }
        }
        String strTrim = sb.toString().trim();
        String str2 = strTrim.length() != 0 ? strTrim : "Download";
        if (str2.length() > 80) {
            return str2.substring(0, 80);
        }
        return str2;
    }

    static String pad2(String str) {
        try {
            int i = Integer.parseInt(str.trim());
            return i < 10 ? "0" + i : String.valueOf(i);
        } catch (Throwable th) {
            return str == null ? "00" : str.trim();
        }
    }

    public static String buildBase(String str, String str2, String str3, String str4) {
        String strSanitize = sanitize(str);
        if ((str4 == null || !str4.contains("film")) && str2 != null && str2.length() > 0 && str3 != null && str3.length() > 0) {
            return strSanitize + " S" + pad2(str2) + " E" + pad2(str3);
        }
        return strSanitize;
    }

    private static boolean isMd5(String str) {
        if (str == null || str.length() != 32) {
            return false;
        }
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if ((cCharAt < '0' || cCharAt > '9') && (cCharAt < 'a' || cCharAt > 'f')) {
                return false;
            }
        }
        return true;
    }

    private static String doRename(String str, String str2, String str3) {
        File parentFile;
        if (str != null) {
            try {
                if (str.length() != 0) {
                    File file = new File(str);
                    if (!file.exists() || (parentFile = file.getParentFile()) == null) {
                        return str;
                    }
                    File file2 = new File(parentFile, str2 + str3);
                    int i = 1;
                    while (file2.exists()) {
                        file2 = new File(parentFile, str2 + " (" + i + ")" + str3);
                        i++;
                    }
                    if (!file.renameTo(file2)) {
                        return str;
                    }
                    Log.i(TAG, "RENAMED SRC=" + str + " DST=" + file2.getAbsolutePath());
                    return file2.getAbsolutePath();
                }
            } catch (Throwable th) {
                Log.e(TAG, "RENAME_FAIL SRC=" + str + " -> " + th.getMessage());
                return str;
            }
        }
        return str;
    }

    private static String langFromName(String str) {
        if (str == null) {
            return DLNAService.DEFAULT_SUBTITLE_TYPE;
        }
        String lowerCase = str.toLowerCase();
        if (lowerCase.contains("arab")) {
            return "ar";
        }
        if (lowerCase.contains("english")) {
            return "en";
        }
        if (lowerCase.contains("french")) {
            return "fr";
        }
        if (lowerCase.contains("spanish")) {
            return "es";
        }
        if (lowerCase.contains("turkish")) {
            return "tr";
        }
        if (lowerCase.contains("german")) {
            return "de";
        }
        return lowerCase.contains("russian") ? "ru" : DLNAService.DEFAULT_SUBTITLE_TYPE;
    }

    public static String extFor(String str, String str2) {
        if (str2 == null || str2.length() == 0) {
            str2 = (str == null || !str.equals("sp")) ? DLNAService.DEFAULT_SUBTITLE_TYPE : "ass";
        }
        return str2.startsWith(".") ? str2.substring(1) : str2;
    }

    public static void onVideoCompleted(Object obj, Object obj2, int i) {
        try {
            Object writableDb = getWritableDb(getDaoDb(obj));
            String strValueOf = String.valueOf(i);
            String str = " WHERE `downloadTaskId` = " + strValueOf + " LIMIT 1";
            String strQueryString = queryString(writableDb, "SELECT `id` FROM `CinemanaDownloadItem`" + str, 0);
            if (strQueryString == null) {
                Log.i(TAG, "VIDEO_SKIP_NO_ROW taskId=" + i);
                return;
            }
            String strQueryString2 = queryString(writableDb, "SELECT `title` FROM `CinemanaDownloadItem`" + str, 0);
            String strQueryString3 = queryString(writableDb, "SELECT `season` FROM `CinemanaDownloadItem`" + str, 0);
            String strQueryString4 = queryString(writableDb, "SELECT `episodeNumber` FROM `CinemanaDownloadItem`" + str, 0);
            String strQueryString5 = queryString(writableDb, "SELECT `kind` FROM `CinemanaDownloadItem`" + str, 0);
            String strQueryString6 = queryString(writableDb, "SELECT `path` FROM `CinemanaDownloadItem`" + str, 0);
            if (strQueryString6 != null && strQueryString6.length() != 0) {
                String name = new File(strQueryString6).getName();
                int iLastIndexOf = name.lastIndexOf(46);
                if (iLastIndexOf > 0) {
                    name = name.substring(0, iLastIndexOf);
                }
                if (!isMd5(name)) {
                    Log.i(TAG, "VIDEO_SKIP_ALREADY_NAMED path=" + strQueryString6);
                    return;
                }
                String strBuildBase = buildBase(strQueryString2, strQueryString3, strQueryString4, strQueryString5);
                String strDoRename = doRename(strQueryString6, strBuildBase, ".mp4");
                if (strDoRename != null && !strDoRename.equals(strQueryString6)) {
                    execSql(writableDb, "UPDATE `CinemanaDownloadItem` SET `path` = ? WHERE `downloadTaskId` = ?", new Object[]{strDoRename, strValueOf});
                    execSql(getWritableDb(getDaoDb(obj2)), "UPDATE `Downloads` SET `path` = ? WHERE `task_id` = ?", new Object[]{strDoRename, strValueOf});
                    Log.i(TAG, "VIDEO_DB_UPDATED taskId=" + i + " path=" + strDoRename);
                    renameSubtitlesFor(writableDb, obj2, strQueryString, strBuildBase);
                    return;
                }
                Log.i(TAG, "VIDEO_RENAME_NOOP taskId=" + i);
                return;
            }
            Log.i(TAG, "VIDEO_SKIP_NO_PATH taskId=" + i);
        } catch (Throwable th) {
            Log.e(TAG, "VIDEO_HOOK_ERR taskId=" + i + " -> " + th.getMessage());
        }
    }

    /**
     * Smali-verified reconstruction of the subtitle rename transaction.
     * Only rename a subtitle file when its existing basename is an MD5 hash.
     * Update SubtitleDb and Downloads records after the filesystem rename.
     */
    private static void renameSubtitlesFor(Object subtitleDb, Object downloadStore,
                                           String parentId, String videoBaseName) {
        if (parentId == null) {
            return;
        }
        try {
            Cursor cursor = rawQuery(subtitleDb,
                "SELECT `id`,`name`,`type`,`extension`,`file` FROM `SubtitleDb` WHERE `parentId` = '" + parentId + "'");
            if (cursor == null) {
                return;
            }
            try {
                if (!cursor.moveToFirst()) {
                    return;
                }
                do {
                    String id = cursor.getString(0);
                    String name = cursor.getString(1);
                    String type = cursor.getString(2);
                    String extension = cursor.getString(3);
                    String oldFile = cursor.getString(4);
                    if (id == null || oldFile == null || oldFile.length() == 0) {
                        continue;
                    }
                    String base = new File(oldFile).getName();
                    int dot = base.lastIndexOf('.');
                    if (dot > 0) {
                        base = base.substring(0, dot);
                    }
                    if (!isMd5(base)) {
                        continue;
                    }
                    String desiredBase = videoBaseName + "." + langFromName(name);
                    String desiredExt = "." + extFor(type, extension);
                    String renamed = doRename(oldFile, desiredBase, desiredExt);
                    if (renamed != null && !renamed.equals(oldFile)) {
                        execSql(subtitleDb,
                            "UPDATE `SubtitleDb` SET `file` = ? WHERE `id` = ?",
                            new Object[]{renamed, id});
                        String taskId = queryString(subtitleDb,
                            "SELECT `downloadTaskId` FROM `SubtitleDb` WHERE `id` = '" + id + "'", 0);
                        if (taskId != null) {
                            Object writable = getWritableDb(getDaoDb(downloadStore));
                            execSql(writable,
                                "UPDATE `Downloads` SET `path` = ? WHERE `task_id` = ?",
                                new Object[]{renamed, taskId});
                        }
                    }
                } while (cursor.moveToNext());
            } finally {
                try {
                    cursor.close();
                } catch (Throwable ignored) {
                }
            }
        } catch (Throwable problem) {
            Log.e(TAG, "SUBS_RENAME_ERR -> " + problem.getMessage());
        }
    }

    public static String onSubtitleCompleted(Object obj, Object obj2, int i, Object obj3, Object obj4) {
        String field = getField(obj4, "file");
        if (field == null || field.length() == 0) {
            return field;
        }
        String name = new File(field).getName();
        int iLastIndexOf = name.lastIndexOf(46);
        if (iLastIndexOf > 0) {
            name = name.substring(0, iLastIndexOf);
        }
        if (isMd5(name)) {
            try {
                String strDoRename = doRename(field, buildBase(getField(obj3, "title"), getField(obj3, "season"), getField(obj3, "episodeNummer"), getField(obj3, "kind")) + "." + langFromName(getField(obj4, "name")), "." + extFor(getField(obj4, "type"), getField(obj4, "extension")));
                if (strDoRename != null && !strDoRename.equals(field)) {
                    execSql(getWritableDb(getDaoDb(obj2)), "UPDATE `Downloads` SET `path` = ? WHERE `task_id` = ?", new Object[]{strDoRename, String.valueOf(i)});
                    Log.i(TAG, "SUB_DB_UPDATED taskId=" + i + " path=" + strDoRename);
                }
                return strDoRename == null ? field : strDoRename;
            } catch (Throwable th) {
                Log.e(TAG, "SUB_HOOK_ERR -> " + th.getMessage());
                return field;
            }
        }
        Log.i(TAG, "SUB_SKIP_ALREADY_NAMED file=" + field);
        return field;
    }
}
