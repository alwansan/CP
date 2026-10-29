package com.shabakaty.cinemana.domain.mapper;

import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.cinemana.domain.models.local.TranscodeFile;
import com.shabakaty.cinemana.domain.models.remote.TranscodeFileApi;

/* JADX INFO: loaded from: classes.dex */
public class TranscodeFileMapperImpl implements TranscodeFileMapper {
    @Override // com.shabakaty.downloader.nj
    public TranscodeFile mapDtoToDomain(TranscodeFileApi transcodeFileApi) {
        TranscodeFile transcodeFile = new TranscodeFile(BuildConfig.FLAVOR, "240p", BuildConfig.FLAVOR, BuildConfig.FLAVOR, BuildConfig.FLAVOR);
        if (transcodeFileApi != null) {
            String str = transcodeFileApi.name;
            if (str != null) {
                transcodeFile.name = str;
            }
            String str2 = transcodeFileApi.resolution;
            if (str2 != null) {
                transcodeFile.resolution = str2;
            }
            String str3 = transcodeFileApi.container;
            if (str3 != null) {
                transcodeFile.container = str3;
            }
            String str4 = transcodeFileApi.transcoddedFileName;
            if (str4 != null) {
                transcodeFile.transcoddedFileName = str4;
            }
            String str5 = transcodeFileApi.videoUrl;
            if (str5 != null) {
                transcodeFile.videoUrl = str5;
            }
        }
        return transcodeFile;
    }
}
