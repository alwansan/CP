.class public Lcom/shabakaty/cinemana/domain/mapper/VideoModelMapperImpl;
.super Lcom/shabakaty/cinemana/domain/mapper/VideoModelMapper;
.source "VideoModelMapperImpl.java"


# instance fields
.field private final introSkippingMapper:Lcom/shabakaty/cinemana/domain/mapper/IntroSkippingMapper;

.field private final skippingDurationsMapper:Lcom/shabakaty/cinemana/domain/mapper/SkippingDurationsMapper;

.field private final staffsInfoMapper:Lcom/shabakaty/cinemana/domain/mapper/StaffsInfoMapper;

.field private final subtitlesMapper:Lcom/shabakaty/cinemana/domain/mapper/SubtitlesMapper;

.field private final videoModelCategoriesMapper:Lcom/shabakaty/cinemana/domain/mapper/VideoModelCategoriesMapper;

.field private final videoModelLanguageMapper:Lcom/shabakaty/cinemana/domain/mapper/VideoModelLanguageMapper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/cinemana/domain/mapper/VideoModelMapper;-><init>()V

    .line 2
    const-class v0, Lcom/shabakaty/cinemana/domain/mapper/SkippingDurationsMapper;

    invoke-static {v0}, Lcom/shabakaty/downloader/ll3;->f(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/cinemana/domain/mapper/SkippingDurationsMapper;

    iput-object v0, p0, Lcom/shabakaty/cinemana/domain/mapper/VideoModelMapperImpl;->skippingDurationsMapper:Lcom/shabakaty/cinemana/domain/mapper/SkippingDurationsMapper;

    .line 3
    const-class v0, Lcom/shabakaty/cinemana/domain/mapper/SubtitlesMapper;

    invoke-static {v0}, Lcom/shabakaty/downloader/ll3;->f(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/cinemana/domain/mapper/SubtitlesMapper;

    iput-object v0, p0, Lcom/shabakaty/cinemana/domain/mapper/VideoModelMapperImpl;->subtitlesMapper:Lcom/shabakaty/cinemana/domain/mapper/SubtitlesMapper;

    .line 4
    const-class v0, Lcom/shabakaty/cinemana/domain/mapper/VideoModelCategoriesMapper;

    invoke-static {v0}, Lcom/shabakaty/downloader/ll3;->f(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/cinemana/domain/mapper/VideoModelCategoriesMapper;

    iput-object v0, p0, Lcom/shabakaty/cinemana/domain/mapper/VideoModelMapperImpl;->videoModelCategoriesMapper:Lcom/shabakaty/cinemana/domain/mapper/VideoModelCategoriesMapper;

    .line 5
    const-class v0, Lcom/shabakaty/cinemana/domain/mapper/VideoModelLanguageMapper;

    invoke-static {v0}, Lcom/shabakaty/downloader/ll3;->f(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/cinemana/domain/mapper/VideoModelLanguageMapper;

    iput-object v0, p0, Lcom/shabakaty/cinemana/domain/mapper/VideoModelMapperImpl;->videoModelLanguageMapper:Lcom/shabakaty/cinemana/domain/mapper/VideoModelLanguageMapper;

    .line 6
    const-class v0, Lcom/shabakaty/cinemana/domain/mapper/StaffsInfoMapper;

    invoke-static {v0}, Lcom/shabakaty/downloader/ll3;->f(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/cinemana/domain/mapper/StaffsInfoMapper;

    iput-object v0, p0, Lcom/shabakaty/cinemana/domain/mapper/VideoModelMapperImpl;->staffsInfoMapper:Lcom/shabakaty/cinemana/domain/mapper/StaffsInfoMapper;

    .line 7
    const-class v0, Lcom/shabakaty/cinemana/domain/mapper/IntroSkippingMapper;

    invoke-static {v0}, Lcom/shabakaty/downloader/ll3;->f(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/cinemana/domain/mapper/IntroSkippingMapper;

    iput-object v0, p0, Lcom/shabakaty/cinemana/domain/mapper/VideoModelMapperImpl;->introSkippingMapper:Lcom/shabakaty/cinemana/domain/mapper/IntroSkippingMapper;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$StaffsInfoApi;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ob4;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$StaffsInfoApi;

    .line 4
    iget-object v2, p0, Lcom/shabakaty/cinemana/domain/mapper/VideoModelMapperImpl;->staffsInfoMapper:Lcom/shabakaty/cinemana/domain/mapper/StaffsInfoMapper;

    invoke-interface {v2, v1}, Lcom/shabakaty/downloader/nj;->mapDtoToDomain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/ob4;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public mapDtoToDomain(Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;)Lcom/shabakaty/cinemana/domain/models/local/VideoModel;
    .locals 70

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    new-instance v15, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    move-object v2, v15

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v69, v15

    move-object/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const-wide/16 v57, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, -0x1

    const v68, 0x7fffffff

    .line 2
    invoke-direct/range {v2 .. v68}, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Lcom/shabakaty/cinemana/domain/models/local/SkippingDurations;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/cinemana/domain/models/local/VideoLanguages;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJLjava/lang/String;Ljava/lang/String;ZLcom/shabakaty/downloader/q25;Ljava/util/List;Lcom/shabakaty/cinemana/domain/models/local/Quality;Ljava/lang/String;ZII)V

    if-eqz v1, :cond_2b

    .line 3
    iget-object v2, v1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->skippingDurations:Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$SkippingDurationsApi;

    if-eqz v2, :cond_0

    .line 4
    iget-object v3, v0, Lcom/shabakaty/cinemana/domain/mapper/VideoModelMapperImpl;->skippingDurationsMapper:Lcom/shabakaty/cinemana/domain/mapper/SkippingDurationsMapper;

    invoke-interface {v3, v2}, Lcom/shabakaty/downloader/nj;->mapDtoToDomain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/cinemana/domain/models/local/SkippingDurations;

    move-object/from16 v3, v69

    invoke-virtual {v3, v2}, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->q(Lcom/shabakaty/cinemana/domain/models/local/SkippingDurations;)V

    goto :goto_0

    :cond_0
    move-object/from16 v3, v69

    .line 5
    :goto_0
    iget-object v2, v1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->translations:Ljava/util/List;

    if-nez v2, :cond_1

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2

    .line 7
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$a;

    .line 9
    iget-object v6, v0, Lcom/shabakaty/cinemana/domain/mapper/VideoModelMapperImpl;->subtitlesMapper:Lcom/shabakaty/cinemana/domain/mapper/SubtitlesMapper;

    invoke-interface {v6, v5}, Lcom/shabakaty/downloader/nj;->mapDtoToDomain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v2, v4

    .line 10
    :goto_2
    iput-object v2, v3, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->subtitles:Ljava/util/List;

    .line 11
    iget-object v2, v1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->introSkipping:Ljava/util/List;

    if-nez v2, :cond_3

    .line 12
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_4

    .line 13
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$IntroSkippingApi;

    .line 15
    iget-object v6, v0, Lcom/shabakaty/cinemana/domain/mapper/VideoModelMapperImpl;->introSkippingMapper:Lcom/shabakaty/cinemana/domain/mapper/IntroSkippingMapper;

    invoke-interface {v6, v5}, Lcom/shabakaty/cinemana/domain/mapper/IntroSkippingMapper;->mapDtoToDomain(Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$IntroSkippingApi;)Lcom/shabakaty/downloader/o84;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    move-object v2, v4

    .line 16
    :goto_4
    iput-object v2, v3, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->skippableScenes:Ljava/util/List;

    .line 17
    iget-object v2, v1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->categories:Ljava/util/List;

    if-nez v2, :cond_5

    .line 18
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_6

    .line 19
    :cond_5
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$CategoryApi;

    .line 21
    iget-object v6, v0, Lcom/shabakaty/cinemana/domain/mapper/VideoModelMapperImpl;->videoModelCategoriesMapper:Lcom/shabakaty/cinemana/domain/mapper/VideoModelCategoriesMapper;

    invoke-interface {v6, v5}, Lcom/shabakaty/downloader/nj;->mapDtoToDomain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/cinemana/domain/models/local/Category;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_6
    move-object v2, v4

    .line 22
    :goto_6
    iput-object v2, v3, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->categories:Ljava/util/List;

    .line 23
    iget-object v2, v1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->videoLanguages:Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$VideoLanguagesApi;

    if-eqz v2, :cond_7

    .line 24
    iget-object v4, v0, Lcom/shabakaty/cinemana/domain/mapper/VideoModelMapperImpl;->videoModelLanguageMapper:Lcom/shabakaty/cinemana/domain/mapper/VideoModelLanguageMapper;

    invoke-interface {v4, v2}, Lcom/shabakaty/downloader/nj;->mapDtoToDomain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/cinemana/domain/models/local/VideoLanguages;

    const-string v4, "<set-?>"

    .line 25
    invoke-static {v2, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object v2, v3, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->videoLanguages:Lcom/shabakaty/cinemana/domain/models/local/VideoLanguages;

    .line 27
    :cond_7
    iget-object v2, v1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->directorsInfo:Ljava/util/List;

    .line 28
    invoke-virtual {v0, v2}, Lcom/shabakaty/cinemana/domain/mapper/VideoModelMapperImpl;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 29
    iput-object v2, v3, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->directorsInfo:Ljava/util/List;

    .line 30
    iget-object v2, v1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->actorsInfo:Ljava/util/List;

    .line 31
    invoke-virtual {v0, v2}, Lcom/shabakaty/cinemana/domain/mapper/VideoModelMapperImpl;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 32
    iput-object v2, v3, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->actorsInfo:Ljava/util/List;

    .line 33
    iget-object v2, v1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->writersInfo:Ljava/util/List;

    .line 34
    invoke-virtual {v0, v2}, Lcom/shabakaty/cinemana/domain/mapper/VideoModelMapperImpl;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 35
    iput-object v2, v3, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->writersInfo:Ljava/util/List;

    .line 36
    iget-object v2, v1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->nb:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 37
    invoke-virtual {v3, v2}, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->l(Ljava/lang/String;)V

    .line 38
    :cond_8
    iget-object v2, v1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->enTitle:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 39
    iput-object v2, v3, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->enTitle:Ljava/lang/String;

    .line 40
    :cond_9
    iget-object v2, v1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->arTitle:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 41
    iput-object v2, v3, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->arTitle:Ljava/lang/String;

    .line 42
    :cond_a
    iget-object v2, v1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->stars:Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 43
    iput-object v2, v3, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->stars:Ljava/lang/String;

    .line 44
    :cond_b
    iget-object v2, v1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->arContent:Ljava/lang/String;

    if-eqz v2, :cond_c

    .line 45
    iput-object v2, v3, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->arContent:Ljava/lang/String;

    .line 46
    :cond_c
    iget-object v2, v1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->enContent:Ljava/lang/String;

    if-eqz v2, :cond_d

    .line 47
    iput-object v2, v3, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->enContent:Ljava/lang/String;

    .line 48
    :cond_d
    iget-object v2, v1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->mDate:Ljava/lang/String;

    if-eqz v2, :cond_e

    .line 49
    iput-object v2, v3, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->mDate:Ljava/lang/String;

    .line 50
    :cond_e
    iget-object v2, v1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->year:Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 51
    iput-object v2, v3, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->year:Ljava/lang/String;

    .line 52
    :cond_f
    iget-object v2, v1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->kind:Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 53
    iput-object v2, v3, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->kind:Ljava/lang/String;

    .line 54
    :cond_10
    iget-object v2, v1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->season:Ljava/lang/String;

    if-eqz v2, :cond_11

    .line 55
    iput-object v2, v3, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->season:Ljava/lang/String;

    .line 56
    :cond_11
    iget-object v2, v1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->imgObjUrl:Ljava/lang/String;

    if-eqz v2, :cond_12

    .line 57
    iput-object v2, v3, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->imgObjUrl:Ljava/lang/String;

    .line 58
    :cond_12
    iget-object v2, v1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->imgMediumThumbObjUrl:Ljava/lang/String;

    if-eqz v2, :cond_13

    .line 59
    iput-object v2, v3, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->imgMediumThumbObjUrl:Ljava/lang/String;

    .line 60
    :cond_13
    iget-object v2, v1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->filmRating:Ljava/lang/String;

    if-eqz v2, :cond_14

    .line 61
    iput-object v2, v3, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->filmRating:Ljava/lang/String;

    .line 62
    :cond_14
    iget-object v2, v1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->seriesRating:Ljava/lang/String;

    if-eqz v2, :cond_15

    .line 63
    iput-object v2, v3, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->seriesRating:Ljava/lang/String;

    .line 64
    :cond_15
    iget-object v2, v1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->episodeNummer:Ljava/lang/String;

    if-eqz v2, :cond_16

    .line 65
    invoke-virtual {v3, v2}, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->j(Ljava/lang/String;)V

    .line 66
    :cond_16
    iget-object v2, v1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->rate:Ljava/lang/String;

    if-eqz v2, :cond_17

    .line 67
    iput-object v2, v3, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->rate:Ljava/lang/String;

    .line 68
    :cond_17
    iget-object v2, v1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->itemDate:Ljava/lang/String;

    if-eqz v2, :cond_18

    .line 69
    iput-object v2, v3, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->itemDate:Ljava/lang/String;

    .line 70
    :cond_18
    iget-object v2, v1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->duration:Ljava/lang/String;

    if-eqz v2, :cond_19

    .line 71
    iput-object v2, v3, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->duration:Ljava/lang/String;

    .line 72
    :cond_19
    iget-object v2, v1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->imdbUrlRef:Ljava/lang/String;

    if-eqz v2, :cond_1a

    .line 73
    iput-object v2, v3, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->imdbUrlRef:Ljava/lang/String;

    .line 74
    :cond_1a
    iget-object v2, v1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->rootSeries:Ljava/lang/String;

    if-eqz v2, :cond_1b

    .line 75
    invoke-virtual {v3, v2}, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->o(Ljava/lang/String;)V

    .line 76
    :cond_1b
    iget-object v2, v1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->useParentImg:Ljava/lang/String;

    if-eqz v2, :cond_1c

    .line 77
    iput-object v2, v3, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->useParentImg:Ljava/lang/String;

    .line 78
    :cond_1c
    iget-boolean v2, v1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->showComments:Z

    .line 79
    iput-boolean v2, v3, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->showComments:Z

    .line 80
    iget-object v2, v1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->episodeFlag:Ljava/lang/String;

    if-eqz v2, :cond_1d

    .line 81
    iput-object v2, v3, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->episodeFlag:Ljava/lang/String;

    .line 82
    :cond_1d
    iget-object v2, v1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->trailer:Ljava/lang/String;

    if-eqz v2, :cond_1e

    .line 83
    iput-object v2, v3, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->trailer:Ljava/lang/String;

    .line 84
    :cond_1e
    iget-object v2, v1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->parentSkipping:Ljava/lang/String;

    if-eqz v2, :cond_1f

    .line 85
    iput-object v2, v3, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->parentSkipping:Ljava/lang/String;

    .line 86
    :cond_1f
    iget-object v2, v1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->imgThumbObjUrl:Ljava/lang/String;

    if-eqz v2, :cond_20

    .line 87
    invoke-virtual {v3, v2}, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->k(Ljava/lang/String;)V

    .line 88
    :cond_20
    iget-object v2, v1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->arTranslationFilePath:Ljava/lang/String;

    if-eqz v2, :cond_21

    .line 89
    invoke-virtual {v3, v2}, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->g(Ljava/lang/String;)V

    .line 90
    :cond_21
    iget-boolean v2, v1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->hasIntroSkipping:Z

    .line 91
    iput-boolean v2, v3, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->hasIntroSkipping:Z

    .line 92
    iget-object v2, v1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->videoLikesNumber:Ljava/lang/String;

    if-eqz v2, :cond_22

    .line 93
    iput-object v2, v3, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->videoLikesNumber:Ljava/lang/String;

    .line 94
    :cond_22
    iget-object v2, v1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->videoDisLikesNumber:Ljava/lang/String;

    if-eqz v2, :cond_23

    .line 95
    iput-object v2, v3, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->videoDisLikesNumber:Ljava/lang/String;

    .line 96
    :cond_23
    iget v2, v1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->videoCommentsNumber:I

    .line 97
    iput v2, v3, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->videoCommentsNumber:I

    .line 98
    iget-object v2, v1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->videoViewsNumber:Ljava/lang/String;

    if-eqz v2, :cond_24

    .line 99
    iput-object v2, v3, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->videoViewsNumber:Ljava/lang/String;

    .line 100
    :cond_24
    iget-object v2, v1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->itemOrderList:Ljava/lang/String;

    if-eqz v2, :cond_25

    .line 101
    iput-object v2, v3, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->itemOrderList:Ljava/lang/String;

    .line 102
    :cond_25
    iget-object v2, v1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->listId:Ljava/lang/String;

    if-eqz v2, :cond_26

    .line 103
    iput-object v2, v3, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->listId:Ljava/lang/String;

    .line 104
    :cond_26
    iget-object v2, v1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->listSortOrder:Ljava/lang/String;

    if-eqz v2, :cond_27

    .line 105
    iput-object v2, v3, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->listSortOrder:Ljava/lang/String;

    .line 106
    :cond_27
    iget-object v2, v1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->castable:Ljava/lang/String;

    if-eqz v2, :cond_28

    .line 107
    iput-object v2, v3, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->castable:Ljava/lang/String;

    .line 108
    :cond_28
    iget-object v2, v1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->publishDate:Ljava/lang/String;

    if-eqz v2, :cond_29

    .line 109
    iput-object v2, v3, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->publishDate:Ljava/lang/String;

    .line 110
    :cond_29
    iget-object v2, v1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->customArTitle:Ljava/lang/String;

    if-eqz v2, :cond_2a

    .line 111
    iput-object v2, v3, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->customArTitle:Ljava/lang/String;

    .line 112
    :cond_2a
    iget-object v2, v1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->customEnTitle:Ljava/lang/String;

    if-eqz v2, :cond_2c

    .line 113
    iput-object v2, v3, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->customEnTitle:Ljava/lang/String;

    goto :goto_7

    :cond_2b
    move-object/from16 v3, v69

    .line 114
    :cond_2c
    :goto_7
    invoke-virtual {v0, v1, v3}, Lcom/shabakaty/cinemana/domain/mapper/VideoModelMapper;->updateVideoModelRoot(Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)V

    return-object v3
.end method
