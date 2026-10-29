package com.shabakaty.cinemana.domain.mapper;

import com.shabakaty.cinemana.domain.models.local.user.UserSettings;
import com.shabakaty.cinemana.domain.models.remote.user.UserSettingsApi;

/* JADX INFO: loaded from: classes.dex */
public class ParentalControlMapperImpl implements ParentalControlMapper {
    @Override // com.shabakaty.downloader.nj
    public UserSettings.ParentalControl mapDtoToDomain(UserSettingsApi.ParentalControlApi parentalControlApi) {
        UserSettings.ParentalControl parentalControl = new UserSettings.ParentalControl();
        if (parentalControlApi != null) {
            String str = parentalControlApi.ageLimit;
            if (str != null) {
                parentalControl.ageLimit = str;
            }
            String str2 = parentalControlApi.filmRating;
            if (str2 != null) {
                parentalControl.filmRating = str2;
            }
            String str3 = parentalControlApi.id;
            if (str3 != null) {
                parentalControl.id = str3;
            }
            String str4 = parentalControlApi.name;
            if (str4 != null) {
                parentalControl.name = str4;
            }
            String str5 = parentalControlApi.tvShowRating;
            if (str5 != null) {
                parentalControl.tvShowRating = str5;
            }
        }
        return parentalControl;
    }
}
