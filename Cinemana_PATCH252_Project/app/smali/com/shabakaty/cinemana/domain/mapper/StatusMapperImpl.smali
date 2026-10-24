.class public Lcom/shabakaty/cinemana/domain/mapper/StatusMapperImpl;
.super Ljava/lang/Object;
.source "StatusMapperImpl.java"

# interfaces
.implements Lcom/shabakaty/cinemana/domain/mapper/StatusMapper;


# instance fields
.field private final statusComponentMapper:Lcom/shabakaty/cinemana/domain/mapper/StatusComponentMapper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, Lcom/shabakaty/cinemana/domain/mapper/StatusComponentMapper;

    invoke-static {v0}, Lcom/shabakaty/downloader/ll3;->f(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/cinemana/domain/mapper/StatusComponentMapper;

    iput-object v0, p0, Lcom/shabakaty/cinemana/domain/mapper/StatusMapperImpl;->statusComponentMapper:Lcom/shabakaty/cinemana/domain/mapper/StatusComponentMapper;

    return-void
.end method


# virtual methods
.method public mapDtoToDomain(Lcom/shabakaty/cinemana/domain/models/remote/StatusApi;)Lcom/shabakaty/cinemana/domain/models/local/StatusInfo;
    .locals 4

    .line 2
    new-instance v0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo;

    invoke-direct {v0}, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo;-><init>()V

    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p1, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi;->components:Ljava/util/List;

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    .line 5
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;

    .line 7
    iget-object v3, p0, Lcom/shabakaty/cinemana/domain/mapper/StatusMapperImpl;->statusComponentMapper:Lcom/shabakaty/cinemana/domain/mapper/StatusComponentMapper;

    invoke-interface {v3, v2}, Lcom/shabakaty/cinemana/domain/mapper/StatusComponentMapper;->mapDtoToDomain(Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;)Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_1
    const-string v1, "<set-?>"

    .line 8
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iput-object p1, v0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo;->components:Ljava/util/List;

    :cond_2
    return-object v0
.end method

.method public bridge synthetic mapDtoToDomain(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi;

    invoke-virtual {p0, p1}, Lcom/shabakaty/cinemana/domain/mapper/StatusMapperImpl;->mapDtoToDomain(Lcom/shabakaty/cinemana/domain/models/remote/StatusApi;)Lcom/shabakaty/cinemana/domain/models/local/StatusInfo;

    move-result-object p1

    return-object p1
.end method
