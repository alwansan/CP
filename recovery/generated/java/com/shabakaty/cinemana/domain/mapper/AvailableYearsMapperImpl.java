package com.shabakaty.cinemana.domain.mapper;

import com.shabakaty.cinemana.domain.models.local.AvailableYears;
import com.shabakaty.cinemana.domain.models.remote.AvailableYearsApi;

/* JADX INFO: loaded from: classes.dex */
public class AvailableYearsMapperImpl implements AvailableYearsMapper {
    @Override // com.shabakaty.downloader.nj
    public AvailableYears mapDtoToDomain(AvailableYearsApi availableYearsApi) {
        AvailableYears availableYears = new AvailableYears();
        if (availableYearsApi != null) {
            String str = availableYearsApi.caption;
            if (str != null) {
                availableYears.caption = str;
            }
            String str2 = availableYearsApi.value;
            if (str2 != null) {
                availableYears.value = str2;
            }
        }
        return availableYears;
    }
}
