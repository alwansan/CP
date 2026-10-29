package com.shabakaty.cinemana.domain.mapper;

import com.shabakaty.cinemana.domain.models.local.user.NotificationsList;
import com.shabakaty.cinemana.domain.models.remote.VideoModelApi;
import com.shabakaty.cinemana.domain.models.remote.user.NotificationsListApi;
import com.shabakaty.downloader.ll3;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class NotificationsListMapperImpl implements NotificationsListMapper {
    private final VideoModelMapper videoModelMapper = (VideoModelMapper) ll3.f(VideoModelMapper.class);

    @Override // com.shabakaty.downloader.nj
    public NotificationsList mapDtoToDomain(NotificationsListApi notificationsListApi) {
        ArrayList arrayList;
        NotificationsList notificationsList = new NotificationsList();
        if (notificationsListApi != null) {
            String str = notificationsListApi.new;
            if (str != null) {
                notificationsList.new = str;
            }
            List<VideoModelApi> list = notificationsListApi.notifications;
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
            notificationsList.notifications = arrayList;
        }
        return notificationsList;
    }
}
