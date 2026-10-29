package com.shabakaty.cinemana.ca1;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public final class LocalAccountLog {
    public static void emit(String str) {
        Context context;
        try {
            if (!Log94.enabled() || (context = Log94.app) == null) {
                return;
            }
            Log94.worker.execute(new Log94$$ExternalSyntheticLambda0(context, System.currentTimeMillis(), "LOCAL_ACCOUNT", str));
        } catch (Exception e) {
        }
    }

    public static void init(Context context) {
        Log94.app = context.getApplicationContext();
    }
}
