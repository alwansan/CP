package com.shabakaty.downloader;

import com.shabakaty.cinemana.ui.home_fragment.FranchisesRecyclerView;
import java.util.List;
import kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class em1 implements r53 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ em1(by0 by0Var) {
        this.a = 3;
        this.b = by0Var;
    }

    public /* synthetic */ em1(tm1 tm1Var, int i) {
        this.a = i;
        if (i != 1) {
            this.b = tm1Var;
        } else {
            this.b = tm1Var;
        }
    }

    @Override // com.shabakaty.downloader.r53
    public final void onChanged(Object obj) {
        switch (this.a) {
            case 0:
                tm1 tm1Var = (tm1) this.b;
                KProperty<Object>[] kPropertyArr = FranchisesRecyclerView.d1;
                j32.e(tm1Var, "$tmp0");
                tm1Var.invoke((tj) obj);
                break;
            case 1:
                tm1 tm1Var2 = (tm1) this.b;
                KProperty<Object>[] kPropertyArr2 = FranchisesRecyclerView.d1;
                j32.e(tm1Var2, "$tmp0");
                tm1Var2.invoke((tj) obj);
                break;
            case 2:
                tm1 tm1Var3 = (tm1) this.b;
                KProperty<Object>[] kPropertyArr3 = FranchisesRecyclerView.d1;
                j32.e(tm1Var3, "$tmp0");
                tm1Var3.invoke((tj) obj);
                break;
            default:
                by0 by0Var = (by0) this.b;
                j32.e(by0Var, "this$0");
                ((l92) nh3.y(by0Var.e(), null, 0, new yx0((List) obj, by0Var, null), 3, null)).x(false, true, new zx0(by0Var));
                break;
        }
    }
}
