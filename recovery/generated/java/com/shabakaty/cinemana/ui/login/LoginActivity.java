package com.shabakaty.cinemana.ui.login;

import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.widget.EditText;
import com.cinemana.pro.R;
import com.facebook.CallbackManager;
import com.facebook.internal.CallbackManagerImpl;
import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.cinemana.local.LocalRuntime;
import com.shabakaty.downloader.at0;
import com.shabakaty.downloader.bn2;
import com.shabakaty.downloader.c3;
import com.shabakaty.downloader.cl3;
import com.shabakaty.downloader.dl2;
import com.shabakaty.downloader.hn1;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.j96;
import com.shabakaty.downloader.pm0;
import com.shabakaty.downloader.qv4;
import com.shabakaty.downloader.se0;
import com.shabakaty.downloader.ud0;
import com.shabakaty.downloader.ui4;
import com.shabakaty.downloader.vd5;
import com.shabakaty.downloader.vj;
import com.shabakaty.downloader.ws0;
import com.shabakaty.downloader.xi;
import com.shabakaty.downloader.yk2;
import com.shabakaty.usermanagement.UserManagement;
import java.util.HashMap;
import kotlin.Metadata;

/* JADX INFO: compiled from: LoginActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00012\u00020\u0003B\u0007¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/shabakaty/cinemana/ui/login/LoginActivity;", "Lcom/shabakaty/downloader/xi;", "Lcom/shabakaty/downloader/c3;", "Lcom/shabakaty/downloader/yk2;", "Lcom/shabakaty/downloader/dl2;", "<init>", "()V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final class LoginActivity extends xi<c3, yk2, dl2> implements yk2 {
    public static final /* synthetic */ int z = 0;
    public androidx.appcompat.app.b v;
    public androidx.appcompat.app.b w;
    public CallbackManager x;
    public UserManagement y;

    /* JADX INFO: compiled from: LoginActivity.kt */
    @pm0(c = "com.shabakaty.cinemana.ui.login.LoginActivity$onLoginFailure$1", f = "LoginActivity.kt", l = {}, m = "invokeSuspend")
    public static final class a extends ui4 implements hn1<se0, ud0<? super qv4>, Object> {
        public a(ud0<? super a> ud0Var) {
            super(2, ud0Var);
        }

        @Override // com.shabakaty.downloader.hn1
        public Object o(se0 se0Var, ud0<? super qv4> ud0Var) {
            LoginActivity loginActivity = LoginActivity.this;
            loginActivity.new a(ud0Var);
            qv4 qv4Var = qv4.a;
            j96.i(qv4Var);
            loginActivity.q(R.string.userActions_loginFailed);
            return qv4Var;
        }

        @Override // com.shabakaty.downloader.bj
        public final ud0<qv4> r(Object obj, ud0<?> ud0Var) {
            return LoginActivity.this.new a(ud0Var);
        }

        @Override // com.shabakaty.downloader.bj
        public final Object t(Object obj) {
            j96.i(obj);
            LoginActivity.this.q(R.string.userActions_loginFailed);
            return qv4.a;
        }
    }

    /* JADX INFO: compiled from: TextView.kt */
    public static final class b implements TextWatcher {
        public b() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            String string;
            dl2 dl2VarK0 = LoginActivity.k0(LoginActivity.this);
            String str = BuildConfig.FLAVOR;
            if (editable != null && (string = editable.toString()) != null) {
                str = string;
            }
            j32.e(str, "<set-?>");
            dl2VarK0.p = str;
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    /* JADX INFO: compiled from: TextView.kt */
    public static final class c implements TextWatcher {
        public c() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            String string;
            dl2 dl2VarK0 = LoginActivity.k0(LoginActivity.this);
            String str = BuildConfig.FLAVOR;
            if (editable != null && (string = editable.toString()) != null) {
                str = string;
            }
            j32.e(str, "<set-?>");
            dl2VarK0.q = str;
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    /* JADX INFO: compiled from: TextView.kt */
    public static final class d implements TextWatcher {
        public d() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            String string;
            dl2 dl2VarK0 = LoginActivity.k0(LoginActivity.this);
            String str = BuildConfig.FLAVOR;
            if (editable != null && (string = editable.toString()) != null) {
                str = string;
            }
            j32.e(str, "<set-?>");
            dl2VarK0.r = str;
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    /* JADX INFO: compiled from: TextView.kt */
    public static final class e implements TextWatcher {
        public e() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            String string;
            dl2 dl2VarK0 = LoginActivity.k0(LoginActivity.this);
            String str = BuildConfig.FLAVOR;
            if (editable != null && (string = editable.toString()) != null) {
                str = string;
            }
            j32.e(str, "<set-?>");
            dl2VarK0.s = str;
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    public LoginActivity() {
        super(R.layout.activity_login);
    }

    public static final /* synthetic */ dl2 k0(LoginActivity loginActivity) {
        return loginActivity.F();
    }

    @Override // com.shabakaty.downloader.yk2
    public void B1() {
        startActivityForResult(new Intent(this, (Class<?>) SignUpActivity.class), 10820);
        overridePendingTransition(android.R.anim.fade_in, android.R.anim.fade_out);
    }

    @Override // com.shabakaty.downloader.yk2
    public void C() {
        F().q(true);
        startActivityForResult(m0().getGoogleSignInIntent(this), 13579);
    }

    @Override // com.shabakaty.downloader.yk2
    public void G0() {
        cl3.e(this).c(new a(null));
    }

    @Override // com.shabakaty.downloader.yk2
    public String J() {
        Editable text;
        T t = this.t;
        j32.c(t);
        EditText editText = ((c3) t).V.getEditText();
        if (editText == null || (text = editText.getText()) == null) {
            return null;
        }
        return text.toString();
    }

    @Override // com.shabakaty.downloader.yk2
    public void M1() {
        androidx.appcompat.app.b bVar = this.w;
        if (bVar != null) {
            bVar.dismiss();
        }
        this.w = null;
        LayoutInflater layoutInflater = getLayoutInflater();
        j32.d(layoutInflater, "layoutInflater");
        ws0 ws0Var = (ws0) vd5.n(layoutInflater, R.layout.dialog_change_password, null, false, 6);
        ws0Var.G(F());
        ws0Var.p();
        ws0Var.k();
        this.v = new bn2(this).r(ws0Var.v).j();
        EditText editText = ws0Var.O.M.getEditText();
        if (editText != null) {
            editText.addTextChangedListener(new c());
        }
        EditText editText2 = ws0Var.N.M.getEditText();
        if (editText2 != null) {
            editText2.addTextChangedListener(new d());
        }
        EditText editText3 = ws0Var.M.M.getEditText();
        if (editText3 == null) {
            return;
        }
        editText3.addTextChangedListener(new e());
    }

    @Override // com.shabakaty.downloader.yk2
    public void b1() {
        androidx.appcompat.app.b bVar = this.w;
        if (bVar != null) {
            bVar.dismiss();
        }
        this.w = null;
    }

    @Override // com.shabakaty.downloader.yk2
    public void g0() {
        m0().loginUsingFacebook(this);
    }

    @Override // com.shabakaty.downloader.xi
    public Class<dl2> h0() {
        return dl2.class;
    }

    @Override // com.shabakaty.downloader.yk2
    public void j1() {
        finish();
    }

    @Override // com.shabakaty.downloader.yk2
    public void l() {
        LayoutInflater layoutInflater = getLayoutInflater();
        j32.d(layoutInflater, "layoutInflater");
        at0 at0Var = (at0) vd5.n(layoutInflater, R.layout.dialog_forgot_password, null, false, 6);
        at0Var.G(F());
        at0Var.p();
        at0Var.k();
        this.w = new bn2(this).r(at0Var.v).j();
        EditText editText = at0Var.M.M.getEditText();
        if (editText == null) {
            return;
        }
        editText.addTextChangedListener(new b());
    }

    public final UserManagement m0() {
        UserManagement userManagement = this.y;
        if (userManagement != null) {
            return userManagement;
        }
        j32.l("userManagement");
        throw null;
    }

    @Override // com.shabakaty.downloader.yk2
    public String m1() {
        Editable text;
        T t = this.t;
        j32.c(t);
        EditText editText = ((c3) t).T.getEditText();
        if (editText == null || (text = editText.getText()) == null) {
            return null;
        }
        return text.toString();
    }

    @Override // com.shabakaty.downloader.vj
    public void o() {
        j32.e(this, "this");
        j32.e(this, "this");
    }

    @Override // com.shabakaty.downloader.ji1, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        CallbackManagerImpl.Callback callback;
        super.onActivityResult(i, i2, intent);
        if (i == 10820) {
            if (i2 == 1) {
                finish();
                return;
            }
            return;
        }
        if (i == 13579) {
            try {
                m0().handleGoogleSignInResult(com.google.android.gms.auth.api.signin.a.a(intent));
                return;
            } catch (Exception unused) {
                F().q(false);
                return;
            }
        }
        F().q(true);
        CallbackManager callbackManager = this.x;
        if (callbackManager == null) {
            j32.l("callbackManager");
            throw null;
        }
        CallbackManagerImpl.Callback callback2 = ((CallbackManagerImpl) callbackManager).a.get(Integer.valueOf(i));
        if (callback2 != null) {
            callback2.a(i2, intent);
            return;
        }
        Integer numValueOf = Integer.valueOf(i);
        synchronized (CallbackManagerImpl.class) {
            callback = (CallbackManagerImpl.Callback) ((HashMap) CallbackManagerImpl.b).get(numValueOf);
        }
        if (callback != null) {
            callback.a(i2, intent);
        }
    }

    @Override // com.shabakaty.downloader.xi, com.shabakaty.downloader.ji1, androidx.activity.ComponentActivity, com.shabakaty.downloader.p80, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        LocalRuntime.open(this);
        finish();
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

    @Override // com.shabakaty.downloader.yk2
    public void x() {
        androidx.appcompat.app.b bVar = this.v;
        if (bVar != null) {
            bVar.dismiss();
        }
        this.v = null;
    }
}
