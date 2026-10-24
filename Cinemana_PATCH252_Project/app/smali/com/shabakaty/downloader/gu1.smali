.class public final synthetic Lcom/shabakaty/downloader/gu1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/in1;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/f74;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/shabakaty/downloader/gu1;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/gu1;->s:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/ou1;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/gu1;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/gu1;->s:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/q15;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/gu1;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/gu1;->s:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/qf1;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/shabakaty/downloader/gu1;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/gu1;->s:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/wc3;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/shabakaty/downloader/gu1;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/gu1;->s:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v1, Lcom/shabakaty/downloader/tj$a;->s:Lcom/shabakaty/downloader/tj$a;

    sget-object v3, Lcom/shabakaty/downloader/tj$a;->u:Lcom/shabakaty/downloader/tj$a;

    sget-object v5, Lcom/shabakaty/downloader/tj$a;->r:Lcom/shabakaty/downloader/tj$a;

    iget v0, p0, Lcom/shabakaty/downloader/gu1;->r:I

    const/4 v2, 0x0

    const-string v10, "null response"

    const-string v4, "$this_wrapWithBaseModel"

    const-string v6, "it"

    const-string v7, "this$0"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/gu1;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/f74;

    .line 1
    invoke-static {v0, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/tj;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    move-object v2, v0

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/shabakaty/downloader/tj;-><init>(Lcom/shabakaty/downloader/tj$a;Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;I)V

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Lcom/shabakaty/downloader/tj;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xc

    move-object v4, v0

    move-object v6, p1

    invoke-direct/range {v4 .. v9}, Lcom/shabakaty/downloader/tj;-><init>(Lcom/shabakaty/downloader/tj$a;Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;I)V

    move-object v2, v0

    :goto_0
    if-nez v2, :cond_2

    .line 5
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3, v10}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 6
    new-instance p1, Lcom/shabakaty/downloader/tj;

    const/4 v4, 0x0

    const/16 v5, 0x8

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/tj;-><init>(Lcom/shabakaty/downloader/tj$a;Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;I)V

    move-object v2, p1

    :cond_2
    return-object v2

    .line 7
    :pswitch_1
    iget-object v0, p0, Lcom/shabakaty/downloader/gu1;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/wc3;

    check-cast p1, Ljava/lang/Long;

    .line 8
    invoke-static {v0, v7}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-wide v0, v0, Lcom/shabakaty/downloader/wc3;->z:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 10
    :pswitch_2
    iget-object v0, p0, Lcom/shabakaty/downloader/gu1;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/q15;

    check-cast p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;

    .line 11
    invoke-static {v0, v7}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object v0, v0, Lcom/shabakaty/downloader/q15;->d:Lcom/shabakaty/downloader/qm2;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v1, v0, Lcom/shabakaty/downloader/qm2;->c:Lcom/shabakaty/cinemana/domain/mapper/VideoModelMapper;

    invoke-virtual {v1, p1}, Lcom/shabakaty/cinemana/domain/mapper/VideoModelMapper;->mapDtoToDomain(Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;)Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    move-result-object p1

    .line 14
    iget-object v1, v0, Lcom/shabakaty/downloader/qm2;->b:Lcom/shabakaty/downloader/s25;

    .line 15
    iget-object v2, p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    .line 16
    invoke-interface {v1, v2}, Lcom/shabakaty/downloader/s25;->a(Ljava/lang/String;)Lcom/shabakaty/cinemana/data/db/videostatus/VideoStatusEntity;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_1

    .line 17
    :cond_3
    invoke-virtual {p1, v0, v1}, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->p(Lcom/shabakaty/downloader/qm2;Lcom/shabakaty/cinemana/data/db/videostatus/VideoStatusEntity;)V

    .line 18
    :goto_1
    iget-object v0, v0, Lcom/shabakaty/downloader/qm2;->d:Lcom/shabakaty/downloader/y25;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/y25;->a(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)Ljava/lang/String;

    move-result-object v0

    .line 19
    iput-object v0, p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->episodeDesc:Ljava/lang/String;

    return-object p1

    .line 20
    :pswitch_3
    iget-object v0, p0, Lcom/shabakaty/downloader/gu1;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/ou1;

    check-cast p1, Ljava/util/List;

    .line 21
    invoke-static {v0, v7}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "list"

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x5

    .line 22
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/m50;->V(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/shabakaty/downloader/m50;->z0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    .line 23
    iget-object v4, v0, Lcom/shabakaty/downloader/ou1;->b:Lcom/shabakaty/downloader/qm2;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v3, v6}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 25
    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 26
    check-cast v7, Lcom/shabakaty/cinemana/domain/models/remote/home_page/VideosGroupApi;

    .line 27
    iget-object v8, v4, Lcom/shabakaty/downloader/qm2;->m:Lcom/shabakaty/cinemana/domain/mapper/VideosGroupMapper;

    invoke-interface {v8, v7}, Lcom/shabakaty/downloader/nj;->mapDtoToDomain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shabakaty/cinemana/domain/models/local/home_page/VideosGroup;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 28
    :cond_4
    invoke-static {v5}, Lcom/shabakaty/downloader/m50;->z0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    .line 29
    move-object v5, v3

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shabakaty/cinemana/domain/models/local/home_page/VideosGroup;

    .line 30
    iget-object v7, v7, Lcom/shabakaty/cinemana/domain/models/local/home_page/VideosGroup;->videosList:Ljava/util/List;

    .line 31
    invoke-virtual {v4, v7}, Lcom/shabakaty/downloader/qm2;->h(Ljava/util/List;)Ljava/util/List;

    goto :goto_3

    .line 32
    :cond_5
    new-instance v4, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$BottomGroups;

    invoke-direct {v4, v3}, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$BottomGroups;-><init>(Ljava/util/List;)V

    .line 33
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/m50;->u0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    .line 34
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1, v6}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 35
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v3, 0x0

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    if-ltz v3, :cond_8

    .line 36
    check-cast v5, Lcom/shabakaty/cinemana/domain/models/remote/home_page/VideosGroupApi;

    const-string v7, "api"

    if-eqz v3, :cond_7

    const/4 v8, 0x1

    if-eq v3, v8, :cond_6

    .line 37
    iget-object v3, v0, Lcom/shabakaty/downloader/ou1;->b:Lcom/shabakaty/downloader/qm2;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "group"

    .line 38
    invoke-static {v5, v7}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v7, v3, Lcom/shabakaty/downloader/qm2;->m:Lcom/shabakaty/cinemana/domain/mapper/VideosGroupMapper;

    invoke-interface {v7, v5}, Lcom/shabakaty/downloader/nj;->mapDtoToDomain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/cinemana/domain/models/local/home_page/VideosGroup;

    .line 40
    iget-object v7, v5, Lcom/shabakaty/cinemana/domain/models/local/home_page/VideosGroup;->videosList:Ljava/util/List;

    .line 41
    invoke-virtual {v3, v7}, Lcom/shabakaty/downloader/qm2;->h(Ljava/util/List;)Ljava/util/List;

    .line 42
    new-instance v3, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal$SecondGroupsSlice;

    .line 43
    iget-object v7, v5, Lcom/shabakaty/cinemana/domain/models/local/home_page/VideosGroup;->videosList:Ljava/util/List;

    .line 44
    iget-object v8, v5, Lcom/shabakaty/cinemana/domain/models/local/home_page/VideosGroup;->title:Ljava/lang/String;

    .line 45
    iget-object v9, v5, Lcom/shabakaty/cinemana/domain/models/local/home_page/VideosGroup;->groupsID:Ljava/lang/String;

    .line 46
    iget v5, v5, Lcom/shabakaty/cinemana/domain/models/local/home_page/VideosGroup;->hasPagination:I

    .line 47
    invoke-direct {v3, v7, v8, v9, v5}, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal$SecondGroupsSlice;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_5

    .line 48
    :cond_6
    iget-object v3, v0, Lcom/shabakaty/downloader/ou1;->b:Lcom/shabakaty/downloader/qm2;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-static {v5, v7}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object v7, v3, Lcom/shabakaty/downloader/qm2;->m:Lcom/shabakaty/cinemana/domain/mapper/VideosGroupMapper;

    invoke-interface {v7, v5}, Lcom/shabakaty/downloader/nj;->mapDtoToDomain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/cinemana/domain/models/local/home_page/VideosGroup;

    .line 51
    iget-object v7, v5, Lcom/shabakaty/cinemana/domain/models/local/home_page/VideosGroup;->videosList:Ljava/util/List;

    .line 52
    invoke-virtual {v3, v7}, Lcom/shabakaty/downloader/qm2;->h(Ljava/util/List;)Ljava/util/List;

    .line 53
    new-instance v3, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal$FeaturedTvShows;

    .line 54
    iget-object v7, v5, Lcom/shabakaty/cinemana/domain/models/local/home_page/VideosGroup;->videosList:Ljava/util/List;

    .line 55
    iget-object v8, v5, Lcom/shabakaty/cinemana/domain/models/local/home_page/VideosGroup;->title:Ljava/lang/String;

    .line 56
    iget-object v9, v5, Lcom/shabakaty/cinemana/domain/models/local/home_page/VideosGroup;->groupsID:Ljava/lang/String;

    .line 57
    iget v5, v5, Lcom/shabakaty/cinemana/domain/models/local/home_page/VideosGroup;->hasPagination:I

    .line 58
    invoke-direct {v3, v7, v8, v9, v5}, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal$FeaturedTvShows;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_5

    .line 59
    :cond_7
    iget-object v3, v0, Lcom/shabakaty/downloader/ou1;->b:Lcom/shabakaty/downloader/qm2;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-static {v5, v7}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object v7, v3, Lcom/shabakaty/downloader/qm2;->m:Lcom/shabakaty/cinemana/domain/mapper/VideosGroupMapper;

    invoke-interface {v7, v5}, Lcom/shabakaty/downloader/nj;->mapDtoToDomain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/cinemana/domain/models/local/home_page/VideosGroup;

    .line 62
    iget-object v7, v5, Lcom/shabakaty/cinemana/domain/models/local/home_page/VideosGroup;->videosList:Ljava/util/List;

    .line 63
    invoke-virtual {v3, v7}, Lcom/shabakaty/downloader/qm2;->h(Ljava/util/List;)Ljava/util/List;

    .line 64
    new-instance v3, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal$FeaturedMovies;

    .line 65
    iget-object v7, v5, Lcom/shabakaty/cinemana/domain/models/local/home_page/VideosGroup;->videosList:Ljava/util/List;

    .line 66
    iget-object v8, v5, Lcom/shabakaty/cinemana/domain/models/local/home_page/VideosGroup;->title:Ljava/lang/String;

    .line 67
    iget-object v9, v5, Lcom/shabakaty/cinemana/domain/models/local/home_page/VideosGroup;->groupsID:Ljava/lang/String;

    .line 68
    iget v5, v5, Lcom/shabakaty/cinemana/domain/models/local/home_page/VideosGroup;->hasPagination:I

    .line 69
    invoke-direct {v3, v7, v8, v9, v5}, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal$FeaturedMovies;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V

    .line 70
    :goto_5
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v6

    goto/16 :goto_4

    .line 71
    :cond_8
    invoke-static {}, Lcom/shabakaty/downloader/iq6;->x()V

    throw v2

    .line 72
    :cond_9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 73
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 74
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1

    .line 75
    :goto_6
    iget-object v0, p0, Lcom/shabakaty/downloader/gu1;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/qf1;

    .line 76
    invoke-static {v0, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_a

    goto :goto_7

    .line 77
    :cond_a
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_b

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 78
    new-instance v0, Lcom/shabakaty/downloader/tj;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    move-object v2, v0

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/shabakaty/downloader/tj;-><init>(Lcom/shabakaty/downloader/tj$a;Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;I)V

    goto :goto_7

    .line 79
    :cond_b
    new-instance v0, Lcom/shabakaty/downloader/tj;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xc

    move-object v4, v0

    move-object v6, p1

    invoke-direct/range {v4 .. v9}, Lcom/shabakaty/downloader/tj;-><init>(Lcom/shabakaty/downloader/tj$a;Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;I)V

    move-object v2, v0

    :goto_7
    if-nez v2, :cond_c

    .line 80
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3, v10}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 81
    new-instance p1, Lcom/shabakaty/downloader/tj;

    const/4 v4, 0x0

    const/16 v5, 0x8

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/tj;-><init>(Lcom/shabakaty/downloader/tj$a;Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;I)V

    move-object v2, p1

    :cond_c
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
