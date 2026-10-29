package com.shabakaty.cinemana.ui.qr_login;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.cinemana.pro.R;
import com.shabakaty.downloader.bn2;
import com.shabakaty.downloader.ck3;
import com.shabakaty.downloader.dk3;
import com.shabakaty.downloader.ek3;
import com.shabakaty.downloader.fk3;
import com.shabakaty.downloader.i3;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.k2;
import com.shabakaty.downloader.ld0;
import com.shabakaty.downloader.ne4;
import com.shabakaty.downloader.qh0;
import com.shabakaty.downloader.r42;
import com.shabakaty.downloader.s2;
import com.shabakaty.downloader.vd5;
import com.shabakaty.downloader.vj;
import com.shabakaty.downloader.xi;
import com.shabakaty.usermanagement.UserManagement.DeviceFlow;
import java.math.BigDecimal;
import java.util.Arrays;
import java.util.Locale;
import kotlin.Metadata;

/* JADX INFO: compiled from: QrLoginActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00012\u00020\u0003B\u0007¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/shabakaty/cinemana/ui/qr_login/QrLoginActivity;", "Lcom/shabakaty/downloader/xi;", "Lcom/shabakaty/downloader/i3;", "Lcom/shabakaty/downloader/dk3;", "Lcom/shabakaty/downloader/fk3;", "<init>", "()V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final class QrLoginActivity extends xi<i3, dk3, fk3> implements dk3 {
    public static final /* synthetic */ int v = 0;

    public QrLoginActivity() {
        super(R.layout.activity_qr_login);
    }

    @Override // com.shabakaty.downloader.dk3
    public void H() {
        if (ld0.a(this, "android.permission.CAMERA") == 0) {
            m0();
        } else {
            s2.f(this, new String[]{"android.permission.CAMERA"}, 1);
        }
    }

    @Override // com.shabakaty.downloader.dk3
    public void S1() {
        T t = this.t;
        j32.c(t);
        r42 r42Var = ((i3) t).M;
        j32.d(r42Var, "binding.itemUserCode");
        String strK = vd5.k(r42Var);
        if (strK == null || ne4.D(strK)) {
            q(R.string.field_required_txt);
            return;
        }
        if (strK == null || ne4.D(strK)) {
            return;
        }
        k0(strK);
    }

    @Override // com.shabakaty.downloader.xi
    public Class<fk3> h0() {
        return fk3.class;
    }

    public final void k0(String str) {
        try {
            BigDecimal bigDecimal = new BigDecimal(str);
            Locale locale = Locale.ENGLISH;
            String string = bigDecimal.toString();
            j32.d(string, "codeAsNumber.toString()");
            String str2 = String.format(locale, string, Arrays.copyOf(new Object[0], 0));
            j32.d(str2, "format(locale, format, *args)");
            fk3 fk3VarF = F();
            j32.e(str2, "userCode");
            fk3VarF.g.postValue(Boolean.TRUE);
            fk3VarF.f.new DeviceFlow().verifyDeviceWithUserCode(new ek3(fk3VarF), str2);
        } catch (Exception unused) {
            q(R.string.qr_login_fail);
        }
    }

    @Override // com.shabakaty.downloader.dk3
    public void k1() {
        finish();
    }

    public final void m0() {
        startActivityForResult(new Intent(this, (Class<?>) QrScanningActivity.class), com.connectsdk.R.styleable.AppCompatTheme_switchStyle);
    }

    @Override // com.shabakaty.downloader.vj
    public void o() {
        j32.e(this, "this");
        j32.e(this, "this");
    }

    @Override // com.shabakaty.downloader.ji1, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 101) {
            String stringExtra = intent == null ? null : intent.getStringExtra("UserCode");
            if (!(stringExtra == null || stringExtra.length() == 0)) {
                String str = getResources().getString(R.string.msg_qr_code_verify) + ' ' + stringExtra + " ?";
                bn2 bn2VarQ = new bn2(this).q(getResources().getString(R.string.qr_code_verify));
                bn2VarQ.a.f = str;
                bn2VarQ.m(getResources().getString(R.string.txt_no), ck3.s);
                bn2VarQ.o(getResources().getString(R.string.txt_yes), new qh0(this, stringExtra));
                bn2VarQ.j();
            }
        }
        if (i == 1 && ld0.a(this, "android.permission.CAMERA") == 0) {
            m0();
        }
    }

    @Override // com.shabakaty.downloader.xi, com.shabakaty.downloader.ji1, androidx.activity.ComponentActivity, com.shabakaty.downloader.p80, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        T t = this.t;
        j32.c(t);
        setSupportActionBar(((i3) t).N);
        k2 supportActionBar = getSupportActionBar();
        if (supportActionBar == null) {
            return;
        }
        supportActionBar.m(true);
    }

    @Override // com.shabakaty.downloader.ji1, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        j32.e(strArr, "permissions");
        j32.e(iArr, "grantResults");
        super.onRequestPermissionsResult(i, strArr, iArr);
        if (i == 1) {
            if (!(iArr.length == 0)) {
                if (iArr[0] == 0) {
                    m0();
                    return;
                }
                if (s2.g(this, "android.permission.CAMERA")) {
                    return;
                }
                Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
                Uri uriFromParts = Uri.fromParts("package", getPackageName(), null);
                j32.d(uriFromParts, "fromParts(\"package\", packageName, null)");
                intent.setData(uriFromParts);
                startActivityForResult(intent, 1);
            }
        }
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
}
