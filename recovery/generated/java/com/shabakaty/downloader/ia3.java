package com.shabakaty.downloader;

import com.cinemana.pro.R;

/* JADX INFO: compiled from: SettingsEntity.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class ia3 {
    public final String a;
    public final int b;
    public final int c;

    /* JADX INFO: compiled from: SettingsEntity.kt */
    public static final class a extends ia3 {
        public static final a d = new a();

        public a() {
            super("1", R.string.txt_all_adv, R.drawable.ic_content_filter_all, null);
        }
    }

    /* JADX INFO: compiled from: SettingsEntity.kt */
    public static final class b extends ia3 {
        public static final b d = new b();

        public b() {
            super("0", R.string.default_txt, R.drawable.ic_content_filter_default, null);
        }
    }

    /* JADX INFO: compiled from: SettingsEntity.kt */
    public static final class c extends ia3 {
        public static final c d = new c();

        public c() {
            super("2", R.string.family_txt, R.drawable.ic_content_filter_family, null);
        }
    }

    /* JADX INFO: compiled from: SettingsEntity.kt */
    public static final class d extends ia3 {
        public static final d d = new d();

        public d() {
            super("3", R.string.kids, R.drawable.ic_content_filter_kids, null);
        }
    }

    public ia3(String str, int i, int i2, nn0 nn0Var) {
        this.a = str;
        this.b = i;
        this.c = i2;
    }
}
