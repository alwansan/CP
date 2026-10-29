package com.shabakaty.downloader;

import androidx.navigation.fragment.DialogFragmentNavigator;

/* JADX INFO: compiled from: DialogFragmentNavigatorDestinationBuilder.kt */
/* JADX INFO: loaded from: classes.dex */
public final class dt0 extends zw2<DialogFragmentNavigator.a> {
    public final /* synthetic */ int g = 0;
    public final gc2<? extends ct0> h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dt0(DialogFragmentNavigator dialogFragmentNavigator, int i, gc2 gc2Var) {
        super(dialogFragmentNavigator, i);
        j32.f(gc2Var, "fragmentClass");
        this.h = gc2Var;
    }

    @Override // com.shabakaty.downloader.zw2
    public androidx.navigation.c c() {
        switch (this.g) {
            case 0:
                DialogFragmentNavigator.a aVar = (DialogFragmentNavigator.a) super.c();
                aVar.z = md0.s(this.h).getName();
                return aVar;
            default:
                androidx.navigation.fragment.a.C0029a c0029a = (androidx.navigation.fragment.a.C0029a) super.c();
                c0029a.z = md0.s(this.h).getName();
                return c0029a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dt0(androidx.navigation.fragment.a aVar, int i, gc2 gc2Var) {
        super(aVar, i);
        j32.f(gc2Var, "fragmentClass");
        this.h = gc2Var;
    }
}
