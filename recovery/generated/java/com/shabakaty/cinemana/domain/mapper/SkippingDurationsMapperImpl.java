package com.shabakaty.cinemana.domain.mapper;

import com.shabakaty.cinemana.domain.models.local.SkippingDurations;
import com.shabakaty.cinemana.domain.models.remote.VideoModelApi;
import com.shabakaty.downloader.j32;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class SkippingDurationsMapperImpl implements SkippingDurationsMapper {
    @Override // com.shabakaty.downloader.nj
    public SkippingDurations mapDtoToDomain(VideoModelApi.SkippingDurationsApi skippingDurationsApi) {
        SkippingDurations skippingDurations = new SkippingDurations(null, null, 3);
        if (skippingDurationsApi != null) {
            List<String> list = skippingDurationsApi.start;
            if (list != null) {
                ArrayList arrayList = new ArrayList(list);
                j32.e(arrayList, "<set-?>");
                skippingDurations.start = arrayList;
            }
            List<String> list2 = skippingDurationsApi.end;
            if (list2 != null) {
                ArrayList arrayList2 = new ArrayList(list2);
                j32.e(arrayList2, "<set-?>");
                skippingDurations.end = arrayList2;
            }
        }
        return skippingDurations;
    }
}
