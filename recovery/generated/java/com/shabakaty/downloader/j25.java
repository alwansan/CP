package com.shabakaty.downloader;

import com.shabakaty.cinemana.player.VideoPlayerActivity;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class j25 implements xc0 {
    public final /* synthetic */ int r;
    public final /* synthetic */ VideoPlayerActivity s;

    public /* synthetic */ j25(VideoPlayerActivity videoPlayerActivity, int i) {
        this.r = i;
        this.s = videoPlayerActivity;
    }

    @Override // com.shabakaty.downloader.xc0
    public final void accept(Object obj) {
        switch (this.r) {
            case 0:
                VideoPlayerActivity videoPlayerActivity = this.s;
                int i = VideoPlayerActivity.A;
                j32.e(videoPlayerActivity, "this$0");
                videoPlayerActivity.Y1();
                break;
            default:
                VideoPlayerActivity videoPlayerActivity2 = this.s;
                int i2 = VideoPlayerActivity.A;
                j32.e(videoPlayerActivity2, "this$0");
                videoPlayerActivity2.Y1();
                break;
        }
    }
}
