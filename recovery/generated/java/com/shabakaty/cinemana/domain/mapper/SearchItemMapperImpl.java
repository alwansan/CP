package com.shabakaty.cinemana.domain.mapper;

import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.cinemana.data.db.search.SearchItem;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import com.shabakaty.downloader.j32;

/* JADX INFO: loaded from: classes.dex */
public class SearchItemMapperImpl implements SearchItemMapper {
    @Override // com.shabakaty.downloader.nj
    public SearchItem mapDtoToDomain(VideoModel videoModel) {
        SearchItem searchItem = new SearchItem("0", BuildConfig.FLAVOR, BuildConfig.FLAVOR, BuildConfig.FLAVOR, BuildConfig.FLAVOR, BuildConfig.FLAVOR, BuildConfig.FLAVOR, BuildConfig.FLAVOR, BuildConfig.FLAVOR, BuildConfig.FLAVOR, BuildConfig.FLAVOR, BuildConfig.FLAVOR, BuildConfig.FLAVOR);
        if (videoModel != null) {
            String str = videoModel.nb;
            if (str != null) {
                j32.e(str, "<set-?>");
                searchItem.nb = str;
            }
            String str2 = videoModel.enTitle;
            if (str2 != null) {
                j32.e(str2, "<set-?>");
                searchItem.enTitle = str2;
            }
            String str3 = videoModel.arTitle;
            if (str3 != null) {
                j32.e(str3, "<set-?>");
                searchItem.arTitle = str3;
            }
            String str4 = videoModel.stars;
            if (str4 != null) {
                j32.e(str4, "<set-?>");
                searchItem.stars = str4;
            }
            String str5 = videoModel.year;
            if (str5 != null) {
                j32.e(str5, "<set-?>");
                searchItem.year = str5;
            }
            String str6 = videoModel.kind;
            if (str6 != null) {
                j32.e(str6, "<set-?>");
                searchItem.kind = str6;
            }
            String str7 = videoModel.season;
            if (str7 != null) {
                j32.e(str7, "<set-?>");
                searchItem.season = str7;
            }
            String str8 = videoModel.imgObjUrl;
            if (str8 != null) {
                j32.e(str8, "<set-?>");
                searchItem.imgObjUrl = str8;
            }
            String str9 = videoModel.episodeNummer;
            if (str9 != null) {
                j32.e(str9, "<set-?>");
                searchItem.episodeNummer = str9;
            }
            String str10 = videoModel.rate;
            if (str10 != null) {
                j32.e(str10, "<set-?>");
                searchItem.rate = str10;
            }
            String str11 = videoModel.imgMediumThumbObjUrl;
            if (str11 != null) {
                j32.e(str11, "<set-?>");
                searchItem.imgMediumThumbObjUrl = str11;
            }
        }
        return searchItem;
    }
}
