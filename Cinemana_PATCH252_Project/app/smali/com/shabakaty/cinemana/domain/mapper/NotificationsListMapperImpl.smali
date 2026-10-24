.class public Lcom/shabakaty/cinemana/domain/mapper/NotificationsListMapperImpl;
.super Ljava/lang/Object;
.source "NotificationsListMapperImpl.java"

# interfaces
.implements Lcom/shabakaty/cinemana/domain/mapper/NotificationsListMapper;


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

    iput-object v0, p0, Lcom/shabakaty/cinemana/domain/mapper/NotificationsListMapperImpl;->videoModelMapper:Lcom/shabakaty/cinemana/domain/mapper/VideoModelMapper;

    return-void
.end method


# virtual methods
.method public mapDtoToDomain(Lcom/shabakaty/cinemana/domain/models/remote/user/NotificationsListApi;)Lcom/shabakaty/cinemana/domain/models/local/user/NotificationsList;
    .locals 4

    .line 2
    new-instance v0, Lcom/shabakaty/cinemana/domain/models/local/user/NotificationsList;

    invoke-direct {v0}, Lcom/shabakaty/cinemana/domain/models/local/user/NotificationsList;-><init>()V

    if-eqz p1, :cond_3

    .line 3
    iget-object v1, p1, Lcom/shabakaty/cinemana/domain/models/remote/user/NotificationsListApi;->new:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4
    iput-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/user/NotificationsList;->new:Ljava/lang/String;

    .line 5
    :cond_0
    iget-object p1, p1, Lcom/shabakaty/cinemana/domain/models/remote/user/NotificationsListApi;->notifications:Ljava/util/List;

    if-nez p1, :cond_1

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    .line 7
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;

    .line 9
    iget-object v3, p0, Lcom/shabakaty/cinemana/domain/mapper/NotificationsListMapperImpl;->videoModelMapper:Lcom/shabakaty/cinemana/domain/mapper/VideoModelMapper;

    invoke-virtual {v3, v2}, Lcom/shabakaty/cinemana/domain/mapper/VideoModelMapper;->mapDtoToDomain(Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;)Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object p1, v1

    .line 10
    :goto_1
    iput-object p1, v0, Lcom/shabakaty/cinemana/domain/models/local/user/NotificationsList;->notifications:Ljava/util/List;

    :cond_3
    return-object v0
.end method

.method public bridge synthetic mapDtoToDomain(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/cinemana/domain/models/remote/user/NotificationsListApi;

    invoke-virtual {p0, p1}, Lcom/shabakaty/cinemana/domain/mapper/NotificationsListMapperImpl;->mapDtoToDomain(Lcom/shabakaty/cinemana/domain/models/remote/user/NotificationsListApi;)Lcom/shabakaty/cinemana/domain/models/local/user/NotificationsList;

    move-result-object p1

    return-object p1
.end method
