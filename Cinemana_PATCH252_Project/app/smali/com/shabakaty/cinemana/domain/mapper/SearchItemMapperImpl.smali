.class public Lcom/shabakaty/cinemana/domain/mapper/SearchItemMapperImpl;
.super Ljava/lang/Object;
.source "SearchItemMapperImpl.java"

# interfaces
.implements Lcom/shabakaty/cinemana/domain/mapper/SearchItemMapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mapDtoToDomain(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)Lcom/shabakaty/cinemana/data/db/search/SearchItem;
    .locals 16

    move-object/from16 v0, p1

    .line 2
    new-instance v15, Lcom/shabakaty/cinemana/data/db/search/SearchItem;

    const-string v2, "0"

    const-string v14, ""

    move-object v1, v15

    move-object v3, v14

    move-object v4, v14

    move-object v5, v14

    move-object v6, v14

    move-object v7, v14

    move-object v8, v14

    move-object v9, v14

    move-object v10, v14

    move-object v11, v14

    move-object v12, v14

    move-object v13, v14

    .line 3
    invoke-direct/range {v1 .. v14}, Lcom/shabakaty/cinemana/data/db/search/SearchItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_a

    .line 4
    iget-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    const-string v2, "<set-?>"

    if-eqz v1, :cond_0

    .line 5
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iput-object v1, v15, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->nb:Ljava/lang/String;

    .line 7
    :cond_0
    iget-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->enTitle:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 8
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iput-object v1, v15, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->enTitle:Ljava/lang/String;

    .line 10
    :cond_1
    iget-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->arTitle:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 11
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iput-object v1, v15, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->arTitle:Ljava/lang/String;

    .line 13
    :cond_2
    iget-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->stars:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 14
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object v1, v15, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->stars:Ljava/lang/String;

    .line 16
    :cond_3
    iget-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->year:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 17
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object v1, v15, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->year:Ljava/lang/String;

    .line 19
    :cond_4
    iget-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->kind:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 20
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iput-object v1, v15, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->kind:Ljava/lang/String;

    .line 22
    :cond_5
    iget-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->season:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 23
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iput-object v1, v15, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->season:Ljava/lang/String;

    .line 25
    :cond_6
    iget-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->imgObjUrl:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 26
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput-object v1, v15, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->imgObjUrl:Ljava/lang/String;

    .line 28
    :cond_7
    iget-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->episodeNummer:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 29
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iput-object v1, v15, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->episodeNummer:Ljava/lang/String;

    .line 31
    :cond_8
    iget-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->rate:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 32
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iput-object v1, v15, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->rate:Ljava/lang/String;

    .line 34
    :cond_9
    iget-object v0, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->imgMediumThumbObjUrl:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 35
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iput-object v0, v15, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->imgMediumThumbObjUrl:Ljava/lang/String;

    :cond_a
    return-object v15
.end method

.method public bridge synthetic mapDtoToDomain(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    invoke-virtual {p0, p1}, Lcom/shabakaty/cinemana/domain/mapper/SearchItemMapperImpl;->mapDtoToDomain(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)Lcom/shabakaty/cinemana/data/db/search/SearchItem;

    move-result-object p1

    return-object p1
.end method
