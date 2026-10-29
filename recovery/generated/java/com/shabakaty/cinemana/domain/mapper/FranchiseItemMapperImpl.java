package com.shabakaty.cinemana.domain.mapper;

import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.cinemana.domain.models.local.home_page.FranchiseItem;
import com.shabakaty.cinemana.domain.models.remote.VideoModelApi;
import com.shabakaty.cinemana.domain.models.remote.home_page.CollectionItemApi;
import com.shabakaty.downloader.ll3;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class FranchiseItemMapperImpl implements FranchiseItemMapper {
    private final VideoModelMapper videoModelMapper = (VideoModelMapper) ll3.f(VideoModelMapper.class);

    @Override // com.shabakaty.downloader.nj
    public FranchiseItem mapDtoToDomain(CollectionItemApi collectionItemApi) {
        ArrayList arrayList;
        FranchiseItem franchiseItem = new FranchiseItem(new ArrayList(), BuildConfig.FLAVOR, BuildConfig.FLAVOR, BuildConfig.FLAVOR, BuildConfig.FLAVOR, BuildConfig.FLAVOR, BuildConfig.FLAVOR, BuildConfig.FLAVOR);
        if (collectionItemApi != null) {
            List<VideoModelApi> list = collectionItemApi.content;
            if (list == null) {
                arrayList = new ArrayList();
            } else {
                ArrayList arrayList2 = new ArrayList(list.size());
                Iterator<VideoModelApi> it = list.iterator();
                while (it.hasNext()) {
                    arrayList2.add(this.videoModelMapper.mapDtoToDomain(it.next()));
                }
                arrayList = arrayList2;
            }
            franchiseItem.content = arrayList;
            String str = collectionItemApi.groupsID;
            if (str != null) {
                franchiseItem.groupsID = str;
            }
            String str2 = collectionItemApi.imgMediumThumbObjUrl;
            if (str2 != null) {
                franchiseItem.imgMediumThumbObjUrl = str2;
            }
            String str3 = collectionItemApi.imgObjUrl;
            if (str3 != null) {
                franchiseItem.imgObjUrl = str3;
            }
            String str4 = collectionItemApi.imgThumbObjUrl;
            if (str4 != null) {
                franchiseItem.imgThumbObjUrl = str4;
            }
            String str5 = collectionItemApi.title;
            if (str5 != null) {
                franchiseItem.title = str5;
            }
            String str6 = collectionItemApi.displayName;
            if (str6 != null) {
                franchiseItem.displayName = str6;
            }
            String str7 = collectionItemApi.id;
            if (str7 != null) {
                franchiseItem.id = str7;
            }
        }
        return franchiseItem;
    }
}
