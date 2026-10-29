package com.shabakaty.downloader;

import android.os.Bundle;
import android.view.View;
import android.widget.CompoundButton;
import com.cinemana.pro.R;
import kotlin.Metadata;

/* JADX INFO: compiled from: FilterSettingsFragment.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00012\u00020\u0003B\u0007¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/shabakaty/downloader/fb1;", "Lcom/shabakaty/downloader/hj;", "Lcom/shabakaty/downloader/mj1;", "Lcom/shabakaty/downloader/gb1;", "Lcom/shabakaty/downloader/kb1;", "<init>", "()V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final class fb1 extends hj<mj1, gb1, kb1> implements gb1 {
    public static final /* synthetic */ int x = 0;

    public fb1() {
        super(R.layout.fragment_filter_settings);
    }

    @Override // com.shabakaty.downloader.hj
    public vj Z1() {
        return this;
    }

    @Override // com.shabakaty.downloader.hj
    public Class<kb1> d2() {
        return kb1.class;
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
        T t = this.t;
        j32.c(t);
        final int i = 0;
        ((mj1) t).O.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(this) { // from class: com.shabakaty.downloader.eb1
            public final /* synthetic */ fb1 b;

            {
                this.b = this;
            }

            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                switch (i) {
                    case 0:
                        fb1 fb1Var = this.b;
                        int i2 = fb1.x;
                        j32.e(fb1Var, "this$0");
                        kb1 kb1VarC2 = fb1Var.c2();
                        kb1VarC2.h(new ib1(z, kb1VarC2, null));
                        break;
                    default:
                        fb1 fb1Var2 = this.b;
                        int i3 = fb1.x;
                        j32.e(fb1Var2, "this$0");
                        kb1 kb1VarC3 = fb1Var2.c2();
                        kb1VarC3.h(new jb1(kb1VarC3, z, null));
                        break;
                }
            }
        });
        T t2 = this.t;
        j32.c(t2);
        final int i2 = 1;
        ((mj1) t2).M.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(this) { // from class: com.shabakaty.downloader.eb1
            public final /* synthetic */ fb1 b;

            {
                this.b = this;
            }

            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                switch (i2) {
                    case 0:
                        fb1 fb1Var = this.b;
                        int i3 = fb1.x;
                        j32.e(fb1Var, "this$0");
                        kb1 kb1VarC2 = fb1Var.c2();
                        kb1VarC2.h(new ib1(z, kb1VarC2, null));
                        break;
                    default:
                        fb1 fb1Var2 = this.b;
                        int i4 = fb1.x;
                        j32.e(fb1Var2, "this$0");
                        kb1 kb1VarC3 = fb1Var2.c2();
                        kb1VarC3.h(new jb1(kb1VarC3, z, null));
                        break;
                }
            }
        });
    }

    @Override // com.shabakaty.downloader.vj
    public void q(int i) {
        j32.e(this, "this");
        vj.a.a(this, i);
    }
}
