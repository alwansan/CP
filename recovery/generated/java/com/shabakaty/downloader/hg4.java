package com.shabakaty.downloader;

import com.cinemana.pro.R;

/* JADX INFO: compiled from: SettingsEntity.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class hg4 {
    public final float a;
    public final int b;

    /* JADX INFO: compiled from: SettingsEntity.kt */
    public static final class a extends hg4 {
        public static final a c = new a();

        public a() {
            super(3.0f, R.string.large, null);
        }
    }

    /* JADX INFO: compiled from: SettingsEntity.kt */
    public static final class b extends hg4 {
        public static final b c = new b();

        public b() {
            super(2.2f, R.string.medium, null);
        }
    }

    /* JADX INFO: compiled from: SettingsEntity.kt */
    public static final class c extends hg4 {
        public static final c c = new c();

        public c() {
            super(1.6f, R.string.small, null);
        }
    }

    /* JADX INFO: compiled from: SettingsEntity.kt */
    public static final class d extends hg4 {
        public static final d c = new d();

        public d() {
            super(3.3f, R.string.very_large, null);
        }
    }

    /* JADX INFO: compiled from: SettingsEntity.kt */
    public static final class e extends hg4 {
        public static final e c = new e();

        public e() {
            super(1.2f, R.string.very_small, null);
        }
    }

    public hg4(float f, int i, nn0 nn0Var) {
        this.a = f;
        this.b = i;
    }
}
