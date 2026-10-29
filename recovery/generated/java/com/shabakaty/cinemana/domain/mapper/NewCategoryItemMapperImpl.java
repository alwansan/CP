package com.shabakaty.cinemana.domain.mapper;

import com.shabakaty.cinemana.domain.models.local.categories.NewCategoryItem;
import com.shabakaty.cinemana.domain.models.remote.categories.NewCategoryItemApi;
import com.shabakaty.downloader.ll3;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class NewCategoryItemMapperImpl implements NewCategoryItemMapper {
    private final NewLanguageItemMapper newLanguageItemMapper = (NewLanguageItemMapper) ll3.f(NewLanguageItemMapper.class);

    @Override // com.shabakaty.downloader.nj
    public NewCategoryItem mapDtoToDomain(NewCategoryItemApi newCategoryItemApi) {
        NewCategoryItem newCategoryItem;
        ArrayList arrayList;
        NewCategoryItem newCategoryItem2 = new NewCategoryItem(0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 65535);
        if (newCategoryItemApi == null) {
            return newCategoryItem2;
        }
        String str = newCategoryItemApi.arTitle;
        if (str != null) {
            newCategoryItem = newCategoryItem2;
            newCategoryItem.s = str;
        } else {
            newCategoryItem = newCategoryItem2;
        }
        String str2 = newCategoryItemApi.enTitle;
        if (str2 != null) {
            newCategoryItem.t = str2;
        }
        String str3 = newCategoryItemApi.img;
        if (str3 != null) {
            newCategoryItem.u = str3;
        }
        String str4 = newCategoryItemApi.imgMediumThumb;
        if (str4 != null) {
            newCategoryItem.v = str4;
        }
        String str5 = newCategoryItemApi.imgMediumThumbObjUrl;
        if (str5 != null) {
            newCategoryItem.w = str5;
        }
        String str6 = newCategoryItemApi.imgObjUrl;
        if (str6 != null) {
            newCategoryItem.x = str6;
        }
        String str7 = newCategoryItemApi.imgThumb;
        if (str7 != null) {
            newCategoryItem.y = str7;
        }
        String str8 = newCategoryItemApi.imgThumbObjUrl;
        if (str8 != null) {
            newCategoryItem.z = str8;
        }
        List<NewCategoryItemApi.NewLanguageItemApi> list = newCategoryItemApi.langArray;
        if (list == null) {
            arrayList = new ArrayList();
        } else {
            ArrayList arrayList2 = new ArrayList(list.size());
            Iterator<NewCategoryItemApi.NewLanguageItemApi> it = list.iterator();
            while (it.hasNext()) {
                arrayList2.add(this.newLanguageItemMapper.mapDtoToDomain(it.next()));
            }
            arrayList = arrayList2;
        }
        newCategoryItem.A = arrayList;
        String str9 = newCategoryItemApi.nb;
        if (str9 != null) {
            newCategoryItem.B = str9;
        }
        String str10 = newCategoryItemApi.objectUrlExpiration;
        if (str10 != null) {
            newCategoryItem.C = str10;
        }
        String str11 = newCategoryItemApi.porder;
        if (str11 != null) {
            newCategoryItem.D = str11;
        }
        String str12 = newCategoryItemApi.sort;
        if (str12 != null) {
            newCategoryItem.E = str12;
        }
        String str13 = newCategoryItemApi.updateDateTime;
        if (str13 == null) {
            return newCategoryItem;
        }
        newCategoryItem.F = str13;
        return newCategoryItem;
    }
}
