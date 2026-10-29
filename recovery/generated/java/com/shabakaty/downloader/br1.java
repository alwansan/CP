package com.shabakaty.downloader;

import com.cinemana.pro.R;
import com.shabakaty.cinemana.domain.models.local.home_page.VideosGroup;

/* JADX INFO: compiled from: GroupsAdapter.kt */
/* JADX INFO: loaded from: classes.dex */
public final class br1 extends ej<VideosGroup, k42> {
    public final /* synthetic */ int d = 1;

    public br1(tf4 tf4Var) {
        super(w21.r, tf4Var);
    }

    @Override // com.shabakaty.downloader.ej, androidx.recyclerview.widget.RecyclerView.e
    public long getItemId(int i) {
        switch (this.d) {
            case 0:
                return i;
            default:
                return h(this.a.get(i), i);
        }
    }

    @Override // com.shabakaty.downloader.ej
    public int i(int i) {
        switch (this.d) {
            case 0:
                return R.layout.item_group;
            default:
                return R.layout.item_subscription;
        }
    }

    public br1(z25 z25Var) {
        super(w21.r, z25Var);
        setHasStableIds(true);
    }
}
