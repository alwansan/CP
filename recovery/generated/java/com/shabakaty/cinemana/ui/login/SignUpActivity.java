package com.shabakaty.cinemana.ui.login;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.provider.MediaStore;
import android.widget.EditText;
import com.cinemana.pro.R;
import com.connectsdk.service.airplay.PListParser;
import com.google.android.material.textfield.TextInputLayout;
import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.downloader.a64;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.j44;
import com.shabakaty.downloader.k2;
import com.shabakaty.downloader.k44;
import com.shabakaty.downloader.l44;
import com.shabakaty.downloader.m44;
import com.shabakaty.downloader.mq3;
import com.shabakaty.downloader.ne4;
import com.shabakaty.downloader.q44;
import com.shabakaty.downloader.s45;
import com.shabakaty.downloader.vd5;
import com.shabakaty.downloader.vj;
import com.shabakaty.downloader.wk2;
import com.shabakaty.downloader.wt2;
import com.shabakaty.downloader.x3;
import com.shabakaty.downloader.xi;
import com.shabakaty.downloader.xv2;
import com.shabakaty.downloader.y54;
import com.shabakaty.downloader.z54;
import com.shabakaty.downloader.zi2;
import com.shabakaty.usermanagement.UserManagement;
import kotlin.Metadata;

/* JADX INFO: compiled from: SignUpActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00012\u00020\u0003B\u0007¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/shabakaty/cinemana/ui/login/SignUpActivity;", "Lcom/shabakaty/downloader/xi;", "Lcom/shabakaty/downloader/x3;", "Lcom/shabakaty/downloader/z54;", "Lcom/shabakaty/downloader/a64;", "<init>", "()V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final class SignUpActivity extends xi<x3, z54, a64> implements z54 {
    public static final /* synthetic */ int w = 0;
    public Uri v;

    public SignUpActivity() {
        super(R.layout.activity_sign_up);
    }

    @Override // com.shabakaty.downloader.z54
    public void I0() {
        Intent intent = new Intent("android.intent.action.GET_CONTENT");
        intent.setType("image/jpg");
        Intent intent2 = new Intent("android.intent.action.PICK", MediaStore.Images.Media.EXTERNAL_CONTENT_URI);
        intent2.setType("image/jpg");
        Intent intentCreateChooser = Intent.createChooser(intent, "Select Image");
        intentCreateChooser.putExtra("android.intent.extra.INITIAL_INTENTS", new Intent[]{intent2});
        startActivityForResult(intentCreateChooser, 9820);
    }

    @Override // com.shabakaty.downloader.z54
    public void S(int i) {
        String string = getString(i);
        j32.d(string, "getString(message)");
        T t = this.t;
        j32.c(t);
        ((x3) t).R.setError(string);
        T t2 = this.t;
        j32.c(t2);
        ((x3) t2).R.setErrorEnabled(true);
    }

    @Override // com.shabakaty.downloader.z54
    public void W(int i) {
        String string = getString(i);
        j32.d(string, "getString(message)");
        T t = this.t;
        j32.c(t);
        ((x3) t).O.setError(string);
        T t2 = this.t;
        j32.c(t2);
        ((x3) t2).O.setErrorEnabled(true);
    }

    @Override // com.shabakaty.downloader.z54
    public void a1() {
        finish();
        setResult(0);
        overridePendingTransition(android.R.anim.fade_in, android.R.anim.fade_out);
    }

    @Override // com.shabakaty.downloader.z54
    public void c0() {
        String string = getString(R.string.all_the_fields_are_required_txt);
        j32.d(string, "getString(R.string.all_t…_fields_are_required_txt)");
        j32.e(this, "this");
        j32.e(string, PListParser.TAG_STRING);
        vj.a.b(this, string);
    }

    @Override // com.shabakaty.downloader.z54
    public void g1(int i) {
        String string = getString(i);
        j32.d(string, "getString(message)");
        T t = this.t;
        j32.c(t);
        ((x3) t).U.setError(string);
        T t2 = this.t;
        j32.c(t2);
        ((x3) t2).U.setErrorEnabled(true);
    }

    @Override // com.shabakaty.downloader.xi
    public Class<a64> h0() {
        return a64.class;
    }

    @Override // com.shabakaty.downloader.vj
    public void o() {
        j32.e(this, "this");
        j32.e(this, "this");
    }

    @Override // com.shabakaty.downloader.z54
    public void o0() {
        q(R.string.sign_up_success_txt);
        setResult(1);
        finish();
    }

    @Override // com.shabakaty.downloader.ji1, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 9820 && i2 == -1) {
            this.v = intent == null ? null : intent.getData();
            T t = this.t;
            j32.c(t);
            ((x3) t).S.e(this.v, this);
            F().k.setValue(this.v);
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        overridePendingTransition(android.R.anim.fade_in, android.R.anim.fade_out);
    }

    @Override // com.shabakaty.downloader.xi, com.shabakaty.downloader.ji1, androidx.activity.ComponentActivity, com.shabakaty.downloader.p80, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        T t = this.t;
        j32.c(t);
        TextInputLayout textInputLayout = ((x3) t).O;
        j32.d(textInputLayout, "binding.signUpEmailInput");
        T t2 = this.t;
        j32.c(t2);
        TextInputLayout textInputLayout2 = ((x3) t2).U;
        j32.d(textInputLayout2, "binding.signUpUsernameInput");
        T t3 = this.t;
        j32.c(t3);
        TextInputLayout textInputLayout3 = ((x3) t3).R;
        j32.d(textInputLayout3, "binding.signUpPasswordInput");
        s45.b(textInputLayout, textInputLayout2, textInputLayout3);
        T t4 = this.t;
        j32.c(t4);
        setSupportActionBar(((x3) t4).T);
        k2 supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.m(true);
        }
        T t5 = this.t;
        j32.c(t5);
        ((x3) t5).N.setBackgroundTintList(wt2.g(this, R.color.secondaryTextColor));
        T t6 = this.t;
        j32.c(t6);
        EditText editText = ((x3) t6).R.getEditText();
        if (editText != null) {
            editText.setOnEditorActionListener(new wk2(this));
        }
        T t7 = this.t;
        j32.c(t7);
        TextInputLayout textInputLayout4 = ((x3) t7).O;
        j32.d(textInputLayout4, "binding.signUpEmailInput");
        j44.a aVarB = q44.b(textInputLayout4);
        j44 j44Var = new j44(aVarB.a, null);
        j44Var.c = new k44(aVarB);
        j44Var.b = ((mq3) aVarB.c.getValue()).a(vd5.j(aVarB.a));
        j44Var.d = aVarB.a().getString(R.string.incorrect_email_txt);
        T t8 = this.t;
        j32.c(t8);
        TextInputLayout textInputLayout5 = ((x3) t8).R;
        j32.d(textInputLayout5, "binding.signUpPasswordInput");
        j44.a aVarB2 = q44.b(textInputLayout5);
        j44 j44Var2 = new j44(aVarB2.a, null);
        j44Var2.c = l44.r;
        j44Var2.b = q44.a(vd5.j(aVarB2.a));
        j44Var2.d = aVarB2.a().getString(R.string.short_password_txt);
        T t9 = this.t;
        j32.c(t9);
        TextInputLayout textInputLayout6 = ((x3) t9).U;
        j32.d(textInputLayout6, "binding.signUpUsernameInput");
        j44.a aVarB3 = q44.b(textInputLayout6);
        j44 j44Var3 = new j44(aVarB3.a, null);
        j44Var3.c = new m44(aVarB3);
        j44Var3.b = ((mq3) aVarB3.d.getValue()).a(vd5.j(aVarB3.a));
        j44Var3.d = aVarB3.a().getString(R.string.short_username_txt);
        q44.c(new j44[]{j44Var, j44Var2, j44Var3}, new y54(this));
    }

    @Override // com.shabakaty.downloader.vj
    public void q(int i) {
        j32.e(this, "this");
        vj.a.a(this, i);
    }

    @Override // com.shabakaty.downloader.xi
    public vj r() {
        return this;
    }

    @Override // com.shabakaty.downloader.z54
    public void s1() {
        q(R.string.sign_up_failed_txt);
    }

    @Override // com.shabakaty.downloader.z54
    public void x0() {
        xv2<String> xv2Var = F().h;
        T t = this.t;
        j32.c(t);
        TextInputLayout textInputLayout = ((x3) t).U;
        j32.d(textInputLayout, "binding.signUpUsernameInput");
        xv2Var.setValue(vd5.j(textInputLayout));
        xv2<String> xv2Var2 = F().j;
        T t2 = this.t;
        j32.c(t2);
        TextInputLayout textInputLayout2 = ((x3) t2).O;
        j32.d(textInputLayout2, "binding.signUpEmailInput");
        xv2Var2.setValue(vd5.j(textInputLayout2));
        xv2<String> xv2Var3 = F().i;
        T t3 = this.t;
        j32.c(t3);
        TextInputLayout textInputLayout3 = ((x3) t3).R;
        j32.d(textInputLayout3, "binding.signUpPasswordInput");
        xv2Var3.setValue(vd5.j(textInputLayout3));
        T t4 = this.t;
        j32.c(t4);
        ((x3) t4).U.setError(null);
        T t5 = this.t;
        j32.c(t5);
        ((x3) t5).U.setErrorEnabled(false);
        T t6 = this.t;
        j32.c(t6);
        ((x3) t6).O.setError(null);
        T t7 = this.t;
        j32.c(t7);
        ((x3) t7).O.setErrorEnabled(false);
        T t8 = this.t;
        j32.c(t8);
        ((x3) t8).R.setError(null);
        T t9 = this.t;
        j32.c(t9);
        ((x3) t9).R.setErrorEnabled(false);
        a64 a64VarF = F();
        String[] strArr = {a64VarF.h.getValue(), a64VarF.j.getValue(), a64VarF.i.getValue()};
        int i = 0;
        boolean z = false;
        while (i < 3) {
            String str = strArr[i];
            i++;
            z |= str == null || ne4.D(str);
        }
        if (z) {
            a64VarF.f().c0();
            return;
        }
        zi2.i(a64VarF.d);
        UserManagement userManagement = a64VarF.f;
        String value = a64VarF.h.getValue();
        if (value == null) {
            value = BuildConfig.FLAVOR;
        }
        String value2 = a64VarF.j.getValue();
        if (value2 == null) {
            value2 = BuildConfig.FLAVOR;
        }
        String value3 = a64VarF.i.getValue();
        if (value3 == null) {
            value3 = BuildConfig.FLAVOR;
        }
        String value4 = a64VarF.i.getValue();
        if (value4 == null) {
            value4 = BuildConfig.FLAVOR;
        }
        userManagement.register(value, value2, value3, value4, a64VarF.k.getValue(), a64VarF.g);
    }

    @Override // com.shabakaty.downloader.vj
    public void z0(String str) {
        j32.e(this, "this");
        j32.e(str, PListParser.TAG_STRING);
        vj.a.b(this, str);
    }
}
