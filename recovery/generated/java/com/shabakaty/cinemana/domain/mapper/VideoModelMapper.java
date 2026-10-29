package com.shabakaty.cinemana.domain.mapper;

import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import com.shabakaty.cinemana.domain.models.remote.VideoModelApi;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.ne4;
import com.shabakaty.downloader.vd5;
import kotlin.Metadata;

/* JADX INFO: compiled from: VideoModelMapper.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b'\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H'J\u001a\u0010\t\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00020\u00022\b\b\u0001\u0010\u0007\u001a\u00020\u0004H\u0007¨\u0006\f"}, d2 = {"Lcom/shabakaty/cinemana/domain/mapper/VideoModelMapper;", BuildConfig.FLAVOR, "Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;", "dto", "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;", "mapDtoToDomain", "source", "target", "Lcom/shabakaty/downloader/qv4;", "updateVideoModelRoot", "<init>", "()V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public abstract class VideoModelMapper {
    public abstract VideoModel mapDtoToDomain(VideoModelApi dto);

    public final void updateVideoModelRoot(VideoModelApi videoModelApi, VideoModel videoModel) {
        j32.e(videoModelApi, "source");
        j32.e(videoModel, "target");
        if (j32.a(videoModelApi.kind, "2")) {
            if (j32.a(videoModelApi.rootSeries, "0")) {
                videoModel.o(videoModelApi.nb);
            }
            videoModel.downloadCollectionID = vd5.B(videoModel.rootSeries);
        }
        if (ne4.D(videoModelApi.arTitle)) {
            String str = videoModelApi.enTitle;
            j32.e(str, "<set-?>");
            videoModel.arTitle = str;
        }
    }
}
