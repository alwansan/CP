.class public Lcom/shabakaty/cinemana/domain/mapper/VideosGroupMapperImpl;
.super Ljava/lang/Object;
.source "VideosGroupMapperImpl.java"

# interfaces
.implements Lcom/shabakaty/cinemana/domain/mapper/VideosGroupMapper;


# instance fields
.field private final videoModelMapper:Lcom/shabakaty/cinemana/domain/mapper/VideoModelMapper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, Lcom/shabakaty/cinemana/domain/mapper/VideoModelMapper;

    invoke-static {v0}, Lcom/shabakaty/downloader/ll3;->f(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/cinemana/domain/mapper/VideoModelMapper;

    iput-object v0, p0, Lcom/shabakaty/cinemana/domain/mapper/VideosGroupMapperImpl;->videoModelMapper:Lcom/shabakaty/cinemana/domain/mapper/VideoModelMapper;

    return-void
.end method


# virtual methods
.method public mapDtoToDomain(Lcom/shabakaty/cinemana/domain/models/remote/home_page/VideosGroupApi;)Lcom/shabakaty/cinemana/domain/models/local/home_page/VideosGroup;
    .locals 5

    .line 2
    new-instance v0, Lcom/shabakaty/cinemana/domain/models/local/home_page/VideosGroup;

    .line 3
    sget-object v1, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    const-string v2, ""

    const/4 v3, 0x0

    .line 4
    invoke-direct {v0, v1, v2, v2, v3}, Lcom/shabakaty/cinemana/domain/models/local/home_page/VideosGroup;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V

    if-eqz p1, :cond_4

    .line 5
    iget-object v1, p1, Lcom/shabakaty/cinemana/domain/models/remote/home_page/VideosGroupApi;->videosList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    .line 7
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;

    .line 9
    iget-object v4, p0, Lcom/shabakaty/cinemana/domain/mapper/VideosGroupMapperImpl;->videoModelMapper:Lcom/shabakaty/cinemana/domain/mapper/VideoModelMapper;

    invoke-virtual {v4, v3}, Lcom/shabakaty/cinemana/domain/mapper/VideoModelMapper;->mapDtoToDomain(Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;)Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 10
    :goto_1
    iput-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/home_page/VideosGroup;->videosList:Ljava/util/List;

    .line 11
    iget-object v1, p1, Lcom/shabakaty/cinemana/domain/models/remote/home_page/VideosGroupApi;->title:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 12
    iput-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/home_page/VideosGroup;->title:Ljava/lang/String;

    .line 13
    :cond_2
    iget-object v1, p1, Lcom/shabakaty/cinemana/domain/models/remote/home_page/VideosGroupApi;->groupsID:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 14
    iput-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/home_page/VideosGroup;->groupsID:Ljava/lang/String;

    .line 15
    :cond_3
    iget p1, p1, Lcom/shabakaty/cinemana/domain/models/remote/home_page/VideosGroupApi;->hasPagination:I

    .line 16
    iput p1, v0, Lcom/shabakaty/cinemana/domain/models/local/home_page/VideosGroup;->hasPagination:I

    :cond_4
    return-object v0
.end method

.method public bridge synthetic mapDtoToDomain(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/cinemana/domain/models/remote/home_page/VideosGroupApi;

    invoke-virtual {p0, p1}, Lcom/shabakaty/cinemana/domain/mapper/VideosGroupMapperImpl;->mapDtoToDomain(Lcom/shabakaty/cinemana/domain/models/remote/home_page/VideosGroupApi;)Lcom/shabakaty/cinemana/domain/models/local/home_page/VideosGroup;

    move-result-object p1

    return-object p1
.end method
