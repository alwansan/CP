package com.shabakaty.cinemana.domain.mapper;

import com.shabakaty.cinemana.data.db.videostatus.VideoStatusEntity;
import com.shabakaty.downloader.q25;

/* JADX INFO: loaded from: classes.dex */
public class VideoStatusMapperFromEntityImpl implements VideoStatusMapperFromEntity {
    @Override // com.shabakaty.downloader.nj
    public q25 mapDtoToDomain(VideoStatusEntity videoStatusEntity) {
        q25 q25Var = new q25();
        if (videoStatusEntity != null) {
            q25Var.r = videoStatusEntity.liked;
            q25Var.s = videoStatusEntity.watched;
            q25Var.t = videoStatusEntity.annoying;
            q25Var.u = videoStatusEntity.disLiked;
            q25Var.v = videoStatusEntity.favorite;
            String str = videoStatusEntity.watchLater;
            if (str != null) {
                q25Var.a(str);
            }
            q25Var.x = videoStatusEntity.videoProgress;
        }
        return q25Var;
    }
}
