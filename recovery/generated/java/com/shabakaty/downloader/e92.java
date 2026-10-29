package com.shabakaty.downloader;

import java.util.concurrent.CancellationException;
import kotlinx.coroutines.CoroutineExceptionHandler;

/* JADX INFO: compiled from: Job.kt */
/* JADX INFO: loaded from: classes2.dex */
public interface e92 extends me0.b {
    public static final b h = b.r;

    /* JADX INFO: compiled from: Job.kt */
    public static final class a {
        public static /* synthetic */ ou0 b(e92 e92Var, boolean z, boolean z2, tm1 tm1Var, int i, Object obj) {
            if ((i & 1) != 0) {
                z = false;
            }
            if ((i & 2) != 0) {
                z2 = true;
            }
            return e92Var.x(z, z2, tm1Var);
        }
    }

    /* JADX INFO: compiled from: Job.kt */
    public static final class b implements me0.c<e92> {
        public static final /* synthetic */ b r = new b();

        static {
            int i = CoroutineExceptionHandler.q;
        }
    }

    boolean L();

    void b(CancellationException cancellationException);

    boolean c();

    Object d(ud0<? super qv4> ud0Var);

    boolean isCancelled();

    l04<e92> p();

    boolean start();

    qz t(tz tzVar);

    CancellationException v();

    ou0 x(boolean z, boolean z2, tm1<? super Throwable, qv4> tm1Var);
}
