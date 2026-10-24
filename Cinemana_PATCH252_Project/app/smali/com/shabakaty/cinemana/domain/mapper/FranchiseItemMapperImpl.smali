.class public Lcom/shabakaty/cinemana/domain/mapper/FranchiseItemMapperImpl;
.super Ljava/lang/Object;
.source "FranchiseItemMapperImpl.java"

# interfaces
.implements Lcom/shabakaty/cinemana/domain/mapper/FranchiseItemMapper;


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

    iput-object v0, p0, Lcom/shabakaty/cinemana/domain/mapper/FranchiseItemMapperImpl;->videoModelMapper:Lcom/shabakaty/cinemana/domain/mapper/VideoModelMapper;

    return-void
.end method


# virtual methods
.method public mapDtoToDomain(Lcom/shabakaty/cinemana/domain/models/remote/home_page/CollectionItemApi;)Lcom/shabakaty/cinemana/domain/models/local/home_page/FranchiseItem;
    .locals 10

    .line 2
    new-instance v9, Lcom/shabakaty/cinemana/domain/models/local/home_page/FranchiseItem;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v8, ""

    move-object v0, v9

    move-object v2, v8

    move-object v3, v8

    move-object v4, v8

    move-object v5, v8

    move-object v6, v8

    move-object v7, v8

    .line 4
    invoke-direct/range {v0 .. v8}, Lcom/shabakaty/cinemana/domain/models/local/home_page/FranchiseItem;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_8

    .line 5
    iget-object v0, p1, Lcom/shabakaty/cinemana/domain/models/remote/home_page/CollectionItemApi;->content:Ljava/util/List;

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    .line 7
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;

    .line 9
    iget-object v3, p0, Lcom/shabakaty/cinemana/domain/mapper/FranchiseItemMapperImpl;->videoModelMapper:Lcom/shabakaty/cinemana/domain/mapper/VideoModelMapper;

    invoke-virtual {v3, v2}, Lcom/shabakaty/cinemana/domain/mapper/VideoModelMapper;->mapDtoToDomain(Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;)Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 10
    :goto_1
    iput-object v0, v9, Lcom/shabakaty/cinemana/domain/models/local/home_page/FranchiseItem;->content:Ljava/util/List;

    .line 11
    iget-object v0, p1, Lcom/shabakaty/cinemana/domain/models/remote/home_page/CollectionItemApi;->groupsID:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 12
    iput-object v0, v9, Lcom/shabakaty/cinemana/domain/models/local/home_page/FranchiseItem;->groupsID:Ljava/lang/String;

    .line 13
    :cond_2
    iget-object v0, p1, Lcom/shabakaty/cinemana/domain/models/remote/home_page/CollectionItemApi;->imgMediumThumbObjUrl:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 14
    iput-object v0, v9, Lcom/shabakaty/cinemana/domain/models/local/home_page/FranchiseItem;->imgMediumThumbObjUrl:Ljava/lang/String;

    .line 15
    :cond_3
    iget-object v0, p1, Lcom/shabakaty/cinemana/domain/models/remote/home_page/CollectionItemApi;->imgObjUrl:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 16
    iput-object v0, v9, Lcom/shabakaty/cinemana/domain/models/local/home_page/FranchiseItem;->imgObjUrl:Ljava/lang/String;

    .line 17
    :cond_4
    iget-object v0, p1, Lcom/shabakaty/cinemana/domain/models/remote/home_page/CollectionItemApi;->imgThumbObjUrl:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 18
    iput-object v0, v9, Lcom/shabakaty/cinemana/domain/models/local/home_page/FranchiseItem;->imgThumbObjUrl:Ljava/lang/String;

    .line 19
    :cond_5
    iget-object v0, p1, Lcom/shabakaty/cinemana/domain/models/remote/home_page/CollectionItemApi;->title:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 20
    iput-object v0, v9, Lcom/shabakaty/cinemana/domain/models/local/home_page/FranchiseItem;->title:Ljava/lang/String;

    .line 21
    :cond_6
    iget-object v0, p1, Lcom/shabakaty/cinemana/domain/models/remote/home_page/CollectionItemApi;->displayName:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 22
    iput-object v0, v9, Lcom/shabakaty/cinemana/domain/models/local/home_page/FranchiseItem;->displayName:Ljava/lang/String;

    .line 23
    :cond_7
    iget-object p1, p1, Lcom/shabakaty/cinemana/domain/models/remote/home_page/CollectionItemApi;->id:Ljava/lang/String;

    if-eqz p1, :cond_8

    .line 24
    iput-object p1, v9, Lcom/shabakaty/cinemana/domain/models/local/home_page/FranchiseItem;->id:Ljava/lang/String;

    :cond_8
    return-object v9
.end method

.method public bridge synthetic mapDtoToDomain(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/cinemana/domain/models/remote/home_page/CollectionItemApi;

    invoke-virtual {p0, p1}, Lcom/shabakaty/cinemana/domain/mapper/FranchiseItemMapperImpl;->mapDtoToDomain(Lcom/shabakaty/cinemana/domain/models/remote/home_page/CollectionItemApi;)Lcom/shabakaty/cinemana/domain/models/local/home_page/FranchiseItem;

    move-result-object p1

    return-object p1
.end method
