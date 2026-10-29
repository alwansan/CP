package com.shabakaty.cinemana.domain.mapper;

import com.shabakaty.cinemana.domain.models.local.VideoLanguages;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import com.shabakaty.cinemana.domain.models.remote.VideoModelApi;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.ll3;
import com.shabakaty.downloader.ob4;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class VideoModelMapperImpl extends VideoModelMapper {
    private final SkippingDurationsMapper skippingDurationsMapper = (SkippingDurationsMapper) ll3.f(SkippingDurationsMapper.class);
    private final SubtitlesMapper subtitlesMapper = (SubtitlesMapper) ll3.f(SubtitlesMapper.class);
    private final VideoModelCategoriesMapper videoModelCategoriesMapper = (VideoModelCategoriesMapper) ll3.f(VideoModelCategoriesMapper.class);
    private final VideoModelLanguageMapper videoModelLanguageMapper = (VideoModelLanguageMapper) ll3.f(VideoModelLanguageMapper.class);
    private final StaffsInfoMapper staffsInfoMapper = (StaffsInfoMapper) ll3.f(StaffsInfoMapper.class);
    private final IntroSkippingMapper introSkippingMapper = (IntroSkippingMapper) ll3.f(IntroSkippingMapper.class);

    public List<ob4> a(List<VideoModelApi.StaffsInfoApi> list) {
        if (list == null) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<VideoModelApi.StaffsInfoApi> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(this.staffsInfoMapper.mapDtoToDomain(it.next()));
        }
        return arrayList;
    }

    @Override // com.shabakaty.cinemana.domain.mapper.VideoModelMapper
    public VideoModel mapDtoToDomain(VideoModelApi videoModelApi) {
        VideoModel videoModel;
        ArrayList arrayList;
        ArrayList arrayList2;
        ArrayList arrayList3;
        VideoModel videoModel2 = new VideoModel(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, false, null, 0, null, null, null, null, false, null, null, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, false, null, 0, 0L, null, null, false, null, null, null, null, false, -1, Integer.MAX_VALUE);
        if (videoModelApi != null) {
            VideoModelApi.SkippingDurationsApi skippingDurationsApi = videoModelApi.skippingDurations;
            if (skippingDurationsApi != null) {
                videoModel = videoModel2;
                videoModel.q(this.skippingDurationsMapper.mapDtoToDomain(skippingDurationsApi));
            } else {
                videoModel = videoModel2;
            }
            List<VideoModelApi.a> list = videoModelApi.translations;
            if (list == null) {
                arrayList = new ArrayList();
            } else {
                ArrayList arrayList4 = new ArrayList(list.size());
                Iterator<VideoModelApi.a> it = list.iterator();
                while (it.hasNext()) {
                    arrayList4.add(this.subtitlesMapper.mapDtoToDomain(it.next()));
                }
                arrayList = arrayList4;
            }
            videoModel.subtitles = arrayList;
            List<VideoModelApi.IntroSkippingApi> list2 = videoModelApi.introSkipping;
            if (list2 == null) {
                arrayList2 = new ArrayList();
            } else {
                ArrayList arrayList5 = new ArrayList(list2.size());
                Iterator<VideoModelApi.IntroSkippingApi> it2 = list2.iterator();
                while (it2.hasNext()) {
                    arrayList5.add(this.introSkippingMapper.mapDtoToDomain(it2.next()));
                }
                arrayList2 = arrayList5;
            }
            videoModel.skippableScenes = arrayList2;
            List<VideoModelApi.CategoryApi> list3 = videoModelApi.categories;
            if (list3 == null) {
                arrayList3 = new ArrayList();
            } else {
                ArrayList arrayList6 = new ArrayList(list3.size());
                Iterator<VideoModelApi.CategoryApi> it3 = list3.iterator();
                while (it3.hasNext()) {
                    arrayList6.add(this.videoModelCategoriesMapper.mapDtoToDomain(it3.next()));
                }
                arrayList3 = arrayList6;
            }
            videoModel.categories = arrayList3;
            VideoModelApi.VideoLanguagesApi videoLanguagesApi = videoModelApi.videoLanguages;
            if (videoLanguagesApi != null) {
                VideoLanguages videoLanguagesMapDtoToDomain = this.videoModelLanguageMapper.mapDtoToDomain(videoLanguagesApi);
                j32.e(videoLanguagesMapDtoToDomain, "<set-?>");
                videoModel.videoLanguages = videoLanguagesMapDtoToDomain;
            }
            videoModel.directorsInfo = a(videoModelApi.directorsInfo);
            videoModel.actorsInfo = a(videoModelApi.actorsInfo);
            videoModel.writersInfo = a(videoModelApi.writersInfo);
            String str = videoModelApi.nb;
            if (str != null) {
                videoModel.l(str);
            }
            String str2 = videoModelApi.enTitle;
            if (str2 != null) {
                videoModel.enTitle = str2;
            }
            String str3 = videoModelApi.arTitle;
            if (str3 != null) {
                videoModel.arTitle = str3;
            }
            String str4 = videoModelApi.stars;
            if (str4 != null) {
                videoModel.stars = str4;
            }
            String str5 = videoModelApi.arContent;
            if (str5 != null) {
                videoModel.arContent = str5;
            }
            String str6 = videoModelApi.enContent;
            if (str6 != null) {
                videoModel.enContent = str6;
            }
            String str7 = videoModelApi.mDate;
            if (str7 != null) {
                videoModel.mDate = str7;
            }
            String str8 = videoModelApi.year;
            if (str8 != null) {
                videoModel.year = str8;
            }
            String str9 = videoModelApi.kind;
            if (str9 != null) {
                videoModel.kind = str9;
            }
            String str10 = videoModelApi.season;
            if (str10 != null) {
                videoModel.season = str10;
            }
            String str11 = videoModelApi.imgObjUrl;
            if (str11 != null) {
                videoModel.imgObjUrl = str11;
            }
            String str12 = videoModelApi.imgMediumThumbObjUrl;
            if (str12 != null) {
                videoModel.imgMediumThumbObjUrl = str12;
            }
            String str13 = videoModelApi.filmRating;
            if (str13 != null) {
                videoModel.filmRating = str13;
            }
            String str14 = videoModelApi.seriesRating;
            if (str14 != null) {
                videoModel.seriesRating = str14;
            }
            String str15 = videoModelApi.episodeNummer;
            if (str15 != null) {
                videoModel.j(str15);
            }
            String str16 = videoModelApi.rate;
            if (str16 != null) {
                videoModel.rate = str16;
            }
            String str17 = videoModelApi.itemDate;
            if (str17 != null) {
                videoModel.itemDate = str17;
            }
            String str18 = videoModelApi.duration;
            if (str18 != null) {
                videoModel.duration = str18;
            }
            String str19 = videoModelApi.imdbUrlRef;
            if (str19 != null) {
                videoModel.imdbUrlRef = str19;
            }
            String str20 = videoModelApi.rootSeries;
            if (str20 != null) {
                videoModel.o(str20);
            }
            String str21 = videoModelApi.useParentImg;
            if (str21 != null) {
                videoModel.useParentImg = str21;
            }
            videoModel.showComments = videoModelApi.showComments;
            String str22 = videoModelApi.episodeFlag;
            if (str22 != null) {
                videoModel.episodeFlag = str22;
            }
            String str23 = videoModelApi.trailer;
            if (str23 != null) {
                videoModel.trailer = str23;
            }
            String str24 = videoModelApi.parentSkipping;
            if (str24 != null) {
                videoModel.parentSkipping = str24;
            }
            String str25 = videoModelApi.imgThumbObjUrl;
            if (str25 != null) {
                videoModel.k(str25);
            }
            String str26 = videoModelApi.arTranslationFilePath;
            if (str26 != null) {
                videoModel.g(str26);
            }
            videoModel.hasIntroSkipping = videoModelApi.hasIntroSkipping;
            String str27 = videoModelApi.videoLikesNumber;
            if (str27 != null) {
                videoModel.videoLikesNumber = str27;
            }
            String str28 = videoModelApi.videoDisLikesNumber;
            if (str28 != null) {
                videoModel.videoDisLikesNumber = str28;
            }
            videoModel.videoCommentsNumber = videoModelApi.videoCommentsNumber;
            String str29 = videoModelApi.videoViewsNumber;
            if (str29 != null) {
                videoModel.videoViewsNumber = str29;
            }
            String str30 = videoModelApi.itemOrderList;
            if (str30 != null) {
                videoModel.itemOrderList = str30;
            }
            String str31 = videoModelApi.listId;
            if (str31 != null) {
                videoModel.listId = str31;
            }
            String str32 = videoModelApi.listSortOrder;
            if (str32 != null) {
                videoModel.listSortOrder = str32;
            }
            String str33 = videoModelApi.castable;
            if (str33 != null) {
                videoModel.castable = str33;
            }
            String str34 = videoModelApi.publishDate;
            if (str34 != null) {
                videoModel.publishDate = str34;
            }
            String str35 = videoModelApi.customArTitle;
            if (str35 != null) {
                videoModel.customArTitle = str35;
            }
            String str36 = videoModelApi.customEnTitle;
            if (str36 != null) {
                videoModel.customEnTitle = str36;
            }
        } else {
            videoModel = videoModel2;
        }
        updateVideoModelRoot(videoModelApi, videoModel);
        return videoModel;
    }
}
