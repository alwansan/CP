package com.shabakaty.downloader;

import com.shabakaty.cinemana.ui.home_fragment.WideVerticalVideosView;

/* JADX INFO: compiled from: WideVerticalVideosView.kt */
/* JADX INFO: loaded from: classes.dex */
public final class k65 extends af2 implements rm1<yk> {
    public final /* synthetic */ WideVerticalVideosView r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k65(WideVerticalVideosView wideVerticalVideosView) {
        super(0);
        this.r = wideVerticalVideosView;
    }

    @Override // com.shabakaty.downloader.rm1
    public yk invoke() {
        return new yk(this.r);
    }
}
