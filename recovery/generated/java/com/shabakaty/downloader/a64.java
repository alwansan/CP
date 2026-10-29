package com.shabakaty.downloader;

import android.net.Uri;
import com.cinemana.pro.R;
import com.shabakaty.usermanagement.UserManagement;
import com.shabakaty.usermanagement.callbacks.RegisterCallback;
import com.shabakaty.usermanagement.data.model.domain.RegistrationErrors;
import com.shabakaty.usermanagement.data.model.domain.RegistrationErrorsTypes;
import java.util.ArrayList;

/* JADX INFO: compiled from: SignUpViewModel.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a64 extends xk<z54> {
    public final UserManagement f;
    public final a g;
    public final xv2<String> h;
    public final xv2<String> i;
    public final xv2<String> j;
    public final xv2<Uri> k;

    /* JADX INFO: compiled from: SignUpViewModel.kt */
    public static final class a implements RegisterCallback {

        /* JADX INFO: renamed from: com.shabakaty.downloader.a64$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: SignUpViewModel.kt */
        public /* synthetic */ class C0102a {
            public static final /* synthetic */ int[] a;

            static {
                int[] iArr = new int[RegistrationErrorsTypes.values().length];
                iArr[RegistrationErrorsTypes.USERNAME_ALREADY_TAKEN.ordinal()] = 1;
                iArr[RegistrationErrorsTypes.EMAIL_ALREADY_TAKEN.ordinal()] = 2;
                iArr[RegistrationErrorsTypes.PASSWORD_NEED_DIGITS.ordinal()] = 3;
                iArr[RegistrationErrorsTypes.PASSWORD_NEED_LOWERCASE.ordinal()] = 4;
                iArr[RegistrationErrorsTypes.PASSWORD_NEED_UPPERCASE.ordinal()] = 5;
                iArr[RegistrationErrorsTypes.PASSWORD_ERROR.ordinal()] = 6;
                iArr[RegistrationErrorsTypes.EMAIL_ERROR.ordinal()] = 7;
                iArr[RegistrationErrorsTypes.USERNAME_ERROR.ordinal()] = 8;
                a = iArr;
            }
        }

        public a() {
        }

        @Override // com.shabakaty.usermanagement.callbacks.RegisterCallback
        public void onRegisterResult(boolean z, RegistrationErrors registrationErrors) {
            ArrayList<RegistrationErrorsTypes> errors;
            zi2.k(a64.this.d);
            if (z) {
                a64 a64Var = a64.this;
                zi2.k(a64Var.d);
                a64Var.f().o0();
                return;
            }
            RegistrationErrorsTypes registrationErrorsTypes = null;
            if (registrationErrors != null && (errors = registrationErrors.getErrors()) != null) {
                registrationErrorsTypes = (RegistrationErrorsTypes) m50.b0(errors);
            }
            switch (registrationErrorsTypes == null ? -1 : C0102a.a[registrationErrorsTypes.ordinal()]) {
                case 1:
                    a64.this.f().g1(R.string.username_already_taken_txt);
                    break;
                case 2:
                    a64.this.f().W(R.string.email_already_taken_txt);
                    break;
                case 3:
                    a64.this.f().S(R.string.password_needs_digits_txt);
                    break;
                case 4:
                    a64.this.f().S(R.string.password_needs_lowercase_txt);
                    break;
                case 5:
                    a64.this.f().S(R.string.password_needs_uppercase_txt);
                    break;
                case 6:
                    a64.this.f().S(R.string.short_password_txt);
                    break;
                case 7:
                    a64.this.f().W(R.string.incorrect_email_txt);
                    break;
                case 8:
                    a64.this.f().g1(R.string.short_username_txt);
                    break;
                default:
                    a64 a64Var2 = a64.this;
                    zi2.k(a64Var2.d);
                    a64Var2.f().s1();
                    break;
            }
        }
    }

    public a64(UserManagement userManagement) {
        j32.e(userManagement, "userManagement");
        this.f = userManagement;
        this.g = new a();
        this.h = new xv2<>();
        this.i = new xv2<>();
        this.j = new xv2<>();
        this.k = new xv2<>();
        zi2.k(this.d);
    }
}
