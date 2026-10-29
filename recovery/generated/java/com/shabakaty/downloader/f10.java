package com.shabakaty.downloader;

import android.content.Context;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import com.shabakaty.cinemana.player.CinemanaPlayerView;

/* JADX INFO: compiled from: CinemanaPlayerView.kt */
/* JADX INFO: loaded from: classes.dex */
public final class f10 extends af2 implements rm1<wc3> {
    public final /* synthetic */ CinemanaPlayerView r;
    public final /* synthetic */ Context s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f10(CinemanaPlayerView cinemanaPlayerView, Context context) {
        super(0);
        this.r = cinemanaPlayerView;
        this.s = context;
    }

    @Override // com.shabakaty.downloader.rm1
    public wc3 invoke() {
        s64 player = this.r.getPlayer();
        VideoModel videoModel = this.r.getVideoModel();
        Context applicationContext = this.s.getApplicationContext();
        j32.d(applicationContext, "context.applicationContext");
        return new wc3(player, videoModel, applicationContext);
    }
}
