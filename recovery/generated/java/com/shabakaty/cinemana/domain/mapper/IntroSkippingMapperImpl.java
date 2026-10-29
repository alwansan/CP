package com.shabakaty.cinemana.domain.mapper;

import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.cinemana.domain.models.remote.VideoModelApi;
import com.shabakaty.downloader.o84;

/* JADX INFO: loaded from: classes.dex */
public class IntroSkippingMapperImpl implements IntroSkippingMapper {
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.shabakaty.downloader.nj
    public o84 mapDtoToDomain(VideoModelApi.IntroSkippingApi introSkippingApi) {
        o84 o84Var = new o84(0L, 0L, BuildConfig.FLAVOR);
        if (introSkippingApi != null) {
            String str = introSkippingApi.start;
            if (str != null) {
                o84Var.r = (long) (Double.parseDouble(str) * 1000);
            }
            String str2 = introSkippingApi.end;
            if (str2 != null) {
                o84Var.s = (long) (Double.parseDouble(str2) * 1000);
            }
            String str3 = introSkippingApi.controlLevel;
            if (str3 != null) {
                o84Var.t = str3;
            }
        }
        return o84Var;
    }
}
