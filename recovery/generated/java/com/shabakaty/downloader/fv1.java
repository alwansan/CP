package com.shabakaty.downloader;

import android.view.LayoutInflater;
import com.cinemana.pro.R;
import com.shabakaty.cinemana.ui.home_fragment.HorizontalScrollVideosView;

/* JADX INFO: compiled from: HorizontalScrollVideosView.kt */
/* JADX INFO: loaded from: classes.dex */
public final class fv1 extends af2 implements rm1<cv1> {
    public final /* synthetic */ HorizontalScrollVideosView r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fv1(HorizontalScrollVideosView horizontalScrollVideosView) {
        super(0);
        this.r = horizontalScrollVideosView;
    }

    @Override // com.shabakaty.downloader.rm1
    public cv1 invoke() {
        HorizontalScrollVideosView horizontalScrollVideosView = this.r;
        int i = HorizontalScrollVideosView.T;
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(horizontalScrollVideosView.getContext());
        j32.d(layoutInflaterFrom, "from(context)");
        return (cv1) vd5.m(layoutInflaterFrom, R.layout.horizontal_scroll_videos_layout, horizontalScrollVideosView, true);
    }
}
