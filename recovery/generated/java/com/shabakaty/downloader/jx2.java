package com.shabakaty.downloader;

import androidx.navigation.fragment.NavHostFragment;

/* JADX INFO: compiled from: NavigationActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class jx2 extends af2 implements tm1<cx2, qv4> {
    public final /* synthetic */ androidx.navigation.g r;
    public final /* synthetic */ NavHostFragment s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public jx2(androidx.navigation.g gVar, NavHostFragment navHostFragment) {
        super(1);
        this.r = gVar;
        this.s = navHostFragment;
    }

    @Override // com.shabakaty.downloader.tm1
    public qv4 invoke(cx2 cx2Var) {
        int iIntValue;
        cx2 cx2Var2 = cx2Var;
        j32.e(cx2Var2, "$this$navOptions");
        androidx.navigation.g gVar = this.r;
        Boolean boolValueOf = gVar == null ? null : Boolean.valueOf(gVar.a);
        cx2Var2.b = boolValueOf == null ? cx2Var2.b : boolValueOf.booleanValue();
        androidx.navigation.c cVarE = fl3.o(this.s).e();
        Integer numValueOf = cVarE == null ? null : Integer.valueOf(cVarE.t);
        if (numValueOf == null) {
            androidx.navigation.g gVar2 = this.r;
            Integer numValueOf2 = gVar2 != null ? Integer.valueOf(gVar2.b) : null;
            iIntValue = numValueOf2 == null ? cx2Var2.c : numValueOf2.intValue();
        } else {
            iIntValue = numValueOf.intValue();
        }
        cx2Var2.b(iIntValue);
        cx2Var2.a(new ix2(this.r));
        return qv4.a;
    }
}
