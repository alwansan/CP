.class public Lcom/shabakaty/cinemana/domain/mapper/VideoStatusMapperFromEntityImpl;
.super Ljava/lang/Object;
.source "VideoStatusMapperFromEntityImpl.java"

# interfaces
.implements Lcom/shabakaty/cinemana/domain/mapper/VideoStatusMapperFromEntity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mapDtoToDomain(Lcom/shabakaty/cinemana/data/db/videostatus/VideoStatusEntity;)Lcom/shabakaty/downloader/q25;
    .locals 3

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/q25;

    invoke-direct {v0}, Lcom/shabakaty/downloader/q25;-><init>()V

    if-eqz p1, :cond_1

    .line 3
    iget-boolean v1, p1, Lcom/shabakaty/cinemana/data/db/videostatus/VideoStatusEntity;->liked:Z

    .line 4
    iput-boolean v1, v0, Lcom/shabakaty/downloader/q25;->r:Z

    .line 5
    iget-boolean v1, p1, Lcom/shabakaty/cinemana/data/db/videostatus/VideoStatusEntity;->watched:Z

    .line 6
    iput-boolean v1, v0, Lcom/shabakaty/downloader/q25;->s:Z

    .line 7
    iget-boolean v1, p1, Lcom/shabakaty/cinemana/data/db/videostatus/VideoStatusEntity;->annoying:Z

    .line 8
    iput-boolean v1, v0, Lcom/shabakaty/downloader/q25;->t:Z

    .line 9
    iget-boolean v1, p1, Lcom/shabakaty/cinemana/data/db/videostatus/VideoStatusEntity;->disLiked:Z

    .line 10
    iput-boolean v1, v0, Lcom/shabakaty/downloader/q25;->u:Z

    .line 11
    iget-boolean v1, p1, Lcom/shabakaty/cinemana/data/db/videostatus/VideoStatusEntity;->favorite:Z

    .line 12
    iput-boolean v1, v0, Lcom/shabakaty/downloader/q25;->v:Z

    .line 13
    iget-object v1, p1, Lcom/shabakaty/cinemana/data/db/videostatus/VideoStatusEntity;->watchLater:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 14
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/q25;->a(Ljava/lang/String;)V

    .line 15
    :cond_0
    iget-wide v1, p1, Lcom/shabakaty/cinemana/data/db/videostatus/VideoStatusEntity;->videoProgress:J

    .line 16
    iput-wide v1, v0, Lcom/shabakaty/downloader/q25;->x:J

    :cond_1
    return-object v0
.end method

.method public bridge synthetic mapDtoToDomain(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/cinemana/data/db/videostatus/VideoStatusEntity;

    invoke-virtual {p0, p1}, Lcom/shabakaty/cinemana/domain/mapper/VideoStatusMapperFromEntityImpl;->mapDtoToDomain(Lcom/shabakaty/cinemana/data/db/videostatus/VideoStatusEntity;)Lcom/shabakaty/downloader/q25;

    move-result-object p1

    return-object p1
.end method
