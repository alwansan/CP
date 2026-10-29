package com.shabakaty.downloader;

/* JADX INFO: compiled from: ShabakatyDownloader.kt */
/* JADX INFO: loaded from: classes.dex */
public interface i44 {

    /* JADX INFO: compiled from: ShabakatyDownloader.kt */
    public static final class a {

        /* JADX INFO: renamed from: com.shabakaty.downloader.i44$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: ShabakatyDownloader.kt */
        public static final class C0147a extends af2 implements tm1<dy0, qv4> {
            public static final C0147a r = new C0147a();

            public C0147a() {
                super(1);
            }

            @Override // com.shabakaty.downloader.tm1
            public qv4 invoke(dy0 dy0Var) {
                j32.e(dy0Var, "$this$null");
                return qv4.a;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ void a(i44 i44Var, String str, String str2, String str3, String str4, String str5, tm1 tm1Var, int i, Object obj) {
            String str6 = (i & 2) != 0 ? null : str2;
            String str7 = (i & 4) != 0 ? null : str3;
            if ((i & 32) != 0) {
                tm1Var = C0147a.r;
            }
            i44Var.c(str, str6, str7, null, str5, tm1Var);
        }
    }

    void b(int i, tm1<? super dy0, qv4> tm1Var);

    void c(String str, String str2, String str3, String str4, String str5, tm1<? super dy0, qv4> tm1Var);

    void d(int i);

    void g(gq1 gq1Var, rh2 rh2Var);

    void i(int i);

    void j(int i, String str);
}
