package com.shabakaty.downloader;

import com.cinemana.pro.R;
import com.liulishuo.filedownloader.BuildConfig;
import java.util.ArrayList;
import java.util.Objects;

/* JADX INFO: compiled from: PlayerBottomSheetController.kt */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class nd3 extends co1 implements rm1<on.a> {
    public nd3(Object obj) {
        super(0, obj, ed3.class, "showSubtitleBottomList", "showSubtitleBottomList()Lcom/shabakaty/cinemana/utils/bottom_sheet_list/BottomSheetList$Builder;", 0);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x005c  */
    @Override // com.shabakaty.downloader.rm1
    public on.a invoke() {
        String string;
        hg4 hg4VarP;
        ed3 ed3Var = (ed3) this.receiver;
        Objects.requireNonNull(ed3Var);
        ArrayList<gn> arrayList = new ArrayList<>();
        md3 md3Var = new md3(ed3Var);
        q10 q10Var = ed3Var.c;
        boolean zO = q10Var == null ? true : q10Var.o();
        String string2 = ed3Var.b.getString(R.string.show_subtitles);
        j32.d(string2, "context.getString(R.string.show_subtitles)");
        arrayList.add(new aj4(md3Var, zO, string2, -1));
        ed3Var.b(arrayList, R.string.txt_language, ed3Var.f(), R.drawable.ic_translate, new rd3(ed3Var));
        q10 q10Var2 = ed3Var.c;
        if (q10Var2 == null || (hg4VarP = q10Var2.p()) == null) {
            string = BuildConfig.FLAVOR;
        } else {
            string = ed3Var.b.getString(hg4VarP.b);
            if (string == null) {
                string = BuildConfig.FLAVOR;
            }
        }
        ed3Var.b(arrayList, R.string.font_size, string, R.drawable.ic_font_size, new fd3(ed3Var));
        pl4 pl4Var = new pl4();
        String string3 = ed3Var.b.getString(R.string.change_other_subtitles_settings_txt);
        j32.d(string3, "context.getString(R.string.change_other_subtitles_settings_txt)");
        pl4Var.a(string3);
        pl4Var.c = new SubtitleSettingsPlayerClick((ed3) this.receiver);
        arrayList.add(pl4Var);
        on.a aVar = new on.a();
        aVar.a(arrayList);
        return aVar;
    }
}
