package com.shabakaty.cinemana.domain.mapper;

import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.cinemana.domain.models.local.home_page.VideosGroup;
import com.shabakaty.cinemana.domain.models.remote.VideoModelApi;
import com.shabakaty.cinemana.domain.models.remote.home_page.VideosGroupApi;
import com.shabakaty.downloader.ll3;
import com.shabakaty.downloader.w21;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class VideosGroupMapperImpl implements VideosGroupMapper {
    private final VideoModelMapper videoModelMapper = (VideoModelMapper) ll3.f(VideoModelMapper.class);

    @Override // com.shabakaty.downloader.nj
    public VideosGroup mapDtoToDomain(VideosGroupApi videosGroupApi) {
        ArrayList arrayList;
        VideosGroup videosGroup = new VideosGroup(w21.r, BuildConfig.FLAVOR, BuildConfig.FLAVOR, 0);
        if (videosGroupApi != null) {
            List<VideoModelApi> list = videosGroupApi.videosList;
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
            videosGroup.videosList = arrayList;
            String str = videosGroupApi.title;
            if (str != null) {
                videosGroup.title = str;
            }
            String str2 = videosGroupApi.groupsID;
            if (str2 != null) {
                videosGroup.groupsID = str2;
            }
            videosGroup.hasPagination = videosGroupApi.hasPagination;
        }
        return videosGroup;
    }
}
