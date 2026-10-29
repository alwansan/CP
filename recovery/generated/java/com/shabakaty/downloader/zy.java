package com.shabakaty.downloader;

import java.util.concurrent.CancellationException;
import zendesk.support.request.CellBase;

/* JADX INFO: compiled from: Channels.common.kt */
/* JADX INFO: loaded from: classes2.dex */
public /* synthetic */ class zy {
    public static final boolean a(byte[] bArr, int i, byte[] bArr2, int i2, int i3) {
        j32.e(bArr, "a");
        for (int i4 = 0; i4 < i3; i4++) {
            if (bArr[i4 + i] != bArr2[i4 + i2]) {
                return false;
            }
        }
        return true;
    }

    public static te1 b(te1 te1Var, int i, co coVar, int i2, Object obj) {
        int i3;
        co coVar2;
        co coVar3 = co.SUSPEND;
        if ((i2 & 1) != 0) {
            i = -2;
        }
        co coVar4 = (i2 & 2) != 0 ? coVar3 : null;
        boolean z = true;
        if (!(i >= 0 || i == -2 || i == -1)) {
            throw new IllegalArgumentException(bl3.a("Buffer size should be non-negative, BUFFERED, or CONFLATED, but was ", i).toString());
        }
        if (i == -1 && coVar4 != coVar3) {
            z = false;
        }
        if (!z) {
            throw new IllegalArgumentException("CONFLATED capacity cannot be used with non-default onBufferOverflow".toString());
        }
        if (i == -1) {
            coVar2 = co.DROP_OLDEST;
            i3 = 0;
        } else {
            i3 = i;
            coVar2 = coVar4;
        }
        return te1Var instanceof go1 ? go1.a.a((go1) te1Var, null, i3, coVar2, 1, null) : new vy(te1Var, null, i3, coVar2, 2);
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0065  */
    /* JADX WARN: Code duplicated, block: B:32:0x0068  */
    /* JADX WARN: Code duplicated, block: B:42:0x008b  */
    /* JADX WARN: Code duplicated, block: B:45:0x008f  */
    /* JADX WARN: Code duplicated, block: B:50:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:52:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final <T> Object c(te1<? extends T> te1Var, ue1<? super T> ue1Var, ud0<? super Throwable> ud0Var) throws Throwable {
        ff1 ff1Var;
        Throwable th;
        lo3 lo3Var;
        Throwable th2;
        boolean z;
        e92 e92Var;
        CancellationException cancellationExceptionV;
        if (ud0Var instanceof ff1) {
            ff1Var = (ff1) ud0Var;
            int i = ff1Var.v;
            if ((i & CellBase.GROUP_ID_SYSTEM_MESSAGE) != 0) {
                ff1Var.v = i - CellBase.GROUP_ID_SYSTEM_MESSAGE;
            } else {
                ff1Var = new ff1(ud0Var);
            }
        } else {
            ff1Var = new ff1(ud0Var);
        }
        Object obj = ff1Var.u;
        te0 te0Var = te0.COROUTINE_SUSPENDED;
        int i2 = ff1Var.v;
        if (i2 != 0) {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            lo3Var = (lo3) ff1Var.w;
            try {
                j96.i(obj);
                return null;
            } catch (Throwable th3) {
                th = th3;
                th2 = (Throwable) lo3Var.r;
                if (th2 == null) {
                    z = false;
                } else {
                    z = false;
                }
                if (!z) {
                    throw th;
                }
                me0 me0Var = ff1Var.s;
                j32.c(me0Var);
                e92Var = (e92) me0Var.get(e92.h);
                if (e92Var == null && e92Var.isCancelled() && (cancellationExceptionV = e92Var.v()) != null && j32.a(cancellationExceptionV, th)) {
                    throw th;
                }
                return th;
            }
        }
        j96.i(obj);
        lo3 lo3Var2 = new lo3();
        lo3Var2.r = null;
        try {
            ue1<? super Object> ef1Var = new ef1(ue1Var, lo3Var2);
            ff1Var.w = lo3Var2;
            ff1Var.v = 1;
            if (te1Var.d(ef1Var, ff1Var) == te0Var) {
                return te0Var;
            }
            return null;
        } catch (Throwable th4) {
            th = th4;
            lo3Var = lo3Var2;
            th2 = (Throwable) lo3Var.r;
            if (th2 == null && j32.a(th2, th)) {
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                throw th;
            }
            me0 me0Var2 = ff1Var.s;
            j32.c(me0Var2);
            e92Var = (e92) me0Var2.get(e92.h);
            if (e92Var == null && e92Var.isCancelled() && (cancellationExceptionV = e92Var.v()) != null && j32.a(cancellationExceptionV, th)) {
                return th;
            }
            throw th;
        }
    }

    public static final void d(long j, long j2, long j3) {
        if ((j2 | j3) < 0 || j2 > j || j - j2 < j3) {
            throw new ArrayIndexOutOfBoundsException("size=" + j + " offset=" + j2 + " byteCount=" + j3);
        }
    }

    public static final <T> Object e(te1<? extends T> te1Var, hn1<? super T, ? super ud0<? super qv4>, ? extends Object> hn1Var, ud0<? super qv4> ud0Var) {
        int i = if1.a;
        Object objD = b(j(te1Var, new hf1(hn1Var, null)), 0, null, 2, null).d(zz2.r, ud0Var);
        te0 te0Var = te0.COROUTINE_SUSPENDED;
        if (objD != te0Var) {
            objD = qv4.a;
        }
        return objD == te0Var ? objD : qv4.a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> te1<T> f(te1<? extends T> te1Var) {
        tm1<Object, Object> tm1Var = ze1.a;
        return te1Var instanceof gc4 ? te1Var : ze1.a(te1Var, ze1.a, ze1.b);
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0071  */
    /* JADX WARN: Code duplicated, block: B:32:0x0088  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x005e, code lost:
    
        if (r5.d(r2, r0) == r1) goto L29;
     */
    /* JADX WARN: Instruction removed from duplicated block: B:30:0x0071, please report this as an issue */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T> java.lang.Object g(com.shabakaty.downloader.te1<? extends T> r5, com.shabakaty.downloader.hn1<? super T, ? super com.shabakaty.downloader.ud0<? super java.lang.Boolean>, ? extends java.lang.Object> r6, com.shabakaty.downloader.ud0<? super T> r7) {
        /*
            boolean r0 = r7 instanceof com.shabakaty.downloader.kf1
            if (r0 == 0) goto L13
            r0 = r7
            com.shabakaty.downloader.kf1 r0 = (com.shabakaty.downloader.kf1) r0
            int r1 = r0.v
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.v = r1
            goto L18
        L13:
            com.shabakaty.downloader.kf1 r0 = new com.shabakaty.downloader.kf1
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.u
            com.shabakaty.downloader.te0 r1 = com.shabakaty.downloader.te0.COROUTINE_SUSPENDED
            int r2 = r0.v
            r3 = 1
            if (r2 == 0) goto L41
            if (r2 != r3) goto L39
            java.lang.Object r5 = r0.y
            com.shabakaty.downloader.jf1 r5 = (com.shabakaty.downloader.jf1) r5
            java.lang.Object r6 = r0.x
            com.shabakaty.downloader.lo3 r6 = (com.shabakaty.downloader.lo3) r6
            java.lang.Object r0 = r0.w
            com.shabakaty.downloader.hn1 r0 = (com.shabakaty.downloader.hn1) r0
            com.shabakaty.downloader.j96.i(r7)     // Catch: com.shabakaty.downloader.e -> L33
            goto L6a
        L33:
            r7 = move-exception
            r4 = r7
            r7 = r6
            r6 = r0
            r0 = r4
            goto L64
        L39:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L41:
            com.shabakaty.downloader.j96.i(r7)
            com.shabakaty.downloader.lo3 r7 = new com.shabakaty.downloader.lo3
            r7.<init>()
            com.shabakaty.downloader.j61 r2 = com.shabakaty.downloader.q13.a
            r7.r = r2
            com.shabakaty.downloader.jf1 r2 = new com.shabakaty.downloader.jf1
            r2.<init>(r6, r7)
            r0.w = r6     // Catch: com.shabakaty.downloader.e -> L61
            r0.x = r7     // Catch: com.shabakaty.downloader.e -> L61
            r0.y = r2     // Catch: com.shabakaty.downloader.e -> L61
            r0.v = r3     // Catch: com.shabakaty.downloader.e -> L61
            java.lang.Object r5 = r5.d(r2, r0)     // Catch: com.shabakaty.downloader.e -> L61
            if (r5 != r1) goto L68
            goto L70
        L61:
            r5 = move-exception
            r0 = r5
            r5 = r2
        L64:
            com.shabakaty.downloader.ue1<?> r1 = r0.r
            if (r1 != r5) goto L88
        L68:
            r0 = r6
            r6 = r7
        L6a:
            T r1 = r6.r
            com.shabakaty.downloader.j61 r5 = com.shabakaty.downloader.q13.a
            if (r1 == r5) goto L71
        L70:
            return r1
        L71:
            java.util.NoSuchElementException r5 = new java.util.NoSuchElementException
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r7 = "Expected at least one element matching the predicate "
            r6.append(r7)
            r6.append(r0)
            java.lang.String r6 = r6.toString()
            r5.<init>(r6)
            throw r5
        L88:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.shabakaty.downloader.zy.g(com.shabakaty.downloader.te1, com.shabakaty.downloader.hn1, com.shabakaty.downloader.ud0):java.lang.Object");
    }

    public static final <T> e92 h(te1<? extends T> te1Var, se0 se0Var) {
        return nh3.y(se0Var, null, 0, new ye1(te1Var, null), 3, null);
    }

    public static final String i(byte b) {
        char[] cArr = gp.a;
        return new String(new char[]{cArr[(b >> 4) & 15], cArr[b & 15]});
    }

    public static final <T, R> te1<R> j(te1<? extends T> te1Var, jn1<? super ue1<? super R>, ? super T, ? super ud0<? super qv4>, ? extends Object> jn1Var) {
        int i = if1.a;
        return new wy(jn1Var, te1Var, null, 0, null, 28);
    }
}
