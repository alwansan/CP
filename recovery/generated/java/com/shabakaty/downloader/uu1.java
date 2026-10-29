package com.shabakaty.downloader;

import com.cinemana.pro.R;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import java.util.List;

/* JADX INFO: compiled from: HomeSliderAdapter.kt */
/* JADX INFO: loaded from: classes.dex */
public final class uu1 extends ej<VideoModel, h42> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public uu1(List<VideoModel> list, v84 v84Var) {
        super(list, v84Var);
        j32.e(v84Var, "listener");
    }

    @Override // com.shabakaty.downloader.ej
    public int i(int i) {
        return R.layout.item_slider;
    }
}
