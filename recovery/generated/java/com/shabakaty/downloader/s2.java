package com.shabakaty.downloader;

import android.app.Activity;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import java.util.Arrays;

/* JADX INFO: compiled from: ActivityCompat.java */
/* JADX INFO: loaded from: classes.dex */
public class s2 extends ld0 {
    public static final /* synthetic */ int c = 0;

    /* JADX INFO: compiled from: ActivityCompat.java */
    public class a implements Runnable {
        public final /* synthetic */ String[] r;
        public final /* synthetic */ Activity s;
        public final /* synthetic */ int t;

        public a(String[] strArr, Activity activity, int i) {
            this.r = strArr;
            this.s = activity;
            this.t = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            int[] iArr = new int[this.r.length];
            PackageManager packageManager = this.s.getPackageManager();
            String packageName = this.s.getPackageName();
            int length = this.r.length;
            for (int i = 0; i < length; i++) {
                iArr[i] = packageManager.checkPermission(this.r[i], packageName);
            }
            ((b) this.s).onRequestPermissionsResult(this.t, this.r, iArr);
        }
    }

    /* JADX INFO: compiled from: ActivityCompat.java */
    public interface b {
        void onRequestPermissionsResult(int i, String[] strArr, int[] iArr);
    }

    /* JADX INFO: compiled from: ActivityCompat.java */
    public interface c {
        void validateRequestPermissionsRequestCode(int i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void f(Activity activity, String[] strArr, int i) {
        for (String str : strArr) {
            if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException(ni4.a(um3.a("Permission request for permissions "), Arrays.toString(strArr), " must not contain null or empty values"));
            }
        }
        if (Build.VERSION.SDK_INT >= 23) {
            if (activity instanceof c) {
                ((c) activity).validateRequestPermissionsRequestCode(i);
            }
            activity.requestPermissions(strArr, i);
        } else if (activity instanceof b) {
            new Handler(Looper.getMainLooper()).post(new a(strArr, activity, i));
        }
    }

    public static boolean g(Activity activity, String str) {
        if (Build.VERSION.SDK_INT >= 23) {
            return activity.shouldShowRequestPermissionRationale(str);
        }
        return false;
    }
}
