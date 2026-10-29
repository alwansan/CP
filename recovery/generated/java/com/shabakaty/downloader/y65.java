package com.shabakaty.downloader;

import android.os.Build;
import android.view.View;
import android.view.Window;
import android.view.WindowInsetsController;
import android.view.inputmethod.InputMethodManager;

/* JADX INFO: compiled from: WindowInsetsControllerCompat.java */
/* JADX INFO: loaded from: classes.dex */
public final class y65 {
    public final e a;

    /* JADX INFO: compiled from: WindowInsetsControllerCompat.java */
    public static class a extends e {
        public final Window a;

        public a(Window window, View view) {
            this.a = window;
        }

        @Override // com.shabakaty.downloader.y65.e
        public void a(int i) {
            for (int i2 = 1; i2 <= 256; i2 <<= 1) {
                if ((i & i2) != 0) {
                    if (i2 == 1) {
                        c(4);
                    } else if (i2 == 2) {
                        c(2);
                    } else if (i2 == 8) {
                        ((InputMethodManager) this.a.getContext().getSystemService("input_method")).hideSoftInputFromWindow(this.a.getDecorView().getWindowToken(), 0);
                    }
                }
            }
        }

        @Override // com.shabakaty.downloader.y65.e
        public void b(int i) {
            if (i == 0) {
                d(6144);
                return;
            }
            if (i == 1) {
                d(4096);
                c(2048);
            } else {
                if (i != 2) {
                    return;
                }
                d(2048);
                c(4096);
            }
        }

        public void c(int i) {
            View decorView = this.a.getDecorView();
            decorView.setSystemUiVisibility(i | decorView.getSystemUiVisibility());
        }

        public void d(int i) {
            View decorView = this.a.getDecorView();
            decorView.setSystemUiVisibility((~i) & decorView.getSystemUiVisibility());
        }
    }

    /* JADX INFO: compiled from: WindowInsetsControllerCompat.java */
    public static class b extends a {
        public b(Window window, View view) {
            super(window, view);
        }
    }

    /* JADX INFO: compiled from: WindowInsetsControllerCompat.java */
    public static class c extends b {
        public c(Window window, View view) {
            super(window, view);
        }
    }

    /* JADX INFO: compiled from: WindowInsetsControllerCompat.java */
    public static class d extends e {
        public final WindowInsetsController a;

        public d(Window window, y65 y65Var) {
            this.a = window.getInsetsController();
        }

        @Override // com.shabakaty.downloader.y65.e
        public void a(int i) {
            this.a.hide(i);
        }

        @Override // com.shabakaty.downloader.y65.e
        public void b(int i) {
            this.a.setSystemBarsBehavior(i);
        }
    }

    /* JADX INFO: compiled from: WindowInsetsControllerCompat.java */
    public static class e {
        public void a(int i) {
            throw null;
        }

        public void b(int i) {
            throw null;
        }
    }

    public y65(Window window, View view) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 30) {
            this.a = new d(window, this);
            return;
        }
        if (i >= 26) {
            this.a = new c(window, view);
        } else if (i >= 23) {
            this.a = new b(window, view);
        } else {
            this.a = new a(window, view);
        }
    }
}
