package com.shabakaty.downloader;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.navigation.NavController;
import androidx.navigation.fragment.NavHostFragment;
import com.cinemana.pro.R;
import com.shabakaty.cinemana.ui.login.LoginActivity;
import com.shabakaty.cinemana.ui.qr_login.QrLoginActivity;
import kotlin.Metadata;

/* JADX INFO: compiled from: RootProfileFragment.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/shabakaty/downloader/cu3;", "Lcom/shabakaty/downloader/ek;", "<init>", "()V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final class cu3 extends ek {
    @Override // com.shabakaty.downloader.ek
    public int X1() {
        return R.layout.fragment_profile_root;
    }

    @Override // com.shabakaty.downloader.ek
    public int Y1() {
        return R.id.profile_fragment_container;
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
        ax2 ax2Var = new ax2(iVar, R.id.profile_fragment_container, 4101);
        dt0 dt0Var = new dt0((androidx.navigation.fragment.a) ax2Var.h.c(androidx.navigation.fragment.a.class), 4102, dq3.a(k13.class));
        dt0Var.a = contextRequireContext.getString(R.string.notifications_txt);
        uo1.i(dt0Var, 4102);
        uo1.a(dt0Var, "Notifications Fragment");
        ax2Var.e(dt0Var);
        dt0 dt0Var2 = new dt0((androidx.navigation.fragment.a) ax2Var.h.c(androidx.navigation.fragment.a.class), 4103, dq3.a(tf4.class));
        dt0Var2.a = contextRequireContext.getString(R.string.subscriptions_txt);
        uo1.i(dt0Var2, 4103);
        uo1.a(dt0Var2, "Subscriptions Fragment");
        ax2Var.e(dt0Var2);
        dt0 dt0Var3 = new dt0((androidx.navigation.fragment.a) ax2Var.h.c(androidx.navigation.fragment.a.class), 4104, dq3.a(e21.class));
        dt0Var3.a = contextRequireContext.getString(R.string.edit_txt);
        uo1.a(dt0Var3, "Edit Profile Fragment");
        ax2Var.e(dt0Var3);
        g3 g3Var = new g3((androidx.navigation.a) ax2Var.h.c(androidx.navigation.a.class), 4110);
        g3Var.a = contextRequireContext.getString(R.string.qr_login_activity);
        g3Var.h = dq3.a(QrLoginActivity.class);
        uo1.a(g3Var, "QR Login Activity");
        ax2Var.e(g3Var);
        uo1.c(ax2Var, contextRequireContext);
        uo1.b(ax2Var);
        dt0 dt0Var4 = new dt0((androidx.navigation.fragment.a) ax2Var.h.c(androidx.navigation.fragment.a.class), 4107, dq3.a(qt0.class));
        dt0Var4.a = contextRequireContext.getString(R.string.discover_more_apps_txt);
        uo1.a(dt0Var4, "Discover More Fragment");
        ax2Var.e(dt0Var4);
        dt0 dt0Var5 = new dt0((androidx.navigation.fragment.a) ax2Var.h.c(androidx.navigation.fragment.a.class), 4108, dq3.a(vx4.class));
        dt0Var5.b("USER_LIST_KIND", ch3.r);
        uo1.a(dt0Var5, "User List Details Fragment");
        ax2Var.e(dt0Var5);
        dt0 dt0Var6 = new dt0((androidx.navigation.fragment.a) ax2Var.h.c(androidx.navigation.fragment.a.class), 4101, dq3.a(jg3.class));
        dt0Var6.a = contextRequireContext.getString(R.string.app_name);
        dt0Var6.a(4201, tg3.r);
        dt0Var6.a(4202, xg3.r);
        dt0Var6.a(4203, pg3.r);
        dt0Var6.a(4204, rg3.r);
        dt0Var6.a(4208, bh3.r);
        j32.e(dt0Var6, "<this>");
        dt0Var6.a(7201, new dp1(4101));
        dt0Var6.a(4206, ng3.r);
        dt0Var6.a(4209, vg3.r);
        j32.e(dt0Var6, "<this>");
        dt0Var6.a(7202, bp1.r);
        uo1.a(dt0Var6, "Profile Fragment");
        ax2Var.e(dt0Var6);
        g3 g3Var2 = new g3((androidx.navigation.a) ax2Var.h.c(androidx.navigation.a.class), 4105);
        g3Var2.a = contextRequireContext.getString(R.string.loginDialog_login);
        g3Var2.h = dq3.a(LoginActivity.class);
        uo1.a(g3Var2, "Login Activity");
        ax2Var.e(g3Var2);
        dt0 dt0Var7 = new dt0((androidx.navigation.fragment.a) ax2Var.h.c(androidx.navigation.fragment.a.class), 4109, dq3.a(dy4.class));
        dt0Var7.a = contextRequireContext.getString(R.string.user_lists_txt);
        dt0Var7.a(4207, zg3.r);
        uo1.a(dt0Var7, "User Lists Fragment");
        ax2Var.e(dt0Var7);
        uo1.j(ax2Var, contextRequireContext);
        navControllerY1.p(ax2Var.c(), null);
    }
}
