package com.shabakaty.downloader;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.navigation.NavController;
import androidx.navigation.fragment.NavHostFragment;
import com.cinemana.pro.R;
import kotlin.Metadata;

/* JADX INFO: compiled from: RootHomeFragment.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/shabakaty/downloader/bu3;", "Lcom/shabakaty/downloader/ek;", "<init>", "()V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final class bu3 extends ek {
    @Override // com.shabakaty.downloader.ek
    public int X1() {
        return R.layout.fragment_home_root;
    }

    @Override // com.shabakaty.downloader.ek
    public int Y1() {
        return R.id.home_fragment_container;
    }

    @Override // com.shabakaty.downloader.ek, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        NavController navControllerY1;
        j32.e(view, "view");
        super.onViewCreated(view, bundle);
        NavHostFragment navHostFragment = this.w;
        if (navHostFragment == null || (navControllerY1 = navHostFragment.Y1()) == null) {
            return;
        }
        Context contextRequireContext = requireContext();
        j32.d(contextRequireContext, "requireContext()");
        j32.e(navControllerY1, "<this>");
        j32.e(contextRequireContext, "context");
        androidx.navigation.i iVar = navControllerY1.k;
        j32.b(iVar, "navigatorProvider");
        ax2 ax2Var = new ax2(iVar, R.id.home_fragment_container, 1101);
        j32.e(ax2Var, "<this>");
        j32.e(contextRequireContext, "context");
        j32.e(ax2Var, "<this>");
        j32.e(contextRequireContext, "context");
        dt0 dt0Var = new dt0((androidx.navigation.fragment.a) ax2Var.h.c(androidx.navigation.fragment.a.class), 1101, dq3.a(vt1.class));
        dt0Var.a = contextRequireContext.getString(R.string.app_name);
        uo1.i(dt0Var, 1101);
        j32.e(dt0Var, "<this>");
        dt0Var.a(8201, new hp1(1101));
        j32.e(dt0Var, "<this>");
        dt0Var.a(1201, du1.r);
        uo1.a(dt0Var, "Home Fragment");
        ax2Var.e(dt0Var);
        uo1.h(ax2Var);
        j32.e(ax2Var, "<this>");
        j32.e(contextRequireContext, "context");
        dt0 dt0Var2 = new dt0((androidx.navigation.fragment.a) ax2Var.h.c(androidx.navigation.fragment.a.class), 1103, dq3.a(cm1.class));
        dt0Var2.a = contextRequireContext.getString(R.string.collections);
        j32.e(dt0Var2, "<this>");
        dt0Var2.b("COLLECTIONS_ARG", bu1.r);
        uo1.a(dt0Var2, "Collections Fragment");
        ax2Var.e(dt0Var2);
        uo1.j(ax2Var, contextRequireContext);
        navControllerY1.p(ax2Var.c(), null);
    }
}
