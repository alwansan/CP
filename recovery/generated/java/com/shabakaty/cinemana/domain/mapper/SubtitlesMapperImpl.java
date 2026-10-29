package com.shabakaty.cinemana.domain.mapper;

import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.cinemana.domain.models.local.Subtitle;
import com.shabakaty.cinemana.domain.models.remote.VideoModelApi;
import com.shabakaty.downloader.j32;

/* JADX INFO: loaded from: classes.dex */
public class SubtitlesMapperImpl implements SubtitlesMapper {
    @Override // com.shabakaty.downloader.nj
    public Subtitle mapDtoToDomain(VideoModelApi.a aVar) {
        Subtitle subtitle = new Subtitle("0", BuildConfig.FLAVOR, BuildConfig.FLAVOR, BuildConfig.FLAVOR, BuildConfig.FLAVOR);
        if (aVar != null) {
            String strValueOf = String.valueOf(aVar.a);
            j32.e(strValueOf, "<set-?>");
            subtitle.id = strValueOf;
            String str = aVar.b;
            if (str != null) {
                subtitle.name = str;
            }
            String str2 = aVar.c;
            if (str2 != null) {
                subtitle.type = str2;
            }
            String str3 = aVar.d;
            if (str3 != null) {
                subtitle.extention = str3;
            }
            String str4 = aVar.e;
            if (str4 != null) {
                subtitle.file = str4;
            }
        }
        return subtitle;
    }
}
