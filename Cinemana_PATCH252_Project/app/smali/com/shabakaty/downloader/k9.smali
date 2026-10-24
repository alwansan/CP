.class public interface abstract Lcom/shabakaty/downloader/k9;
.super Ljava/lang/Object;
.source "ApiServices.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/k9$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00a8\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\"\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u0002H\'J\u001e\u0010\n\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u00052\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u0002H\'J(\u0010\u000c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\u00080\u00052\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u0002H\'J\u0018\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00052\u0008\u0008\u0001\u0010\r\u001a\u00020\u0002H\'J,\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00052\u0008\u0008\u0001\u0010\u0010\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u0011\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u0012\u001a\u00020\u0002H\'J,\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00052\u0008\u0008\u0001\u0010\u0010\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u0011\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u0015\u001a\u00020\u0002H\'J,\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00052\u0008\u0008\u0001\u0010\u0010\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u0011\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u0015\u001a\u00020\u0002H\'J,\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u00052\u0008\u0008\u0001\u0010\u0018\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u0010\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u0015\u001a\u00020\u0002H\'J\u001e\u0010\u001c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u00080\u00052\u0008\u0008\u0001\u0010\u001b\u001a\u00020\u0002H\'J\"\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00052\u0008\u0008\u0001\u0010\u0010\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u0011\u001a\u00020\u0002H\'J\"\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00052\u0008\u0008\u0001\u0010\u0010\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u0011\u001a\u00020\u0002H\'J,\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\"0\u00052\u0008\u0008\u0001\u0010 \u001a\u00020\u001f2\u0008\u0008\u0003\u0010!\u001a\u00020\u00022\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u0002H\'J(\u0010&\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00080%2\u0008\u0008\u0001\u0010$\u001a\u00020\u00022\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u0002H\'J,\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00052\u0008\u0008\u0001\u0010\u0010\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u0011\u001a\u00020\u00022\u0008\u0008\u0001\u0010\'\u001a\u00020\u0002H\'J,\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00052\u0008\u0008\u0001\u0010\u0010\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u0011\u001a\u00020\u00022\u0008\u0008\u0001\u0010)\u001a\u00020\u0002H\'J,\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00052\u0008\u0008\u0001\u0010\u0010\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u0011\u001a\u00020\u00022\u0008\u0008\u0001\u0010+\u001a\u00020\u0002H\'J6\u0010.\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00052\u0008\u0008\u0001\u0010\u0010\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u0011\u001a\u00020\u00022\u0008\u0008\u0001\u0010+\u001a\u00020\u00022\u0008\u0008\u0001\u0010-\u001a\u00020\u0002H\'J\"\u00102\u001a\u0008\u0012\u0004\u0012\u0002010\u00052\u0008\u0008\u0001\u0010/\u001a\u00020\u00022\u0008\u0008\u0001\u00100\u001a\u00020\u0002H\'J(\u00103\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00080\u00052\u0008\u0008\u0001\u00100\u001a\u00020\u00022\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u0002H\'J,\u00106\u001a\u0008\u0012\u0004\u0012\u0002050\u00052\u0008\u0008\u0001\u00104\u001a\u00020\u00022\u0008\u0008\u0001\u00100\u001a\u00020\u00022\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u0002H\'J(\u00108\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002070\u00080\u00052\u0008\u0008\u0001\u00100\u001a\u00020\u00022\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u0002H\'J2\u0010:\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002070\u00080\u00052\u0008\u0008\u0001\u00100\u001a\u00020\u00022\u0008\u0008\u0001\u00109\u001a\u00020\u00022\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u0002H\'J\u001e\u0010;\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00080\u00052\u0008\u0008\u0001\u00100\u001a\u00020\u0002H\'J\u001e\u0010=\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020<0\u00080\u00052\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u0002H\'J\u001d\u0010?\u001a\u00020>2\u0008\u0008\u0001\u00104\u001a\u00020\u0002H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008?\u0010@J\u001d\u0010B\u001a\u00020A2\u0008\u0008\u0001\u00100\u001a\u00020\u0002H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008B\u0010@J\u001d\u0010D\u001a\u00020A2\u0008\u0008\u0001\u0010C\u001a\u00020\u0002H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008D\u0010@J\u0018\u0010G\u001a\u0008\u0012\u0004\u0012\u00020F0\u00052\u0008\u0008\u0001\u0010E\u001a\u00020\u0002H\'J\u0014\u0010H\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00080\u0005H\'J\u000e\u0010J\u001a\u0008\u0012\u0004\u0012\u00020I0\u0005H\'Jy\u0010S\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00080\u00052\n\u0008\u0001\u0010K\u001a\u0004\u0018\u00010\u00022\n\u0008\u0001\u0010L\u001a\u0004\u0018\u00010\u00022\n\u0008\u0001\u0010M\u001a\u0004\u0018\u00010\u00022\n\u0008\u0001\u0010N\u001a\u0004\u0018\u00010\u00022\n\u0008\u0001\u0010O\u001a\u0004\u0018\u00010\u00022\n\u0008\u0001\u0010Q\u001a\u0004\u0018\u00010P2\u0008\u0008\u0001\u0010R\u001a\u00020P2\n\u0008\u0001\u00100\u001a\u0004\u0018\u00010\u0002H\'\u00a2\u0006\u0004\u0008S\u0010TJB\u0010X\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00080\u00052\n\u0008\u0001\u0010U\u001a\u0004\u0018\u00010\u00022\n\u0008\u0001\u0010V\u001a\u0004\u0018\u00010\u00022\n\u0008\u0001\u0010W\u001a\u0004\u0018\u00010\u00022\u0008\u0008\u0001\u0010R\u001a\u00020PH\'Jp\u0010]\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00080\u00052\n\u0008\u0001\u0010Y\u001a\u0004\u0018\u00010\u00022\u0008\u0008\u0001\u0010Z\u001a\u00020\u00022\n\u0008\u0001\u0010[\u001a\u0004\u0018\u00010\u00022\n\u0008\u0001\u0010W\u001a\u0004\u0018\u00010\u00022\n\u0008\u0001\u0010\u0018\u001a\u0004\u0018\u00010\u00022\n\u0008\u0001\u0010V\u001a\u0004\u0018\u00010\u00022\n\u0008\u0001\u0010\\\u001a\u0004\u0018\u00010\u00022\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u0002H\'J,\u0010a\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00052\u0008\u0008\u0001\u0010^\u001a\u00020\u00022\u0008\u0008\u0001\u0010_\u001a\u00020\u00022\u0008\u0008\u0001\u0010`\u001a\u00020\u0002H\'J\u0018\u0010b\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00052\u0008\u0008\u0001\u0010^\u001a\u00020\u0002H\'J\u000e\u0010d\u001a\u0008\u0012\u0004\u0012\u00020c0\u0005H\'\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006e"
    }
    d2 = {
        "Lcom/shabakaty/downloader/k9;",
        "",
        "",
        "videoNb",
        "cache",
        "Lcom/shabakaty/downloader/f74;",
        "Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;",
        "A",
        "",
        "Lcom/shabakaty/downloader/p60;",
        "getComments",
        "Lcom/shabakaty/cinemana/domain/models/remote/TranscodeFileApi;",
        "z",
        "videoID",
        "Lcom/shabakaty/downloader/r25;",
        "a",
        "userId",
        "videoId",
        "likeValue",
        "Lcom/shabakaty/cinemana/domain/models/remote/user/LogoutResponseApi;",
        "C",
        "kind",
        "t",
        "d",
        "pageNumber",
        "Lcom/shabakaty/cinemana/domain/models/remote/user/UserListApi;",
        "e",
        "rootEpisode",
        "l",
        "v",
        "y",
        "Lcom/shabakaty/cinemana/domain/models/remote/RecommendationsRequest;",
        "body",
        "url",
        "Lcom/shabakaty/cinemana/domain/models/remote/RecommendationsApi;",
        "o",
        "rootEpisodeId",
        "Lcom/shabakaty/downloader/qf1;",
        "b",
        "comment",
        "f",
        "commentID",
        "E",
        "commentId",
        "x",
        "newComment",
        "r",
        "actorID",
        "parentalLevel",
        "Lcom/shabakaty/cinemana/domain/models/remote/actor_info/StaffModelApi;",
        "w",
        "c",
        "language",
        "Lcom/shabakaty/cinemana/domain/models/remote/home_page/HomeGroupsApi;",
        "h",
        "Lcom/shabakaty/cinemana/domain/models/remote/home_page/CollectionItemApi;",
        "H",
        "id",
        "F",
        "g",
        "Lcom/shabakaty/cinemana/domain/models/remote/categories/NewCategoryItemApi;",
        "D",
        "Lcom/shabakaty/cinemana/domain/models/remote/user/UserSettingsApi;",
        "I",
        "(Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/qv4;",
        "j",
        "translationState",
        "m",
        "count",
        "Lcom/shabakaty/cinemana/domain/models/remote/user/NotificationsListApi;",
        "q",
        "p",
        "Lcom/shabakaty/downloader/w60;",
        "i",
        "videoTitle",
        "staffTitle",
        "type",
        "year",
        "category",
        "",
        "stars",
        "page",
        "G",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/String;)Lcom/shabakaty/downloader/f74;",
        "groupID",
        "level",
        "itemsPerPage",
        "u",
        "categoryNb",
        "mediaType",
        "langNb",
        "sortParam",
        "n",
        "deviceId",
        "deviceName",
        "playerId",
        "s",
        "B",
        "Lcom/shabakaty/cinemana/domain/models/remote/StatusApi;",
        "k",
        "app_productionBetaRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# virtual methods
.method public abstract A(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/va3;
            value = "videoNb"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/os1;
            value = "Cache-Control"
        .end annotation
    .end param
    .annotation runtime Lcom/shabakaty/downloader/lo1;
        value = "allVideoInfo/id/{videoNb}"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/shabakaty/downloader/f74<",
            "Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;",
            ">;"
        }
    .end annotation
.end method

.method public abstract B(Ljava/lang/String;)Lcom/shabakaty/downloader/f74;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/la1;
            value = "deviceId"
        .end annotation
    .end param
    .annotation runtime Lcom/shabakaty/downloader/i93;
        value = "logout/"
    .end annotation

    .annotation runtime Lcom/shabakaty/downloader/vh1;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/shabakaty/downloader/f74<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/la1;
            value = "user_id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/la1;
            value = "videoId"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/la1;
            value = "likeValue"
        .end annotation
    .end param
    .annotation runtime Lcom/shabakaty/downloader/i93;
        value = "addLike/"
    .end annotation

    .annotation runtime Lcom/shabakaty/downloader/vh1;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/shabakaty/downloader/f74<",
            "Lcom/shabakaty/cinemana/domain/models/remote/user/LogoutResponseApi;",
            ">;"
        }
    .end annotation
.end method

.method public abstract D(Ljava/lang/String;)Lcom/shabakaty/downloader/f74;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/os1;
            value = "Cache-Control"
        .end annotation
    .end param
    .annotation runtime Lcom/shabakaty/downloader/lo1;
        value = "categories"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/shabakaty/downloader/f74<",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/remote/categories/NewCategoryItemApi;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/la1;
            value = "userID"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/la1;
            value = "videoID"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/la1;
            value = "commentID"
        .end annotation
    .end param
    .annotation runtime Lcom/shabakaty/downloader/i93;
        value = "commentSpam/"
    .end annotation

    .annotation runtime Lcom/shabakaty/downloader/vh1;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/shabakaty/downloader/f74<",
            "Lcom/shabakaty/cinemana/domain/models/remote/user/LogoutResponseApi;",
            ">;"
        }
    .end annotation
.end method

.method public abstract F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/va3;
            value = "parentalLevel"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/va3;
            value = "id"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/os1;
            value = "Cache-Control"
        .end annotation
    .end param
    .annotation runtime Lcom/shabakaty/downloader/lo1;
        value = "getCollection/collectionID/{id}/level/{parentalLevel}"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/shabakaty/downloader/f74<",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/remote/home_page/CollectionItemApi;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/String;)Lcom/shabakaty/downloader/f74;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/ok3;
            value = "videoTitle"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/ok3;
            value = "staffTitle"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/ok3;
            value = "type"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/ok3;
            encoded = true
            value = "year"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/ok3;
            value = "category_id"
        .end annotation
    .end param
    .param p6    # Ljava/lang/Integer;
        .annotation runtime Lcom/shabakaty/downloader/ok3;
            value = "star"
        .end annotation
    .end param
    .param p7    # I
        .annotation runtime Lcom/shabakaty/downloader/ok3;
            value = "page"
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/ok3;
            value = "level"
        .end annotation
    .end param
    .annotation runtime Lcom/shabakaty/downloader/lo1;
        value = "AdvancedSearch"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/shabakaty/downloader/f74<",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract H(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/va3;
            value = "parentalLevel"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/os1;
            value = "Cache-Control"
        .end annotation
    .end param
    .annotation runtime Lcom/shabakaty/downloader/lo1;
        value = "collectionsId/level/{parentalLevel}"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/shabakaty/downloader/f74<",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/remote/home_page/CollectionItemApi;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract I(Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/va3;
            value = "language"
        .end annotation
    .end param
    .annotation runtime Lcom/shabakaty/downloader/lo1;
        value = "userSettings/lang/{language}"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/cinemana/domain/models/remote/user/UserSettingsApi;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;)Lcom/shabakaty/downloader/f74;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/va3;
            value = "videoNb"
        .end annotation
    .end param
    .annotation runtime Lcom/shabakaty/downloader/lo1;
        value = "memberCheckVideoStatus/id/{videoNb}"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/shabakaty/downloader/f74<",
            "Lcom/shabakaty/downloader/r25;",
            ">;"
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/qf1;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/va3;
            value = "rootEpisodeId"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/os1;
            value = "Cache-Control"
        .end annotation
    .end param
    .annotation runtime Lcom/shabakaty/downloader/lo1;
        value = "videoSeason/id/{rootEpisodeId}"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/shabakaty/downloader/qf1<",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract c(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/va3;
            value = "parentalLevel"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/os1;
            value = "Cache-Control"
        .end annotation
    .end param
    .annotation runtime Lcom/shabakaty/downloader/lo1;
        value = "banner/level/{parentalLevel}"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/shabakaty/downloader/f74<",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/la1;
            value = "user_id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/la1;
            value = "videoId"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/la1;
            value = "kind"
        .end annotation
    .end param
    .annotation runtime Lcom/shabakaty/downloader/i93;
        value = "removeFromHistory/"
    .end annotation

    .annotation runtime Lcom/shabakaty/downloader/vh1;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/shabakaty/downloader/f74<",
            "Lcom/shabakaty/cinemana/domain/models/remote/user/LogoutResponseApi;",
            ">;"
        }
    .end annotation
.end method

.method public abstract e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/la1;
            value = "pageNumber"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/la1;
            value = "user_id"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/la1;
            value = "kind"
        .end annotation
    .end param
    .annotation runtime Lcom/shabakaty/downloader/i93;
        value = "history/"
    .end annotation

    .annotation runtime Lcom/shabakaty/downloader/vh1;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/shabakaty/downloader/f74<",
            "Lcom/shabakaty/cinemana/domain/models/remote/user/UserListApi;",
            ">;"
        }
    .end annotation
.end method

.method public abstract f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/la1;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/la1;
            value = "videoId"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/la1;
            value = "comment"
        .end annotation
    .end param
    .annotation runtime Lcom/shabakaty/downloader/i93;
        value = "addComment/"
    .end annotation

    .annotation runtime Lcom/shabakaty/downloader/vh1;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/shabakaty/downloader/f74<",
            "Lcom/shabakaty/cinemana/domain/models/remote/user/LogoutResponseApi;",
            ">;"
        }
    .end annotation
.end method

.method public abstract g(Ljava/lang/String;)Lcom/shabakaty/downloader/f74;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/va3;
            value = "parentalLevel"
        .end annotation
    .end param
    .annotation runtime Lcom/shabakaty/downloader/lo1;
        value = "newlyVideosItems/level/{parentalLevel}/offset/12/"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/shabakaty/downloader/f74<",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getComments(Ljava/lang/String;)Lcom/shabakaty/downloader/f74;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/va3;
            value = "videoNb"
        .end annotation
    .end param
    .annotation runtime Lcom/shabakaty/downloader/lo1;
        value = "videoComment/id/{videoNb}"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/shabakaty/downloader/f74<",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/p60;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/va3;
            value = "language"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/va3;
            value = "parentalLevel"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/os1;
            value = "Cache-Control"
        .end annotation
    .end param
    .annotation runtime Lcom/shabakaty/downloader/lo1;
        value = "videoGroups/lang/{language}/level/{parentalLevel}"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/shabakaty/downloader/f74<",
            "Lcom/shabakaty/cinemana/domain/models/remote/home_page/HomeGroupsApi;",
            ">;"
        }
    .end annotation
.end method

.method public abstract i()Lcom/shabakaty/downloader/f74;
    .annotation runtime Lcom/shabakaty/downloader/lo1;
        value = "commentRules"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/f74<",
            "Lcom/shabakaty/downloader/w60;",
            ">;"
        }
    .end annotation
.end method

.method public abstract j(Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/la1;
            value = "parentalLevel"
        .end annotation
    .end param
    .annotation runtime Lcom/shabakaty/downloader/i93;
        value = "changeParentalLevel"
    .end annotation

    .annotation runtime Lcom/shabakaty/downloader/vh1;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract k()Lcom/shabakaty/downloader/f74;
    .annotation runtime Lcom/shabakaty/downloader/lo1;
        value = "https://6b1m6vnfz2jk.statuspage.io/api/v2/components.json"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/f74<",
            "Lcom/shabakaty/cinemana/domain/models/remote/StatusApi;",
            ">;"
        }
    .end annotation
.end method

.method public abstract l(Ljava/lang/String;)Lcom/shabakaty/downloader/f74;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/la1;
            value = "videoID"
        .end annotation
    .end param
    .annotation runtime Lcom/shabakaty/downloader/i93;
        value = "highlightEpisode/"
    .end annotation

    .annotation runtime Lcom/shabakaty/downloader/vh1;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/shabakaty/downloader/f74<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract m(Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/la1;
            value = "enableNonTranslation"
        .end annotation
    .end param
    .annotation runtime Lcom/shabakaty/downloader/i93;
        value = "UserTranslationSettings"
    .end annotation

    .annotation runtime Lcom/shabakaty/downloader/vh1;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/ok3;
            value = "categoryNb"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/ok3;
            value = "videoKind"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/ok3;
            value = "langNb"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/ok3;
            value = "itemsPerPage"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/ok3;
            value = "pageNumber"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/ok3;
            value = "level"
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/ok3;
            value = "sortParam"
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/os1;
            value = "Cache-Control"
        .end annotation
    .end param
    .annotation runtime Lcom/shabakaty/downloader/lo1;
        value = "video/V/2"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/shabakaty/downloader/f74<",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract o(Lcom/shabakaty/cinemana/domain/models/remote/RecommendationsRequest;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;
    .param p1    # Lcom/shabakaty/cinemana/domain/models/remote/RecommendationsRequest;
        .annotation runtime Lcom/shabakaty/downloader/sm;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/ax4;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/os1;
            value = "Cache-Control"
        .end annotation
    .end param
    .annotation runtime Lcom/shabakaty/downloader/i93;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/cinemana/domain/models/remote/RecommendationsRequest;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/shabakaty/downloader/f74<",
            "Lcom/shabakaty/cinemana/domain/models/remote/RecommendationsApi;",
            ">;"
        }
    .end annotation
.end method

.method public abstract p()Lcom/shabakaty/downloader/f74;
    .annotation runtime Lcom/shabakaty/downloader/i93;
        value = "get_subscriptions"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/f74<",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract q(Ljava/lang/String;)Lcom/shabakaty/downloader/f74;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/la1;
            value = "count"
        .end annotation
    .end param
    .annotation runtime Lcom/shabakaty/downloader/i93;
        value = "get_notifications"
    .end annotation

    .annotation runtime Lcom/shabakaty/downloader/vh1;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/shabakaty/downloader/f74<",
            "Lcom/shabakaty/cinemana/domain/models/remote/user/NotificationsListApi;",
            ">;"
        }
    .end annotation
.end method

.method public abstract r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/la1;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/la1;
            value = "videoId"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/la1;
            value = "commentId"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/la1;
            value = "comment"
        .end annotation
    .end param
    .annotation runtime Lcom/shabakaty/downloader/i93;
        value = "updateComment/"
    .end annotation

    .annotation runtime Lcom/shabakaty/downloader/vh1;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/shabakaty/downloader/f74<",
            "Lcom/shabakaty/cinemana/domain/models/remote/user/LogoutResponseApi;",
            ">;"
        }
    .end annotation
.end method

.method public abstract s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/la1;
            value = "deviceId"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/la1;
            value = "deviceName"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/la1;
            value = "playerId"
        .end annotation
    .end param
    .annotation runtime Lcom/shabakaty/downloader/i93;
        value = "login/"
    .end annotation

    .annotation runtime Lcom/shabakaty/downloader/vh1;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/shabakaty/downloader/f74<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/la1;
            value = "user_id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/la1;
            value = "videoId"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/la1;
            value = "kind"
        .end annotation
    .end param
    .annotation runtime Lcom/shabakaty/downloader/i93;
        value = "addToHistory/"
    .end annotation

    .annotation runtime Lcom/shabakaty/downloader/vh1;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/shabakaty/downloader/f74<",
            "Lcom/shabakaty/cinemana/domain/models/remote/user/LogoutResponseApi;",
            ">;"
        }
    .end annotation
.end method

.method public abstract u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/f74;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/ok3;
            value = "groupID"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/ok3;
            value = "level"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/ok3;
            value = "itemsPerPage"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lcom/shabakaty/downloader/ok3;
            value = "page"
        .end annotation
    .end param
    .annotation runtime Lcom/shabakaty/downloader/lo1;
        value = "videoListPagination"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/shabakaty/downloader/f74<",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract v(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/la1;
            value = "user_id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/la1;
            value = "video_id"
        .end annotation
    .end param
    .annotation runtime Lcom/shabakaty/downloader/i93;
        value = "add_subscriptions/"
    .end annotation

    .annotation runtime Lcom/shabakaty/downloader/vh1;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/shabakaty/downloader/f74<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract w(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/va3;
            value = "actorID"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/va3;
            value = "level"
        .end annotation
    .end param
    .annotation runtime Lcom/shabakaty/downloader/lo1;
        value = "staff/actorID/{actorID}/level/{level}"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/shabakaty/downloader/f74<",
            "Lcom/shabakaty/cinemana/domain/models/remote/actor_info/StaffModelApi;",
            ">;"
        }
    .end annotation
.end method

.method public abstract x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/la1;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/la1;
            value = "videoId"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/la1;
            value = "commentId"
        .end annotation
    .end param
    .annotation runtime Lcom/shabakaty/downloader/i93;
        value = "removeComment/"
    .end annotation

    .annotation runtime Lcom/shabakaty/downloader/vh1;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/shabakaty/downloader/f74<",
            "Lcom/shabakaty/cinemana/domain/models/remote/user/LogoutResponseApi;",
            ">;"
        }
    .end annotation
.end method

.method public abstract y(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/la1;
            value = "user_id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/la1;
            value = "video_id"
        .end annotation
    .end param
    .annotation runtime Lcom/shabakaty/downloader/i93;
        value = "remove_subscriptions/"
    .end annotation

    .annotation runtime Lcom/shabakaty/downloader/vh1;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/shabakaty/downloader/f74<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract z(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/va3;
            value = "videoNb"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/os1;
            value = "Cache-Control"
        .end annotation
    .end param
    .annotation runtime Lcom/shabakaty/downloader/lo1;
        value = "transcoddedFiles/id/{videoNb}"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/shabakaty/downloader/f74<",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/remote/TranscodeFileApi;",
            ">;>;"
        }
    .end annotation
.end method
