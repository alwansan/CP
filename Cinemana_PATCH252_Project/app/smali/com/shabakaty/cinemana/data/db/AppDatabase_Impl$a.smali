.class public Lcom/shabakaty/cinemana/data/db/AppDatabase_Impl$a;
.super Lcom/shabakaty/downloader/xt3$a;
.source "AppDatabase_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/data/db/AppDatabase_Impl;->d(Lcom/shabakaty/downloader/bm0;)Lcom/shabakaty/downloader/zh4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/shabakaty/cinemana/data/db/AppDatabase_Impl;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/data/db/AppDatabase_Impl;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/cinemana/data/db/AppDatabase_Impl$a;->b:Lcom/shabakaty/cinemana/data/db/AppDatabase_Impl;

    invoke-direct {p0, p2}, Lcom/shabakaty/downloader/xt3$a;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/yh4;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS `users` (`id` TEXT NOT NULL, `userName` TEXT NOT NULL, `firstName` TEXT NOT NULL, `lastName` TEXT NOT NULL, `password` TEXT NOT NULL, `token` TEXT NOT NULL, `refreshToken` TEXT NOT NULL, `refreshTime` TEXT NOT NULL, `img` TEXT NOT NULL, PRIMARY KEY(`id`))"

    .line 1
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/yh4;->H(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `search_table` (`nb` TEXT NOT NULL, `enTitle` TEXT NOT NULL, `arTitle` TEXT NOT NULL, `stars` TEXT NOT NULL, `year` TEXT NOT NULL, `kind` TEXT NOT NULL, `season` TEXT NOT NULL, `imgObjUrl` TEXT NOT NULL, `episodeNummer` TEXT NOT NULL, `rate` TEXT NOT NULL, `imgMediumThumbObjUrl` TEXT NOT NULL, `categoryEn` TEXT NOT NULL, `categoryAr` TEXT NOT NULL, PRIMARY KEY(`nb`))"

    .line 2
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/yh4;->H(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `CinemanaDownloadItem` (`id` TEXT NOT NULL, `downloadTaskId` INTEGER NOT NULL, `title` TEXT NOT NULL, `stars` TEXT NOT NULL, `kind` TEXT NOT NULL, `sizeMB` INTEGER NOT NULL, `season` TEXT NOT NULL, `imgObjUrl` TEXT NOT NULL, `filmRating` TEXT NOT NULL, `tvShowRating` TEXT NOT NULL, `path` TEXT NOT NULL, `episodeNumber` TEXT NOT NULL, `special` TEXT NOT NULL, `useParentImg` TEXT NOT NULL, `parentSkipping` TEXT NOT NULL, `collectionID` INTEGER NOT NULL, `imgThumbObjUrl` TEXT NOT NULL, `qualityName` TEXT NOT NULL, `rootEpisode` TEXT NOT NULL, `hasIntroSkipping` INTEGER NOT NULL, `episodeFlag` TEXT NOT NULL, `lastUpdated` TEXT NOT NULL, `skippingDurations_start` TEXT NOT NULL, `skippingDurations_end` TEXT NOT NULL, PRIMARY KEY(`id`))"

    .line 3
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/yh4;->H(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `DownloadsCollectionItem` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `name` TEXT NOT NULL, `image` TEXT NOT NULL)"

    .line 4
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/yh4;->H(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `SubtitleDb` (`id` TEXT NOT NULL, `parentId` TEXT NOT NULL, `downloadTaskId` INTEGER NOT NULL, `name` TEXT NOT NULL, `type` TEXT NOT NULL, `extension` TEXT NOT NULL, `file` TEXT NOT NULL, PRIMARY KEY(`id`))"

    .line 5
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/yh4;->H(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `SkippableSceneDB` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `parentId` TEXT NOT NULL, `start` INTEGER NOT NULL, `end` INTEGER NOT NULL, `controlLevel` TEXT NOT NULL)"

    .line 6
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/yh4;->H(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `video_status` (`id` TEXT NOT NULL, `videoId` TEXT NOT NULL, `liked` INTEGER NOT NULL, `watched` INTEGER NOT NULL, `annoying` INTEGER NOT NULL, `disLiked` INTEGER NOT NULL, `favorite` INTEGER NOT NULL, `watchLater` TEXT NOT NULL, `videoProgress` INTEGER NOT NULL, PRIMARY KEY(`id`), FOREIGN KEY(`videoId`) REFERENCES `video_model`(`nb`) ON UPDATE NO ACTION ON DELETE NO ACTION )"

    .line 7
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/yh4;->H(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS `videoId` ON `video_status` (`videoId`)"

    .line 8
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/yh4;->H(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `video_model` (`nb` TEXT NOT NULL, `enTitle` TEXT NOT NULL, `arTitle` TEXT NOT NULL, `otherTitle` TEXT NOT NULL, `stars` TEXT NOT NULL, `fileFile` TEXT NOT NULL, `arContent` TEXT NOT NULL, `enContent` TEXT NOT NULL, `mDate` TEXT NOT NULL, `year` TEXT NOT NULL, `kind` TEXT NOT NULL, `season` TEXT NOT NULL, `img` TEXT NOT NULL, `imgThumb` TEXT NOT NULL, `imgMediumThumb` TEXT NOT NULL, `imgObjUrl` TEXT NOT NULL, `imgMediumThumbObjUrl` TEXT NOT NULL, `filmRating` TEXT NOT NULL, `tvShowRating` TEXT NOT NULL, `episodeNummer` TEXT NOT NULL, `rate` TEXT NOT NULL, `special` TEXT NOT NULL, `itemDate` TEXT NOT NULL, `duration` TEXT NOT NULL, `imdbUrlRef` TEXT NOT NULL, `rootSeries` TEXT NOT NULL, `useParentImg` TEXT NOT NULL, `showComments` INTEGER NOT NULL, `episodeFlag` TEXT NOT NULL, `trailer` TEXT NOT NULL, `mock` INTEGER NOT NULL, `audioStreamNumber` TEXT NOT NULL, `parentSkipping` TEXT NOT NULL, `collectionID` INTEGER NOT NULL, `deleted` TEXT NOT NULL, `imgThumbObjUrl` TEXT NOT NULL, `ratingImg` TEXT NOT NULL, `arTranslationFilePath` TEXT NOT NULL, `hasIntroSkipping` INTEGER NOT NULL, `videoLikesNumber` TEXT NOT NULL, `videoDisLikesNumber` TEXT NOT NULL, `videoCommentsNumber` INTEGER NOT NULL, `videoViewsNumber` TEXT NOT NULL, `itemOrderList` TEXT NOT NULL, `listId` TEXT NOT NULL, `listSortOrder` TEXT NOT NULL, `castable` TEXT NOT NULL, `publishDate` TEXT NOT NULL, `episodeDesc` TEXT NOT NULL, `qualityName` TEXT NOT NULL, `customArTitle` TEXT NOT NULL, `customEnTitle` TEXT NOT NULL, `finished` INTEGER NOT NULL, `url` TEXT NOT NULL, `downloadTaskId` INTEGER NOT NULL, `downloadedTime` INTEGER NOT NULL, `size` TEXT NOT NULL, `description` TEXT NOT NULL, `addedToWatchLater` INTEGER NOT NULL, `watched` INTEGER NOT NULL, PRIMARY KEY(`nb`))"

    .line 9
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/yh4;->H(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS `nb` ON `video_model` (`nb`)"

    .line 10
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/yh4;->H(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `settings` (`userId` TEXT NOT NULL, `filter_parentalLevel` TEXT NOT NULL, `filter_skipInAppropriateScenes` INTEGER NOT NULL, `filter_showContentWithNoSubtitle` INTEGER NOT NULL, `app_language` TEXT NOT NULL, `app_theme` INTEGER NOT NULL, `app_seekPeriod` INTEGER NOT NULL, `app_showSubtitles` INTEGER NOT NULL, `subtitles_subtitleColor` INTEGER NOT NULL, `subtitles_subtitleEdgeColor` INTEGER NOT NULL, `subtitles_subtitleBackgroundColor` INTEGER NOT NULL, `subtitles_subtitleEdge` INTEGER NOT NULL, `subtitles_subtitleFontScale` REAL NOT NULL, `subtitles_subtitleFontFamily` TEXT NOT NULL, PRIMARY KEY(`userId`))"

    .line 11
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/yh4;->H(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    .line 12
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/yh4;->H(Ljava/lang/String;)V

    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'663afd1177d1ff597ddac9194d6e0a62\')"

    .line 13
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/yh4;->H(Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/shabakaty/downloader/yh4;)V
    .locals 2

    const-string v0, "DROP TABLE IF EXISTS `users`"

    .line 1
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/yh4;->H(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `search_table`"

    .line 2
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/yh4;->H(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `CinemanaDownloadItem`"

    .line 3
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/yh4;->H(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `DownloadsCollectionItem`"

    .line 4
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/yh4;->H(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `SubtitleDb`"

    .line 5
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/yh4;->H(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `SkippableSceneDB`"

    .line 6
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/yh4;->H(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `video_status`"

    .line 7
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/yh4;->H(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `video_model`"

    .line 8
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/yh4;->H(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `settings`"

    .line 9
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/yh4;->H(Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/shabakaty/cinemana/data/db/AppDatabase_Impl$a;->b:Lcom/shabakaty/cinemana/data/db/AppDatabase_Impl;

    .line 11
    iget-object p1, p1, Lcom/shabakaty/downloader/vt3;->g:Ljava/util/List;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 12
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_0
    if-ge v0, p1, :cond_0

    .line 13
    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/AppDatabase_Impl$a;->b:Lcom/shabakaty/cinemana/data/db/AppDatabase_Impl;

    .line 14
    iget-object v1, v1, Lcom/shabakaty/downloader/vt3;->g:Ljava/util/List;

    .line 15
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/vt3$b;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c(Lcom/shabakaty/downloader/yh4;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/shabakaty/cinemana/data/db/AppDatabase_Impl$a;->b:Lcom/shabakaty/cinemana/data/db/AppDatabase_Impl;

    .line 2
    iget-object p1, p1, Lcom/shabakaty/downloader/vt3;->g:Ljava/util/List;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_0
    if-ge v0, p1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/AppDatabase_Impl$a;->b:Lcom/shabakaty/cinemana/data/db/AppDatabase_Impl;

    .line 5
    iget-object v1, v1, Lcom/shabakaty/downloader/vt3;->g:Ljava/util/List;

    .line 6
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/vt3$b;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d(Lcom/shabakaty/downloader/yh4;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/data/db/AppDatabase_Impl$a;->b:Lcom/shabakaty/cinemana/data/db/AppDatabase_Impl;

    .line 2
    iput-object p1, v0, Lcom/shabakaty/downloader/vt3;->a:Lcom/shabakaty/downloader/yh4;

    const-string v0, "PRAGMA foreign_keys = ON"

    .line 3
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/yh4;->H(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/shabakaty/cinemana/data/db/AppDatabase_Impl$a;->b:Lcom/shabakaty/cinemana/data/db/AppDatabase_Impl;

    .line 5
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/vt3;->k(Lcom/shabakaty/downloader/yh4;)V

    .line 6
    iget-object v0, p0, Lcom/shabakaty/cinemana/data/db/AppDatabase_Impl$a;->b:Lcom/shabakaty/cinemana/data/db/AppDatabase_Impl;

    .line 7
    iget-object v0, v0, Lcom/shabakaty/downloader/vt3;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 9
    iget-object v2, p0, Lcom/shabakaty/cinemana/data/db/AppDatabase_Impl$a;->b:Lcom/shabakaty/cinemana/data/db/AppDatabase_Impl;

    .line 10
    iget-object v2, v2, Lcom/shabakaty/downloader/vt3;->g:Ljava/util/List;

    .line 11
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/vt3$b;

    invoke-virtual {v2, p1}, Lcom/shabakaty/downloader/vt3$b;->a(Lcom/shabakaty/downloader/yh4;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e(Lcom/shabakaty/downloader/yh4;)V
    .locals 0

    return-void
.end method

.method public f(Lcom/shabakaty/downloader/yh4;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/lh0;->a(Lcom/shabakaty/downloader/yh4;)V

    return-void
.end method

.method public g(Lcom/shabakaty/downloader/yh4;)Lcom/shabakaty/downloader/xt3$b;
    .locals 39

    move-object/from16 v0, p1

    .line 1
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    new-instance v10, Lcom/shabakaty/downloader/hk4$a;

    const-string v4, "id"

    const-string v5, "TEXT"

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "id"

    invoke-virtual {v1, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v4, Lcom/shabakaty/downloader/hk4$a;

    const-string v12, "userName"

    const-string v13, "TEXT"

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object v11, v4

    invoke-direct/range {v11 .. v17}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "userName"

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v4, Lcom/shabakaty/downloader/hk4$a;

    const-string v7, "firstName"

    const-string v8, "TEXT"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v6, v4

    invoke-direct/range {v6 .. v12}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "firstName"

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v4, Lcom/shabakaty/downloader/hk4$a;

    const-string v7, "lastName"

    const-string v8, "TEXT"

    move-object v6, v4

    invoke-direct/range {v6 .. v12}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "lastName"

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v4, Lcom/shabakaty/downloader/hk4$a;

    const-string v7, "password"

    const-string v8, "TEXT"

    move-object v6, v4

    invoke-direct/range {v6 .. v12}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "password"

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v4, Lcom/shabakaty/downloader/hk4$a;

    const-string v7, "token"

    const-string v8, "TEXT"

    move-object v6, v4

    invoke-direct/range {v6 .. v12}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "token"

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v4, Lcom/shabakaty/downloader/hk4$a;

    const-string v7, "refreshToken"

    const-string v8, "TEXT"

    move-object v6, v4

    invoke-direct/range {v6 .. v12}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "refreshToken"

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance v4, Lcom/shabakaty/downloader/hk4$a;

    const-string v7, "refreshTime"

    const-string v8, "TEXT"

    move-object v6, v4

    invoke-direct/range {v6 .. v12}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "refreshTime"

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v4, Lcom/shabakaty/downloader/hk4$a;

    const-string v7, "img"

    const-string v8, "TEXT"

    move-object v6, v4

    invoke-direct/range {v6 .. v12}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "img"

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v4, Ljava/util/HashSet;

    const/4 v6, 0x0

    invoke-direct {v4, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 12
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 13
    new-instance v8, Lcom/shabakaty/downloader/hk4;

    const-string v9, "users"

    invoke-direct {v8, v9, v1, v4, v7}, Lcom/shabakaty/downloader/hk4;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 14
    invoke-static {v0, v9}, Lcom/shabakaty/downloader/hk4;->a(Lcom/shabakaty/downloader/yh4;Ljava/lang/String;)Lcom/shabakaty/downloader/hk4;

    move-result-object v1

    .line 15
    invoke-virtual {v8, v1}, Lcom/shabakaty/downloader/hk4;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v7, "\n Found:\n"

    if-nez v4, :cond_0

    .line 16
    new-instance v0, Lcom/shabakaty/downloader/xt3$b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "users(com.shabakaty.cinemana.domain.models.local.user.User).\n Expected:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v6, v1}, Lcom/shabakaty/downloader/xt3$b;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 17
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    const/16 v4, 0xd

    invoke-direct {v1, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 18
    new-instance v4, Lcom/shabakaty/downloader/hk4$a;

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    const-string v9, "nb"

    const-string v10, "TEXT"

    move-object v8, v4

    invoke-direct/range {v8 .. v14}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v8, "nb"

    invoke-virtual {v1, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    new-instance v4, Lcom/shabakaty/downloader/hk4$a;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const-string v10, "enTitle"

    const-string v11, "TEXT"

    move-object v9, v4

    invoke-direct/range {v9 .. v15}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v9, "enTitle"

    invoke-virtual {v1, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    new-instance v4, Lcom/shabakaty/downloader/hk4$a;

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const-string v11, "arTitle"

    const-string v12, "TEXT"

    move-object v10, v4

    invoke-direct/range {v10 .. v16}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v10, "arTitle"

    invoke-virtual {v1, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    new-instance v4, Lcom/shabakaty/downloader/hk4$a;

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    const-string v12, "stars"

    const-string v13, "TEXT"

    move-object v11, v4

    invoke-direct/range {v11 .. v17}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v11, "stars"

    invoke-virtual {v1, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    new-instance v4, Lcom/shabakaty/downloader/hk4$a;

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    const-string v13, "year"

    const-string v14, "TEXT"

    move-object v12, v4

    invoke-direct/range {v12 .. v18}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v12, "year"

    invoke-virtual {v1, v12, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    new-instance v4, Lcom/shabakaty/downloader/hk4$a;

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    const-string v14, "kind"

    const-string v15, "TEXT"

    move-object v13, v4

    invoke-direct/range {v13 .. v19}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v13, "kind"

    invoke-virtual {v1, v13, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    new-instance v4, Lcom/shabakaty/downloader/hk4$a;

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    const-string v15, "season"

    const-string v16, "TEXT"

    move-object v14, v4

    invoke-direct/range {v14 .. v20}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v14, "season"

    invoke-virtual {v1, v14, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    new-instance v4, Lcom/shabakaty/downloader/hk4$a;

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    const-string v16, "imgObjUrl"

    const-string v17, "TEXT"

    move-object v15, v4

    invoke-direct/range {v15 .. v21}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v15, "imgObjUrl"

    invoke-virtual {v1, v15, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    new-instance v4, Lcom/shabakaty/downloader/hk4$a;

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    const-string v17, "episodeNummer"

    const-string v18, "TEXT"

    move-object/from16 v16, v4

    invoke-direct/range {v16 .. v22}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "episodeNummer"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    new-instance v4, Lcom/shabakaty/downloader/hk4$a;

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1

    const-string v18, "rate"

    const-string v19, "TEXT"

    move-object/from16 v17, v4

    invoke-direct/range {v17 .. v23}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "rate"

    invoke-virtual {v1, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    new-instance v4, Lcom/shabakaty/downloader/hk4$a;

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    const-string v19, "imgMediumThumbObjUrl"

    const-string v20, "TEXT"

    move-object/from16 v18, v4

    invoke-direct/range {v18 .. v24}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v18, v6

    const-string v6, "imgMediumThumbObjUrl"

    invoke-virtual {v1, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    new-instance v4, Lcom/shabakaty/downloader/hk4$a;

    const/16 v22, 0x1

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const-string v20, "categoryEn"

    const-string v21, "TEXT"

    move-object/from16 v19, v4

    invoke-direct/range {v19 .. v25}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v19, v2

    const-string v2, "categoryEn"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const/16 v23, 0x1

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1

    const-string v21, "categoryAr"

    const-string v22, "TEXT"

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v26}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "categoryAr"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    new-instance v2, Ljava/util/HashSet;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(I)V

    move-object/from16 v20, v6

    .line 32
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 33
    new-instance v4, Lcom/shabakaty/downloader/hk4;

    move-object/from16 v21, v5

    const-string v5, "search_table"

    invoke-direct {v4, v5, v1, v2, v6}, Lcom/shabakaty/downloader/hk4;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 34
    invoke-static {v0, v5}, Lcom/shabakaty/downloader/hk4;->a(Lcom/shabakaty/downloader/yh4;Ljava/lang/String;)Lcom/shabakaty/downloader/hk4;

    move-result-object v1

    .line 35
    invoke-virtual {v4, v1}, Lcom/shabakaty/downloader/hk4;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 36
    new-instance v0, Lcom/shabakaty/downloader/xt3$b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "search_table(com.shabakaty.cinemana.data.db.search.SearchItem).\n Expected:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/shabakaty/downloader/xt3$b;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 37
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x18

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 38
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const/16 v25, 0x1

    const/16 v26, 0x1

    const/16 v27, 0x0

    const/16 v28, 0x1

    const-string v23, "id"

    const-string v24, "TEXT"

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v28}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const/16 v32, 0x1

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x1

    const-string v30, "downloadTaskId"

    const-string v31, "INTEGER"

    move-object/from16 v29, v2

    invoke-direct/range {v29 .. v35}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "downloadTaskId"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const/16 v26, 0x0

    const-string v23, "title"

    const-string v24, "TEXT"

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v28}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "title"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v23, "stars"

    const-string v24, "TEXT"

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v28}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v30, "kind"

    const-string v31, "TEXT"

    move-object/from16 v29, v2

    invoke-direct/range {v29 .. v35}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v23, "sizeMB"

    const-string v24, "INTEGER"

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v28}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "sizeMB"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v23, "season"

    const-string v24, "TEXT"

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v28}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v30, "imgObjUrl"

    const-string v31, "TEXT"

    move-object/from16 v29, v2

    invoke-direct/range {v29 .. v35}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v23, "filmRating"

    const-string v24, "TEXT"

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v28}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "filmRating"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v23, "tvShowRating"

    const-string v24, "TEXT"

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v28}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "tvShowRating"

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v23, "path"

    const-string v24, "TEXT"

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v28}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "path"

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v23, "episodeNumber"

    const-string v24, "TEXT"

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v28}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "episodeNumber"

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v23, "special"

    const-string v24, "TEXT"

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v28}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "special"

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v23, "useParentImg"

    const-string v24, "TEXT"

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v28}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "useParentImg"

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v23, "parentSkipping"

    const-string v24, "TEXT"

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v28}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "parentSkipping"

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v23, "collectionID"

    const-string v24, "INTEGER"

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v28}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "collectionID"

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v23, "imgThumbObjUrl"

    const-string v24, "TEXT"

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v28}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "imgThumbObjUrl"

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v23, "qualityName"

    const-string v24, "TEXT"

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v28}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "qualityName"

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v23, "rootEpisode"

    const-string v24, "TEXT"

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v28}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "rootEpisode"

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v23, "hasIntroSkipping"

    const-string v24, "INTEGER"

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v28}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "hasIntroSkipping"

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v23, "episodeFlag"

    const-string v24, "TEXT"

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v28}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "episodeFlag"

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v23, "lastUpdated"

    const-string v24, "TEXT"

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v28}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "lastUpdated"

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v23, "skippingDurations_start"

    const-string v24, "TEXT"

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v28}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "skippingDurations_start"

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v23, "skippingDurations_end"

    const-string v24, "TEXT"

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v28}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "skippingDurations_end"

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    new-instance v2, Ljava/util/HashSet;

    const/4 v6, 0x0

    invoke-direct {v2, v6}, Ljava/util/HashSet;-><init>(I)V

    move-object/from16 v22, v5

    .line 63
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 64
    new-instance v6, Lcom/shabakaty/downloader/hk4;

    move-object/from16 v23, v15

    const-string v15, "CinemanaDownloadItem"

    invoke-direct {v6, v15, v1, v2, v5}, Lcom/shabakaty/downloader/hk4;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    const-string v1, "CinemanaDownloadItem"

    .line 65
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/hk4;->a(Lcom/shabakaty/downloader/yh4;Ljava/lang/String;)Lcom/shabakaty/downloader/hk4;

    move-result-object v1

    .line 66
    invoke-virtual {v6, v1}, Lcom/shabakaty/downloader/hk4;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 67
    new-instance v0, Lcom/shabakaty/downloader/xt3$b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CinemanaDownloadItem(com.shabakaty.cinemana.data.db.downloads.CinemanaDownloadItem).\n Expected:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/shabakaty/downloader/xt3$b;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 68
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 69
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const/16 v27, 0x1

    const/16 v28, 0x1

    const/16 v29, 0x0

    const/16 v30, 0x1

    const-string v25, "id"

    const-string v26, "INTEGER"

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const/16 v34, 0x1

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x1

    const-string v32, "name"

    const-string v33, "TEXT"

    move-object/from16 v31, v2

    invoke-direct/range {v31 .. v37}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "name"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const/16 v28, 0x0

    const-string v25, "image"

    const-string v26, "TEXT"

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "image"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    new-instance v2, Ljava/util/HashSet;

    const/4 v5, 0x0

    invoke-direct {v2, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 73
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 74
    new-instance v5, Lcom/shabakaty/downloader/hk4;

    const-string v15, "DownloadsCollectionItem"

    invoke-direct {v5, v15, v1, v2, v6}, Lcom/shabakaty/downloader/hk4;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    const-string v1, "DownloadsCollectionItem"

    .line 75
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/hk4;->a(Lcom/shabakaty/downloader/yh4;Ljava/lang/String;)Lcom/shabakaty/downloader/hk4;

    move-result-object v1

    .line 76
    invoke-virtual {v5, v1}, Lcom/shabakaty/downloader/hk4;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 77
    new-instance v0, Lcom/shabakaty/downloader/xt3$b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DownloadsCollectionItem(com.shabakaty.cinemana.data.db.downloads.DownloadsCollectionItem).\n Expected:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/shabakaty/downloader/xt3$b;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 78
    :cond_3
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 79
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const/16 v27, 0x1

    const/16 v28, 0x1

    const/16 v29, 0x0

    const/16 v30, 0x1

    const-string v25, "id"

    const-string v26, "TEXT"

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const/16 v34, 0x1

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x1

    const-string v32, "parentId"

    const-string v33, "TEXT"

    move-object/from16 v31, v2

    invoke-direct/range {v31 .. v37}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "parentId"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const/16 v28, 0x0

    const-string v25, "downloadTaskId"

    const-string v26, "INTEGER"

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v32, "name"

    const-string v33, "TEXT"

    move-object/from16 v31, v2

    invoke-direct/range {v31 .. v37}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "name"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v25, "type"

    const-string v26, "TEXT"

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "type"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v25, "extension"

    const-string v26, "TEXT"

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "extension"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v25, "file"

    const-string v26, "TEXT"

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "file"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    new-instance v2, Ljava/util/HashSet;

    const/4 v5, 0x0

    invoke-direct {v2, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 87
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 88
    new-instance v5, Lcom/shabakaty/downloader/hk4;

    const-string v15, "SubtitleDb"

    invoke-direct {v5, v15, v1, v2, v6}, Lcom/shabakaty/downloader/hk4;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    const-string v1, "SubtitleDb"

    .line 89
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/hk4;->a(Lcom/shabakaty/downloader/yh4;Ljava/lang/String;)Lcom/shabakaty/downloader/hk4;

    move-result-object v1

    .line 90
    invoke-virtual {v5, v1}, Lcom/shabakaty/downloader/hk4;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 91
    new-instance v0, Lcom/shabakaty/downloader/xt3$b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SubtitleDb(com.shabakaty.cinemana.data.db.downloads.SubtitleDb).\n Expected:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/shabakaty/downloader/xt3$b;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 92
    :cond_4
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 93
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const/16 v27, 0x1

    const/16 v28, 0x1

    const/16 v29, 0x0

    const/16 v30, 0x1

    const-string v25, "id"

    const-string v26, "INTEGER"

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const/16 v34, 0x1

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x1

    const-string v32, "parentId"

    const-string v33, "TEXT"

    move-object/from16 v31, v2

    invoke-direct/range {v31 .. v37}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "parentId"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const/16 v28, 0x0

    const-string v25, "start"

    const-string v26, "INTEGER"

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "start"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v25, "end"

    const-string v26, "INTEGER"

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "end"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v25, "controlLevel"

    const-string v26, "TEXT"

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "controlLevel"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    new-instance v2, Ljava/util/HashSet;

    const/4 v5, 0x0

    invoke-direct {v2, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 99
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 100
    new-instance v5, Lcom/shabakaty/downloader/hk4;

    const-string v15, "SkippableSceneDB"

    invoke-direct {v5, v15, v1, v2, v6}, Lcom/shabakaty/downloader/hk4;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    const-string v1, "SkippableSceneDB"

    .line 101
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/hk4;->a(Lcom/shabakaty/downloader/yh4;Ljava/lang/String;)Lcom/shabakaty/downloader/hk4;

    move-result-object v1

    .line 102
    invoke-virtual {v5, v1}, Lcom/shabakaty/downloader/hk4;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 103
    new-instance v0, Lcom/shabakaty/downloader/xt3$b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SkippableSceneDB(com.shabakaty.cinemana.data.db.downloads.SkippableSceneDB).\n Expected:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/shabakaty/downloader/xt3$b;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 104
    :cond_5
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 105
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const/16 v27, 0x1

    const/16 v28, 0x1

    const/16 v29, 0x0

    const/16 v30, 0x1

    const-string v25, "id"

    const-string v26, "TEXT"

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const/16 v34, 0x1

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x1

    const-string v32, "videoId"

    const-string v33, "TEXT"

    move-object/from16 v31, v2

    invoke-direct/range {v31 .. v37}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "videoId"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const/16 v28, 0x0

    const-string v25, "liked"

    const-string v26, "INTEGER"

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "liked"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v25, "watched"

    const-string v26, "INTEGER"

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "watched"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v25, "annoying"

    const-string v26, "INTEGER"

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "annoying"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v25, "disLiked"

    const-string v26, "INTEGER"

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "disLiked"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v25, "favorite"

    const-string v26, "INTEGER"

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "favorite"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v25, "watchLater"

    const-string v26, "TEXT"

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "watchLater"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v25, "videoProgress"

    const-string v26, "INTEGER"

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "videoProgress"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    new-instance v2, Ljava/util/HashSet;

    const/4 v5, 0x1

    invoke-direct {v2, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 115
    new-instance v6, Lcom/shabakaty/downloader/hk4$b;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v28

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v29

    const-string v25, "video_model"

    const-string v26, "NO ACTION"

    const-string v27, "NO ACTION"

    move-object/from16 v24, v6

    invoke-direct/range {v24 .. v29}, Lcom/shabakaty/downloader/hk4$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 116
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 117
    new-instance v15, Lcom/shabakaty/downloader/hk4$d;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    move-object/from16 v16, v4

    const/4 v4, 0x0

    invoke-direct {v15, v3, v4, v5}, Lcom/shabakaty/downloader/hk4$d;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v6, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance v3, Lcom/shabakaty/downloader/hk4;

    const-string v4, "video_status"

    invoke-direct {v3, v4, v1, v2, v6}, Lcom/shabakaty/downloader/hk4;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    const-string v1, "video_status"

    .line 119
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/hk4;->a(Lcom/shabakaty/downloader/yh4;Ljava/lang/String;)Lcom/shabakaty/downloader/hk4;

    move-result-object v1

    .line 120
    invoke-virtual {v3, v1}, Lcom/shabakaty/downloader/hk4;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 121
    new-instance v0, Lcom/shabakaty/downloader/xt3$b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "video_status(com.shabakaty.cinemana.data.db.videostatus.VideoStatusEntity).\n Expected:\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/shabakaty/downloader/xt3$b;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 122
    :cond_6
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x3c

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 123
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const/16 v28, 0x1

    const/16 v29, 0x1

    const/16 v30, 0x0

    const/16 v31, 0x1

    const-string v26, "nb"

    const-string v27, "TEXT"

    move-object/from16 v25, v2

    invoke-direct/range {v25 .. v31}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const/16 v35, 0x1

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x1

    const-string v33, "enTitle"

    const-string v34, "TEXT"

    move-object/from16 v32, v2

    invoke-direct/range {v32 .. v38}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const/16 v29, 0x0

    const-string v26, "arTitle"

    const-string v27, "TEXT"

    move-object/from16 v25, v2

    invoke-direct/range {v25 .. v31}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v33, "otherTitle"

    const-string v34, "TEXT"

    move-object/from16 v32, v2

    invoke-direct/range {v32 .. v38}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "otherTitle"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v26, "stars"

    const-string v27, "TEXT"

    move-object/from16 v25, v2

    invoke-direct/range {v25 .. v31}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v33, "fileFile"

    const-string v34, "TEXT"

    move-object/from16 v32, v2

    invoke-direct/range {v32 .. v38}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "fileFile"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v26, "arContent"

    const-string v27, "TEXT"

    move-object/from16 v25, v2

    invoke-direct/range {v25 .. v31}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "arContent"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v26, "enContent"

    const-string v27, "TEXT"

    move-object/from16 v25, v2

    invoke-direct/range {v25 .. v31}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "enContent"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v26, "mDate"

    const-string v27, "TEXT"

    move-object/from16 v25, v2

    invoke-direct/range {v25 .. v31}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "mDate"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v26, "year"

    const-string v27, "TEXT"

    move-object/from16 v25, v2

    invoke-direct/range {v25 .. v31}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v33, "kind"

    const-string v34, "TEXT"

    move-object/from16 v32, v2

    invoke-direct/range {v32 .. v38}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v26, "season"

    const-string v27, "TEXT"

    move-object/from16 v25, v2

    invoke-direct/range {v25 .. v31}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v33, "img"

    const-string v34, "TEXT"

    move-object/from16 v32, v2

    invoke-direct/range {v32 .. v38}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v3, v21

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const-string v10, "imgThumb"

    const-string v11, "TEXT"

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "imgThumb"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v10, "imgMediumThumb"

    const-string v11, "TEXT"

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "imgMediumThumb"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v10, "imgObjUrl"

    const-string v11, "TEXT"

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v3, v23

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v10, "imgMediumThumbObjUrl"

    const-string v11, "TEXT"

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v3, v20

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v10, "filmRating"

    const-string v11, "TEXT"

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v3, v22

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v10, "tvShowRating"

    const-string v11, "TEXT"

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "tvShowRating"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v10, "episodeNummer"

    const-string v11, "TEXT"

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v3, v19

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v10, "rate"

    const-string v11, "TEXT"

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v3, v18

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v10, "special"

    const-string v11, "TEXT"

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "special"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v10, "itemDate"

    const-string v11, "TEXT"

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "itemDate"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v10, "duration"

    const-string v11, "TEXT"

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "duration"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v10, "imdbUrlRef"

    const-string v11, "TEXT"

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "imdbUrlRef"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v10, "rootSeries"

    const-string v11, "TEXT"

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "rootSeries"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v10, "useParentImg"

    const-string v11, "TEXT"

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "useParentImg"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v10, "showComments"

    const-string v11, "INTEGER"

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "showComments"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v10, "episodeFlag"

    const-string v11, "TEXT"

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "episodeFlag"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v10, "trailer"

    const-string v11, "TEXT"

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "trailer"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v10, "mock"

    const-string v11, "INTEGER"

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "mock"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v10, "audioStreamNumber"

    const-string v11, "TEXT"

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "audioStreamNumber"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v10, "parentSkipping"

    const-string v11, "TEXT"

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "parentSkipping"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v10, "collectionID"

    const-string v11, "INTEGER"

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "collectionID"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v10, "deleted"

    const-string v11, "TEXT"

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "deleted"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v10, "imgThumbObjUrl"

    const-string v11, "TEXT"

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "imgThumbObjUrl"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v10, "ratingImg"

    const-string v11, "TEXT"

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "ratingImg"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v10, "arTranslationFilePath"

    const-string v11, "TEXT"

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "arTranslationFilePath"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v10, "hasIntroSkipping"

    const-string v11, "INTEGER"

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "hasIntroSkipping"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v10, "videoLikesNumber"

    const-string v11, "TEXT"

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "videoLikesNumber"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v10, "videoDisLikesNumber"

    const-string v11, "TEXT"

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "videoDisLikesNumber"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v10, "videoCommentsNumber"

    const-string v11, "INTEGER"

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "videoCommentsNumber"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v10, "videoViewsNumber"

    const-string v11, "TEXT"

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "videoViewsNumber"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v10, "itemOrderList"

    const-string v11, "TEXT"

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "itemOrderList"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v10, "listId"

    const-string v11, "TEXT"

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "listId"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v10, "listSortOrder"

    const-string v11, "TEXT"

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "listSortOrder"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v10, "castable"

    const-string v11, "TEXT"

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "castable"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v10, "publishDate"

    const-string v11, "TEXT"

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "publishDate"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v10, "episodeDesc"

    const-string v11, "TEXT"

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "episodeDesc"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v10, "qualityName"

    const-string v11, "TEXT"

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "qualityName"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v10, "customArTitle"

    const-string v11, "TEXT"

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "customArTitle"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v10, "customEnTitle"

    const-string v11, "TEXT"

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "customEnTitle"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v10, "finished"

    const-string v11, "INTEGER"

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "finished"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v10, "url"

    const-string v11, "TEXT"

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "url"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v10, "downloadTaskId"

    const-string v11, "INTEGER"

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v3, v16

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v10, "downloadedTime"

    const-string v11, "INTEGER"

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "downloadedTime"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v10, "size"

    const-string v11, "TEXT"

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "size"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v10, "description"

    const-string v11, "TEXT"

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "description"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v10, "addedToWatchLater"

    const-string v11, "INTEGER"

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "addedToWatchLater"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v10, "watched"

    const-string v11, "INTEGER"

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "watched"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 184
    new-instance v4, Ljava/util/HashSet;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 185
    new-instance v5, Lcom/shabakaty/downloader/hk4$d;

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v8, v3, v6}, Lcom/shabakaty/downloader/hk4$d;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 186
    new-instance v3, Lcom/shabakaty/downloader/hk4;

    const-string v5, "video_model"

    invoke-direct {v3, v5, v1, v2, v4}, Lcom/shabakaty/downloader/hk4;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    const-string v1, "video_model"

    .line 187
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/hk4;->a(Lcom/shabakaty/downloader/yh4;Ljava/lang/String;)Lcom/shabakaty/downloader/hk4;

    move-result-object v1

    .line 188
    invoke-virtual {v3, v1}, Lcom/shabakaty/downloader/hk4;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 189
    new-instance v0, Lcom/shabakaty/downloader/xt3$b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "video_model(com.shabakaty.cinemana.data.db.videomodel.VideoModelEntity).\n Expected:\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/shabakaty/downloader/xt3$b;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 190
    :cond_7
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 191
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    const-string v9, "userId"

    const-string v10, "TEXT"

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "userId"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const/4 v12, 0x0

    const-string v9, "filter_parentalLevel"

    const-string v10, "TEXT"

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "filter_parentalLevel"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v9, "filter_skipInAppropriateScenes"

    const-string v10, "INTEGER"

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "filter_skipInAppropriateScenes"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v9, "filter_showContentWithNoSubtitle"

    const-string v10, "INTEGER"

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "filter_showContentWithNoSubtitle"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v9, "app_language"

    const-string v10, "TEXT"

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "app_language"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v9, "app_theme"

    const-string v10, "INTEGER"

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "app_theme"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v9, "app_seekPeriod"

    const-string v10, "INTEGER"

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "app_seekPeriod"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v9, "app_showSubtitles"

    const-string v10, "INTEGER"

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "app_showSubtitles"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v9, "subtitles_subtitleColor"

    const-string v10, "INTEGER"

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "subtitles_subtitleColor"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v9, "subtitles_subtitleEdgeColor"

    const-string v10, "INTEGER"

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "subtitles_subtitleEdgeColor"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v9, "subtitles_subtitleBackgroundColor"

    const-string v10, "INTEGER"

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "subtitles_subtitleBackgroundColor"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v9, "subtitles_subtitleEdge"

    const-string v10, "INTEGER"

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "subtitles_subtitleEdge"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v9, "subtitles_subtitleFontScale"

    const-string v10, "REAL"

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "subtitles_subtitleFontScale"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    new-instance v2, Lcom/shabakaty/downloader/hk4$a;

    const-string v9, "subtitles_subtitleFontFamily"

    const-string v10, "TEXT"

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "subtitles_subtitleFontFamily"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 206
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 207
    new-instance v3, Lcom/shabakaty/downloader/hk4;

    const-string v5, "settings"

    invoke-direct {v3, v5, v1, v2, v4}, Lcom/shabakaty/downloader/hk4;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    const-string v1, "settings"

    .line 208
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/hk4;->a(Lcom/shabakaty/downloader/yh4;Ljava/lang/String;)Lcom/shabakaty/downloader/hk4;

    move-result-object v0

    .line 209
    invoke-virtual {v3, v0}, Lcom/shabakaty/downloader/hk4;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 210
    new-instance v1, Lcom/shabakaty/downloader/xt3$b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "settings(com.shabakaty.cinemana.data.db.settings.SettingsEntity).\n Expected:\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/shabakaty/downloader/xt3$b;-><init>(ZLjava/lang/String;)V

    return-object v1

    .line 211
    :cond_8
    new-instance v0, Lcom/shabakaty/downloader/xt3$b;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/shabakaty/downloader/xt3$b;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method
