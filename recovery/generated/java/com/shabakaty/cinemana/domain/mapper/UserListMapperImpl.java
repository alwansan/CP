package com.shabakaty.cinemana.domain.mapper;

import com.shabakaty.cinemana.domain.models.local.user.UserList;
import com.shabakaty.cinemana.domain.models.remote.VideoModelApi;
import com.shabakaty.cinemana.domain.models.remote.user.UserListApi;
import com.shabakaty.downloader.ll3;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class UserListMapperImpl implements UserListMapper {
    private final VideoModelMapper videoModelMapper = (VideoModelMapper) ll3.f(VideoModelMapper.class);

    @Override // com.shabakaty.downloader.nj
    public UserList mapDtoToDomain(UserListApi userListApi) {
        ArrayList arrayList;
        UserList userList = new UserList();
        if (userListApi != null) {
            List<VideoModelApi> list = userListApi.data;
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
            userList.data = arrayList;
            String str = userListApi.status;
            if (str != null) {
                userList.status = str;
            }
        }
        return userList;
    }
}
