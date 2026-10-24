.class public Lcom/shabakaty/cinemana/domain/mapper/UserListMapperImpl;
.super Ljava/lang/Object;
.source "UserListMapperImpl.java"

# interfaces
.implements Lcom/shabakaty/cinemana/domain/mapper/UserListMapper;


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

    iput-object v0, p0, Lcom/shabakaty/cinemana/domain/mapper/UserListMapperImpl;->videoModelMapper:Lcom/shabakaty/cinemana/domain/mapper/VideoModelMapper;

    return-void
.end method


# virtual methods
.method public mapDtoToDomain(Lcom/shabakaty/cinemana/domain/models/remote/user/UserListApi;)Lcom/shabakaty/cinemana/domain/models/local/user/UserList;
    .locals 5

    .line 2
    new-instance v0, Lcom/shabakaty/cinemana/domain/models/local/user/UserList;

    invoke-direct {v0}, Lcom/shabakaty/cinemana/domain/models/local/user/UserList;-><init>()V

    if-eqz p1, :cond_2

    .line 3
    iget-object v1, p1, Lcom/shabakaty/cinemana/domain/models/remote/user/UserListApi;->data:Ljava/util/List;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    .line 5
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;

    .line 7
    iget-object v4, p0, Lcom/shabakaty/cinemana/domain/mapper/UserListMapperImpl;->videoModelMapper:Lcom/shabakaty/cinemana/domain/mapper/VideoModelMapper;

    invoke-virtual {v4, v3}, Lcom/shabakaty/cinemana/domain/mapper/VideoModelMapper;->mapDtoToDomain(Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;)Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 8
    :goto_1
    iput-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/user/UserList;->data:Ljava/util/List;

    .line 9
    iget-object p1, p1, Lcom/shabakaty/cinemana/domain/models/remote/user/UserListApi;->status:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 10
    iput-object p1, v0, Lcom/shabakaty/cinemana/domain/models/local/user/UserList;->status:Ljava/lang/String;

    :cond_2
    return-object v0
.end method

.method public bridge synthetic mapDtoToDomain(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/cinemana/domain/models/remote/user/UserListApi;

    invoke-virtual {p0, p1}, Lcom/shabakaty/cinemana/domain/mapper/UserListMapperImpl;->mapDtoToDomain(Lcom/shabakaty/cinemana/domain/models/remote/user/UserListApi;)Lcom/shabakaty/cinemana/domain/models/local/user/UserList;

    move-result-object p1

    return-object p1
.end method
