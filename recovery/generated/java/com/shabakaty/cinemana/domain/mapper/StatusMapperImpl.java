package com.shabakaty.cinemana.domain.mapper;

import com.shabakaty.cinemana.domain.models.local.StatusInfo;
import com.shabakaty.cinemana.domain.models.remote.StatusApi;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.ll3;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class StatusMapperImpl implements StatusMapper {
    private final StatusComponentMapper statusComponentMapper = (StatusComponentMapper) ll3.f(StatusComponentMapper.class);

    @Override // com.shabakaty.downloader.nj
    public StatusInfo mapDtoToDomain(StatusApi statusApi) {
        ArrayList arrayList;
        StatusInfo statusInfo = new StatusInfo();
        if (statusApi != null) {
            List<StatusApi.StatusComponentApi> list = statusApi.components;
            if (list == null) {
                arrayList = new ArrayList();
            } else {
                ArrayList arrayList2 = new ArrayList(list.size());
                Iterator<StatusApi.StatusComponentApi> it = list.iterator();
                while (it.hasNext()) {
                    arrayList2.add(this.statusComponentMapper.mapDtoToDomain(it.next()));
                }
                arrayList = arrayList2;
            }
            j32.e(arrayList, "<set-?>");
            statusInfo.components = arrayList;
        }
        return statusInfo;
    }
}
