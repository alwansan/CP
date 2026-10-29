package com.shabakaty.cinemana.domain.mapper;

import com.shabakaty.cinemana.data.db.videostatus.VideoStatusEntity;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.q25;

/* JADX INFO: loaded from: classes.dex */
public class VideoStatusEntityMapperImpl implements VideoStatusEntityMapper {
    @Override // com.shabakaty.downloader.nj
    public VideoStatusEntity mapDtoToDomain(q25 q25Var) {
        VideoStatusEntity videoStatusEntity = new VideoStatusEntity(null, null, false, false, false, false, false, null, 0L, 511);
        if (q25Var != null) {
            videoStatusEntity.liked = q25Var.r;
            videoStatusEntity.watched = q25Var.s;
            videoStatusEntity.annoying = q25Var.t;
            videoStatusEntity.disLiked = q25Var.u;
            videoStatusEntity.favorite = q25Var.v;
            String str = q25Var.w;
            if (str != null) {
                j32.e(str, "<set-?>");
                videoStatusEntity.watchLater = str;
            }
            videoStatusEntity.videoProgress = q25Var.x;
        }
        return videoStatusEntity;
    }
}
