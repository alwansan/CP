.class public Lcom/shabakaty/downloader/t25$f;
.super Lcom/shabakaty/downloader/x31;
.source "VideoStatusDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/t25;-><init>(Lcom/shabakaty/downloader/vt3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/x31<",
        "Lcom/shabakaty/cinemana/data/db/videostatus/VideoStatusEntity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/t25;Lcom/shabakaty/downloader/vt3;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/shabakaty/downloader/x31;-><init>(Lcom/shabakaty/downloader/vt3;)V

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `video_status` (`id`,`videoId`,`liked`,`watched`,`annoying`,`disLiked`,`favorite`,`watchLater`,`videoProgress`) VALUES (?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method

.method public e(Lcom/shabakaty/downloader/ci4;Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p2, Lcom/shabakaty/cinemana/data/db/videostatus/VideoStatusEntity;

    .line 2
    iget-object v0, p2, Lcom/shabakaty/cinemana/data/db/videostatus/VideoStatusEntity;->id:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1, v1, v0}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    .line 5
    :goto_0
    iget-object v0, p2, Lcom/shabakaty/cinemana/data/db/videostatus/VideoStatusEntity;->videoId:Ljava/lang/String;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 6
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-interface {p1, v1, v0}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    .line 8
    :goto_1
    iget-boolean v0, p2, Lcom/shabakaty/cinemana/data/db/videostatus/VideoStatusEntity;->liked:Z

    const/4 v1, 0x3

    int-to-long v2, v0

    .line 9
    invoke-interface {p1, v1, v2, v3}, Lcom/shabakaty/downloader/ai4;->h0(IJ)V

    .line 10
    iget-boolean v0, p2, Lcom/shabakaty/cinemana/data/db/videostatus/VideoStatusEntity;->watched:Z

    const/4 v1, 0x4

    int-to-long v2, v0

    .line 11
    invoke-interface {p1, v1, v2, v3}, Lcom/shabakaty/downloader/ai4;->h0(IJ)V

    .line 12
    iget-boolean v0, p2, Lcom/shabakaty/cinemana/data/db/videostatus/VideoStatusEntity;->annoying:Z

    const/4 v1, 0x5

    int-to-long v2, v0

    .line 13
    invoke-interface {p1, v1, v2, v3}, Lcom/shabakaty/downloader/ai4;->h0(IJ)V

    .line 14
    iget-boolean v0, p2, Lcom/shabakaty/cinemana/data/db/videostatus/VideoStatusEntity;->disLiked:Z

    const/4 v1, 0x6

    int-to-long v2, v0

    .line 15
    invoke-interface {p1, v1, v2, v3}, Lcom/shabakaty/downloader/ai4;->h0(IJ)V

    .line 16
    iget-boolean v0, p2, Lcom/shabakaty/cinemana/data/db/videostatus/VideoStatusEntity;->favorite:Z

    const/4 v1, 0x7

    int-to-long v2, v0

    .line 17
    invoke-interface {p1, v1, v2, v3}, Lcom/shabakaty/downloader/ai4;->h0(IJ)V

    .line 18
    iget-object v0, p2, Lcom/shabakaty/cinemana/data/db/videostatus/VideoStatusEntity;->watchLater:Ljava/lang/String;

    const/16 v1, 0x8

    if-nez v0, :cond_2

    .line 19
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_2

    .line 20
    :cond_2
    invoke-interface {p1, v1, v0}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    :goto_2
    const/16 v0, 0x9

    .line 21
    iget-wide v1, p2, Lcom/shabakaty/cinemana/data/db/videostatus/VideoStatusEntity;->videoProgress:J

    .line 22
    invoke-interface {p1, v0, v1, v2}, Lcom/shabakaty/downloader/ai4;->h0(IJ)V

    return-void
.end method
