.class public final Lcom/shabakaty/downloader/it2$c;
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
.field public static final r:Lcom/shabakaty/downloader/it2$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/it2$c;

    invoke-direct {v0}, Lcom/shabakaty/downloader/it2$c;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/it2$c;->r:Lcom/shabakaty/downloader/it2$c;

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

    const-string v0, "CREATE TABLE IF NOT EXISTS `CinemanaDownloadItem` (\n\t`id` TEXT NOT NULL DEFAULT \"\",\n\t`downloadTaskId` INTEGER NOT NULL DEFAULT 0,\n\t`title` TEXT NOT NULL DEFAULT \"\",\n\t`stars` TEXT NOT NULL DEFAULT \"\",\n\t`kind` TEXT NOT NULL DEFAULT \"\",\n\t`sizeMB` INTEGER NOT NULL DEFAULT 0,\n\t`season` TEXT NOT NULL DEFAULT \"\",\n\t`imgObjUrl` TEXT NOT NULL DEFAULT \"\",\n\t`filmRating` TEXT NOT NULL DEFAULT \"\",\n\t`tvShowRating` TEXT NOT NULL DEFAULT \"\",\n\t`path` TEXT NOT NULL DEFAULT \"\",\n\t`episodeNumber` TEXT NOT NULL DEFAULT \"\",\n\t`isSpecial` TEXT NOT NULL DEFAULT \"\",\n\t`useParentImg` TEXT NOT NULL DEFAULT \"\",\n\t`parentSkipping` TEXT NOT NULL DEFAULT \"\",\n\t`collectionID` INTEGER NOT NULL DEFAULT 0,\n\t`imgThumbObjUrl` TEXT NOT NULL DEFAULT \"\",\n\t`qualityName` TEXT NOT NULL DEFAULT \"\",\n\t`rootEpisode` TEXT NOT NULL DEFAULT \"\",\n\t`hasIntroSkipping` INTEGER NOT NULL DEFAULT 0,\n\t`episodeFlag` TEXT NOT NULL DEFAULT \"\",\n\t`lastUpdated` TEXT NOT NULL DEFAULT \"\",\n\t`skippingDurations_start` TEXT NOT NULL DEFAULT \"\",\n\t`skippingDurations_end` TEXT NOT NULL DEFAULT \"\",\n\tPRIMARY KEY(`id`)\n)"

    return-object v0
.end method
