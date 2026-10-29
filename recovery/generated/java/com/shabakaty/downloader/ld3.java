package com.shabakaty.downloader;

import java.util.ArrayList;
import java.util.Objects;

/* JADX INFO: compiled from: PlayerBottomSheetController.kt */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ld3 extends co1 implements rm1<on.a> {
    public ld3(Object obj) {
        super(0, obj, ed3.class, "showSeekPeriodBottomList", "showSeekPeriodBottomList()Lcom/shabakaty/cinemana/utils/bottom_sheet_list/BottomSheetList$Builder;", 0);
    }

    @Override // com.shabakaty.downloader.rm1
    public on.a invoke() {
        ed3 ed3Var = (ed3) this.receiver;
        Objects.requireNonNull(ed3Var);
        ArrayList<gn> arrayList = new ArrayList<>();
        ed3Var.e(arrayList, 2);
        ed3Var.e(arrayList, 3);
        ed3Var.e(arrayList, 5);
        ed3Var.e(arrayList, 10);
        ed3Var.e(arrayList, 15);
        ed3Var.e(arrayList, 20);
        ed3Var.e(arrayList, 25);
        ed3Var.e(arrayList, 30);
        ed3Var.e(arrayList, 45);
        ed3Var.e(arrayList, 60);
        on.a aVar = new on.a();
        aVar.a(arrayList);
        return aVar;
    }
}
