package com.shabakaty.downloader;

import android.os.Build;
import android.util.Log;

/* JADX INFO: compiled from: Logger.java */
/* JADX INFO: loaded from: classes.dex */
public final class vk2 {
    public static int a = 3;

    public static void a(String str, String str2, Throwable th) {
        if (c(str)) {
            Log.d(d(str), str2, th);
        }
    }

    public static void b(String str, String str2, Throwable th) {
        if (a <= 6 || Log.isLoggable(d(str), 6)) {
            Log.e(d(str), str2, th);
        }
    }

    public static boolean c(String str) {
        return a <= 3 || Log.isLoggable(d(str), 3);
    }

    public static String d(String str) {
        return (23 >= str.length() || Build.VERSION.SDK_INT >= 24) ? str : str.substring(0, 23);
    }

    public static void e(String str, String str2, Throwable th) {
        if (a <= 5 || Log.isLoggable(d(str), 5)) {
            Log.w(d(str), str2, th);
        }
    }
}
