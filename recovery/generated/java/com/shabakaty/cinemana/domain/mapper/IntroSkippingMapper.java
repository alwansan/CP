package com.shabakaty.cinemana.domain.mapper;

import com.shabakaty.cinemana.domain.models.remote.VideoModelApi;
import com.shabakaty.downloader.nj;
import com.shabakaty.downloader.o84;
import kotlin.Metadata;

/* JADX INFO: compiled from: VideoModelMapper.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bg\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001¨\u0006\u0004"}, d2 = {"Lcom/shabakaty/cinemana/domain/mapper/IntroSkippingMapper;", "Lcom/shabakaty/downloader/nj;", "Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$IntroSkippingApi;", "Lcom/shabakaty/downloader/o84;", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public interface IntroSkippingMapper extends nj<VideoModelApi.IntroSkippingApi, o84> {
    o84 mapDtoToDomain(VideoModelApi.IntroSkippingApi introSkippingApi);
}
