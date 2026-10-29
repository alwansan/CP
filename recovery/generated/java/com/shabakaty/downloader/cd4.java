package com.shabakaty.downloader;

import android.content.Context;
import android.view.LayoutInflater;
import com.cinemana.pro.R;
import com.shabakaty.cinemana.utils.StatusView;

/* JADX INFO: compiled from: StatusView.kt */
/* JADX INFO: loaded from: classes.dex */
public final class cd4 extends af2 implements rm1<dd4> {
    public final /* synthetic */ Context r;
    public final /* synthetic */ StatusView s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cd4(Context context, StatusView statusView) {
        super(0);
        this.r = context;
        this.s = statusView;
    }

    @Override // com.shabakaty.downloader.rm1
    public dd4 invoke() {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.r);
        j32.d(layoutInflaterFrom, "from(context)");
        return (dd4) vd5.m(layoutInflaterFrom, R.layout.status_view_layout, this.s, true);
    }
}
