package com.shabakaty.downloader;

import androidx.lifecycle.LiveData;
import com.shabakaty.cinemana.data.db.search.SearchItem;
import java.util.List;

/* JADX INFO: compiled from: SearchDao.kt */
/* JADX INFO: loaded from: classes.dex */
public interface vy3 extends cj<SearchItem> {
    void G();

    void m(SearchItem searchItem);

    LiveData<List<SearchItem>> s();
}
