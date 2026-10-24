.class public final Lcom/shabakaty/downloader/b41;
.super Ljava/lang/Object;
.source "EpisodeItem.kt"


# static fields
.field public static final synthetic h:[Lcom/shabakaty/downloader/jd2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Z

.field public final b:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

.field public final c:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

.field public final d:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

.field public final e:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

.field public final f:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

.field public final g:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const-class v0, Lcom/shabakaty/downloader/b41;

    const/16 v1, 0x27

    new-array v1, v1, [Lcom/shabakaty/downloader/jd2;

    const-string v2, "nb"

    const-string v3, "getNb()Ljava/lang/String;"

    const/4 v4, 0x0

    .line 1
    invoke-static {v0, v2, v3, v4}, Lcom/shabakaty/downloader/a41;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/xc2;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "enTitle"

    const-string v3, "getEnTitle()Ljava/lang/String;"

    .line 2
    invoke-static {v0, v2, v3, v4}, Lcom/shabakaty/downloader/a41;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/xc2;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "arTitle"

    const-string v3, "getArTitle()Ljava/lang/String;"

    .line 3
    invoke-static {v0, v2, v3, v4}, Lcom/shabakaty/downloader/a41;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/xc2;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "stars"

    const-string v3, "getStars()Ljava/lang/String;"

    .line 4
    invoke-static {v0, v2, v3, v4}, Lcom/shabakaty/downloader/a41;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/xc2;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "arContent"

    const-string v3, "getArContent()Ljava/lang/String;"

    .line 5
    invoke-static {v0, v2, v3, v4}, Lcom/shabakaty/downloader/a41;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/xc2;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string v2, "enContent"

    const-string v3, "getEnContent()Ljava/lang/String;"

    .line 6
    invoke-static {v0, v2, v3, v4}, Lcom/shabakaty/downloader/a41;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/xc2;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string v2, "year"

    const-string v3, "getYear()Ljava/lang/String;"

    .line 7
    invoke-static {v0, v2, v3, v4}, Lcom/shabakaty/downloader/a41;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/xc2;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string v2, "season"

    const-string v3, "getSeason()Ljava/lang/String;"

    .line 8
    invoke-static {v0, v2, v3, v4}, Lcom/shabakaty/downloader/a41;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/xc2;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const-string v2, "img"

    const-string v3, "getImg()Ljava/lang/String;"

    .line 9
    invoke-static {v0, v2, v3, v4}, Lcom/shabakaty/downloader/a41;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/xc2;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const-string v2, "imgObjUrl"

    const-string v3, "getImgObjUrl()Ljava/lang/String;"

    .line 10
    invoke-static {v0, v2, v3, v4}, Lcom/shabakaty/downloader/a41;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/xc2;

    move-result-object v2

    const/16 v3, 0x9

    aput-object v2, v1, v3

    const-string v2, "imgMediumThumbObjUrl"

    const-string v3, "getImgMediumThumbObjUrl()Ljava/lang/String;"

    .line 11
    invoke-static {v0, v2, v3, v4}, Lcom/shabakaty/downloader/a41;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/xc2;

    move-result-object v2

    const/16 v3, 0xa

    aput-object v2, v1, v3

    const-string v2, "episodeNummer"

    const-string v3, "getEpisodeNummer()Ljava/lang/String;"

    .line 12
    invoke-static {v0, v2, v3, v4}, Lcom/shabakaty/downloader/a41;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/xc2;

    move-result-object v2

    const/16 v3, 0xb

    aput-object v2, v1, v3

    const-string v2, "rate"

    const-string v3, "getRate()Ljava/lang/String;"

    .line 13
    invoke-static {v0, v2, v3, v4}, Lcom/shabakaty/downloader/a41;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/xc2;

    move-result-object v2

    const/16 v3, 0xc

    aput-object v2, v1, v3

    const-string v2, "duration"

    const-string v3, "getDuration()Ljava/lang/String;"

    .line 14
    invoke-static {v0, v2, v3, v4}, Lcom/shabakaty/downloader/a41;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/xc2;

    move-result-object v2

    const/16 v3, 0xd

    aput-object v2, v1, v3

    const-string v2, "rootSeries"

    const-string v3, "getRootSeries()Ljava/lang/String;"

    .line 15
    invoke-static {v0, v2, v3, v4}, Lcom/shabakaty/downloader/a41;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/xc2;

    move-result-object v2

    const/16 v3, 0xe

    aput-object v2, v1, v3

    const-string v2, "episodeFlag"

    const-string v3, "getEpisodeFlag()Ljava/lang/String;"

    .line 16
    invoke-static {v0, v2, v3, v4}, Lcom/shabakaty/downloader/a41;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/xc2;

    move-result-object v2

    const/16 v3, 0xf

    aput-object v2, v1, v3

    const-string v2, "trailer"

    const-string v3, "getTrailer()Ljava/lang/String;"

    .line 17
    invoke-static {v0, v2, v3, v4}, Lcom/shabakaty/downloader/a41;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/xc2;

    move-result-object v2

    const/16 v3, 0x10

    aput-object v2, v1, v3

    const-string v2, "parentSkipping"

    const-string v3, "getParentSkipping()Ljava/lang/String;"

    .line 18
    invoke-static {v0, v2, v3, v4}, Lcom/shabakaty/downloader/a41;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/xc2;

    move-result-object v2

    const/16 v3, 0x11

    aput-object v2, v1, v3

    const-string v2, "collectionID"

    const-string v3, "getCollectionID()I"

    .line 19
    invoke-static {v0, v2, v3, v4}, Lcom/shabakaty/downloader/a41;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/xc2;

    move-result-object v2

    const/16 v3, 0x12

    aput-object v2, v1, v3

    const-string v2, "imgThumbObjUrl"

    const-string v3, "getImgThumbObjUrl()Ljava/lang/String;"

    .line 20
    invoke-static {v0, v2, v3, v4}, Lcom/shabakaty/downloader/a41;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/xc2;

    move-result-object v2

    const/16 v3, 0x13

    aput-object v2, v1, v3

    const-string v2, "skippingDurations"

    const-string v3, "getSkippingDurations()Lcom/shabakaty/cinemana/domain/models/local/SkippingDurations;"

    .line 21
    invoke-static {v0, v2, v3, v4}, Lcom/shabakaty/downloader/a41;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/xc2;

    move-result-object v2

    const/16 v3, 0x14

    aput-object v2, v1, v3

    const-string v2, "subtitles"

    const-string v3, "getSubtitles()Ljava/util/List;"

    .line 22
    invoke-static {v0, v2, v3, v4}, Lcom/shabakaty/downloader/a41;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/xc2;

    move-result-object v2

    const/16 v3, 0x15

    aput-object v2, v1, v3

    const-string v2, "hasIntroSkipping"

    const-string v3, "getHasIntroSkipping()Z"

    .line 23
    invoke-static {v0, v2, v3, v4}, Lcom/shabakaty/downloader/a41;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/xc2;

    move-result-object v2

    const/16 v3, 0x16

    aput-object v2, v1, v3

    const-string v2, "categories"

    const-string v3, "getCategories()Ljava/util/List;"

    .line 24
    invoke-static {v0, v2, v3, v4}, Lcom/shabakaty/downloader/a41;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/xc2;

    move-result-object v2

    const/16 v3, 0x17

    aput-object v2, v1, v3

    const-string v2, "videoLikesNumber"

    const-string v3, "getVideoLikesNumber()Ljava/lang/String;"

    .line 25
    invoke-static {v0, v2, v3, v4}, Lcom/shabakaty/downloader/a41;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/xc2;

    move-result-object v2

    const/16 v3, 0x18

    aput-object v2, v1, v3

    const-string v2, "videoDisLikesNumber"

    const-string v3, "getVideoDisLikesNumber()Ljava/lang/String;"

    .line 26
    invoke-static {v0, v2, v3, v4}, Lcom/shabakaty/downloader/a41;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/xc2;

    move-result-object v2

    const/16 v3, 0x19

    aput-object v2, v1, v3

    const-string v2, "actorsInfo"

    const-string v3, "getActorsInfo()Ljava/util/List;"

    .line 27
    invoke-static {v0, v2, v3, v4}, Lcom/shabakaty/downloader/a41;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/xc2;

    move-result-object v2

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    const-string v2, "directorsInfo"

    const-string v3, "getDirectorsInfo()Ljava/util/List;"

    .line 28
    invoke-static {v0, v2, v3, v4}, Lcom/shabakaty/downloader/a41;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/xc2;

    move-result-object v2

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    const-string v2, "writersInfo"

    const-string v3, "getWritersInfo()Ljava/util/List;"

    .line 29
    invoke-static {v0, v2, v3, v4}, Lcom/shabakaty/downloader/a41;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/xc2;

    move-result-object v2

    const/16 v3, 0x1c

    aput-object v2, v1, v3

    const-string v2, "listId"

    const-string v3, "getListId()Ljava/lang/String;"

    .line 30
    invoke-static {v0, v2, v3, v4}, Lcom/shabakaty/downloader/a41;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/xc2;

    move-result-object v2

    const/16 v3, 0x1d

    aput-object v2, v1, v3

    const-string v2, "episodeDesc"

    const-string v3, "getEpisodeDesc()Ljava/lang/String;"

    .line 31
    invoke-static {v0, v2, v3, v4}, Lcom/shabakaty/downloader/a41;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/xc2;

    move-result-object v2

    const/16 v3, 0x1e

    aput-object v2, v1, v3

    const-string v2, "type"

    const-string v3, "getType()I"

    .line 32
    invoke-static {v0, v2, v3, v4}, Lcom/shabakaty/downloader/a41;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/xc2;

    move-result-object v2

    const/16 v3, 0x1f

    aput-object v2, v1, v3

    const-string v2, "finished"

    const-string v3, "getFinished()Z"

    .line 33
    invoke-static {v0, v2, v3, v4}, Lcom/shabakaty/downloader/a41;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/xc2;

    move-result-object v2

    const/16 v3, 0x20

    aput-object v2, v1, v3

    const-string v2, "url"

    const-string v3, "getUrl()Ljava/lang/String;"

    .line 34
    invoke-static {v0, v2, v3, v4}, Lcom/shabakaty/downloader/a41;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/xc2;

    move-result-object v2

    const/16 v3, 0x21

    aput-object v2, v1, v3

    const-string v2, "downloadTaskId"

    const-string v3, "getDownloadTaskId()I"

    .line 35
    invoke-static {v0, v2, v3, v4}, Lcom/shabakaty/downloader/a41;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/xc2;

    move-result-object v2

    const/16 v3, 0x22

    aput-object v2, v1, v3

    const-string v2, "size"

    const-string v3, "getSize()Ljava/lang/String;"

    .line 36
    invoke-static {v0, v2, v3, v4}, Lcom/shabakaty/downloader/a41;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/xc2;

    move-result-object v2

    const/16 v3, 0x23

    aput-object v2, v1, v3

    const-string v2, "watched"

    const-string v3, "getWatched()Z"

    .line 37
    invoke-static {v0, v2, v3, v4}, Lcom/shabakaty/downloader/a41;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/xc2;

    move-result-object v2

    const/16 v3, 0x24

    aput-object v2, v1, v3

    const-string v2, "status"

    const-string v3, "getStatus()Lcom/shabakaty/cinemana/domain/models/local/VideoStatus;"

    .line 38
    invoke-static {v0, v2, v3, v4}, Lcom/shabakaty/downloader/a41;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/xc2;

    move-result-object v2

    const/16 v3, 0x25

    aput-object v2, v1, v3

    const-string v2, "qualities"

    const-string v3, "getQualities()Ljava/util/List;"

    .line 39
    invoke-static {v0, v2, v3, v4}, Lcom/shabakaty/downloader/a41;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/xc2;

    move-result-object v0

    const/16 v2, 0x26

    aput-object v0, v1, v2

    sput-object v1, Lcom/shabakaty/downloader/b41;->h:[Lcom/shabakaty/downloader/jd2;

    return-void
.end method

.method public constructor <init>(ZLcom/shabakaty/cinemana/domain/models/local/VideoModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/shabakaty/downloader/b41;->a:Z

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/b41;->b:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 4
    iput-object p2, p0, Lcom/shabakaty/downloader/b41;->c:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 5
    iput-object p2, p0, Lcom/shabakaty/downloader/b41;->d:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 6
    iput-object p2, p0, Lcom/shabakaty/downloader/b41;->e:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 7
    iput-object p2, p0, Lcom/shabakaty/downloader/b41;->f:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 8
    iput-object p2, p0, Lcom/shabakaty/downloader/b41;->g:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/b41;->f:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    iget-object v0, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->episodeNummer:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/b41;->e:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    iget-object v0, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->imgMediumThumbObjUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/b41;->c:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    iget-object v0, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/b41;->g:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    iget-object v0, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->qualities:Ljava/util/List;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/b41;->d:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    iget-object v0, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->season:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shabakaty/downloader/b41;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/b41;

    iget-boolean v1, p0, Lcom/shabakaty/downloader/b41;->a:Z

    iget-boolean v3, p1, Lcom/shabakaty/downloader/b41;->a:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/shabakaty/downloader/b41;->b:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    iget-object p1, p1, Lcom/shabakaty/downloader/b41;->b:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    invoke-static {v1, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lcom/shabakaty/downloader/b41;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shabakaty/downloader/b41;->b:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    invoke-virtual {v1}, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "EpisodeItem(isSelected="

    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/shabakaty/downloader/b41;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", videoModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/b41;->b:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
