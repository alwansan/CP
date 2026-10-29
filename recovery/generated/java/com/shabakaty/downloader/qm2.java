package com.shabakaty.downloader;

import android.content.Context;
import com.cinemana.pro.R;
import com.liulishuo.filedownloader.BuildConfig;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import com.shabakaty.cinemana.domain.mapper.AvailableYearsMapper;
import com.shabakaty.cinemana.domain.mapper.CommentMapper;
import com.shabakaty.cinemana.domain.mapper.CommentsRulesMapper;
import com.shabakaty.cinemana.domain.mapper.FranchiseItemMapper;
import com.shabakaty.cinemana.domain.mapper.LogoutResponseMapper;
import com.shabakaty.cinemana.domain.mapper.NewCategoryItemMapper;
import com.shabakaty.cinemana.domain.mapper.NotificationsListMapper;
import com.shabakaty.cinemana.domain.mapper.SearchItemMapper;
import com.shabakaty.cinemana.domain.mapper.StaffInfoMapper;
import com.shabakaty.cinemana.domain.mapper.StatusMapper;
import com.shabakaty.cinemana.domain.mapper.TranscodeFileMapper;
import com.shabakaty.cinemana.domain.mapper.UserListMapper;
import com.shabakaty.cinemana.domain.mapper.UserSettingsMapper;
import com.shabakaty.cinemana.domain.mapper.VideoModelEntityMapper;
import com.shabakaty.cinemana.domain.mapper.VideoModelMapper;
import com.shabakaty.cinemana.domain.mapper.VideoStatusEntityMapper;
import com.shabakaty.cinemana.domain.mapper.VideoStatusMapper;
import com.shabakaty.cinemana.domain.mapper.VideoStatusMapperFromEntity;
import com.shabakaty.cinemana.domain.mapper.VideosGroupMapper;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import com.shabakaty.cinemana.domain.models.local.categories.NewCategoryItem;
import com.shabakaty.cinemana.domain.models.local.user.LogoutResponse;
import com.shabakaty.cinemana.domain.models.local.user.UserSettings;
import com.shabakaty.cinemana.domain.models.remote.VideoModelApi;
import com.shabakaty.cinemana.domain.models.remote.categories.NewCategoryItemApi;
import com.shabakaty.cinemana.domain.models.remote.user.LogoutResponseApi;
import com.shabakaty.cinemana.domain.models.remote.user.UserSettingsApi;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: Mapper.kt */
/* JADX INFO: loaded from: classes.dex */
public final class qm2 {
    public final Context a;
    public final s25 b;
    public final VideoModelMapper c;
    public final y25 d;
    public final FranchiseItemMapper e;
    public final UserListMapper f;
    public final TranscodeFileMapper g;
    public final CommentMapper h;
    public final VideoStatusMapper i;
    public final VideoStatusEntityMapper j;
    public final LogoutResponseMapper k;
    public final StaffInfoMapper l;
    public final VideosGroupMapper m;
    public final NewCategoryItemMapper n;
    public final UserSettingsMapper o;
    public final NotificationsListMapper p;
    public final CommentsRulesMapper q;
    public final AvailableYearsMapper r;
    public final SearchItemMapper s;
    public final VideoStatusMapperFromEntity t;
    public final VideoModelEntityMapper u;
    public final StatusMapper v;

    public qm2(Context context, ff3 ff3Var, pm4 pm4Var, s25 s25Var, VideoModelMapper videoModelMapper, y25 y25Var, FranchiseItemMapper franchiseItemMapper, UserListMapper userListMapper, TranscodeFileMapper transcodeFileMapper, CommentMapper commentMapper, VideoStatusMapper videoStatusMapper, VideoStatusEntityMapper videoStatusEntityMapper, LogoutResponseMapper logoutResponseMapper, StaffInfoMapper staffInfoMapper, VideosGroupMapper videosGroupMapper, NewCategoryItemMapper newCategoryItemMapper, UserSettingsMapper userSettingsMapper, NotificationsListMapper notificationsListMapper, CommentsRulesMapper commentsRulesMapper, AvailableYearsMapper availableYearsMapper, SearchItemMapper searchItemMapper, VideoStatusMapperFromEntity videoStatusMapperFromEntity, VideoModelEntityMapper videoModelEntityMapper, StatusMapper statusMapper) {
        j32.e(context, "context");
        j32.e(ff3Var, "prefsManager");
        j32.e(pm4Var, "themeHelper");
        j32.e(s25Var, "statusDao");
        j32.e(videoModelMapper, "videoModelMapper");
        j32.e(y25Var, "videoUtils");
        j32.e(franchiseItemMapper, "franchiseItemMapper");
        j32.e(userListMapper, "userListMapper");
        j32.e(transcodeFileMapper, "transcodeFileMapper");
        j32.e(commentMapper, "commentMapper");
        j32.e(videoStatusMapper, "videoStatusMapper");
        j32.e(videoStatusEntityMapper, "videoStatusEntityMapper");
        j32.e(logoutResponseMapper, "logoutResponseMapper");
        j32.e(staffInfoMapper, "staffInfoMapper");
        j32.e(videosGroupMapper, "videosGroupMapper");
        j32.e(newCategoryItemMapper, "newCategoryItemMapper");
        j32.e(userSettingsMapper, "userSettingsMapper");
        j32.e(notificationsListMapper, "notificationsListMapper");
        j32.e(commentsRulesMapper, "commentsRulesMapper");
        j32.e(availableYearsMapper, "availableYearsMapper");
        j32.e(searchItemMapper, "searchItemMapper");
        j32.e(videoStatusMapperFromEntity, "videoStatusMapperFromEntity");
        j32.e(videoModelEntityMapper, "videoModelEntityMapper");
        j32.e(statusMapper, "statusMapper");
        this.a = context;
        this.b = s25Var;
        this.c = videoModelMapper;
        this.d = y25Var;
        this.e = franchiseItemMapper;
        this.f = userListMapper;
        this.g = transcodeFileMapper;
        this.h = commentMapper;
        this.i = videoStatusMapper;
        this.j = videoStatusEntityMapper;
        this.k = logoutResponseMapper;
        this.l = staffInfoMapper;
        this.m = videosGroupMapper;
        this.n = newCategoryItemMapper;
        this.o = userSettingsMapper;
        this.p = notificationsListMapper;
        this.q = commentsRulesMapper;
        this.r = availableYearsMapper;
        this.s = searchItemMapper;
        this.t = videoStatusMapperFromEntity;
        this.u = videoModelEntityMapper;
        this.v = statusMapper;
    }

    public final LogoutResponse a(LogoutResponseApi logoutResponseApi) {
        j32.e(logoutResponseApi, FileDownloadModel.STATUS);
        return this.k.mapDtoToDomain(logoutResponseApi);
    }

    public final List<NewCategoryItem> b(List<NewCategoryItemApi> list, boolean z) {
        ArrayList arrayList = new ArrayList(i50.O(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            NewCategoryItem newCategoryItemMapDtoToDomain = this.n.mapDtoToDomain((NewCategoryItemApi) it.next());
            newCategoryItemMapDtoToDomain.a(z ? newCategoryItemMapDtoToDomain.t : newCategoryItemMapDtoToDomain.s);
            List<NewCategoryItem.NewLanguageItem> listZ0 = m50.z0(newCategoryItemMapDtoToDomain.A);
            ((ArrayList) listZ0).add(0, new NewCategoryItem.NewLanguageItem(newCategoryItemMapDtoToDomain.B, "الكل", "All", BuildConfig.FLAVOR, BuildConfig.FLAVOR, null, 32));
            newCategoryItemMapDtoToDomain.A = listZ0;
            arrayList.add(newCategoryItemMapDtoToDomain);
        }
        return m50.z0(arrayList);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0054  */
    public final UserSettings c(UserSettingsApi userSettingsApi) {
        int i;
        j32.e(userSettingsApi, "userSettingsApi");
        UserSettings userSettingsMapDtoToDomain = this.o.mapDtoToDomain(userSettingsApi);
        for (UserSettings.ParentalControl parentalControl : userSettingsMapDtoToDomain.parentalControl) {
            String str = parentalControl.id;
            int iHashCode = str.hashCode();
            if (iHashCode != 48) {
                if (iHashCode != 50) {
                    if (iHashCode == 51 && str.equals("3")) {
                        i = R.drawable.ic_content_filter_kids;
                    } else {
                        i = R.drawable.ic_content_filter_all;
                    }
                } else if (str.equals("2")) {
                    i = R.drawable.ic_content_filter_family;
                } else {
                    i = R.drawable.ic_content_filter_all;
                }
            } else if (str.equals("0")) {
                i = R.drawable.ic_content_filter_default;
            } else {
                i = R.drawable.ic_content_filter_all;
            }
            parentalControl.icon = i;
        }
        return userSettingsMapDtoToDomain;
    }

    public final VideoModel d(VideoModelApi videoModelApi) {
        j32.e(videoModelApi, "videoModelApi");
        VideoModel videoModelMapDtoToDomain = this.c.mapDtoToDomain(videoModelApi);
        g(videoModelMapDtoToDomain);
        return videoModelMapDtoToDomain;
    }

    public final List<VideoModel> e(List<VideoModelApi> list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(i50.O(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(d((VideoModelApi) it.next()));
        }
        return m50.z0(arrayList);
    }

    public final i25 f(VideoModel videoModel) {
        j32.e(videoModel, "videoModel");
        return this.u.mapDtoToDomain(videoModel);
    }

    public final VideoModel g(VideoModel videoModel) {
        videoModel.a(this.b, this);
        y25 y25Var = this.d;
        j32.e(y25Var, "videoUtils");
        if (j32.a(videoModel.kind, "2")) {
            videoModel.episodeDesc = y25Var.a(videoModel);
        }
        return videoModel;
    }

    public final List<VideoModel> h(List<VideoModel> list) {
        ArrayList arrayList = new ArrayList(i50.O(list, 10));
        for (VideoModel videoModel : list) {
            g(videoModel);
            arrayList.add(videoModel);
        }
        return arrayList;
    }
}
