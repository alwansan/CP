package com.shabakaty.cinemana.domain.mapper;

import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.cinemana.domain.models.local.Category;
import com.shabakaty.cinemana.domain.models.remote.VideoModelApi;

/* JADX INFO: loaded from: classes.dex */
public class VideoModelCategoriesMapperImpl implements VideoModelCategoriesMapper {
    @Override // com.shabakaty.downloader.nj
    public Category mapDtoToDomain(VideoModelApi.CategoryApi categoryApi) {
        Category category = new Category(BuildConfig.FLAVOR, BuildConfig.FLAVOR);
        if (categoryApi != null) {
            String str = categoryApi.enTitle;
            if (str != null) {
                category.enTitle = str;
            }
            String str2 = categoryApi.arTitle;
            if (str2 != null) {
                category.arTitle = str2;
            }
        }
        return category;
    }
}
