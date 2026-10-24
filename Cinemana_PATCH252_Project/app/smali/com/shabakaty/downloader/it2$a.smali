.class public final Lcom/shabakaty/downloader/it2$a;
.super Lcom/shabakaty/downloader/ht2;
.source "Migrations.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/it2;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/shabakaty/downloader/ht2;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/yh4;)V
    .locals 1

    const-string v0, "database"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `FranchiseItem` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `name` TEXT NOT NULL, `image` TEXT NOT NULL)"

    .line 1
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/yh4;->H(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `newDownloadItem` (`id` TEXT NOT NULL, `collectionID` INTEGER NOT NULL, `downloadTaskId` INTEGER NOT NULL, `downloadedTime` INTEGER NOT NULL, `thumbUrl` TEXT NOT NULL, `path` TEXT NOT NULL, `url` TEXT NOT NULL, `size` TEXT NOT NULL, `translationLocalPath` TEXT, `translationFile` TEXT, `translartionURL` TEXT, `qualityName` TEXT, `finished` INTEGER NOT NULL, `paused` INTEGER NOT NULL, `error` INTEGER NOT NULL, `videoFile` TEXT NOT NULL, `title` TEXT NOT NULL, `episodesCount` INTEGER NOT NULL, PRIMARY KEY(`id`))"

    .line 2
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/yh4;->H(Ljava/lang/String;)V

    const-string v0, "INSERT INTO newDownloadItem (id,collectionID,downloadTaskId,downloadedTime,thumbUrl,path,url,size,translationLocalPath, translationFile, translartionURL, qualityName, finished, paused, error, videoFile, title, episodesCount) SELECT id,0,downloadTaskId,downloadedTime,thumbUrl,path,url,size,translationLocalPath, translationFile, translartionURL, qualityName, finished, paused, error, \'\', title, 0 FROM DownloadItem where finished = 1 And error = 0 "

    .line 3
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/yh4;->H(Ljava/lang/String;)V

    const-string v0, "DROP TABLE DownloadItem"

    .line 4
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/yh4;->H(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE newDownloadItem RENAME TO DownloadItem"

    .line 5
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/yh4;->H(Ljava/lang/String;)V

    return-void
.end method
