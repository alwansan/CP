package com.shabakaty.downloader;

import android.view.LayoutInflater;
import com.cinemana.pro.R;
import com.shabakaty.cinemana.ui.home_fragment.WideVerticalVideosView;

/* JADX INFO: compiled from: WideVerticalVideosView.kt */
/* JADX INFO: loaded from: classes.dex */
public final class l65 extends af2 implements rm1<i65> {
    public final /* synthetic */ WideVerticalVideosView r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l65(WideVerticalVideosView wideVerticalVideosView) {
        super(0);
        this.r = wideVerticalVideosView;
    }

    @Override // com.shabakaty.downloader.rm1
    public i65 invoke() {
        WideVerticalVideosView wideVerticalVideosView = this.r;
        int i = WideVerticalVideosView.S;
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(wideVerticalVideosView.getContext());
        j32.d(layoutInflaterFrom, "from(context)");
        return (i65) vd5.m(layoutInflaterFrom, R.layout.wide_vertical_videos_layout, wideVerticalVideosView, true);
    }
}
