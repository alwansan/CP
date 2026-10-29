package com.shabakaty.downloader;

import android.util.Log;
import com.liulishuo.filedownloader.BuildConfig;
import java.util.Objects;

/* JADX INFO: compiled from: DownloadEventsLogger.kt */
/* JADX INFO: loaded from: classes.dex */
public final class lw0 {
    public static final lw0 a = new lw0();
    public static boolean b;

    /* JADX INFO: compiled from: DownloadEventsLogger.kt */
    public static final class a {
        public final String a;
        public String b = BuildConfig.FLAVOR;
        public String c = BuildConfig.FLAVOR;
        public int d = 2;

        /* JADX INFO: renamed from: com.shabakaty.downloader.lw0$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: DownloadEventsLogger.kt */
        public static final class C0161a extends af2 implements rm1<qv4> {
            public C0161a() {
                super(0);
            }

            @Override // com.shabakaty.downloader.rm1
            public qv4 invoke() {
                lw0 lw0VarA = mw0.a();
                a aVar = a.this;
                Objects.requireNonNull(lw0VarA);
                int i = aVar.d;
                if (i == 2) {
                    Log.v("ShabakatyDownloader", aVar.c + ' ' + aVar.b + ' ' + aVar.a);
                } else if (i == 3) {
                    Log.d("ShabakatyDownloader", aVar.c + ' ' + aVar.b + ' ' + aVar.a);
                } else if (i == 4) {
                    Log.i("ShabakatyDownloader", aVar.c + ' ' + aVar.b + ' ' + aVar.a);
                } else if (i == 5) {
                    Log.w("ShabakatyDownloader", aVar.c + ' ' + aVar.b + ' ' + aVar.a);
                } else if (i == 6) {
                    Log.e("ShabakatyDownloader", aVar.c + ' ' + aVar.b + ' ' + aVar.a);
                }
                return qv4.a;
            }
        }

        public a(String str) {
            this.a = str;
        }

        public final a a(Object obj) {
            String strJ;
            if (obj instanceof String) {
                StringBuilder sb = new StringBuilder();
                sb.append(obj);
                sb.append(':');
                strJ = sb.toString();
            } else {
                strJ = j32.j(obj == null ? null : obj.getClass().getSimpleName(), ":");
            }
            this.b = strJ;
            return this;
        }

        public final void b() {
            C0161a c0161a = new C0161a();
            if (lw0.b) {
                c0161a.invoke();
            }
        }
    }

    /* JADX INFO: compiled from: DownloadEventsLogger.kt */
    public static final class b extends af2 implements rm1<qv4> {
        public final /* synthetic */ Throwable r;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Throwable th) {
            super(0);
            this.r = th;
        }

        @Override // com.shabakaty.downloader.rm1
        public qv4 invoke() {
            Throwable th = this.r;
            if (th != null) {
                d91.f(th);
            }
            return qv4.a;
        }
    }

    public final void a(Throwable th) {
        b bVar = new b(th);
        if (b) {
            bVar.invoke();
        }
    }

    public final a b(String str, Object obj) {
        j32.e(str, "message");
        a aVar = new a(str);
        aVar.d = 6;
        aVar.a(obj);
        return aVar;
    }

    public final a c(String str, Object obj) {
        j32.e(str, "message");
        a aVar = new a(str);
        aVar.d = 4;
        aVar.a(obj);
        return aVar;
    }
}
