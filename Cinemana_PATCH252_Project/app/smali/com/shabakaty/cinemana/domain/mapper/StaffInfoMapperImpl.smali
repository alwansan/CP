.class public Lcom/shabakaty/cinemana/domain/mapper/StaffInfoMapperImpl;
.super Ljava/lang/Object;
.source "StaffInfoMapperImpl.java"

# interfaces
.implements Lcom/shabakaty/cinemana/domain/mapper/StaffInfoMapper;


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

    iput-object v0, p0, Lcom/shabakaty/cinemana/domain/mapper/StaffInfoMapperImpl;->videoModelMapper:Lcom/shabakaty/cinemana/domain/mapper/VideoModelMapper;

    return-void
.end method


# virtual methods
.method public mapDtoToDomain(Lcom/shabakaty/cinemana/domain/models/remote/actor_info/StaffModelApi;)Lcom/shabakaty/cinemana/domain/models/local/staff_info/StaffModel;
    .locals 10

    .line 2
    new-instance v9, Lcom/shabakaty/cinemana/domain/models/local/staff_info/StaffModel;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x7f

    move-object v0, v9

    .line 3
    invoke-direct/range {v0 .. v8}, Lcom/shabakaty/cinemana/domain/models/local/staff_info/StaffModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V

    if-eqz p1, :cond_6

    .line 4
    iget-object v0, p1, Lcom/shabakaty/cinemana/domain/models/remote/actor_info/StaffModelApi;->imgMediumThumbObjUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5
    iput-object v0, v9, Lcom/shabakaty/cinemana/domain/models/local/staff_info/StaffModel;->imgMediumThumbObjUrl:Ljava/lang/String;

    .line 6
    :cond_0
    iget-object v0, p1, Lcom/shabakaty/cinemana/domain/models/remote/actor_info/StaffModelApi;->imgObjUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 7
    iput-object v0, v9, Lcom/shabakaty/cinemana/domain/models/local/staff_info/StaffModel;->imgObjUrl:Ljava/lang/String;

    .line 8
    :cond_1
    iget-object v0, p1, Lcom/shabakaty/cinemana/domain/models/remote/actor_info/StaffModelApi;->imgThumbObjUrl:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 9
    iput-object v0, v9, Lcom/shabakaty/cinemana/domain/models/local/staff_info/StaffModel;->imgThumbObjUrl:Ljava/lang/String;

    .line 10
    :cond_2
    iget-object v0, p1, Lcom/shabakaty/cinemana/domain/models/remote/actor_info/StaffModelApi;->items:Ljava/util/List;

    if-nez v0, :cond_3

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    .line 12
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;

    .line 14
    iget-object v3, p0, Lcom/shabakaty/cinemana/domain/mapper/StaffInfoMapperImpl;->videoModelMapper:Lcom/shabakaty/cinemana/domain/mapper/VideoModelMapper;

    invoke-virtual {v3, v2}, Lcom/shabakaty/cinemana/domain/mapper/VideoModelMapper;->mapDtoToDomain(Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;)Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 15
    :goto_1
    iput-object v0, v9, Lcom/shabakaty/cinemana/domain/models/local/staff_info/StaffModel;->items:Ljava/util/List;

    .line 16
    iget-object v0, p1, Lcom/shabakaty/cinemana/domain/models/remote/actor_info/StaffModelApi;->role:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 17
    iput-object v0, v9, Lcom/shabakaty/cinemana/domain/models/local/staff_info/StaffModel;->role:Ljava/lang/String;

    .line 18
    :cond_5
    iget-object p1, p1, Lcom/shabakaty/cinemana/domain/models/remote/actor_info/StaffModelApi;->title:Ljava/lang/String;

    if-eqz p1, :cond_6

    .line 19
    iput-object p1, v9, Lcom/shabakaty/cinemana/domain/models/local/staff_info/StaffModel;->title:Ljava/lang/String;

    :cond_6
    return-object v9
.end method

.method public bridge synthetic mapDtoToDomain(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/cinemana/domain/models/remote/actor_info/StaffModelApi;

    invoke-virtual {p0, p1}, Lcom/shabakaty/cinemana/domain/mapper/StaffInfoMapperImpl;->mapDtoToDomain(Lcom/shabakaty/cinemana/domain/models/remote/actor_info/StaffModelApi;)Lcom/shabakaty/cinemana/domain/models/local/staff_info/StaffModel;

    move-result-object p1

    return-object p1
.end method
