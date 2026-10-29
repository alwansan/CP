package com.shabakaty.downloader;

import java.util.ArrayList;
import java.util.Objects;

/* JADX INFO: compiled from: PlayerBottomSheetController.kt */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class hd3 extends co1 implements rm1<on.a> {
    public hd3(Object obj) {
        super(0, obj, ed3.class, "showPlaybackSpeedBottomList", "showPlaybackSpeedBottomList()Lcom/shabakaty/cinemana/utils/bottom_sheet_list/BottomSheetList$Builder;", 0);
    }

    @Override // com.shabakaty.downloader.rm1
    public on.a invoke() {
        ed3 ed3Var = (ed3) this.receiver;
        Objects.requireNonNull(ed3Var);
        ArrayList<gn> arrayList = new ArrayList<>();
        ed3Var.c(arrayList, 0.25f);
        ed3Var.c(arrayList, 0.5f);
        ed3Var.c(arrayList, 0.75f);
        ed3Var.c(arrayList, 1.0f);
        ed3Var.c(arrayList, 1.25f);
        ed3Var.c(arrayList, 1.75f);
        ed3Var.c(arrayList, 2.0f);
        on.a aVar = new on.a();
        aVar.a(arrayList);
        return aVar;
    }
}
