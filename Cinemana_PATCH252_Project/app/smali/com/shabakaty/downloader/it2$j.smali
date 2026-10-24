.class public final Lcom/shabakaty/downloader/it2$j;
.super Lcom/shabakaty/downloader/af2;
.source "Migrations.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/it2;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final r:Lcom/shabakaty/downloader/it2$j;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/it2$j;

    invoke-direct {v0}, Lcom/shabakaty/downloader/it2$j;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/it2$j;->r:Lcom/shabakaty/downloader/it2$j;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS `video_model` (\n\t`nb` TEXT NOT NULL DEFAULT \"\",\n\t`enTitle` TEXT NOT NULL DEFAULT \"\",\n\t`arTitle` TEXT NOT NULL DEFAULT \"\",\n\t`otherTitle` TEXT NOT NULL DEFAULT \"\",\n\t`stars` TEXT NOT NULL DEFAULT \"\",\n\t`fileFile` TEXT NOT NULL DEFAULT \"\",\n\t`arContent` TEXT NOT NULL DEFAULT \"\",\n\t`enContent` TEXT NOT NULL DEFAULT \"\",\n\t`mDate` TEXT NOT NULL DEFAULT \"\",\n\t`year` TEXT NOT NULL DEFAULT \"\",\n\t`kind` TEXT NOT NULL DEFAULT \"\",\n\t`season` TEXT NOT NULL DEFAULT \"\",\n\t`img` TEXT NOT NULL DEFAULT \"\",\n\t`imgThumb` TEXT NOT NULL DEFAULT \"\",\n\t`imgMediumThumb` TEXT NOT NULL DEFAULT \"\",\n\t`imgObjUrl` TEXT NOT NULL DEFAULT \"\",\n\t`imgMediumThumbObjUrl` TEXT NOT NULL DEFAULT \"\",\n\t`filmRating` TEXT NOT NULL DEFAULT \"\",\n\t`tvShowRating` TEXT NOT NULL DEFAULT \"\",\n\t`episodeNummer` TEXT NOT NULL DEFAULT \"\",\n\t`rate` TEXT NOT NULL DEFAULT \"\",\n\t`isSpecial` TEXT NOT NULL DEFAULT \"\",\n\t`itemDate` TEXT NOT NULL DEFAULT \"\",\n\t`duration` TEXT NOT NULL DEFAULT \"\",\n\t`imdbUrlRef` TEXT NOT NULL DEFAULT \"\",\n\t`rootSeries` TEXT NOT NULL DEFAULT \"\",\n\t`useParentImg` TEXT NOT NULL DEFAULT \"\",\n\t`showComments` INTEGER NOT NULL DEFAULT 0,\n\t`episodeFlag` TEXT NOT NULL DEFAULT \"\",\n\t`trailer` TEXT NOT NULL DEFAULT \"\",\n\t`isMock` INTEGER NOT NULL DEFAULT 0,\n\t`audioStreamNumber` TEXT NOT NULL DEFAULT \"\",\n\t`parentSkipping` TEXT NOT NULL DEFAULT \"\",\n\t`collectionID` INTEGER NOT NULL DEFAULT 0,\n\t`isDeleted` TEXT NOT NULL DEFAULT \"\",\n\t`imgThumbObjUrl` TEXT NOT NULL DEFAULT \"\",\n\t`ratingImg` TEXT NOT NULL DEFAULT \"\",\n\t`arTranslationFilePath` TEXT NOT NULL DEFAULT \"\",\n\t`hasIntroSkipping` INTEGER NOT NULL DEFAULT 0,\n\t`videoLikesNumber` TEXT NOT NULL DEFAULT \"\",\n\t`videoDisLikesNumber` TEXT NOT NULL DEFAULT \"\",\n\t`videoCommentsNumber` INTEGER NOT NULL DEFAULT 0,\n\t`videoViewsNumber` TEXT NOT NULL DEFAULT \"\",\n\t`itemOrderList` TEXT NOT NULL DEFAULT \"\",\n\t`listId` TEXT NOT NULL DEFAULT \"\",\n\t`listSortOrder` TEXT NOT NULL DEFAULT \"\",\n\t`castable` TEXT NOT NULL DEFAULT \"\",\n\t`publishDate` TEXT NOT NULL DEFAULT \"\",\n\t`episodeDesc` TEXT NOT NULL DEFAULT \"\",\n\t`qualityName` TEXT NOT NULL DEFAULT \"\",\n\t`customArTitle` TEXT NOT NULL DEFAULT \"\",\n\t`customEnTitle` TEXT NOT NULL DEFAULT \"\",\n\t`finished` INTEGER NOT NULL DEFAULT 0,\n\t`url` TEXT NOT NULL DEFAULT \"\",\n\t`downloadTaskId` INTEGER NOT NULL DEFAULT 0,\n\t`downloadedTime` INTEGER NOT NULL DEFAULT 0,\n\t`size` TEXT NOT NULL DEFAULT \"\",\n\t`description` TEXT NOT NULL DEFAULT \"\",\n\t`isAddedToWatchLater` INTEGER NOT NULL DEFAULT 0,\n\t`watched` INTEGER NOT NULL DEFAULT 0,\n\tPRIMARY KEY(`nb`)\n)"

    return-object v0
.end method
