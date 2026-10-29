package com.shabakaty.downloader;

import android.content.Context;
import android.widget.EditText;
import com.cinemana.pro.R;
import com.google.android.material.textfield.TextInputLayout;

/* JADX INFO: compiled from: ShabakatyValidator.kt */
/* JADX INFO: loaded from: classes.dex */
public final class j44 {
    public final TextInputLayout a;
    public boolean b;
    public tm1<? super String, Boolean> c = p44.r;
    public String d;
    public final EditText e;

    /* JADX INFO: compiled from: ShabakatyValidator.kt */
    public static final class a {
        public final TextInputLayout a;
        public final kf2 b = ng2.a(new C0154a());
        public final kf2 c = ng2.a(b.r);
        public final kf2 d = ng2.a(c.r);

        /* JADX INFO: renamed from: com.shabakaty.downloader.j44$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: ShabakatyValidator.kt */
        public static final class C0154a extends af2 implements rm1<Context> {
            public C0154a() {
                super(0);
            }

            @Override // com.shabakaty.downloader.rm1
            public Context invoke() {
                return a.this.a.getContext();
            }
        }

        /* JADX INFO: compiled from: ShabakatyValidator.kt */
        public static final class b extends af2 implements rm1<mq3> {
            public static final b r = new b();

            public b() {
                super(0);
            }

            @Override // com.shabakaty.downloader.rm1
            public mq3 invoke() {
                return new mq3("[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?");
            }
        }

        /* JADX INFO: compiled from: ShabakatyValidator.kt */
        public static final class c extends af2 implements rm1<mq3> {
            public static final c r = new c();

            public c() {
                super(0);
            }

            @Override // com.shabakaty.downloader.rm1
            public mq3 invoke() {
                return new mq3("^(?=.{6,64}$)[-a-zA-Z0-9._+]+");
            }
        }

        /* JADX INFO: compiled from: ShabakatyValidator.kt */
        public static final class d extends af2 implements tm1<String, Boolean> {
            public static final d r = new d();

            public d() {
                super(1);
            }

            @Override // com.shabakaty.downloader.tm1
            public Boolean invoke(String str) {
                String str2 = str;
                j32.e(str2, "it");
                return Boolean.valueOf(!ne4.D(str2));
            }
        }

        public a(TextInputLayout textInputLayout) {
            this.a = textInputLayout;
        }

        public final Context a() {
            return (Context) this.b.getValue();
        }

        public final j44 b() {
            j44 j44Var = new j44(this.a, null);
            j44Var.c = d.r;
            j44Var.b = !ne4.D(vd5.j(this.a));
            j44Var.d = a().getString(R.string.field_required_txt);
            return j44Var;
        }
    }

    public j44(TextInputLayout textInputLayout, nn0 nn0Var) {
        this.a = textInputLayout;
        this.e = textInputLayout.getEditText();
    }
}
