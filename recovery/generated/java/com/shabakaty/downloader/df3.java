package com.shabakaty.downloader;

import android.content.Context;
import android.content.SharedPreferences;

/* JADX INFO: compiled from: PreferenceManager.java */
/* JADX INFO: loaded from: classes.dex */
public class df3 {
    public static SharedPreferences a(Context context) {
        return context.getSharedPreferences(context.getPackageName() + "_preferences", 0);
    }
}
