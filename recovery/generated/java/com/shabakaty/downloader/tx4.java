package com.shabakaty.downloader;

/* JADX INFO: compiled from: SettingsEntity.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class tx4 {
    public final String a;

    /* JADX INFO: compiled from: SettingsEntity.kt */
    public static final class a extends tx4 {
        public static final a b = new a();

        public a() {
            super("ar", null);
        }
    }

    /* JADX INFO: compiled from: SettingsEntity.kt */
    public static final class b extends tx4 {
        public static final b b = new b();

        public b() {
            super("en", null);
        }
    }

    public tx4(String str, nn0 nn0Var) {
        this.a = str;
    }
}
