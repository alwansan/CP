package com.shabakaty.cinemana.domain.mapper;

import com.shabakaty.cinemana.domain.models.local.staff_info.StaffModel;
import com.shabakaty.cinemana.domain.models.remote.VideoModelApi;
import com.shabakaty.cinemana.domain.models.remote.actor_info.StaffModelApi;
import com.shabakaty.downloader.ll3;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class StaffInfoMapperImpl implements StaffInfoMapper {
    private final VideoModelMapper videoModelMapper = (VideoModelMapper) ll3.f(VideoModelMapper.class);

    @Override // com.shabakaty.downloader.nj
    public StaffModel mapDtoToDomain(StaffModelApi staffModelApi) {
        ArrayList arrayList;
        StaffModel staffModel = new StaffModel(null, null, null, null, null, null, null, 127);
        if (staffModelApi != null) {
            String str = staffModelApi.imgMediumThumbObjUrl;
            if (str != null) {
                staffModel.imgMediumThumbObjUrl = str;
            }
            String str2 = staffModelApi.imgObjUrl;
            if (str2 != null) {
                staffModel.imgObjUrl = str2;
            }
            String str3 = staffModelApi.imgThumbObjUrl;
            if (str3 != null) {
                staffModel.imgThumbObjUrl = str3;
            }
            List<VideoModelApi> list = staffModelApi.items;
            if (list == null) {
                arrayList = new ArrayList();
            } else {
                ArrayList arrayList2 = new ArrayList(list.size());
                Iterator<VideoModelApi> it = list.iterator();
                while (it.hasNext()) {
                    arrayList2.add(this.videoModelMapper.mapDtoToDomain(it.next()));
                }
                arrayList = arrayList2;
            }
            staffModel.items = arrayList;
            String str4 = staffModelApi.role;
            if (str4 != null) {
                staffModel.role = str4;
            }
            String str5 = staffModelApi.title;
            if (str5 != null) {
                staffModel.title = str5;
            }
        }
        return staffModel;
    }
}
