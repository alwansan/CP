.class public Lcom/shabakaty/cinemana/domain/mapper/StatusComponentMapperImpl;
.super Ljava/lang/Object;
.source "StatusComponentMapperImpl.java"

# interfaces
.implements Lcom/shabakaty/cinemana/domain/mapper/StatusComponentMapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mapDtoToDomain(Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;)Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;
    .locals 3

    .line 2
    new-instance v0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;

    invoke-direct {v0}, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;-><init>()V

    if-eqz p1, :cond_9

    .line 3
    iget-object v1, p1, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->components:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5
    iput-object v2, v0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->components:Ljava/util/List;

    .line 6
    :cond_0
    iget-object v1, p1, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->createdAt:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 7
    iput-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->createdAt:Ljava/lang/String;

    .line 8
    :cond_1
    iget-object v1, p1, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->description:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 9
    iput-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->description:Ljava/lang/String;

    .line 10
    :cond_2
    iget-boolean v1, p1, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->group:Z

    .line 11
    iput-boolean v1, v0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->group:Z

    .line 12
    iget-object v1, p1, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->groupId:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 13
    iput-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->groupId:Ljava/lang/String;

    .line 14
    :cond_3
    iget-object v1, p1, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->id:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 15
    iput-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->id:Ljava/lang/String;

    .line 16
    :cond_4
    iget-object v1, p1, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->name:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 17
    iput-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->name:Ljava/lang/String;

    .line 18
    :cond_5
    iget-boolean v1, p1, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->onlyShowIfDegraded:Z

    .line 19
    iput-boolean v1, v0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->onlyShowIfDegraded:Z

    .line 20
    iget-object v1, p1, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->pageId:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 21
    iput-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->pageId:Ljava/lang/String;

    .line 22
    :cond_6
    iget v1, p1, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->position:I

    .line 23
    iput v1, v0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->position:I

    .line 24
    iget-boolean v1, p1, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->showcase:Z

    .line 25
    iput-boolean v1, v0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->showcase:Z

    .line 26
    iget-object v1, p1, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->startDate:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 27
    iput-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->startDate:Ljava/lang/String;

    .line 28
    :cond_7
    iget-object v1, p1, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->status:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 29
    iput-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->status:Ljava/lang/String;

    .line 30
    :cond_8
    iget-object p1, p1, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;->updatedAt:Ljava/lang/String;

    if-eqz p1, :cond_9

    .line 31
    iput-object p1, v0, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->updatedAt:Ljava/lang/String;

    :cond_9
    return-object v0
.end method

.method public bridge synthetic mapDtoToDomain(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;

    invoke-virtual {p0, p1}, Lcom/shabakaty/cinemana/domain/mapper/StatusComponentMapperImpl;->mapDtoToDomain(Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;)Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;

    move-result-object p1

    return-object p1
.end method
