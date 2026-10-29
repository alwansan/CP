package com.shabakaty.cinemana.domain.mapper;

import com.shabakaty.cinemana.domain.models.local.user.UserSettings;
import com.shabakaty.cinemana.domain.models.remote.user.UserSettingsApi;

/* JADX INFO: loaded from: classes.dex */
public class UserTranslationMapperImpl implements UserTranslationMapper {
    @Override // com.shabakaty.downloader.nj
    public UserSettings.UserTranslation mapDtoToDomain(UserSettingsApi.UserTranslationApi userTranslationApi) {
        UserSettings.UserTranslation userTranslation = new UserSettings.UserTranslation(null, 0, 3);
        if (userTranslationApi != null) {
            String str = userTranslationApi.name;
            if (str != null) {
                userTranslation.name = str;
            }
            userTranslation.status = userTranslationApi.status;
        }
        return userTranslation;
    }
}
