.class public final Lcom/shabakaty/downloader/kt2;
.super Lcom/shabakaty/downloader/af2;
.source "Migrations.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/o00$a;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/yh4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/yh4;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/kt2;->r:Lcom/shabakaty/downloader/yh4;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/o00$a;

    const-string v0, "$this$startV3ToV4Migration"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/kt2;->r:Lcom/shabakaty/downloader/yh4;

    const-string v0, "<this>"

    .line 4
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "ALTER TABLE CinemanaDownloadItem RENAME TO temp_cinemana_download_item"

    .line 5
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/yh4;->H(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/shabakaty/downloader/kt2;->r:Lcom/shabakaty/downloader/yh4;

    .line 7
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "CREATE TABLE CinemanaDownloadItem (\t\n\t\t\t\tid TEXT NOT NULL DEFAULT \"\",\n\t\t\t\tdownloadTaskId INTEGER NOT NULL DEFAULT 0,\n\t\t\t\ttitle TEXT NOT NULL DEFAULT \"\",\n\t\t\t\tstars TEXT NOT NULL DEFAULT \"\",\n\t\t\t\tkind TEXT NOT NULL DEFAULT \"\",\n\t\t\t\tsizeMB INTEGER NOT NULL DEFAULT 0, \n\t\t\t\tseason TEXT NOT NULL DEFAULT \"\",\n\t\t\t\timgObjUrl TEXT NOT NULL DEFAULT \"\",\n\t\t\t\tfilmRating TEXT NOT NULL DEFAULT \"\",\n\t\t\t\ttvShowRating TEXT NOT NULL DEFAULT \"\",\n\t\t\t\tpath TEXT NOT NULL DEFAULT \"\",\n\t\t\t\tepisodeNumber TEXT NOT NULL DEFAULT \"\",\n\t\t\t\tspecial TEXT NOT NULL DEFAULT \"\",\n\t\t\t\tuseParentImg TEXT NOT NULL DEFAULT \"\",\n\t\t\t\tparentSkipping TEXT NOT NULL DEFAULT \"\",\n\t\t\t\tcollectionID INTEGER NOT NULL DEFAULT 0,\n\t\t\t\timgThumbObjUrl TEXT NOT NULL DEFAULT \"\",\n\t\t\t\tskippingDurations_start TEXT NOT NULL DEFAULT \"\",\n\t\t\t\tskippingDurations_end TEXT NOT NULL DEFAULT \"\",\n\t\t\t\tqualityName TEXT NOT NULL DEFAULT \"\",\n\t\t\t\trootEpisode TEXT NOT NULL DEFAULT \"\",\n\t\t\t\thasIntroSkipping INTEGER NOT NULL DEFAULT 0,\n\t\t\t\tepisodeFlag TEXT NOT NULL DEFAULT \"\",\n\t\t\t\tlastUpdated TEXT NOT NULL DEFAULT \"\",\n\t\t\t\tPRIMARY KEY(id)\n\t\t\t)"

    .line 8
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/yh4;->H(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/shabakaty/downloader/kt2;->r:Lcom/shabakaty/downloader/yh4;

    .line 10
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "INSERT INTO CinemanaDownloadItem(id, downloadTaskId, title, stars, kind, sizeMB, season, imgObjUrl, filmRating, tvShowRating, path, episodeNumber, special, useParentImg, parentSkipping, collectionID, imgThumbObjUrl, skippingDurations_start, skippingDurations_end, qualityName, rootEpisode, hasIntroSkipping, episodeFlag, lastUpdated) SELECT id, downloadTaskId, title, stars, kind, sizeMB, season, imgObjUrl, filmRating, tvShowRating, path, episodeNumber, isSpecial, useParentImg, parentSkipping, collectionID, imgThumbObjUrl, skippingDurations_start, skippingDurations_end, qualityName, rootEpisode, hasIntroSkipping, episodeFlag, lastUpdated FROM temp_cinemana_download_item"

    .line 11
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/yh4;->H(Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/shabakaty/downloader/kt2;->r:Lcom/shabakaty/downloader/yh4;

    .line 13
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "DROP TABLE temp_cinemana_download_item"

    .line 14
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/yh4;->H(Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcom/shabakaty/downloader/kt2;->r:Lcom/shabakaty/downloader/yh4;

    .line 16
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "DROP INDEX nb"

    .line 17
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/yh4;->H(Ljava/lang/String;)V

    .line 18
    iget-object p1, p0, Lcom/shabakaty/downloader/kt2;->r:Lcom/shabakaty/downloader/yh4;

    .line 19
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "ALTER TABLE video_model RENAME TO temp_video_model"

    .line 20
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/yh4;->H(Ljava/lang/String;)V

    .line 21
    iget-object p1, p0, Lcom/shabakaty/downloader/kt2;->r:Lcom/shabakaty/downloader/yh4;

    .line 22
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "CREATE TABLE video_model (\n\tnb TEXT NOT NULL DEFAULT \"\",\n\tenTitle TEXT NOT NULL DEFAULT \"\",\n\tarTitle TEXT NOT NULL DEFAULT \"\",\n\totherTitle TEXT NOT NULL DEFAULT \"\",\n\tstars TEXT NOT NULL DEFAULT \"\",\n\tfileFile TEXT NOT NULL DEFAULT \"\",\n\tarContent TEXT NOT NULL DEFAULT \"\",\n\tenContent TEXT NOT NULL DEFAULT \"\",\n\tmDate TEXT NOT NULL DEFAULT \"\",\n\tyear TEXT NOT NULL DEFAULT \"\",\n\tkind TEXT NOT NULL DEFAULT \"\",\n\tseason TEXT NOT NULL DEFAULT \"\",\n\timg TEXT NOT NULL DEFAULT \"\",\n\timgThumb TEXT NOT NULL DEFAULT \"\",\n\timgMediumThumb TEXT NOT NULL DEFAULT \"\",\n\timgObjUrl TEXT NOT NULL DEFAULT \"\",\n\timgMediumThumbObjUrl TEXT NOT NULL DEFAULT \"\",\n\tfilmRating TEXT NOT NULL DEFAULT \"\",\n\ttvShowRating TEXT NOT NULL DEFAULT \"\",\n\tepisodeNummer TEXT NOT NULL DEFAULT \"\",\n\trate TEXT NOT NULL DEFAULT \"\",\n\tspecial TEXT NOT NULL DEFAULT \"\",\n\titemDate TEXT NOT NULL DEFAULT \"\",\n\tduration TEXT NOT NULL DEFAULT \"\",\n\timdbUrlRef TEXT NOT NULL DEFAULT \"\",\n\trootSeries TEXT NOT NULL DEFAULT \"\",\n\tuseParentImg TEXT NOT NULL DEFAULT \"\",\n\tshowComments INTEGER NOT NULL DEFAULT 0,\n\tepisodeFlag TEXT NOT NULL DEFAULT \"\",\n\ttrailer TEXT NOT NULL DEFAULT \"\",\n\tmock INTEGER NOT NULL DEFAULT 0,\n\taudioStreamNumber TEXT NOT NULL DEFAULT \"\",\n\tparentSkipping TEXT NOT NULL DEFAULT \"\",\n\tcollectionID INTEGER NOT NULL DEFAULT 0,\n\tdeleted TEXT NOT NULL DEFAULT \"\",\n\timgThumbObjUrl TEXT NOT NULL DEFAULT \"\",\n\tratingImg TEXT NOT NULL DEFAULT \"\",\n\tarTranslationFilePath TEXT NOT NULL DEFAULT \"\",\n\thasIntroSkipping INTEGER NOT NULL DEFAULT 0,\n\tvideoLikesNumber TEXT NOT NULL DEFAULT \"\",\n\tvideoDisLikesNumber TEXT NOT NULL DEFAULT \"\",\n\tvideoCommentsNumber INTEGER NOT NULL DEFAULT 0,\n\tvideoViewsNumber TEXT NOT NULL DEFAULT \"\",\n\titemOrderList TEXT NOT NULL DEFAULT \"\",\n\tlistId TEXT NOT NULL DEFAULT \"\",\n\tlistSortOrder TEXT NOT NULL DEFAULT \"\",\n\tcastable TEXT NOT NULL DEFAULT \"\",\n\tpublishDate TEXT NOT NULL DEFAULT \"\",\n\tepisodeDesc TEXT NOT NULL DEFAULT \"\",\n\tqualityName TEXT NOT NULL DEFAULT \"\",\n\tcustomArTitle TEXT NOT NULL DEFAULT \"\",\n\tcustomEnTitle TEXT NOT NULL DEFAULT \"\",\n\tfinished INTEGER NOT NULL DEFAULT 0,\n\turl TEXT NOT NULL DEFAULT \"\",\n\tdownloadTaskId INTEGER NOT NULL DEFAULT 0,\n\tdownloadedTime INTEGER NOT NULL DEFAULT 0,\n\tsize TEXT NOT NULL DEFAULT \"\",\n\tdescription TEXT NOT NULL DEFAULT \"\",\n\taddedToWatchLater INTEGER NOT NULL DEFAULT 0,\n\twatched INTEGER NOT NULL DEFAULT 0,\n\tPRIMARY KEY(nb)\n)"

    .line 23
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/yh4;->H(Ljava/lang/String;)V

    .line 24
    iget-object p1, p0, Lcom/shabakaty/downloader/kt2;->r:Lcom/shabakaty/downloader/yh4;

    .line 25
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "INSERT INTO video_model(nb, enTitle, arTitle, otherTitle, stars, fileFile, arContent, enContent, mDate, year, kind, season, img, imgThumb, imgMediumThumb, imgObjUrl, imgMediumThumbObjUrl, filmRating, tvShowRating, episodeNummer, rate, special, itemDate, duration, imdbUrlRef, rootSeries, useParentImg, showComments, episodeFlag, trailer, mock, audioStreamNumber, parentSkipping, collectionID, deleted, imgThumbObjUrl, ratingImg, arTranslationFilePath, hasIntroSkipping, videoLikesNumber, videoDisLikesNumber, videoCommentsNumber, videoViewsNumber, itemOrderList, listId, listSortOrder, castable, publishDate, episodeDesc, qualityName, customArTitle, customEnTitle, finished, url, downloadTaskId, downloadedTime, size, description, addedToWatchLater, watched) SELECT nb, enTitle, arTitle, otherTitle, stars, fileFile, arContent, enContent, mDate, year, kind, season, img, imgThumb, imgMediumThumb, imgObjUrl, imgMediumThumbObjUrl, filmRating, tvShowRating, episodeNummer, rate, isSpecial, itemDate, duration, imdbUrlRef, rootSeries, useParentImg, showComments, episodeFlag, trailer, isMock, audioStreamNumber, parentSkipping, collectionID, isDeleted, imgThumbObjUrl, ratingImg, arTranslationFilePath, hasIntroSkipping, videoLikesNumber, videoDisLikesNumber, videoCommentsNumber, videoViewsNumber, itemOrderList, listId, listSortOrder, castable, publishDate, episodeDesc, qualityName, customArTitle, customEnTitle, finished, url, downloadTaskId, downloadedTime, size, description, isAddedToWatchLater, watched FROM temp_video_model"

    .line 26
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/yh4;->H(Ljava/lang/String;)V

    .line 27
    iget-object p1, p0, Lcom/shabakaty/downloader/kt2;->r:Lcom/shabakaty/downloader/yh4;

    .line 28
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "DROP TABLE temp_video_model"

    .line 29
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/yh4;->H(Ljava/lang/String;)V

    .line 30
    iget-object p1, p0, Lcom/shabakaty/downloader/kt2;->r:Lcom/shabakaty/downloader/yh4;

    .line 31
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "CREATE INDEX nb ON video_model (nb)"

    .line 32
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/yh4;->H(Ljava/lang/String;)V

    .line 33
    iget-object p1, p0, Lcom/shabakaty/downloader/kt2;->r:Lcom/shabakaty/downloader/yh4;

    .line 34
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS settings (userId TEXT NOT NULL, filter_parentalLevel TEXT NOT NULL, filter_skipInAppropriateScenes INTEGER NOT NULL, filter_showContentWithNoSubtitle INTEGER NOT NULL, app_language TEXT NOT NULL, app_theme INTEGER NOT NULL, app_seekPeriod INTEGER NOT NULL, app_showSubtitles INTEGER NOT NULL, subtitles_subtitleColor INTEGER NOT NULL, subtitles_subtitleEdgeColor INTEGER NOT NULL, subtitles_subtitleBackgroundColor INTEGER NOT NULL, subtitles_subtitleEdge INTEGER NOT NULL, subtitles_subtitleFontScale REAL NOT NULL, subtitles_subtitleFontFamily TEXT NOT NULL, PRIMARY KEY(userId))"

    .line 35
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/yh4;->H(Ljava/lang/String;)V

    .line 36
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
