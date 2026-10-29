package com.shabakaty.cinemana.domain.mapper;

import com.shabakaty.cinemana.domain.models.local.StatusInfo;
import com.shabakaty.cinemana.domain.models.remote.StatusApi;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class StatusComponentMapperImpl implements StatusComponentMapper {
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.shabakaty.downloader.nj
    public StatusInfo.StatusComponent mapDtoToDomain(StatusApi.StatusComponentApi statusComponentApi) {
        StatusInfo.StatusComponent statusComponent = new StatusInfo.StatusComponent();
        if (statusComponentApi != null) {
            List<String> list = statusComponentApi.components;
            if (list != null) {
                statusComponent.components = new ArrayList(list);
            }
            String str = statusComponentApi.createdAt;
            if (str != null) {
                statusComponent.createdAt = str;
            }
            String str2 = statusComponentApi.description;
            if (str2 != null) {
                statusComponent.description = str2;
            }
            statusComponent.group = statusComponentApi.group;
            String str3 = statusComponentApi.groupId;
            if (str3 != null) {
                statusComponent.groupId = str3;
            }
            String str4 = statusComponentApi.id;
            if (str4 != null) {
                statusComponent.id = str4;
            }
            String str5 = statusComponentApi.name;
            if (str5 != null) {
                statusComponent.name = str5;
            }
            statusComponent.onlyShowIfDegraded = statusComponentApi.onlyShowIfDegraded;
            String str6 = statusComponentApi.pageId;
            if (str6 != null) {
                statusComponent.pageId = str6;
            }
            statusComponent.position = statusComponentApi.position;
            statusComponent.showcase = statusComponentApi.showcase;
            String str7 = statusComponentApi.startDate;
            if (str7 != null) {
                statusComponent.startDate = str7;
            }
            String str8 = statusComponentApi.status;
            if (str8 != null) {
                statusComponent.status = str8;
            }
            String str9 = statusComponentApi.updatedAt;
            if (str9 != null) {
                statusComponent.updatedAt = str9;
            }
        }
        return statusComponent;
    }
}
