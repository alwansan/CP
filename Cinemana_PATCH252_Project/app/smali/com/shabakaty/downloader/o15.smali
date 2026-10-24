.class public final synthetic Lcom/shabakaty/downloader/o15;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/xc0;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Ljava/lang/Object;

.field public final synthetic t:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/q15;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/o15;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/o15;->s:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/o15;->t:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/q10;Lcom/shabakaty/downloader/tm1;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/o15;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/o15;->s:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/o15;->t:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/xv2;Lcom/shabakaty/downloader/xk;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/shabakaty/downloader/o15;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/o15;->s:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/o15;->t:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 71

    move-object/from16 v0, p0

    iget v1, v0, Lcom/shabakaty/downloader/o15;->r:I

    const-string v2, "it"

    const-string v3, "this$0"

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v1, v0, Lcom/shabakaty/downloader/o15;->s:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/q10;

    iget-object v4, v0, Lcom/shabakaty/downloader/o15;->t:Ljava/lang/Object;

    check-cast v4, Lcom/shabakaty/downloader/tm1;

    move-object/from16 v5, p1

    check-cast v5, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 1
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$onSuccess"

    invoke-static {v4, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, v1, Lcom/shabakaty/downloader/q10;->z:Lcom/shabakaty/downloader/xv2;

    .line 3
    invoke-virtual {v1, v5}, Lcom/shabakaty/downloader/xv2;->setValue(Ljava/lang/Object;)V

    .line 4
    invoke-static {v5, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 5
    :pswitch_1
    iget-object v1, v0, Lcom/shabakaty/downloader/o15;->s:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    iget-object v4, v0, Lcom/shabakaty/downloader/o15;->t:Ljava/lang/Object;

    check-cast v4, Lcom/shabakaty/downloader/q15;

    move-object/from16 v5, p1

    check-cast v5, Lcom/shabakaty/downloader/q25;

    const-string v6, "$videoModel"

    .line 6
    invoke-static {v1, v6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v3, v1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->kind:Ljava/lang/String;

    const-string v6, "1"

    .line 8
    invoke-static {v3, v6}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9
    iget-object v3, v4, Lcom/shabakaty/downloader/q15;->b:Lcom/shabakaty/downloader/s25;

    .line 10
    iget-object v6, v1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    .line 11
    invoke-interface {v3, v6}, Lcom/shabakaty/downloader/s25;->a(Ljava/lang/String;)Lcom/shabakaty/cinemana/data/db/videostatus/VideoStatusEntity;

    move-result-object v3

    if-nez v3, :cond_0

    .line 12
    iget-object v3, v4, Lcom/shabakaty/downloader/q15;->c:Lcom/shabakaty/downloader/g25;

    new-instance v15, Lcom/shabakaty/downloader/i25;

    move-object v6, v15

    .line 13
    iget-object v7, v1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v70, v15

    move-object/from16 v15, v16

    const/16 v18, 0x0

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

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const-wide/16 v62, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, -0x2

    const v69, 0xfffffff

    .line 14
    invoke-direct/range {v6 .. v69}, Lcom/shabakaty/downloader/i25;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJLjava/lang/String;Ljava/lang/String;ZZII)V

    move-object/from16 v6, v70

    invoke-interface {v3, v6}, Lcom/shabakaty/downloader/cj;->f(Ljava/lang/Object;)V

    .line 15
    iget-object v3, v4, Lcom/shabakaty/downloader/q15;->b:Lcom/shabakaty/downloader/s25;

    iget-object v4, v4, Lcom/shabakaty/downloader/q15;->d:Lcom/shabakaty/downloader/qm2;

    invoke-static {v5, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v2, v4, Lcom/shabakaty/downloader/qm2;->j:Lcom/shabakaty/cinemana/domain/mapper/VideoStatusEntityMapper;

    invoke-interface {v2, v5}, Lcom/shabakaty/downloader/nj;->mapDtoToDomain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/cinemana/data/db/videostatus/VideoStatusEntity;

    .line 17
    iget-object v4, v1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    .line 18
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "<set-?>"

    .line 19
    invoke-static {v4, v5}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iput-object v4, v2, Lcom/shabakaty/cinemana/data/db/videostatus/VideoStatusEntity;->id:Ljava/lang/String;

    .line 21
    iget-object v1, v1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    .line 22
    invoke-static {v1, v5}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iput-object v1, v2, Lcom/shabakaty/cinemana/data/db/videostatus/VideoStatusEntity;->videoId:Ljava/lang/String;

    .line 24
    invoke-interface {v3, v2}, Lcom/shabakaty/downloader/cj;->f(Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 25
    :goto_0
    iget-object v1, v0, Lcom/shabakaty/downloader/o15;->s:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/xv2;

    iget-object v2, v0, Lcom/shabakaty/downloader/o15;->t:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/xk;

    move-object/from16 v4, p1

    check-cast v4, Lcom/shabakaty/downloader/mu0;

    const-string v4, "$consumerObject"

    .line 26
    invoke-static {v1, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 27
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/tj;

    if-nez v4, :cond_1

    goto :goto_1

    .line 28
    :cond_1
    iget-object v3, v4, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    :goto_1
    move-object v6, v3

    .line 29
    new-instance v3, Lcom/shabakaty/downloader/tj;

    .line 30
    sget-object v5, Lcom/shabakaty/downloader/tj$a;->t:Lcom/shabakaty/downloader/tj$a;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xc

    move-object v4, v3

    .line 31
    invoke-direct/range {v4 .. v9}, Lcom/shabakaty/downloader/tj;-><init>(Lcom/shabakaty/downloader/tj$a;Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;I)V

    .line 32
    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/xv2;->postValue(Ljava/lang/Object;)V

    .line 33
    iget-object v1, v2, Lcom/shabakaty/downloader/xk;->d:Lcom/shabakaty/downloader/xv2;

    invoke-static {v1}, Lcom/shabakaty/downloader/zi2;->i(Lcom/shabakaty/downloader/xv2;)V

    .line 34
    iget-object v1, v2, Lcom/shabakaty/downloader/xk;->a:Lcom/shabakaty/downloader/u43;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/u43;->g(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
