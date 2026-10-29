package com.shabakaty.downloader;

import com.cinemana.pro.R;

/* JADX INFO: compiled from: StatusInfo.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class q14 {
    public final String a;

    /* JADX INFO: compiled from: StatusInfo.kt */
    public static abstract class a extends q14 {
        public final String b;
        public final int c;
        public final int d;

        /* JADX INFO: renamed from: com.shabakaty.downloader.q14$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: StatusInfo.kt */
        public static final class C0180a extends a {
            public static final C0180a e = new C0180a();

            public C0180a() {
                super("major_outage", R.string.txt_header_major_outage, R.string.txt_body_major_outage, null);
            }
        }

        /* JADX INFO: compiled from: StatusInfo.kt */
        public static final class b extends a {
            public static final b e = new b();

            public b() {
                super("under_maintenance", R.string.txt_header_under_maintenance, R.string.txt_body_under_maintenance, null);
            }
        }

        public a(String str, int i, int i2, nn0 nn0Var) {
            super(str, null);
            this.b = str;
            this.c = i;
            this.d = i2;
        }

        @Override // com.shabakaty.downloader.q14
        public String a() {
            return this.b;
        }
    }

    /* JADX INFO: compiled from: StatusInfo.kt */
    public static abstract class b extends q14 {
        public final String b;

        /* JADX INFO: compiled from: StatusInfo.kt */
        public static final class a extends b {
            public static final a c = new a();

            public a() {
                super("operational", null);
            }
        }

        /* JADX INFO: renamed from: com.shabakaty.downloader.q14$b$b, reason: collision with other inner class name */
        /* JADX INFO: compiled from: StatusInfo.kt */
        public static abstract class AbstractC0181b extends b {
            public final String c;
            public final int d;

            /* JADX INFO: renamed from: com.shabakaty.downloader.q14$b$b$a */
            /* JADX INFO: compiled from: StatusInfo.kt */
            public static final class a extends AbstractC0181b {
                public static final a e = new a();

                public a() {
                    super("degraded_performance", 0, 2);
                }
            }

            /* JADX INFO: renamed from: com.shabakaty.downloader.q14$b$b$b, reason: collision with other inner class name */
            /* JADX INFO: compiled from: StatusInfo.kt */
            public static final class C0182b extends AbstractC0181b {
                public static final C0182b e = new C0182b();

                public C0182b() {
                    super("partial_outage", 0, 2);
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AbstractC0181b(String str, int i, int i2) {
                super(str, null);
                i = (i2 & 2) != 0 ? R.string.txt_message_service_status_partially_down : i;
                this.c = str;
                this.d = i;
            }

            @Override // com.shabakaty.downloader.q14.b, com.shabakaty.downloader.q14
            public String a() {
                return this.c;
            }
        }

        public b(String str, nn0 nn0Var) {
            super(str, null);
            this.b = str;
        }

        @Override // com.shabakaty.downloader.q14
        public String a() {
            return this.b;
        }
    }

    public q14(String str, nn0 nn0Var) {
        this.a = str;
    }

    public String a() {
        return this.a;
    }
}
