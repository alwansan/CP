.class public Lcom/shabakaty/downloader/kw0$g;
.super Lcom/shabakaty/downloader/x31;
.source "DownloadDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/kw0;-><init>(Lcom/shabakaty/downloader/vt3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/x31<",
        "Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lcom/shabakaty/downloader/kw0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/kw0;Lcom/shabakaty/downloader/vt3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/kw0$g;->d:Lcom/shabakaty/downloader/kw0;

    invoke-direct {p0, p2}, Lcom/shabakaty/downloader/x31;-><init>(Lcom/shabakaty/downloader/vt3;)V

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `CinemanaDownloadItem` (`id`,`downloadTaskId`,`title`,`stars`,`kind`,`sizeMB`,`season`,`imgObjUrl`,`filmRating`,`tvShowRating`,`path`,`episodeNumber`,`special`,`useParentImg`,`parentSkipping`,`collectionID`,`imgThumbObjUrl`,`qualityName`,`rootEpisode`,`hasIntroSkipping`,`episodeFlag`,`lastUpdated`,`skippingDurations_start`,`skippingDurations_end`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method

.method public e(Lcom/shabakaty/downloader/ci4;Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p2, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    .line 2
    iget-object v0, p2, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->id:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1, v1, v0}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    :goto_0
    const/4 v0, 0x2

    .line 5
    iget v1, p2, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->downloadTaskId:I

    int-to-long v1, v1

    .line 6
    invoke-interface {p1, v0, v1, v2}, Lcom/shabakaty/downloader/ai4;->h0(IJ)V

    .line 7
    iget-object v0, p2, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->title:Ljava/lang/String;

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 8
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_1

    .line 9
    :cond_1
    invoke-interface {p1, v1, v0}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    .line 10
    :goto_1
    iget-object v0, p2, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->stars:Ljava/lang/String;

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 11
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_2

    .line 12
    :cond_2
    invoke-interface {p1, v1, v0}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    .line 13
    :goto_2
    iget-object v0, p2, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->kind:Ljava/lang/String;

    const/4 v1, 0x5

    if-nez v0, :cond_3

    .line 14
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_3

    .line 15
    :cond_3
    invoke-interface {p1, v1, v0}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    :goto_3
    const/4 v0, 0x6

    .line 16
    iget v1, p2, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->sizeMB:I

    int-to-long v1, v1

    .line 17
    invoke-interface {p1, v0, v1, v2}, Lcom/shabakaty/downloader/ai4;->h0(IJ)V

    .line 18
    iget-object v0, p2, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->season:Ljava/lang/String;

    const/4 v1, 0x7

    if-nez v0, :cond_4

    .line 19
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_4

    .line 20
    :cond_4
    invoke-interface {p1, v1, v0}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    .line 21
    :goto_4
    iget-object v0, p2, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->imgObjUrl:Ljava/lang/String;

    const/16 v1, 0x8

    if-nez v0, :cond_5

    .line 22
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_5

    .line 23
    :cond_5
    invoke-interface {p1, v1, v0}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    .line 24
    :goto_5
    iget-object v0, p2, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->filmRating:Ljava/lang/String;

    const/16 v1, 0x9

    if-nez v0, :cond_6

    .line 25
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_6

    .line 26
    :cond_6
    invoke-interface {p1, v1, v0}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    .line 27
    :goto_6
    iget-object v0, p2, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->tvShowRating:Ljava/lang/String;

    const/16 v1, 0xa

    if-nez v0, :cond_7

    .line 28
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_7

    .line 29
    :cond_7
    invoke-interface {p1, v1, v0}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    .line 30
    :goto_7
    iget-object v0, p2, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->path:Ljava/lang/String;

    const/16 v1, 0xb

    if-nez v0, :cond_8

    .line 31
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_8

    .line 32
    :cond_8
    invoke-interface {p1, v1, v0}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    .line 33
    :goto_8
    iget-object v0, p2, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->episodeNumber:Ljava/lang/String;

    const/16 v1, 0xc

    if-nez v0, :cond_9

    .line 34
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_9

    .line 35
    :cond_9
    invoke-interface {p1, v1, v0}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    .line 36
    :goto_9
    iget-object v0, p2, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->special:Ljava/lang/String;

    const/16 v1, 0xd

    if-nez v0, :cond_a

    .line 37
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_a

    .line 38
    :cond_a
    invoke-interface {p1, v1, v0}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    .line 39
    :goto_a
    iget-object v0, p2, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->useParentImg:Ljava/lang/String;

    const/16 v1, 0xe

    if-nez v0, :cond_b

    .line 40
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_b

    .line 41
    :cond_b
    invoke-interface {p1, v1, v0}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    .line 42
    :goto_b
    iget-object v0, p2, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->parentSkipping:Ljava/lang/String;

    const/16 v1, 0xf

    if-nez v0, :cond_c

    .line 43
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_c

    .line 44
    :cond_c
    invoke-interface {p1, v1, v0}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    :goto_c
    const/16 v0, 0x10

    .line 45
    iget v1, p2, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->collectionID:I

    int-to-long v1, v1

    .line 46
    invoke-interface {p1, v0, v1, v2}, Lcom/shabakaty/downloader/ai4;->h0(IJ)V

    .line 47
    iget-object v0, p2, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->imgThumbObjUrl:Ljava/lang/String;

    const/16 v1, 0x11

    if-nez v0, :cond_d

    .line 48
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_d

    .line 49
    :cond_d
    invoke-interface {p1, v1, v0}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    .line 50
    :goto_d
    iget-object v0, p2, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->qualityName:Ljava/lang/String;

    const/16 v1, 0x12

    if-nez v0, :cond_e

    .line 51
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_e

    .line 52
    :cond_e
    invoke-interface {p1, v1, v0}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    .line 53
    :goto_e
    iget-object v0, p2, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->rootEpisode:Ljava/lang/String;

    const/16 v1, 0x13

    if-nez v0, :cond_f

    .line 54
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_f

    .line 55
    :cond_f
    invoke-interface {p1, v1, v0}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    .line 56
    :goto_f
    iget-boolean v0, p2, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->hasIntroSkipping:Z

    const/16 v1, 0x14

    int-to-long v2, v0

    .line 57
    invoke-interface {p1, v1, v2, v3}, Lcom/shabakaty/downloader/ai4;->h0(IJ)V

    .line 58
    iget-object v0, p2, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->episodeFlag:Ljava/lang/String;

    const/16 v1, 0x15

    if-nez v0, :cond_10

    .line 59
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_10

    .line 60
    :cond_10
    invoke-interface {p1, v1, v0}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    .line 61
    :goto_10
    iget-object v0, p2, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->lastUpdated:Ljava/lang/String;

    const/16 v1, 0x16

    if-nez v0, :cond_11

    .line 62
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_11

    .line 63
    :cond_11
    invoke-interface {p1, v1, v0}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    .line 64
    :goto_11
    iget-object p2, p2, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->skippingDurations:Lcom/shabakaty/cinemana/data/db/downloads/SkippingDurationsDB;

    const/16 v0, 0x18

    const/16 v1, 0x17

    if-eqz p2, :cond_12

    .line 65
    iget-object v2, p0, Lcom/shabakaty/downloader/kw0$g;->d:Lcom/shabakaty/downloader/kw0;

    .line 66
    iget-object v2, v2, Lcom/shabakaty/downloader/kw0;->c:Lcom/shabakaty/downloader/ce4;

    .line 67
    iget-object v3, p2, Lcom/shabakaty/cinemana/data/db/downloads/SkippingDurationsDB;->start:Ljava/util/List;

    .line 68
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/ce4;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 69
    invoke-interface {p1, v1, v2}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/shabakaty/downloader/kw0$g;->d:Lcom/shabakaty/downloader/kw0;

    .line 71
    iget-object v1, v1, Lcom/shabakaty/downloader/kw0;->c:Lcom/shabakaty/downloader/ce4;

    .line 72
    iget-object p2, p2, Lcom/shabakaty/cinemana/data/db/downloads/SkippingDurationsDB;->end:Ljava/util/List;

    .line 73
    invoke-virtual {v1, p2}, Lcom/shabakaty/downloader/ce4;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    .line 74
    invoke-interface {p1, v0, p2}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    goto :goto_12

    .line 75
    :cond_12
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    .line 76
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    :goto_12
    return-void
.end method
