package com.shabakaty.cinemana.features;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;

/* JADX INFO: loaded from: classes.dex */
public class StorageAccess {
    private static final String MANAGE_ACTION = "android.settings.MANAGE_ALL_FILES_ACCESS_PERMISSION";
    private static final String PACKAGE_DIR = "work";
    private static final String PERM_READ = "android.permission.READ_EXTERNAL_STORAGE";
    private static final String PERM_WRITE = "android.permission.WRITE_EXTERNAL_STORAGE";
    private static final String ROOT_DIR = "Cinemana";
    private static final String TAG = "CNM_STORAGE";
    private static final String TEST_FILE = ".cinemana_test";
    private static boolean waitingForStorageAccess = false;

    public static boolean gateOnCreate(Activity activity) {
        return true;
    }

    public static void gateOnResume(Activity activity) {
    }

    public static File downloadRoot() {
        return new File(new File(Environment.getExternalStorageDirectory(), ROOT_DIR), PACKAGE_DIR);
    }

    private static boolean isAllFilesAccess() {
        try {
            Object objInvoke = Environment.class.getMethod("isExternalStorageManager", new Class[0]).invoke(null, new Object[0]);
            return (objInvoke instanceof Boolean) && ((Boolean) objInvoke).booleanValue();
        } catch (Throwable th) {
            return false;
        }
    }

    public static boolean isAccessAllowed(Context context) {
        if (Build.VERSION.SDK_INT >= 30) {
            return isAllFilesAccess();
        }
        return context.checkSelfPermission(PERM_WRITE) == 0;
    }

    public static void openSettings(Activity activity) {
        if (Build.VERSION.SDK_INT >= 30) {
            Log.w(TAG, "OPENING_SETTINGS");
            try {
                Intent intent = new Intent(MANAGE_ACTION);
                intent.setData(Uri.parse("package:" + activity.getPackageName()));
                activity.startActivity(intent);
                return;
            } catch (Throwable th) {
                Log.e(TAG, "SETTINGS_INTENT_FAILED", th);
                try {
                    activity.startActivity(new Intent(MANAGE_ACTION));
                    return;
                } catch (Throwable th2) {
                    Log.e(TAG, "SETTINGS_INTENT_FAILED2", th2);
                    return;
                }
            }
        }
        Log.w(TAG, "OPENING_PERMISSION_REQUEST");
        activity.requestPermissions(new String[]{PERM_WRITE, PERM_READ}, 33);
    }

    public static boolean createRoots() {
        boolean z;
        boolean z2;
        boolean zDelete;
        File file = new File(Environment.getExternalStorageDirectory(), ROOT_DIR);
        File fileDownloadRoot = downloadRoot();
        Log.i(TAG, "ROOT=" + file.getAbsolutePath());
        Log.i(TAG, "DOWNLOAD_ROOT=" + fileDownloadRoot.getAbsolutePath());
        boolean z3 = file.exists() || file.mkdirs();
        boolean z4 = fileDownloadRoot.exists() || fileDownloadRoot.mkdirs();
        Log.i(TAG, "ROOT_EXISTS=" + z3);
        Log.i(TAG, "DOWNLOAD_ROOT_EXISTS=" + z4);
        Log.i(TAG, "DOWNLOAD_ROOT_WRITABLE=" + fileDownloadRoot.canWrite());
        if (!z4) {
            return false;
        }
        File file2 = new File(fileDownloadRoot, TEST_FILE);
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            fileOutputStream.write("TEST_OK".getBytes("UTF-8"));
            fileOutputStream.close();
            z = true;
        } catch (Throwable th) {
            Log.e(TAG, "TEST_WRITE=false", th);
            z = false;
        }
        Log.i(TAG, "TEST_WRITE=" + z);
        try {
            FileInputStream fileInputStream = new FileInputStream(file2);
            byte[] bArr = new byte[16];
            int i = fileInputStream.read(bArr);
            fileInputStream.close();
            z2 = i > 0 && new String(bArr, 0, i, "UTF-8").startsWith("TEST_OK");
        } catch (Throwable th2) {
            Log.e(TAG, "TEST_READ=false", th2);
            z2 = false;
        }
        Log.i(TAG, "TEST_READ=" + z2);
        try {
            zDelete = file2.delete();
        } catch (Throwable th3) {
            Log.e(TAG, "TEST_DELETE=false", th3);
            zDelete = false;
        }
        Log.i(TAG, "TEST_DELETE=" + zDelete);
        return z && z2 && zDelete;
    }
}
