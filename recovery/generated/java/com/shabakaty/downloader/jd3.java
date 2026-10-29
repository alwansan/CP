package com.shabakaty.downloader;

import com.shabakaty.cinemana.domain.models.local.Quality;
import java.util.ArrayList;
import java.util.Objects;

/* JADX INFO: compiled from: PlayerBottomSheetController.kt */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class jd3 extends co1 implements rm1<on.a> {
    public jd3(Object obj) {
        super(0, obj, ed3.class, "showQualities", "showQualities()Lcom/shabakaty/cinemana/utils/bottom_sheet_list/BottomSheetList$Builder;", 0);
    }

    @Override // com.shabakaty.downloader.rm1
    public on.a invoke() {
        ed3 ed3Var = (ed3) this.receiver;
        Objects.requireNonNull(ed3Var);
        ArrayList arrayList = new ArrayList();
        for (Quality quality : ed3Var.a.qualities) {
            pl4 pl4Var = new pl4(null, null, null, null, false, 31);
            pl4Var.a(quality.resolution);
            pl4Var.c = new id3(ed3Var, quality);
            pl4Var.e = false;
            arrayList.add(pl4Var);
        }
        on.a aVar = new on.a();
        aVar.a(arrayList);
        return aVar;
    }
}
