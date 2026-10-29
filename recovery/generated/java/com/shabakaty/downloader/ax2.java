package com.shabakaty.downloader;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: NavGraphBuilder.kt */
/* JADX INFO: loaded from: classes.dex */
public class ax2 extends zw2<androidx.navigation.d> {
    public final List<androidx.navigation.c> g;
    public final androidx.navigation.i h;
    public int i;

    public ax2(androidx.navigation.i iVar, int i, int i2) {
        super(iVar.c(androidx.navigation.e.class), i);
        this.h = iVar;
        this.i = i2;
        this.g = new ArrayList();
    }

    @Override // com.shabakaty.downloader.zw2
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public androidx.navigation.d c() {
        androidx.navigation.d dVar = (androidx.navigation.d) super.c();
        for (androidx.navigation.c cVar : this.g) {
            if (cVar != null) {
                dVar.q(cVar);
            }
        }
        int i = this.i;
        if (i == 0) {
            throw new IllegalStateException("You must set a startDestination");
        }
        dVar.y(i);
        return dVar;
    }

    public final <D extends androidx.navigation.c> void e(zw2<? extends D> zw2Var) {
        this.g.add(zw2Var.c());
    }
}
