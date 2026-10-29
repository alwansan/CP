package com.shabakaty.downloader;

import com.shabakaty.cinemana.domain.models.local.VideoModel;
import com.shabakaty.cinemana.ui.home_fragment.HorizontalScrollVideosView;
import java.util.List;

/* JADX INFO: compiled from: HorizontalScrollVideosView.kt */
/* JADX INFO: loaded from: classes.dex */
public final class ev1 extends af2 implements rm1<jj> {
    public final /* synthetic */ HorizontalScrollVideosView r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ev1(HorizontalScrollVideosView horizontalScrollVideosView) {
        super(0);
        this.r = horizontalScrollVideosView;
    }

    @Override // com.shabakaty.downloader.rm1
    public jj invoke() {
        List<VideoModel> videos = this.r.getVideos();
        if (videos == null) {
            videos = w21.r;
        }
        return new jj(videos, this.r);
    }
}
