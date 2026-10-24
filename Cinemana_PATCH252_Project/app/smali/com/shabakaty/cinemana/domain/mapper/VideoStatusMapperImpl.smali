.class public Lcom/shabakaty/cinemana/domain/mapper/VideoStatusMapperImpl;
.super Ljava/lang/Object;
.source "VideoStatusMapperImpl.java"

# interfaces
.implements Lcom/shabakaty/cinemana/domain/mapper/VideoStatusMapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mapDtoToDomain(Lcom/shabakaty/downloader/r25;)Lcom/shabakaty/downloader/q25;
    .locals 2

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/q25;

    invoke-direct {v0}, Lcom/shabakaty/downloader/q25;-><init>()V

    if-eqz p1, :cond_0

    .line 3
    iget-boolean v1, p1, Lcom/shabakaty/downloader/r25;->a:Z

    .line 4
    iput-boolean v1, v0, Lcom/shabakaty/downloader/q25;->r:Z

    .line 5
    iget-boolean v1, p1, Lcom/shabakaty/downloader/r25;->b:Z

    .line 6
    iput-boolean v1, v0, Lcom/shabakaty/downloader/q25;->s:Z

    .line 7
    iget-boolean v1, p1, Lcom/shabakaty/downloader/r25;->c:Z

    .line 8
    iput-boolean v1, v0, Lcom/shabakaty/downloader/q25;->t:Z

    .line 9
    iget-boolean v1, p1, Lcom/shabakaty/downloader/r25;->d:Z

    .line 10
    iput-boolean v1, v0, Lcom/shabakaty/downloader/q25;->u:Z

    .line 11
    iget-boolean v1, p1, Lcom/shabakaty/downloader/r25;->e:Z

    .line 12
    iput-boolean v1, v0, Lcom/shabakaty/downloader/q25;->v:Z

    .line 13
    iget-object p1, p1, Lcom/shabakaty/downloader/r25;->f:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 14
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/q25;->a(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public bridge synthetic mapDtoToDomain(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/r25;

    invoke-virtual {p0, p1}, Lcom/shabakaty/cinemana/domain/mapper/VideoStatusMapperImpl;->mapDtoToDomain(Lcom/shabakaty/downloader/r25;)Lcom/shabakaty/downloader/q25;

    move-result-object p1

    return-object p1
.end method
