package com.shabakaty.downloader;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.widget.LinearLayout;
import com.cinemana.pro.R;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.liulishuo.filedownloader.BuildConfig;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;

/* JADX INFO: compiled from: BottomSheetList.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00012\u00020\u0003:\u0001\u0007B\u0007¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Lcom/shabakaty/downloader/on;", "Lcom/shabakaty/downloader/aj;", "Lcom/shabakaty/downloader/yi1;", BuildConfig.FLAVOR, "Lcom/shabakaty/downloader/di2;", "<init>", "()V", "a", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final class on extends aj<yi1, Object, di2> implements vj {
    public List<gn> N;
    public String O;

    /* JADX INFO: compiled from: BottomSheetList.kt */
    public static final class a {
        public String b;
        public List<? extends gn> a = w21.r;
        public final on c = new on();

        public final a a(List<? extends gn> list) {
            j32.e(list, "items");
            this.a = list;
            return this;
        }

        public final void b(androidx.fragment.app.q qVar) {
            on onVar = this.c;
            String str = this.b;
            if (str == null) {
                str = BuildConfig.FLAVOR;
            }
            onVar.O = str;
            onVar.N = m50.z0(this.a);
            this.c.c2(qVar, "listBottomSheet");
        }
    }

    public on() {
        super(R.layout.fragment_dialog_bottom_sheet);
        this.N = new ArrayList();
        this.O = BuildConfig.FLAVOR;
    }

    @Override // com.shabakaty.downloader.ct0
    public void c2(androidx.fragment.app.q qVar, String str) {
        j32.e(qVar, "manager");
        try {
            androidx.fragment.app.a aVar = new androidx.fragment.app.a(qVar);
            aVar.f(0, this, str, 1);
            aVar.d();
        } catch (IllegalStateException e) {
            wt2.j(e);
        }
    }

    @Override // com.shabakaty.downloader.aj
    public vj d2() {
        return this;
    }

    @Override // com.shabakaty.downloader.aj
    public Class<di2> g2() {
        return di2.class;
    }

    @Override // com.shabakaty.downloader.vj
    public void o() {
        j32.e(this, "this");
        j32.e(this, "this");
    }

    @Override // com.shabakaty.downloader.ct0, android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        j32.e(dialogInterface, "dialog");
    }

    @Override // com.shabakaty.downloader.aj, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        j32.e(view, "view");
        super.onViewCreated(view, bundle);
        Dialog dialog = this.C;
        com.google.android.material.bottomsheet.a aVar = dialog instanceof com.google.android.material.bottomsheet.a ? (com.google.android.material.bottomsheet.a) dialog : null;
        if (aVar != null) {
            T t = this.K;
            j32.c(t);
            LinearLayout linearLayout = ((yi1) t).M;
            j32.d(linearLayout, "binding.bottomListRootLinearLayout");
            Object parent = linearLayout.getParent();
            Objects.requireNonNull(parent, "null cannot be cast to non-null type android.view.View");
            BottomSheetBehavior.g((View) parent).l(aVar.getContext().getResources().getDisplayMetrics().heightPixels);
        }
        f2().f.setValue(this.N);
        f2().g.setValue(this.O);
        List<gn> list = this.N;
        if (list != null) {
            for (gn gnVar : list) {
                if (gnVar instanceof pl4) {
                    pl4 pl4Var = (pl4) gnVar;
                    pl4Var.c = new pn(this, pl4Var.c);
                }
            }
        }
        f2().f.setValue(this.N);
        List<gn> value = f2().f.getValue();
        if (value == null) {
            value = new ArrayList<>();
        }
        fn fnVar = new fn(value);
        T t2 = this.K;
        j32.c(t2);
        ((yi1) t2).N.setAdapter(fnVar);
    }

    @Override // com.shabakaty.downloader.vj
    public void q(int i) {
        j32.e(this, "this");
        vj.a.a(this, i);
    }
}
