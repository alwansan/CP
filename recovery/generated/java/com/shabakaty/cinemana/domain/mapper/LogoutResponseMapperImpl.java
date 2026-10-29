package com.shabakaty.cinemana.domain.mapper;

import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.cinemana.domain.models.local.user.LogoutResponse;
import com.shabakaty.cinemana.domain.models.remote.user.LogoutResponseApi;

/* JADX INFO: loaded from: classes.dex */
public class LogoutResponseMapperImpl implements LogoutResponseMapper {
    @Override // com.shabakaty.downloader.nj
    public LogoutResponse mapDtoToDomain(LogoutResponseApi logoutResponseApi) {
        LogoutResponse logoutResponse = new LogoutResponse(BuildConfig.FLAVOR, BuildConfig.FLAVOR, BuildConfig.FLAVOR);
        if (logoutResponseApi != null) {
            String str = logoutResponseApi.status;
            if (str != null) {
                logoutResponse.status = str;
            }
            String str2 = logoutResponseApi.likeNumber;
            if (str2 != null) {
                logoutResponse.likeNumber = str2;
            }
            String str3 = logoutResponseApi.dislikeNumber;
            if (str3 != null) {
                logoutResponse.dislikeNumber = str3;
            }
        }
        return logoutResponse;
    }
}
