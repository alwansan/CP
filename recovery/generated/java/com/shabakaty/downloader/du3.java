package com.shabakaty.downloader;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.navigation.NavController;
import androidx.navigation.fragment.DialogFragmentNavigator;
import androidx.navigation.fragment.NavHostFragment;
import com.cinemana.pro.R;
import kotlin.Metadata;

/* JADX INFO: compiled from: RootSearchFragment.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/shabakaty/downloader/du3;", "Lcom/shabakaty/downloader/ek;", "<init>", "()V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final class du3 extends ek {
    @Override // com.shabakaty.downloader.ek
    public int X1() {
        return R.layout.fragment_search_root;
    }

    @Override // com.shabakaty.downloader.ek
    public int Y1() {
        return R.id.search_fragment_container;
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
        ax2 ax2Var = new ax2(iVar, R.id.search_fragment_container, 3101);
        dt0 dt0Var = new dt0((androidx.navigation.fragment.a) ax2Var.h.c(androidx.navigation.fragment.a.class), 3101, dq3.a(yy3.class));
        dt0Var.a = contextRequireContext.getString(R.string.app_name);
        dt0Var.a(3201, cz3.r);
        uo1.i(dt0Var, 3101);
        uo1.a(dt0Var, "Search Fragment");
        ax2Var.e(dt0Var);
        dt0 dt0Var2 = new dt0((DialogFragmentNavigator) ax2Var.h.c(DialogFragmentNavigator.class), 3102, dq3.a(u4.class));
        dt0Var2.a = contextRequireContext.getString(R.string.filter_results_txt);
        uo1.a(dt0Var2, "Advanced Search Filter Dialog");
        ax2Var.e(dt0Var2);
        uo1.j(ax2Var, contextRequireContext);
        navControllerY1.p(ax2Var.c(), null);
    }
}
