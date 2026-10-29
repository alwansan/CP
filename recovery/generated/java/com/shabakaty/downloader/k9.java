package com.shabakaty.downloader;

import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.cinemana.domain.models.remote.RecommendationsApi;
import com.shabakaty.cinemana.domain.models.remote.RecommendationsRequest;
import com.shabakaty.cinemana.domain.models.remote.StatusApi;
import com.shabakaty.cinemana.domain.models.remote.TranscodeFileApi;
import com.shabakaty.cinemana.domain.models.remote.VideoModelApi;
import com.shabakaty.cinemana.domain.models.remote.actor_info.StaffModelApi;
import com.shabakaty.cinemana.domain.models.remote.categories.NewCategoryItemApi;
import com.shabakaty.cinemana.domain.models.remote.home_page.CollectionItemApi;
import com.shabakaty.cinemana.domain.models.remote.home_page.HomeGroupsApi;
import com.shabakaty.cinemana.domain.models.remote.user.LogoutResponseApi;
import com.shabakaty.cinemana.domain.models.remote.user.NotificationsListApi;
import com.shabakaty.cinemana.domain.models.remote.user.UserListApi;
import com.shabakaty.cinemana.domain.models.remote.user.UserSettingsApi;
import java.util.List;
import kotlin.Metadata;
import zendesk.core.ZendeskIdentityStorage;

/* JADX INFO: compiled from: ApiServices.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000¨\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\"\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0003\u0010\u0004\u001a\u00020\u0002H'J\u001e\u0010\n\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u00052\b\b\u0001\u0010\u0003\u001a\u00020\u0002H'J(\u0010\f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\b0\u00052\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0003\u0010\u0004\u001a\u00020\u0002H'J\u0018\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00052\b\b\u0001\u0010\r\u001a\u00020\u0002H'J,\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\u00052\b\b\u0001\u0010\u0010\u001a\u00020\u00022\b\b\u0001\u0010\u0011\u001a\u00020\u00022\b\b\u0001\u0010\u0012\u001a\u00020\u0002H'J,\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00130\u00052\b\b\u0001\u0010\u0010\u001a\u00020\u00022\b\b\u0001\u0010\u0011\u001a\u00020\u00022\b\b\u0001\u0010\u0015\u001a\u00020\u0002H'J,\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00130\u00052\b\b\u0001\u0010\u0010\u001a\u00020\u00022\b\b\u0001\u0010\u0011\u001a\u00020\u00022\b\b\u0001\u0010\u0015\u001a\u00020\u0002H'J,\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00190\u00052\b\b\u0001\u0010\u0018\u001a\u00020\u00022\b\b\u0001\u0010\u0010\u001a\u00020\u00022\b\b\u0001\u0010\u0015\u001a\u00020\u0002H'J\u001e\u0010\u001c\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\b0\u00052\b\b\u0001\u0010\u001b\u001a\u00020\u0002H'J\"\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00020\u00052\b\b\u0001\u0010\u0010\u001a\u00020\u00022\b\b\u0001\u0010\u0011\u001a\u00020\u0002H'J\"\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00020\u00052\b\b\u0001\u0010\u0010\u001a\u00020\u00022\b\b\u0001\u0010\u0011\u001a\u00020\u0002H'J,\u0010#\u001a\b\u0012\u0004\u0012\u00020\"0\u00052\b\b\u0001\u0010 \u001a\u00020\u001f2\b\b\u0003\u0010!\u001a\u00020\u00022\b\b\u0003\u0010\u0004\u001a\u00020\u0002H'J(\u0010&\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\b0%2\b\b\u0001\u0010$\u001a\u00020\u00022\b\b\u0003\u0010\u0004\u001a\u00020\u0002H'J,\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00130\u00052\b\b\u0001\u0010\u0010\u001a\u00020\u00022\b\b\u0001\u0010\u0011\u001a\u00020\u00022\b\b\u0001\u0010'\u001a\u00020\u0002H'J,\u0010*\u001a\b\u0012\u0004\u0012\u00020\u00130\u00052\b\b\u0001\u0010\u0010\u001a\u00020\u00022\b\b\u0001\u0010\u0011\u001a\u00020\u00022\b\b\u0001\u0010)\u001a\u00020\u0002H'J,\u0010,\u001a\b\u0012\u0004\u0012\u00020\u00130\u00052\b\b\u0001\u0010\u0010\u001a\u00020\u00022\b\b\u0001\u0010\u0011\u001a\u00020\u00022\b\b\u0001\u0010+\u001a\u00020\u0002H'J6\u0010.\u001a\b\u0012\u0004\u0012\u00020\u00130\u00052\b\b\u0001\u0010\u0010\u001a\u00020\u00022\b\b\u0001\u0010\u0011\u001a\u00020\u00022\b\b\u0001\u0010+\u001a\u00020\u00022\b\b\u0001\u0010-\u001a\u00020\u0002H'J\"\u00102\u001a\b\u0012\u0004\u0012\u0002010\u00052\b\b\u0001\u0010/\u001a\u00020\u00022\b\b\u0001\u00100\u001a\u00020\u0002H'J(\u00103\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\b0\u00052\b\b\u0001\u00100\u001a\u00020\u00022\b\b\u0003\u0010\u0004\u001a\u00020\u0002H'J,\u00106\u001a\b\u0012\u0004\u0012\u0002050\u00052\b\b\u0001\u00104\u001a\u00020\u00022\b\b\u0001\u00100\u001a\u00020\u00022\b\b\u0003\u0010\u0004\u001a\u00020\u0002H'J(\u00108\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002070\b0\u00052\b\b\u0001\u00100\u001a\u00020\u00022\b\b\u0003\u0010\u0004\u001a\u00020\u0002H'J2\u0010:\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002070\b0\u00052\b\b\u0001\u00100\u001a\u00020\u00022\b\b\u0001\u00109\u001a\u00020\u00022\b\b\u0003\u0010\u0004\u001a\u00020\u0002H'J\u001e\u0010;\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\b0\u00052\b\b\u0001\u00100\u001a\u00020\u0002H'J\u001e\u0010=\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020<0\b0\u00052\b\b\u0003\u0010\u0004\u001a\u00020\u0002H'J\u001d\u0010?\u001a\u00020>2\b\b\u0001\u00104\u001a\u00020\u0002H§@ø\u0001\u0000¢\u0006\u0004\b?\u0010@J\u001d\u0010B\u001a\u00020A2\b\b\u0001\u00100\u001a\u00020\u0002H§@ø\u0001\u0000¢\u0006\u0004\bB\u0010@J\u001d\u0010D\u001a\u00020A2\b\b\u0001\u0010C\u001a\u00020\u0002H§@ø\u0001\u0000¢\u0006\u0004\bD\u0010@J\u0018\u0010G\u001a\b\u0012\u0004\u0012\u00020F0\u00052\b\b\u0001\u0010E\u001a\u00020\u0002H'J\u0014\u0010H\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\b0\u0005H'J\u000e\u0010J\u001a\b\u0012\u0004\u0012\u00020I0\u0005H'Jy\u0010S\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\b0\u00052\n\b\u0001\u0010K\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010L\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010M\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010N\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010O\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010Q\u001a\u0004\u0018\u00010P2\b\b\u0001\u0010R\u001a\u00020P2\n\b\u0001\u00100\u001a\u0004\u0018\u00010\u0002H'¢\u0006\u0004\bS\u0010TJB\u0010X\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\b0\u00052\n\b\u0001\u0010U\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010V\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010W\u001a\u0004\u0018\u00010\u00022\b\b\u0001\u0010R\u001a\u00020PH'Jp\u0010]\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\b0\u00052\n\b\u0001\u0010Y\u001a\u0004\u0018\u00010\u00022\b\b\u0001\u0010Z\u001a\u00020\u00022\n\b\u0001\u0010[\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010W\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010\u0018\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010V\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010\\\u001a\u0004\u0018\u00010\u00022\b\b\u0003\u0010\u0004\u001a\u00020\u0002H'J,\u0010a\u001a\b\u0012\u0004\u0012\u00020\u00010\u00052\b\b\u0001\u0010^\u001a\u00020\u00022\b\b\u0001\u0010_\u001a\u00020\u00022\b\b\u0001\u0010`\u001a\u00020\u0002H'J\u0018\u0010b\u001a\b\u0012\u0004\u0012\u00020\u00010\u00052\b\b\u0001\u0010^\u001a\u00020\u0002H'J\u000e\u0010d\u001a\b\u0012\u0004\u0012\u00020c0\u0005H'\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006e"}, d2 = {"Lcom/shabakaty/downloader/k9;", BuildConfig.FLAVOR, BuildConfig.FLAVOR, "videoNb", "cache", "Lcom/shabakaty/downloader/f74;", "Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;", "A", BuildConfig.FLAVOR, "Lcom/shabakaty/downloader/p60;", "getComments", "Lcom/shabakaty/cinemana/domain/models/remote/TranscodeFileApi;", "z", "videoID", "Lcom/shabakaty/downloader/r25;", "a", "userId", "videoId", "likeValue", "Lcom/shabakaty/cinemana/domain/models/remote/user/LogoutResponseApi;", "C", "kind", "t", "d", "pageNumber", "Lcom/shabakaty/cinemana/domain/models/remote/user/UserListApi;", "e", "rootEpisode", "l", "v", "y", "Lcom/shabakaty/cinemana/domain/models/remote/RecommendationsRequest;", "body", "url", "Lcom/shabakaty/cinemana/domain/models/remote/RecommendationsApi;", "o", "rootEpisodeId", "Lcom/shabakaty/downloader/qf1;", "b", "comment", "f", "commentID", "E", "commentId", "x", "newComment", "r", "actorID", "parentalLevel", "Lcom/shabakaty/cinemana/domain/models/remote/actor_info/StaffModelApi;", "w", "c", "language", "Lcom/shabakaty/cinemana/domain/models/remote/home_page/HomeGroupsApi;", "h", "Lcom/shabakaty/cinemana/domain/models/remote/home_page/CollectionItemApi;", "H", "id", "F", "g", "Lcom/shabakaty/cinemana/domain/models/remote/categories/NewCategoryItemApi;", "D", "Lcom/shabakaty/cinemana/domain/models/remote/user/UserSettingsApi;", "I", "(Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;", "Lcom/shabakaty/downloader/qv4;", "j", "translationState", "m", "count", "Lcom/shabakaty/cinemana/domain/models/remote/user/NotificationsListApi;", "q", "p", "Lcom/shabakaty/downloader/w60;", "i", "videoTitle", "staffTitle", "type", "year", "category", BuildConfig.FLAVOR, "stars", "page", "G", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/String;)Lcom/shabakaty/downloader/f74;", "groupID", "level", "itemsPerPage", "u", "categoryNb", "mediaType", "langNb", "sortParam", "n", "deviceId", "deviceName", "playerId", "s", "B", "Lcom/shabakaty/cinemana/domain/models/remote/StatusApi;", "k", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public interface k9 {

    /* JADX INFO: compiled from: ApiServices.kt */
    public static final class a {
    }

    @lo1("allVideoInfo/id/{videoNb}")
    f74<VideoModelApi> A(@va3("videoNb") String videoNb, @os1("Cache-Control") String cache);

    @i93("logout/")
    @vh1
    f74<Object> B(@la1("deviceId") String deviceId);

    @i93("addLike/")
    @vh1
    f74<LogoutResponseApi> C(@la1(ZendeskIdentityStorage.USER_ID_KEY) String userId, @la1("videoId") String videoId, @la1("likeValue") String likeValue);

    @lo1("categories")
    f74<List<NewCategoryItemApi>> D(@os1("Cache-Control") String cache);

    @i93("commentSpam/")
    @vh1
    f74<LogoutResponseApi> E(@la1("userID") String userId, @la1("videoID") String videoId, @la1("commentID") String commentID);

    @lo1("getCollection/collectionID/{id}/level/{parentalLevel}")
    f74<List<CollectionItemApi>> F(@va3("parentalLevel") String parentalLevel, @va3("id") String id, @os1("Cache-Control") String cache);

    @lo1("AdvancedSearch")
    f74<List<VideoModelApi>> G(@ok3("videoTitle") String videoTitle, @ok3("staffTitle") String staffTitle, @ok3("type") String type, @ok3(encoded = true, value = "year") String year, @ok3("category_id") String category, @ok3("star") Integer stars, @ok3("page") int page, @ok3("level") String parentalLevel);

    @lo1("collectionsId/level/{parentalLevel}")
    f74<List<CollectionItemApi>> H(@va3("parentalLevel") String parentalLevel, @os1("Cache-Control") String cache);

    @lo1("userSettings/lang/{language}")
    Object I(@va3("language") String str, ud0<? super UserSettingsApi> ud0Var);

    @lo1("memberCheckVideoStatus/id/{videoNb}")
    f74<r25> a(@va3("videoNb") String videoID);

    @lo1("videoSeason/id/{rootEpisodeId}")
    qf1<List<VideoModelApi>> b(@va3("rootEpisodeId") String rootEpisodeId, @os1("Cache-Control") String cache);

    @lo1("banner/level/{parentalLevel}")
    f74<List<VideoModelApi>> c(@va3("parentalLevel") String parentalLevel, @os1("Cache-Control") String cache);

    @i93("removeFromHistory/")
    @vh1
    f74<LogoutResponseApi> d(@la1(ZendeskIdentityStorage.USER_ID_KEY) String userId, @la1("videoId") String videoId, @la1("kind") String kind);

    @i93("history/")
    @vh1
    f74<UserListApi> e(@la1("pageNumber") String pageNumber, @la1(ZendeskIdentityStorage.USER_ID_KEY) String userId, @la1("kind") String kind);

    @i93("addComment/")
    @vh1
    f74<LogoutResponseApi> f(@la1("id") String userId, @la1("videoId") String videoId, @la1("comment") String comment);

    @lo1("newlyVideosItems/level/{parentalLevel}/offset/12/")
    f74<List<VideoModelApi>> g(@va3("parentalLevel") String parentalLevel);

    @lo1("videoComment/id/{videoNb}")
    f74<List<p60>> getComments(@va3("videoNb") String videoNb);

    @lo1("videoGroups/lang/{language}/level/{parentalLevel}")
    f74<HomeGroupsApi> h(@va3("language") String language, @va3("parentalLevel") String parentalLevel, @os1("Cache-Control") String cache);

    @lo1("commentRules")
    f74<w60> i();

    @i93("changeParentalLevel")
    @vh1
    Object j(@la1("parentalLevel") String str, ud0<? super qv4> ud0Var);

    @lo1("https://6b1m6vnfz2jk.statuspage.io/api/v2/components.json")
    f74<StatusApi> k();

    @i93("highlightEpisode/")
    @vh1
    f74<List<String>> l(@la1("videoID") String rootEpisode);

    @i93("UserTranslationSettings")
    @vh1
    Object m(@la1("enableNonTranslation") String str, ud0<? super qv4> ud0Var);

    @lo1("video/V/2")
    f74<List<VideoModelApi>> n(@ok3("categoryNb") String categoryNb, @ok3("videoKind") String mediaType, @ok3("langNb") String langNb, @ok3("itemsPerPage") String itemsPerPage, @ok3("pageNumber") String pageNumber, @ok3("level") String level, @ok3("sortParam") String sortParam, @os1("Cache-Control") String cache);

    @i93
    f74<RecommendationsApi> o(@sm RecommendationsRequest body, @ax4 String url, @os1("Cache-Control") String cache);

    @i93("get_subscriptions")
    f74<List<VideoModelApi>> p();

    @i93("get_notifications")
    @vh1
    f74<NotificationsListApi> q(@la1("count") String count);

    @i93("updateComment/")
    @vh1
    f74<LogoutResponseApi> r(@la1("id") String userId, @la1("videoId") String videoId, @la1("commentId") String commentId, @la1("comment") String newComment);

    @i93("login/")
    @vh1
    f74<Object> s(@la1("deviceId") String deviceId, @la1("deviceName") String deviceName, @la1("playerId") String playerId);

    @i93("addToHistory/")
    @vh1
    f74<LogoutResponseApi> t(@la1(ZendeskIdentityStorage.USER_ID_KEY) String userId, @la1("videoId") String videoId, @la1("kind") String kind);

    @lo1("videoListPagination")
    f74<List<VideoModelApi>> u(@ok3("groupID") String groupID, @ok3("level") String level, @ok3("itemsPerPage") String itemsPerPage, @ok3("page") int page);

    @i93("add_subscriptions/")
    @vh1
    f74<String> v(@la1(ZendeskIdentityStorage.USER_ID_KEY) String userId, @la1("video_id") String videoId);

    @lo1("staff/actorID/{actorID}/level/{level}")
    f74<StaffModelApi> w(@va3("actorID") String actorID, @va3("level") String parentalLevel);

    @i93("removeComment/")
    @vh1
    f74<LogoutResponseApi> x(@la1("id") String userId, @la1("videoId") String videoId, @la1("commentId") String commentId);

    @i93("remove_subscriptions/")
    @vh1
    f74<String> y(@la1(ZendeskIdentityStorage.USER_ID_KEY) String userId, @la1("video_id") String videoId);

    @lo1("transcoddedFiles/id/{videoNb}")
    f74<List<TranscodeFileApi>> z(@va3("videoNb") String videoNb, @os1("Cache-Control") String cache);
}
