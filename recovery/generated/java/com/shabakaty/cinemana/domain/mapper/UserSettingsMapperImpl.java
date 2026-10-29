package com.shabakaty.cinemana.domain.mapper;

import com.shabakaty.cinemana.domain.models.local.user.UserSettings;
import com.shabakaty.cinemana.domain.models.remote.user.UserSettingsApi;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.ll3;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class UserSettingsMapperImpl implements UserSettingsMapper {
    private final ParentalControlMapper parentalControlMapper = (ParentalControlMapper) ll3.f(ParentalControlMapper.class);
    private final UserTranslationMapper userTranslationMapper = (UserTranslationMapper) ll3.f(UserTranslationMapper.class);

    @Override // com.shabakaty.downloader.nj
    public UserSettings mapDtoToDomain(UserSettingsApi userSettingsApi) {
        ArrayList arrayList;
        UserSettings userSettings = new UserSettings();
        if (userSettingsApi != null) {
            List<UserSettingsApi.ParentalControlApi> list = userSettingsApi.parentalControl;
            if (list == null) {
                arrayList = new ArrayList();
            } else {
                ArrayList arrayList2 = new ArrayList(list.size());
                Iterator<UserSettingsApi.ParentalControlApi> it = list.iterator();
                while (it.hasNext()) {
                    arrayList2.add(this.parentalControlMapper.mapDtoToDomain(it.next()));
                }
                arrayList = arrayList2;
            }
            userSettings.parentalControl = arrayList;
            userSettings.parentalLevelStatus = userSettingsApi.parentalLevelStatus;
            UserSettingsApi.UserTranslationApi userTranslationApi = userSettingsApi.userTranslation;
            if (userTranslationApi != null) {
                UserSettings.UserTranslation userTranslationMapDtoToDomain = this.userTranslationMapper.mapDtoToDomain(userTranslationApi);
                j32.e(userTranslationMapDtoToDomain, "<set-?>");
                userSettings.userTranslation = userTranslationMapDtoToDomain;
            }
        }
        return userSettings;
    }
}
