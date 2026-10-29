package com.shabakaty.cinemana.domain.mapper;

import com.shabakaty.cinemana.domain.models.local.categories.NewCategoryItem;
import com.shabakaty.cinemana.domain.models.remote.categories.NewCategoryItemApi;

/* JADX INFO: loaded from: classes.dex */
public class NewLanguageItemMapperImpl implements NewLanguageItemMapper {
    @Override // com.shabakaty.downloader.nj
    public NewCategoryItem.NewLanguageItem mapDtoToDomain(NewCategoryItemApi.NewLanguageItemApi newLanguageItemApi) {
        NewCategoryItem.NewLanguageItem newLanguageItem = new NewCategoryItem.NewLanguageItem(null, null, null, null, null, null, 63);
        if (newLanguageItemApi != null) {
            String str = newLanguageItemApi.catNb;
            if (str != null) {
                newLanguageItem.catNb = str;
            }
            String str2 = newLanguageItemApi.langArTitle;
            if (str2 != null) {
                newLanguageItem.langArTitle = str2;
            }
            String str3 = newLanguageItemApi.langEnTitle;
            if (str3 != null) {
                newLanguageItem.langEnTitle = str3;
            }
            String str4 = newLanguageItemApi.langFreq;
            if (str4 != null) {
                newLanguageItem.langFreq = str4;
            }
            String str5 = newLanguageItemApi.langNb;
            if (str5 != null) {
                newLanguageItem.langNb = str5;
            }
        }
        return newLanguageItem;
    }
}
