package com.shabakaty.downloader;

import android.content.Context;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.navigation.NavController;
import androidx.navigation.fragment.DialogFragmentNavigator;
import androidx.navigation.fragment.NavHostFragment;
import com.cinemana.pro.R;
import com.facebook.drawee.view.SimpleDraweeView;
import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import com.shabakaty.cinemana.ui.home_fragment.ShowMorePageDataType;

/* JADX INFO: compiled from: GeneralNavigationExtensions.kt */
/* JADX INFO: loaded from: classes.dex */
public final class uo1 {

    /* JADX INFO: compiled from: GeneralNavigationExtensions.kt */
    public static final class a extends af2 implements tm1<uw2, qv4> {
        public final /* synthetic */ String r;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(String str) {
            super(1);
            this.r = str;
        }

        @Override // com.shabakaty.downloader.tm1
        public qv4 invoke(uw2 uw2Var) {
            uw2 uw2Var2 = uw2Var;
            j32.e(uw2Var2, "$this$argument");
            uw2Var2.b(dx2.k);
            uw2Var2.a(this.r);
            return qv4.a;
        }
    }

    /* JADX INFO: compiled from: GeneralNavigationExtensions.kt */
    public static final class b extends af2 implements tm1<cx2, qv4> {
        public final /* synthetic */ NavController r;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(NavController navController) {
            super(1);
            this.r = navController;
        }

        @Override // com.shabakaty.downloader.tm1
        public qv4 invoke(cx2 cx2Var) {
            cx2 cx2Var2 = cx2Var;
            j32.e(cx2Var2, "$this$navOptions");
            androidx.navigation.c cVarE = this.r.e();
            Integer numValueOf = cVarE == null ? null : Integer.valueOf(cVarE.t);
            j32.c(numValueOf);
            cx2Var2.b(numValueOf.intValue());
            cx2Var2.a(vo1.r);
            return qv4.a;
        }
    }

    /* JADX INFO: compiled from: GeneralNavigationExtensions.kt */
    public static final class c extends af2 implements tm1<tw2, qv4> {
        public final /* synthetic */ int r;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(int i) {
            super(1);
            this.r = i;
        }

        @Override // com.shabakaty.downloader.tm1
        public qv4 invoke(tw2 tw2Var) {
            tw2 tw2Var2 = tw2Var;
            j32.e(tw2Var2, "$this$action");
            tw2Var2.a = 5101;
            tw2Var2.a(new kp1(this.r));
            return qv4.a;
        }
    }

    public static final <D extends androidx.navigation.c> void a(zw2<? extends D> zw2Var, String str) {
        zw2Var.b("debugLabel", new a(str));
    }

    public static final void b(ax2 ax2Var) {
        dt0 dt0Var = new dt0((androidx.navigation.fragment.a) ax2Var.h.c(androidx.navigation.fragment.a.class), 7102, dq3.a(bx0.class));
        dt0Var.b("COLLECTION_ARG", to1.r);
        a(dt0Var, "Download Items Fragment");
        ax2Var.e(dt0Var);
    }

    public static final void c(ax2 ax2Var, Context context) {
        dt0 dt0Var = new dt0((androidx.navigation.fragment.a) ax2Var.h.c(androidx.navigation.fragment.a.class), 7101, dq3.a(pz0.class));
        dt0Var.a = context.getString(R.string.downloads);
        a(dt0Var, "Downloads Fragment");
        ax2Var.e(dt0Var);
    }

    public static final void d(NavController navController, ShowMorePageDataType showMorePageDataType) {
        j32.e(showMorePageDataType, "type");
        navController.i(8101, ml3.a(new x93("ShowMoreDataType", showMorePageDataType)), null, null);
    }

    public static final void e(NavController navController, SimpleDraweeView simpleDraweeView, VideoModel videoModel, Bundle bundle) {
        j32.e(navController, "<this>");
        j32.e(simpleDraweeView, "simpleDraweeView");
        j32.e(videoModel, "videoModel");
        j32.e(bundle, "args");
        bundle.putParcelable("VideoModelArg", videoModel);
        androidx.navigation.g gVarF = ol3.f(new b(navController));
        simpleDraweeView.setTransitionName(videoModel.nb);
        navController.i(5101, bundle, gVarF, hl3.a(new x93(simpleDraweeView, videoModel.nb)));
    }

    public static final <T> void g(Fragment fragment, String str, T t) {
        fx3 fx3VarA;
        NavController navControllerX1 = NavHostFragment.X1(fragment);
        j32.b(navControllerX1, "NavHostFragment.findNavController(this)");
        vw2 vw2VarH = navControllerX1.h();
        if (vw2VarH == null || (fx3VarA = vw2VarH.a()) == null) {
            return;
        }
        fx3VarA.a(str, t);
    }

    public static final void h(ax2 ax2Var) {
        dt0 dt0Var = new dt0((androidx.navigation.fragment.a) ax2Var.h.c(androidx.navigation.fragment.a.class), 8101, dq3.a(n54.class));
        dt0Var.b("ShowMoreDataType", wo1.r);
        a(dt0Var, "Show More Fragment");
        ax2Var.e(dt0Var);
    }

    public static final void i(dt0 dt0Var, int i) {
        dt0Var.a(5201, new c(i));
    }

    public static final void j(ax2 ax2Var, Context context) {
        j32.e(context, "context");
        c(ax2Var, context);
        b(ax2Var);
        dt0 dt0Var = new dt0((androidx.navigation.fragment.a) ax2Var.h.c(androidx.navigation.fragment.a.class), 5101, dq3.a(d15.class));
        dt0Var.b("VideoIDArg", mp1.r);
        a(dt0Var, "Video Info Fragment");
        dt0Var.a(5202, zo1.r);
        dt0Var.a(5203, jp1.r);
        dt0Var.a(7201, new dp1(5101));
        dt0Var.a(7202, bp1.r);
        dt0Var.a(8201, new hp1(5101));
        dt0Var.a(5206, fp1.r);
        ax2Var.e(dt0Var);
        dt0 dt0Var2 = new dt0((DialogFragmentNavigator) ax2Var.h.c(DialogFragmentNavigator.class), 5102, dq3.a(u60.class));
        dt0Var2.a = context.getString(R.string.comments);
        lp1 lp1Var = lp1.r;
        dt0Var2.b("VideoIDArg", lp1Var);
        a(dt0Var2, "Comments Dialog");
        ax2Var.e(dt0Var2);
        dt0 dt0Var3 = new dt0((androidx.navigation.fragment.a) ax2Var.h.c(androidx.navigation.fragment.a.class), 5103, dq3.a(hb4.class));
        dt0Var3.b("ACTOR_INFO_ARGUMENT", xo1.r);
        a(dt0Var3, "Staff Info Fragment");
        ax2Var.e(dt0Var3);
        h(ax2Var);
        dt0 dt0Var4 = new dt0((DialogFragmentNavigator) ax2Var.h.c(DialogFragmentNavigator.class), 5106, dq3.a(f91.class));
        dt0Var4.a = BuildConfig.FLAVOR;
        dt0Var4.b("VideoIDArg", lp1Var);
        a(dt0Var4, "External Seasons Dialog");
        ax2Var.e(dt0Var4);
    }
}
