package com.shabakaty.downloader;

import com.cinemana.pro.R;
import java.util.ArrayList;
import java.util.Objects;

/* JADX INFO: compiled from: PlayerBottomSheetController.kt */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class kd3 extends co1 implements rm1<on.a> {
    public kd3(Object obj) {
        super(0, obj, ed3.class, "showScale", "showScale()Lcom/shabakaty/cinemana/utils/bottom_sheet_list/BottomSheetList$Builder;", 0);
    }

    @Override // com.shabakaty.downloader.rm1
    public on.a invoke() {
        ed3 ed3Var = (ed3) this.receiver;
        Objects.requireNonNull(ed3Var);
        ArrayList<gn> arrayList = new ArrayList<>();
        ed3Var.d(arrayList, R.string.fit, 0);
        ed3Var.d(arrayList, R.string.zoom, 4);
        on.a aVar = new on.a();
        aVar.a(arrayList);
        return aVar;
    }
}
