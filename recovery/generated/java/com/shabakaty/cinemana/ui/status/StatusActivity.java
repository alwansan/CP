package com.shabakaty.cinemana.ui.status;

import android.content.Intent;
import android.os.Bundle;
import com.cinemana.pro.R;
import com.shabakaty.cinemana.ui.downloads.DownloadsActivity;
import com.shabakaty.downloader.ad4;
import com.shabakaty.downloader.b4;
import com.shabakaty.downloader.fd4;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.q14;
import com.shabakaty.downloader.vj;
import com.shabakaty.downloader.xi;
import kotlin.Metadata;

/* JADX INFO: compiled from: StatusActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00012\u00020\u0003B\u0007¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/shabakaty/cinemana/ui/status/StatusActivity;", "Lcom/shabakaty/downloader/xi;", "Lcom/shabakaty/downloader/b4;", "Lcom/shabakaty/downloader/ad4;", "Lcom/shabakaty/downloader/fd4;", "<init>", "()V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final class StatusActivity extends xi<b4, ad4, fd4> implements ad4 {
    public StatusActivity() {
        super(R.layout.activity_status);
    }

    @Override // com.shabakaty.downloader.ad4
    public void P1() {
        startActivity(new Intent(this, (Class<?>) DownloadsActivity.class));
    }

    @Override // com.shabakaty.downloader.xi
    public Class<fd4> h0() {
        return fd4.class;
    }

    @Override // com.shabakaty.downloader.vj
    public void o() {
        j32.e(this, "this");
        j32.e(this, "this");
    }

    @Override // com.shabakaty.downloader.xi, com.shabakaty.downloader.ji1, androidx.activity.ComponentActivity, com.shabakaty.downloader.p80, android.app.Activity
    public void onCreate(Bundle bundle) {
        q14.a aVar;
        super.onCreate(bundle);
        String stringExtra = getIntent().getStringExtra("SERVICE_STATUS_EXTRA");
        if (stringExtra == null) {
            stringExtra = "under_maintenance";
        }
        if (j32.a(stringExtra, "major_outage")) {
            aVar = q14.a.C0180a.e;
        } else {
            aVar = j32.a(stringExtra, "under_maintenance") ? q14.a.b.e : q14.a.b.e;
        }
        T t = this.t;
        j32.c(t);
        ((b4) t).G(aVar);
        T t2 = this.t;
        j32.c(t2);
        String string = getString(aVar.c);
        j32.d(string, "getString(status.headerRes)");
        ((b4) t2).I(string);
        T t3 = this.t;
        j32.c(t3);
        String string2 = getString(aVar.d);
        j32.d(string2, "getString(status.bodyRes)");
        ((b4) t3).H(string2);
        T t4 = this.t;
        j32.c(t4);
        ((b4) t4).k();
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
