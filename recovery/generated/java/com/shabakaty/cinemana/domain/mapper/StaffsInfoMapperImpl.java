package com.shabakaty.cinemana.domain.mapper;

import com.shabakaty.cinemana.domain.models.remote.VideoModelApi;
import com.shabakaty.downloader.ob4;

/* JADX INFO: loaded from: classes.dex */
public class StaffsInfoMapperImpl implements StaffsInfoMapper {
    @Override // com.shabakaty.downloader.nj
    public ob4 mapDtoToDomain(VideoModelApi.StaffsInfoApi staffsInfoApi) {
        ob4 ob4Var = new ob4(null, null, null, null, null, null, 63);
        if (staffsInfoApi != null) {
            String str = staffsInfoApi.nb;
            if (str != null) {
                ob4Var.r = str;
            }
            String str2 = staffsInfoApi.name;
            if (str2 != null) {
                ob4Var.s = str2;
            }
            String str3 = staffsInfoApi.role;
            if (str3 != null) {
                ob4Var.t = str3;
            }
            String str4 = staffsInfoApi.staffImg;
            if (str4 != null) {
                ob4Var.u = str4;
            }
            String str5 = staffsInfoApi.staffImgThumb;
            if (str5 != null) {
                ob4Var.v = str5;
            }
            String str6 = staffsInfoApi.staffImgMediumThumb;
            if (str6 != null) {
                ob4Var.w = str6;
            }
        }
        return ob4Var;
    }
}
