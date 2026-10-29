package com.shabakaty.downloader;

import android.os.Bundle;
import android.view.View;
import androidx.navigation.NavController;
import androidx.navigation.fragment.NavHostFragment;
import com.cinemana.pro.R;
import com.shabakaty.cinemana.ca1.Ui7;
import kotlin.Metadata;

/* JADX INFO: compiled from: SettingsListFragment.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00012\u00020\u0003B\u0007¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/shabakaty/downloader/b34;", "Lcom/shabakaty/downloader/hj;", "Lcom/shabakaty/downloader/aj1;", "Lcom/shabakaty/downloader/kk1;", "Lcom/shabakaty/downloader/d34;", "<init>", "()V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final class b34 extends hj<aj1, kk1, d34> implements kk1 {
    public b34() {
        super(R.layout.fragment_settings_list);
    }

    @Override // com.shabakaty.downloader.kk1
    public void N0() {
        j32.f(this, "$this$findNavController");
        NavController navControllerX1 = NavHostFragment.X1(this);
        j32.b(navControllerX1, "NavHostFragment.findNavController(this)");
        navControllerX1.i(6103, null, null, null);
    }

    @Override // com.shabakaty.downloader.kk1
    public void R0() {
        j32.f(this, "$this$findNavController");
        NavController navControllerX1 = NavHostFragment.X1(this);
        j32.b(navControllerX1, "NavHostFragment.findNavController(this)");
        navControllerX1.i(6102, null, null, null);
    }

    @Override // com.shabakaty.downloader.kk1
    public void Y0() {
        j32.f(this, "$this$findNavController");
        NavController navControllerX1 = NavHostFragment.X1(this);
        j32.b(navControllerX1, "NavHostFragment.findNavController(this)");
        navControllerX1.i(6104, null, null, null);
    }

    @Override // com.shabakaty.downloader.hj
    public vj Z1() {
        return this;
    }

    @Override // com.shabakaty.downloader.hj
    public Class<d34> d2() {
        return d34.class;
    }

    @Override // com.shabakaty.downloader.vj
    public void o() {
        j32.e(this, "this");
        j32.e(this, "this");
    }

    @Override // com.shabakaty.downloader.hj, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        j32.e(view, "view");
        super.onViewCreated(view, bundle);
        Ui7.settings(view);
        d34 d34VarC2 = c2();
        nh3.y(hl3.e(d34VarC2), null, 0, new c34(d34VarC2, null), 3, null);
    }

    @Override // com.shabakaty.downloader.vj
    public void q(int i) {
        j32.e(this, "this");
        vj.a.a(this, i);
    }
}
