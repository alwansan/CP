.class public Lcom/shabakaty/cinemana/domain/mapper/VideoModelEntityMapperImpl;
.super Ljava/lang/Object;
.source "VideoModelEntityMapperImpl.java"

# interfaces
.implements Lcom/shabakaty/cinemana/domain/mapper/VideoModelEntityMapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mapDtoToDomain(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)Lcom/shabakaty/downloader/i25;
    .locals 66

    move-object/from16 v0, p1

    .line 2
    new-instance v15, Lcom/shabakaty/downloader/i25;

    move-object v1, v15

    const/4 v2, 0x0

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

    move-object/from16 v65, v15

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

    const/16 v63, -0x1

    const v64, 0xfffffff

    .line 3
    invoke-direct/range {v1 .. v64}, Lcom/shabakaty/downloader/i25;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJLjava/lang/String;Ljava/lang/String;ZZII)V

    if-eqz v0, :cond_27

    .line 4
    iget-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object/from16 v2, v65

    .line 5
    iput-object v1, v2, Lcom/shabakaty/downloader/i25;->r:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, v65

    .line 6
    :goto_0
    iget-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->enTitle:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 7
    iput-object v1, v2, Lcom/shabakaty/downloader/i25;->s:Ljava/lang/String;

    .line 8
    :cond_1
    iget-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->arTitle:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 9
    iput-object v1, v2, Lcom/shabakaty/downloader/i25;->t:Ljava/lang/String;

    .line 10
    :cond_2
    iget-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->stars:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 11
    iput-object v1, v2, Lcom/shabakaty/downloader/i25;->v:Ljava/lang/String;

    .line 12
    :cond_3
    iget-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->arContent:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 13
    iput-object v1, v2, Lcom/shabakaty/downloader/i25;->x:Ljava/lang/String;

    .line 14
    :cond_4
    iget-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->enContent:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 15
    iput-object v1, v2, Lcom/shabakaty/downloader/i25;->y:Ljava/lang/String;

    .line 16
    :cond_5
    iget-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->mDate:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 17
    iput-object v1, v2, Lcom/shabakaty/downloader/i25;->z:Ljava/lang/String;

    .line 18
    :cond_6
    iget-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->year:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 19
    iput-object v1, v2, Lcom/shabakaty/downloader/i25;->A:Ljava/lang/String;

    .line 20
    :cond_7
    iget-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->kind:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 21
    iput-object v1, v2, Lcom/shabakaty/downloader/i25;->B:Ljava/lang/String;

    .line 22
    :cond_8
    iget-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->season:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 23
    iput-object v1, v2, Lcom/shabakaty/downloader/i25;->C:Ljava/lang/String;

    .line 24
    :cond_9
    iget-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->imgObjUrl:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 25
    iput-object v1, v2, Lcom/shabakaty/downloader/i25;->G:Ljava/lang/String;

    .line 26
    :cond_a
    iget-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->imgMediumThumbObjUrl:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 27
    iput-object v1, v2, Lcom/shabakaty/downloader/i25;->H:Ljava/lang/String;

    .line 28
    :cond_b
    iget-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->filmRating:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 29
    iput-object v1, v2, Lcom/shabakaty/downloader/i25;->I:Ljava/lang/String;

    .line 30
    :cond_c
    iget-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->episodeNummer:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 31
    iput-object v1, v2, Lcom/shabakaty/downloader/i25;->K:Ljava/lang/String;

    .line 32
    :cond_d
    iget-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->rate:Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 33
    iput-object v1, v2, Lcom/shabakaty/downloader/i25;->L:Ljava/lang/String;

    .line 34
    :cond_e
    iget-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->itemDate:Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 35
    iput-object v1, v2, Lcom/shabakaty/downloader/i25;->N:Ljava/lang/String;

    .line 36
    :cond_f
    iget-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->duration:Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 37
    iput-object v1, v2, Lcom/shabakaty/downloader/i25;->O:Ljava/lang/String;

    .line 38
    :cond_10
    iget-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->imdbUrlRef:Ljava/lang/String;

    if-eqz v1, :cond_11

    .line 39
    iput-object v1, v2, Lcom/shabakaty/downloader/i25;->P:Ljava/lang/String;

    .line 40
    :cond_11
    iget-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->rootSeries:Ljava/lang/String;

    if-eqz v1, :cond_12

    .line 41
    iput-object v1, v2, Lcom/shabakaty/downloader/i25;->Q:Ljava/lang/String;

    .line 42
    :cond_12
    iget-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->useParentImg:Ljava/lang/String;

    if-eqz v1, :cond_13

    .line 43
    iput-object v1, v2, Lcom/shabakaty/downloader/i25;->R:Ljava/lang/String;

    .line 44
    :cond_13
    iget-boolean v1, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->showComments:Z

    .line 45
    iput-boolean v1, v2, Lcom/shabakaty/downloader/i25;->S:Z

    .line 46
    iget-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->episodeFlag:Ljava/lang/String;

    if-eqz v1, :cond_14

    .line 47
    iput-object v1, v2, Lcom/shabakaty/downloader/i25;->T:Ljava/lang/String;

    .line 48
    :cond_14
    iget-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->trailer:Ljava/lang/String;

    if-eqz v1, :cond_15

    .line 49
    iput-object v1, v2, Lcom/shabakaty/downloader/i25;->U:Ljava/lang/String;

    .line 50
    :cond_15
    iget-boolean v1, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->isMock:Z

    .line 51
    iput-boolean v1, v2, Lcom/shabakaty/downloader/i25;->V:Z

    .line 52
    iget-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->parentSkipping:Ljava/lang/String;

    if-eqz v1, :cond_16

    .line 53
    iput-object v1, v2, Lcom/shabakaty/downloader/i25;->X:Ljava/lang/String;

    .line 54
    :cond_16
    iget-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->imgThumbObjUrl:Ljava/lang/String;

    if-eqz v1, :cond_17

    .line 55
    iput-object v1, v2, Lcom/shabakaty/downloader/i25;->a0:Ljava/lang/String;

    .line 56
    :cond_17
    iget-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->arTranslationFilePath:Ljava/lang/String;

    if-eqz v1, :cond_18

    .line 57
    iput-object v1, v2, Lcom/shabakaty/downloader/i25;->c0:Ljava/lang/String;

    .line 58
    :cond_18
    iget-boolean v1, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->hasIntroSkipping:Z

    .line 59
    iput-boolean v1, v2, Lcom/shabakaty/downloader/i25;->d0:Z

    .line 60
    iget-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->videoLikesNumber:Ljava/lang/String;

    if-eqz v1, :cond_19

    .line 61
    iput-object v1, v2, Lcom/shabakaty/downloader/i25;->e0:Ljava/lang/String;

    .line 62
    :cond_19
    iget-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->videoDisLikesNumber:Ljava/lang/String;

    if-eqz v1, :cond_1a

    .line 63
    iput-object v1, v2, Lcom/shabakaty/downloader/i25;->f0:Ljava/lang/String;

    .line 64
    :cond_1a
    iget v1, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->videoCommentsNumber:I

    .line 65
    iput v1, v2, Lcom/shabakaty/downloader/i25;->g0:I

    .line 66
    iget-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->videoViewsNumber:Ljava/lang/String;

    if-eqz v1, :cond_1b

    .line 67
    iput-object v1, v2, Lcom/shabakaty/downloader/i25;->h0:Ljava/lang/String;

    .line 68
    :cond_1b
    iget-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->itemOrderList:Ljava/lang/String;

    if-eqz v1, :cond_1c

    .line 69
    iput-object v1, v2, Lcom/shabakaty/downloader/i25;->i0:Ljava/lang/String;

    .line 70
    :cond_1c
    iget-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->listId:Ljava/lang/String;

    if-eqz v1, :cond_1d

    .line 71
    iput-object v1, v2, Lcom/shabakaty/downloader/i25;->j0:Ljava/lang/String;

    .line 72
    :cond_1d
    iget-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->listSortOrder:Ljava/lang/String;

    if-eqz v1, :cond_1e

    .line 73
    iput-object v1, v2, Lcom/shabakaty/downloader/i25;->k0:Ljava/lang/String;

    .line 74
    :cond_1e
    iget-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->castable:Ljava/lang/String;

    if-eqz v1, :cond_1f

    .line 75
    iput-object v1, v2, Lcom/shabakaty/downloader/i25;->l0:Ljava/lang/String;

    .line 76
    :cond_1f
    iget-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->publishDate:Ljava/lang/String;

    if-eqz v1, :cond_20

    .line 77
    iput-object v1, v2, Lcom/shabakaty/downloader/i25;->m0:Ljava/lang/String;

    .line 78
    :cond_20
    iget-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->episodeDesc:Ljava/lang/String;

    if-eqz v1, :cond_21

    .line 79
    iput-object v1, v2, Lcom/shabakaty/downloader/i25;->n0:Ljava/lang/String;

    .line 80
    :cond_21
    iget-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->customArTitle:Ljava/lang/String;

    if-eqz v1, :cond_22

    .line 81
    iput-object v1, v2, Lcom/shabakaty/downloader/i25;->p0:Ljava/lang/String;

    .line 82
    :cond_22
    iget-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->customEnTitle:Ljava/lang/String;

    if-eqz v1, :cond_23

    .line 83
    iput-object v1, v2, Lcom/shabakaty/downloader/i25;->q0:Ljava/lang/String;

    .line 84
    :cond_23
    iget-boolean v1, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->finished:Z

    .line 85
    iput-boolean v1, v2, Lcom/shabakaty/downloader/i25;->r0:Z

    .line 86
    iget-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->url:Ljava/lang/String;

    if-eqz v1, :cond_24

    .line 87
    iput-object v1, v2, Lcom/shabakaty/downloader/i25;->s0:Ljava/lang/String;

    .line 88
    :cond_24
    iget v1, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->downloadTaskId:I

    .line 89
    iput v1, v2, Lcom/shabakaty/downloader/i25;->t0:I

    .line 90
    iget-wide v3, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->downloadedTime:J

    .line 91
    iput-wide v3, v2, Lcom/shabakaty/downloader/i25;->u0:J

    .line 92
    iget-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->size:Ljava/lang/String;

    if-eqz v1, :cond_25

    .line 93
    iput-object v1, v2, Lcom/shabakaty/downloader/i25;->v0:Ljava/lang/String;

    .line 94
    :cond_25
    iget-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->description:Ljava/lang/String;

    if-eqz v1, :cond_26

    .line 95
    iput-object v1, v2, Lcom/shabakaty/downloader/i25;->w0:Ljava/lang/String;

    .line 96
    :cond_26
    iget-boolean v0, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->isAddedToWatchLater:Z

    .line 97
    iput-boolean v0, v2, Lcom/shabakaty/downloader/i25;->x0:Z

    goto :goto_1

    :cond_27
    move-object/from16 v2, v65

    :goto_1
    return-object v2
.end method

.method public bridge synthetic mapDtoToDomain(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    invoke-virtual {p0, p1}, Lcom/shabakaty/cinemana/domain/mapper/VideoModelEntityMapperImpl;->mapDtoToDomain(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)Lcom/shabakaty/downloader/i25;

    move-result-object p1

    return-object p1
.end method
