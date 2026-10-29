package com.shabakaty.downloader;

import android.content.Context;
import android.content.SharedPreferences;

/* JADX INFO: compiled from: DependencyContainer.kt */
/* JADX INFO: loaded from: classes.dex */
public final class gq0 {
    public final kf2 a;
    public final kf2 b = ng2.a(c.r);
    public final kf2 c = ng2.a(a.r);
    public g41 d;
    public final kf2 e;

    /* JADX INFO: compiled from: DependencyContainer.kt */
    public static final class a extends af2 implements rm1<lr1> {
        public static final a r = new a();

        public a() {
            super(0);
        }

        @Override // com.shabakaty.downloader.rm1
        public lr1 invoke() {
            return new lr1();
        }
    }

    /* JADX INFO: compiled from: DependencyContainer.kt */
    public static final class b extends af2 implements rm1<ny2> {
        public final /* synthetic */ k41 r;
        public final /* synthetic */ gq0 s;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(k41 k41Var, gq0 gq0Var) {
            super(0);
            this.r = k41Var;
            this.s = gq0Var;
        }

        @Override // com.shabakaty.downloader.rm1
        public ny2 invoke() {
            if (this.r.c) {
                this.s.d = new g41();
            }
            SharedPreferences sharedPreferences = (SharedPreferences) this.s.a.getValue();
            j32.d(sharedPreferences, "sharedPreferences");
            a63 a63Var = (a63) this.s.b.getValue();
            lr1 lr1Var = (lr1) this.s.c.getValue();
            k41 k41Var = this.r;
            return new ny2(sharedPreferences, a63Var, lr1Var, k41Var.a, k41Var.b, this.s.d);
        }
    }

    /* JADX INFO: compiled from: DependencyContainer.kt */
    public static final class c extends af2 implements rm1<a63> {
        public static final c r = new c();

        public c() {
            super(0);
        }

        @Override // com.shabakaty.downloader.rm1
        public a63 invoke() {
            return new a63();
        }
    }

    /* JADX INFO: compiled from: DependencyContainer.kt */
    public static final class d extends af2 implements rm1<SharedPreferences> {
        public final /* synthetic */ Context r;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(Context context) {
            super(0);
            this.r = context;
        }

        @Override // com.shabakaty.downloader.rm1
        public SharedPreferences invoke() {
            return df3.a(this.r);
        }
    }

    public gq0(Context context, k41 k41Var) {
        this.a = ng2.a(new d(context));
        this.e = ng2.a(new b(k41Var, this));
    }

    public final ny2 a() {
        return (ny2) this.e.getValue();
    }
}
