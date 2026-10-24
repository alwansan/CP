.class public Lcom/shabakaty/cinemana/domain/mapper/VideoStatusEntityMapperImpl;
.super Ljava/lang/Object;
.source "VideoStatusEntityMapperImpl.java"

# interfaces
.implements Lcom/shabakaty/cinemana/domain/mapper/VideoStatusEntityMapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mapDtoToDomain(Lcom/shabakaty/downloader/q25;)Lcom/shabakaty/cinemana/data/db/videostatus/VideoStatusEntity;
    .locals 13

    .line 2
    new-instance v12, Lcom/shabakaty/cinemana/data/db/videostatus/VideoStatusEntity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/16 v11, 0x1ff

    move-object v0, v12

    .line 3
    invoke-direct/range {v0 .. v11}, Lcom/shabakaty/cinemana/data/db/videostatus/VideoStatusEntity;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;JI)V

    if-eqz p1, :cond_1

    .line 4
    iget-boolean v0, p1, Lcom/shabakaty/downloader/q25;->r:Z

    .line 5
    iput-boolean v0, v12, Lcom/shabakaty/cinemana/data/db/videostatus/VideoStatusEntity;->liked:Z

    .line 6
    iget-boolean v0, p1, Lcom/shabakaty/downloader/q25;->s:Z

    .line 7
    iput-boolean v0, v12, Lcom/shabakaty/cinemana/data/db/videostatus/VideoStatusEntity;->watched:Z

    .line 8
    iget-boolean v0, p1, Lcom/shabakaty/downloader/q25;->t:Z

    .line 9
    iput-boolean v0, v12, Lcom/shabakaty/cinemana/data/db/videostatus/VideoStatusEntity;->annoying:Z

    .line 10
    iget-boolean v0, p1, Lcom/shabakaty/downloader/q25;->u:Z

    .line 11
    iput-boolean v0, v12, Lcom/shabakaty/cinemana/data/db/videostatus/VideoStatusEntity;->disLiked:Z

    .line 12
    iget-boolean v0, p1, Lcom/shabakaty/downloader/q25;->v:Z

    .line 13
    iput-boolean v0, v12, Lcom/shabakaty/cinemana/data/db/videostatus/VideoStatusEntity;->favorite:Z

    .line 14
    iget-object v0, p1, Lcom/shabakaty/downloader/q25;->w:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "<set-?>"

    .line 15
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iput-object v0, v12, Lcom/shabakaty/cinemana/data/db/videostatus/VideoStatusEntity;->watchLater:Ljava/lang/String;

    .line 17
    :cond_0
    iget-wide v0, p1, Lcom/shabakaty/downloader/q25;->x:J

    .line 18
    iput-wide v0, v12, Lcom/shabakaty/cinemana/data/db/videostatus/VideoStatusEntity;->videoProgress:J

    :cond_1
    return-object v12
.end method

.method public bridge synthetic mapDtoToDomain(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/q25;

    invoke-virtual {p0, p1}, Lcom/shabakaty/cinemana/domain/mapper/VideoStatusEntityMapperImpl;->mapDtoToDomain(Lcom/shabakaty/downloader/q25;)Lcom/shabakaty/cinemana/data/db/videostatus/VideoStatusEntity;

    move-result-object p1

    return-object p1
.end method
