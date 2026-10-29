package com.shabakaty.cinemana.features;

import android.content.Context;
import com.shabakaty.cinemana.ca1.DownloadRepair129;
import com.shabakaty.cinemana.ca1.Queue110;
import com.shabakaty.cinemana.ca1.RecoveryCapsule;

/* JADX INFO: loaded from: classes3.dex */
public final class MkvRepairStartup implements Runnable {
    private final Context context;

    public MkvRepairStartup(Context context) {
        this.context = context;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            Thread.sleep(8000L);
            try {
                Context context = this.context;
                DownloadRepair129.execute(context);
                if (RecoveryCapsule.recoverPending(context) > 0) {
                    Queue110.scan();
                }
            } catch (Throwable th) {
            }
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
        }
    }
}
