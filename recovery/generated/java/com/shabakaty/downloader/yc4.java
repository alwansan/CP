package com.shabakaty.downloader;

import android.content.Context;
import android.content.Intent;
import com.shabakaty.cinemana.ui.status.StatusActivity;

/* JADX INFO: compiled from: StatusActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class yc4 {

    /* JADX INFO: compiled from: StatusActivity.kt */
    public static final class a extends af2 implements tm1<Intent, qv4> {
        public final /* synthetic */ Context r;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Context context) {
            super(1);
            this.r = context;
        }

        @Override // com.shabakaty.downloader.tm1
        public qv4 invoke(Intent intent) {
            Intent intent2 = intent;
            j32.e(intent2, "it");
            this.r.startActivity(intent2);
            return qv4.a;
        }
    }

    public static final Intent a(Context context, q14 q14Var) {
        a aVar = new a(context);
        Intent intent = new Intent(context, (Class<?>) StatusActivity.class);
        intent.putExtra("SERVICE_STATUS_EXTRA", q14Var.a());
        aVar.invoke(intent);
        return intent;
    }
}
