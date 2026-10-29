package com.shabakaty.downloader;

import com.cinemana.pro.R;
import com.shabakaty.cinemana.ca1.Continue106;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import java.util.List;

/* JADX INFO: compiled from: BaseVideosAdapter.kt */
/* JADX INFO: loaded from: classes.dex */
public final class jj extends ej<VideoModel, f42> {
    public jj(List<VideoModel> list, pk pkVar) {
        super(list, pkVar);
        setHasStableIds(true);
    }

    @Override // com.shabakaty.downloader.ej, androidx.recyclerview.widget.RecyclerView.e
    public long getItemId(int i) {
        return Continue106.itemId(this, i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.e
    public int getItemViewType(int i) {
        return R.layout.item_base_video_horizontal;
    }

    @Override // com.shabakaty.downloader.ej
    public int i(int i) {
        return R.layout.item_base_video_horizontal;
    }
}
