package com.shabakaty.downloader;

import android.os.Handler;
import android.os.Looper;

/* JADX INFO: compiled from: MainThreadAsyncHandler.java */
/* JADX INFO: loaded from: classes.dex */
public class xl2 implements j31 {
    public static volatile Handler r;
    public static xl2 s;

    public xl2(int i) {
    }

    public static String a(CharSequence charSequence, int i) {
        int length = charSequence.length() - i;
        if (length == 0) {
            throw new IllegalStateException("StringBuilder must not be empty");
        }
        int iCharAt = (charSequence.charAt(i) << 18) + ((length >= 2 ? charSequence.charAt(i + 1) : (char) 0) << '\f') + ((length >= 3 ? charSequence.charAt(i + 2) : (char) 0) << 6) + (length >= 4 ? charSequence.charAt(i + 3) : (char) 0);
        char c = (char) ((iCharAt >> 16) & 255);
        char c2 = (char) ((iCharAt >> 8) & 255);
        char c3 = (char) (iCharAt & 255);
        StringBuilder sb = new StringBuilder(3);
        sb.append(c);
        if (length >= 2) {
            sb.append(c2);
        }
        if (length >= 3) {
            sb.append(c3);
        }
        return sb.toString();
    }

    public static Handler e() {
        if (r != null) {
            return r;
        }
        synchronized (xl2.class) {
            if (r == null) {
                r = yr1.a(Looper.getMainLooper());
            }
        }
        return r;
    }

    public tx4 b(String str) {
        j32.e(str, "value");
        j32.e(str, "value");
        return j32.a(str, "en") ? tx4.b.b : tx4.a.b;
    }

    public String c(tx4 tx4Var) {
        j32.e(tx4Var, "language");
        return tx4Var.a;
    }

    /* JADX WARN: Code duplicated, block: B:34:0x008d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:35:0x008f A[Catch: all -> 0x00dc, TryCatch #0 {all -> 0x00dc, blocks: (B:23:0x005a, B:28:0x0065, B:30:0x0077, B:35:0x008f, B:41:0x00a1, B:43:0x00b5, B:45:0x00c4, B:46:0x00cc, B:49:0x00d4, B:50:0x00db), top: B:54:0x005a }] */
    /* JADX WARN: Code duplicated, block: B:39:0x009e  */
    /* JADX WARN: Code duplicated, block: B:41:0x00a1 A[Catch: all -> 0x00dc, TryCatch #0 {all -> 0x00dc, blocks: (B:23:0x005a, B:28:0x0065, B:30:0x0077, B:35:0x008f, B:41:0x00a1, B:43:0x00b5, B:45:0x00c4, B:46:0x00cc, B:49:0x00d4, B:50:0x00db), top: B:54:0x005a }] */
    /* JADX WARN: Code duplicated, block: B:43:0x00b5 A[Catch: all -> 0x00dc, TryCatch #0 {all -> 0x00dc, blocks: (B:23:0x005a, B:28:0x0065, B:30:0x0077, B:35:0x008f, B:41:0x00a1, B:43:0x00b5, B:45:0x00c4, B:46:0x00cc, B:49:0x00d4, B:50:0x00db), top: B:54:0x005a }] */
    /* JADX WARN: Code duplicated, block: B:45:0x00c4 A[Catch: all -> 0x00dc, TryCatch #0 {all -> 0x00dc, blocks: (B:23:0x005a, B:28:0x0065, B:30:0x0077, B:35:0x008f, B:41:0x00a1, B:43:0x00b5, B:45:0x00c4, B:46:0x00cc, B:49:0x00d4, B:50:0x00db), top: B:54:0x005a }] */
    /* JADX WARN: Code duplicated, block: B:46:0x00cc A[Catch: all -> 0x00dc, TRY_LEAVE, TryCatch #0 {all -> 0x00dc, blocks: (B:23:0x005a, B:28:0x0065, B:30:0x0077, B:35:0x008f, B:41:0x00a1, B:43:0x00b5, B:45:0x00c4, B:46:0x00cc, B:49:0x00d4, B:50:0x00db), top: B:54:0x005a }] */
    /* JADX WARN: Code duplicated, block: B:49:0x00d4 A[Catch: all -> 0x00dc, TRY_ENTER, TryCatch #0 {all -> 0x00dc, blocks: (B:23:0x005a, B:28:0x0065, B:30:0x0077, B:35:0x008f, B:41:0x00a1, B:43:0x00b5, B:45:0x00c4, B:46:0x00cc, B:49:0x00d4, B:50:0x00db), top: B:54:0x005a }] */
    @Override // com.shabakaty.downloader.j31
    public void d(n31 n31Var) {
        boolean z;
        int i;
        String strA;
        StringBuilder sb = new StringBuilder();
        while (true) {
            z = true;
            if (!n31Var.d()) {
                break;
            }
            char cB = n31Var.b();
            if (cB >= ' ' && cB <= '?') {
                sb.append(cB);
            } else {
                if (cB < '@' || cB > '^') {
                    iq6.j(cB);
                    throw null;
                }
                sb.append((char) (cB - '@'));
            }
            n31Var.f++;
            if (sb.length() >= 4) {
                n31Var.e.append(a(sb, 0));
                sb.delete(0, 4);
                if (iq6.s(n31Var.a, n31Var.f, 4) != 4) {
                    n31Var.g = 0;
                    break;
                }
            }
        }
        sb.append((char) 31);
        try {
            int length = sb.length();
            if (length != 0) {
                if (length == 1) {
                    n31Var.e();
                    int iA = n31Var.h.b - n31Var.a();
                    int iC = n31Var.c();
                    if (iC > iA) {
                        n31Var.f(n31Var.a() + 1);
                        iA = n31Var.h.b - n31Var.a();
                    }
                    if (iC > iA || iA > 2) {
                        if (length <= 4) {
                            throw new IllegalStateException("Count must not exceed 4");
                        }
                        i = length - 1;
                        strA = a(sb, 0);
                        if ((!n31Var.d()) || i > 2) {
                            z = false;
                        }
                        if (i <= 2) {
                            n31Var.f(n31Var.a() + i);
                            if (n31Var.h.b - n31Var.a() >= 3) {
                                n31Var.f(n31Var.a() + strA.length());
                                z = false;
                            }
                        }
                        if (z) {
                            n31Var.h = null;
                            n31Var.f -= i;
                        } else {
                            n31Var.e.append(strA);
                        }
                    }
                } else {
                    if (length <= 4) {
                        throw new IllegalStateException("Count must not exceed 4");
                    }
                    i = length - 1;
                    strA = a(sb, 0);
                    if (!n31Var.d()) {
                        z = false;
                    } else {
                        z = false;
                    }
                    if (i <= 2) {
                        n31Var.f(n31Var.a() + i);
                        if (n31Var.h.b - n31Var.a() >= 3) {
                            n31Var.f(n31Var.a() + strA.length());
                            z = false;
                        }
                    }
                    if (z) {
                        n31Var.h = null;
                        n31Var.f -= i;
                    } else {
                        n31Var.e.append(strA);
                    }
                }
            }
            n31Var.g = 0;
        } catch (Throwable th) {
            n31Var.g = 0;
            throw th;
        }
    }

    public void f(String str, String str2, int i) {
        s73.h(str, str2, Integer.valueOf(i));
    }
}
