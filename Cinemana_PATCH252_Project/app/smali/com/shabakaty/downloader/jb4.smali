.class public final synthetic Lcom/shabakaty/downloader/jb4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/in1;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Ljava/lang/Object;

.field public final synthetic t:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/kb4;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/jb4;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/jb4;->s:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/jb4;->t:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/ox4;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/jb4;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/jb4;->s:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/jb4;->t:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/qx0;Lcom/shabakaty/downloader/gz0;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/shabakaty/downloader/jb4;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/jb4;->s:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/jb4;->t:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 72

    move-object/from16 v0, p0

    iget v1, v0, Lcom/shabakaty/downloader/jb4;->r:I

    const-string v2, "list"

    const-string v3, "this$0"

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    iget-object v1, v0, Lcom/shabakaty/downloader/jb4;->s:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/ox4;

    iget-object v4, v0, Lcom/shabakaty/downloader/jb4;->t:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move-object/from16 v6, p1

    check-cast v6, Ljava/util/List;

    .line 1
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$rootEpisode"

    invoke-static {v4, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3
    iget-object v5, v1, Lcom/shabakaty/downloader/ox4;->c:Lcom/shabakaty/downloader/g25;

    invoke-interface {v5, v3}, Lcom/shabakaty/downloader/g25;->t(Ljava/lang/String;)Lcom/shabakaty/downloader/i25;

    move-result-object v5

    if-nez v5, :cond_0

    .line 4
    iget-object v15, v1, Lcom/shabakaty/downloader/ox4;->c:Lcom/shabakaty/downloader/g25;

    .line 5
    new-instance v14, Lcom/shabakaty/downloader/i25;

    move-object v5, v14

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object/from16 v69, v14

    move-object/from16 v14, v16

    const/16 v18, 0x0

    move-object/from16 v70, v15

    move-object/from16 v15, v18

    move-object/from16 v17, v18

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

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const-wide/16 v61, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const v67, -0x2000402

    const v68, 0xfffffff

    const-string v16, "2"

    move-object/from16 v71, v6

    move-object v6, v3

    move-object/from16 v31, v4

    invoke-direct/range {v5 .. v68}, Lcom/shabakaty/downloader/i25;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJLjava/lang/String;Ljava/lang/String;ZZII)V

    move-object/from16 v6, v69

    move-object/from16 v5, v70

    .line 6
    invoke-interface {v5, v6}, Lcom/shabakaty/downloader/cj;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    move-object/from16 v71, v6

    .line 7
    :goto_1
    iget-object v5, v1, Lcom/shabakaty/downloader/ox4;->d:Lcom/shabakaty/downloader/s25;

    .line 8
    new-instance v6, Lcom/shabakaty/cinemana/data/db/videostatus/VideoStatusEntity;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0xf4

    move-object v7, v6

    move-object v8, v3

    move-object v9, v3

    invoke-direct/range {v7 .. v18}, Lcom/shabakaty/cinemana/data/db/videostatus/VideoStatusEntity;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;JI)V

    .line 9
    invoke-interface {v5, v6}, Lcom/shabakaty/downloader/cj;->f(Ljava/lang/Object;)V

    move-object/from16 v6, v71

    goto/16 :goto_0

    :cond_1
    move-object/from16 v71, v6

    return-object v71

    .line 10
    :pswitch_1
    iget-object v1, v0, Lcom/shabakaty/downloader/jb4;->s:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/kb4;

    iget-object v2, v0, Lcom/shabakaty/downloader/jb4;->t:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v4, p1

    check-cast v4, Lcom/shabakaty/cinemana/domain/models/remote/actor_info/StaffModelApi;

    .line 11
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$staffNb"

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "it"

    invoke-static {v4, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object v1, v1, Lcom/shabakaty/downloader/kb4;->c:Lcom/shabakaty/downloader/qm2;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v3, v1, Lcom/shabakaty/downloader/qm2;->l:Lcom/shabakaty/cinemana/domain/mapper/StaffInfoMapper;

    invoke-interface {v3, v4}, Lcom/shabakaty/downloader/nj;->mapDtoToDomain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/cinemana/domain/models/local/staff_info/StaffModel;

    .line 14
    iget-object v4, v3, Lcom/shabakaty/cinemana/domain/models/local/staff_info/StaffModel;->items:Ljava/util/List;

    .line 15
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 16
    invoke-virtual {v1, v5}, Lcom/shabakaty/downloader/qm2;->g(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    goto :goto_2

    .line 17
    :cond_2
    iput-object v2, v3, Lcom/shabakaty/cinemana/domain/models/local/staff_info/StaffModel;->nb:Ljava/lang/String;

    return-object v3

    .line 18
    :goto_3
    iget-object v1, v0, Lcom/shabakaty/downloader/jb4;->s:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/qx0;

    iget-object v4, v0, Lcom/shabakaty/downloader/jb4;->t:Ljava/lang/Object;

    check-cast v4, Lcom/shabakaty/downloader/gz0;

    move-object/from16 v5, p1

    check-cast v5, Ljava/util/List;

    .line 19
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v4, :cond_3

    goto :goto_6

    .line 20
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    .line 22
    iget v5, v5, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->collectionID:I

    .line 23
    iget v6, v4, Lcom/shabakaty/downloader/gz0;->r:I

    if-ne v5, v6, :cond_5

    const/4 v5, 0x1

    goto :goto_5

    :cond_5
    const/4 v5, 0x0

    :goto_5
    if-eqz v5, :cond_4

    .line 24
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    move-object v5, v1

    .line 25
    :goto_6
    new-instance v1, Lcom/shabakaty/downloader/wx0;

    invoke-direct {v1}, Lcom/shabakaty/downloader/wx0;-><init>()V

    invoke-static {v5, v1}, Lcom/shabakaty/downloader/m50;->t0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
