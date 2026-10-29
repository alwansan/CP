package com.shabakaty.downloader;

import com.cinemana.pro.R;
import com.shabakaty.cinemana.domain.models.local.VideoModel;

/* JADX INFO: compiled from: BaseVideosAdapter.kt */
/* JADX INFO: loaded from: classes.dex */
public final class yk extends ej<VideoModel, h42> {
    public yk(pk pkVar) {
        super(w21.r, pkVar);
        setHasStableIds(true);
    }

    @Override // com.shabakaty.downloader.ej, androidx.recyclerview.widget.RecyclerView.e
    public long getItemId(int i) {
        return i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.e
    public int getItemViewType(int i) {
        return R.layout.item_base_video_wide;
    }

    @Override // com.shabakaty.downloader.ej
    public int i(int i) {
        return R.layout.item_base_video_wide;
    }
}
