package com.shabakaty.downloader;

import android.content.Context;
import android.content.SharedPreferences;

/* JADX INFO: compiled from: PrefsManager.kt */
/* JADX INFO: loaded from: classes.dex */
public final class ff3 {
    public final SharedPreferences a;
    public final SharedPreferences.Editor b;

    public ff3(Context context) {
        j32.e(context, "context");
        SharedPreferences sharedPreferencesA = df3.a(context);
        j32.d(sharedPreferencesA, "getDefaultSharedPreferences(context)");
        this.a = sharedPreferencesA;
        SharedPreferences.Editor editorEdit = sharedPreferencesA.edit();
        j32.d(editorEdit, "sharedPref.edit()");
        this.b = editorEdit;
    }

    public final String a() {
        String string = this.a.getString("key_preferred_subtitle_language", "ar");
        return string == null ? "ar" : string;
    }

    public final void b(boolean z) {
        this.b.remove("key_user_first_name").remove("key_user_last_name").remove("key_user_img").remove("key_user_id").putBoolean("key_sent_user_info", z).apply();
    }
}
