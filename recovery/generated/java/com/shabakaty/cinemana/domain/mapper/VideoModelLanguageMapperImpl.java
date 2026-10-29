package com.shabakaty.cinemana.domain.mapper;

import com.shabakaty.cinemana.domain.models.local.VideoLanguages;
import com.shabakaty.cinemana.domain.models.remote.VideoModelApi;

/* JADX INFO: loaded from: classes.dex */
public class VideoModelLanguageMapperImpl implements VideoModelLanguageMapper {
    @Override // com.shabakaty.downloader.nj
    public VideoLanguages mapDtoToDomain(VideoModelApi.VideoLanguagesApi videoLanguagesApi) {
        VideoLanguages videoLanguages = new VideoLanguages(null, null, 3);
        if (videoLanguagesApi != null) {
            String str = videoLanguagesApi.enTitle;
            if (str != null) {
                videoLanguages.enTitle = str;
            }
            String str2 = videoLanguagesApi.arTitle;
            if (str2 != null) {
                videoLanguages.arTitle = str2;
            }
        }
        return videoLanguages;
    }
}
