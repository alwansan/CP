package com.shabakaty.downloader;

import androidx.recyclerview.widget.RecyclerView;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: UnsupportedMediaCrypto.java */
/* JADX INFO: loaded from: classes.dex */
public class ow4 implements g71, j31 {
    public ow4(int i) {
    }

    public static void f(n31 n31Var, StringBuilder sb) {
        int iCharAt = (sb.charAt(1) * '(') + (sb.charAt(0) * 1600) + sb.charAt(2) + 1;
        n31Var.e.append(new String(new char[]{(char) (iCharAt / RecyclerView.b0.FLAG_TMP_DETACHED), (char) (iCharAt % RecyclerView.b0.FLAG_TMP_DETACHED)}));
        sb.delete(0, 3);
    }

    public int a(n31 n31Var, StringBuilder sb, StringBuilder sb2, int i) {
        int length = sb.length();
        sb.delete(length - i, length);
        n31Var.f--;
        int iB = b(n31Var.b(), sb2);
        n31Var.h = null;
        return iB;
    }

    public int b(char c, StringBuilder sb) {
        if (c == ' ') {
            sb.append((char) 3);
            return 1;
        }
        if (c >= '0' && c <= '9') {
            sb.append((char) ((c - '0') + 4));
            return 1;
        }
        if (c >= 'A' && c <= 'Z') {
            sb.append((char) ((c - 'A') + 14));
            return 1;
        }
        if (c < ' ') {
            sb.append((char) 0);
            sb.append(c);
            return 2;
        }
        if (c >= '!' && c <= '/') {
            sb.append((char) 1);
            sb.append((char) (c - '!'));
            return 2;
        }
        if (c >= ':' && c <= '@') {
            sb.append((char) 1);
            sb.append((char) ((c - ':') + 15));
            return 2;
        }
        if (c >= '[' && c <= '_') {
            sb.append((char) 1);
            sb.append((char) ((c - '[') + 22));
            return 2;
        }
        if (c < '`' || c > 127) {
            sb.append("\u0001\u001e");
            return b((char) (c - 128), sb) + 2;
        }
        sb.append((char) 2);
        sb.append((char) (c - '`'));
        return 2;
    }

    public int c() {
        return 1;
    }

    public void d(n31 n31Var) {
        StringBuilder sb = new StringBuilder();
        while (n31Var.d()) {
            char cB = n31Var.b();
            n31Var.f++;
            int iB = b(cB, sb);
            int iA = n31Var.a() + ((sb.length() / 3) << 1);
            n31Var.f(iA);
            int i = n31Var.h.b - iA;
            if (!n31Var.d()) {
                StringBuilder sb2 = new StringBuilder();
                if (sb.length() % 3 == 2 && (i < 2 || i > 2)) {
                    iB = a(n31Var, sb, sb2, iB);
                }
                while (sb.length() % 3 == 1 && ((iB <= 3 && i != 1) || iB > 3)) {
                    iB = a(n31Var, sb, sb2, iB);
                }
                break;
            }
            if (sb.length() % 3 == 0 && iq6.s(n31Var.a, n31Var.f, c()) != c()) {
                n31Var.g = 0;
                break;
            }
        }
        e(n31Var, sb);
    }

    public void e(n31 n31Var, StringBuilder sb) {
        int length = (sb.length() / 3) << 1;
        int length2 = sb.length() % 3;
        int iA = n31Var.a() + length;
        n31Var.f(iA);
        int i = n31Var.h.b - iA;
        if (length2 == 2) {
            sb.append((char) 0);
            while (sb.length() >= 3) {
                f(n31Var, sb);
            }
            if (n31Var.d()) {
                n31Var.e.append((char) 254);
            }
        } else if (i == 1 && length2 == 1) {
            while (sb.length() >= 3) {
                f(n31Var, sb);
            }
            if (n31Var.d()) {
                n31Var.e.append((char) 254);
            }
            n31Var.f--;
        } else {
            if (length2 != 0) {
                throw new IllegalStateException("Unexpected case. Please report!");
            }
            while (sb.length() >= 3) {
                f(n31Var, sb);
            }
            if (i > 0 || n31Var.d()) {
                n31Var.e.append((char) 254);
            }
        }
        n31Var.g = 0;
    }

    public ExecutorService g(int i, ThreadFactory threadFactory) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(i, i, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), threadFactory);
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return Executors.unconfigurableExecutorService(threadPoolExecutor);
    }
}
