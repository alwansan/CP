package com.shabakaty.downloader;

import com.shabakaty.cinemana.player.CinemanaPlayerControllerView;

/* JADX INFO: compiled from: CinemanaPlayerControllerView.kt */
/* JADX INFO: loaded from: classes.dex */
public final class w00 extends af2 implements rm1<s64> {
    public final /* synthetic */ CinemanaPlayerControllerView r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w00(CinemanaPlayerControllerView cinemanaPlayerControllerView) {
        super(0);
        this.r = cinemanaPlayerControllerView;
    }

    @Override // com.shabakaty.downloader.rm1
    public s64 invoke() {
        return this.r.getViewModel().k;
    }
}
