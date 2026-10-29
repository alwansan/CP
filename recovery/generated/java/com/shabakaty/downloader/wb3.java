package com.shabakaty.downloader;

import android.os.Build;
import androidx.work.ListenableWorker;
import java.util.Objects;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: PeriodicWorkRequest.java */
/* JADX INFO: loaded from: classes.dex */
public final class wb3 extends a85 {

    /* JADX INFO: compiled from: PeriodicWorkRequest.java */
    public static final class a extends a85.a<a, wb3> {
        public a(Class<? extends ListenableWorker> cls, long j, TimeUnit timeUnit) {
            super(cls);
            d85 d85Var = this.b;
            long millis = timeUnit.toMillis(j);
            Objects.requireNonNull(d85Var);
            long j2 = 900000;
            if (millis < 900000) {
                ok2.c().f(d85.r, String.format("Interval duration lesser than minimum allowed value; Changed to %s", 900000L), new Throwable[0]);
                millis = 900000;
            }
            if (millis < 900000) {
                ok2.c().f(d85.r, String.format("Interval duration lesser than minimum allowed value; Changed to %s", 900000L), new Throwable[0]);
            } else {
                j2 = millis;
            }
            if (millis < 300000) {
                ok2.c().f(d85.r, String.format("Flex duration lesser than minimum allowed value; Changed to %s", 300000L), new Throwable[0]);
                millis = 300000;
            }
            if (millis > j2) {
                ok2.c().f(d85.r, String.format("Flex duration greater than interval duration; Changed to %s", Long.valueOf(j2)), new Throwable[0]);
                millis = j2;
            }
            d85Var.h = j2;
            d85Var.i = millis;
        }

        @Override // com.shabakaty.downloader.a85.a
        public a85 b() {
            d85 d85Var = this.b;
            if (d85Var.q && Build.VERSION.SDK_INT >= 23 && d85Var.j.c) {
                throw new IllegalArgumentException("Cannot run in foreground with an idle mode constraint");
            }
            return new wb3(this);
        }

        @Override // com.shabakaty.downloader.a85.a
        public a85.a c() {
            return this;
        }
    }

    public wb3(a aVar) {
        super(aVar.a, aVar.b, aVar.c);
    }
}
