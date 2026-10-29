package com.shabakaty.cinemana.features;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Environment;
import android.util.Log;
import java.io.File;
import java.util.ArrayDeque;

/* JADX INFO: loaded from: classes3.dex */
public final class InstallStateRepair {
    private static final String KEY_INSTALL_TIME = "package_first_install_time";
    private static final String PREFS = "cnm_install_repair";
    private static final String TAG = "CNM_INSTALL_REPAIR";

    private InstallStateRepair() {
    }

    public static void run(Context context) {
        if (context == null) {
            return;
        }
        try {
            Context applicationContext = context.getApplicationContext();
            if (applicationContext != null) {
                context = applicationContext;
            }
            long firstInstallTime = getFirstInstallTime(context);
            if (firstInstallTime <= 0) {
                return;
            }
            SharedPreferences sharedPreferences = context.getSharedPreferences(PREFS, 0);
            long j = sharedPreferences.getLong(KEY_INSTALL_TIME, -1L);
            boolean z = j != firstInstallTime;
            sharedPreferences.edit().putLong(KEY_INSTALL_TIME, firstInstallTime).apply();
            Log.i(TAG, "firstInstall=" + firstInstallTime + " previous=" + j + " newInstall=" + z);
            if (z) {
                File file = new File(new File(Environment.getExternalStorageDirectory(), "Cinemana"), "work");
                if (file.isDirectory()) {
                    ArrayDeque arrayDeque = new ArrayDeque();
                    arrayDeque.add(file);
                    int i = 0;
                    boolean z2 = false;
                    boolean z3 = false;
                    while (!arrayDeque.isEmpty() && i < 5000) {
                        i++;
                        File[] fileArrListFiles = ((File) arrayDeque.removeFirst()).listFiles();
                        if (fileArrListFiles != null) {
                            for (File file2 : fileArrListFiles) {
                                if (file2 != null) {
                                    if (file2.isDirectory()) {
                                        if (!"log".equalsIgnoreCase(file2.getName()) && !file2.getName().startsWith(".")) {
                                            arrayDeque.addLast(file2);
                                        }
                                    } else {
                                        String lowerCase = file2.getName().toLowerCase();
                                        if (lowerCase.endsWith(".mkv") && file2.length() > 0) {
                                            z2 = true;
                                        }
                                        if (lowerCase.endsWith(".temp") || lowerCase.endsWith(".part")) {
                                            z3 = true;
                                        }
                                    }
                                }
                            }
                        }
                    }
                    if (!z2 || z3) {
                        Log.i(TAG, "no stale-MKV reinstall state detected");
                        return;
                    }
                    try {
                        Class<?> cls = Class.forName("com.liulishuo.filedownloader.FileDownloadServiceProxy");
                        cls.getMethod("clearAllTaskData", new Class[0]).invoke(cls.getMethod("getImpl", new Class[0]).invoke(null, new Object[0]), new Object[0]);
                        Log.i(TAG, "FILEDOWNLOADER_TASK_CACHE_CLEARED retainedExternalMkv=true");
                    } catch (Throwable th) {
                        Log.e(TAG, "FILEDOWNLOADER_TASK_CACHE_CLEAR_FAILED", th);
                    }
                }
            }
        } catch (Throwable th2) {
            Log.e(TAG, "INSTALL_REPAIR_FAILED", th2);
        }
    }

    private static long getFirstInstallTime(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).firstInstallTime;
        } catch (Throwable th) {
            return -1L;
        }
    }
}
