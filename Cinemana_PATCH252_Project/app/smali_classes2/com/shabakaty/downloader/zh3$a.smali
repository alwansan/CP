.class public Lcom/shabakaty/downloader/zh3$a;
.super Ljava/lang/Object;
.source "PropertyDescriptorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/zh3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/shabakaty/downloader/qm0;

.field public b:Lcom/shabakaty/downloader/eu2;

.field public c:Lcom/shabakaty/downloader/mr0;

.field public d:Lcom/shabakaty/downloader/yh3;

.field public e:Lcom/shabakaty/downloader/tq$a;

.field public f:Lcom/shabakaty/downloader/tt4;

.field public g:Z

.field public h:Lcom/shabakaty/downloader/ao3;

.field public i:Lcom/shabakaty/downloader/hw2;

.field public j:Lcom/shabakaty/downloader/qe2;

.field public final synthetic k:Lcom/shabakaty/downloader/zh3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/zh3;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/zh3$a;->k:Lcom/shabakaty/downloader/zh3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/tm0;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/zh3$a;->a:Lcom/shabakaty/downloader/qm0;

    .line 3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/zh3;->n()Lcom/shabakaty/downloader/eu2;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/zh3$a;->b:Lcom/shabakaty/downloader/eu2;

    .line 4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/zh3;->g()Lcom/shabakaty/downloader/mr0;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/zh3$a;->c:Lcom/shabakaty/downloader/mr0;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/shabakaty/downloader/zh3$a;->d:Lcom/shabakaty/downloader/yh3;

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/zh3;->w()Lcom/shabakaty/downloader/tq$a;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/zh3$a;->e:Lcom/shabakaty/downloader/tq$a;

    .line 7
    sget-object v0, Lcom/shabakaty/downloader/tt4;->a:Lcom/shabakaty/downloader/tt4;

    iput-object v0, p0, Lcom/shabakaty/downloader/zh3$a;->f:Lcom/shabakaty/downloader/tt4;

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/shabakaty/downloader/zh3$a;->g:Z

    .line 9
    iget-object v0, p1, Lcom/shabakaty/downloader/zh3;->J:Lcom/shabakaty/downloader/ao3;

    .line 10
    iput-object v0, p0, Lcom/shabakaty/downloader/zh3$a;->h:Lcom/shabakaty/downloader/ao3;

    .line 11
    invoke-virtual {p1}, Lcom/shabakaty/downloader/rm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/zh3$a;->i:Lcom/shabakaty/downloader/hw2;

    .line 12
    invoke-virtual {p1}, Lcom/shabakaty/downloader/vz4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/zh3$a;->j:Lcom/shabakaty/downloader/qe2;

    return-void
.end method

.method public static synthetic a(I)V
    .locals 24

    move/from16 v0, p0

    const/16 v1, 0x11

    const/16 v2, 0x10

    const/16 v3, 0xe

    const/16 v4, 0xd

    const/16 v5, 0x13

    const/16 v6, 0xb

    const/16 v7, 0x9

    const/4 v8, 0x7

    const/4 v9, 0x5

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eq v0, v12, :cond_0

    if-eq v0, v11, :cond_0

    if-eq v0, v10, :cond_0

    if-eq v0, v9, :cond_0

    if-eq v0, v8, :cond_0

    if-eq v0, v7, :cond_0

    if-eq v0, v6, :cond_0

    if-eq v0, v5, :cond_0

    if-eq v0, v4, :cond_0

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    const-string v13, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v13, "@NotNull method %s.%s must not return null"

    :goto_0
    if-eq v0, v12, :cond_1

    if-eq v0, v11, :cond_1

    if-eq v0, v10, :cond_1

    if-eq v0, v9, :cond_1

    if-eq v0, v8, :cond_1

    if-eq v0, v7, :cond_1

    if-eq v0, v6, :cond_1

    if-eq v0, v5, :cond_1

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    const/4 v14, 0x3

    goto :goto_1

    :cond_1
    const/4 v14, 0x2

    :goto_1
    new-array v14, v14, [Ljava/lang/Object;

    const-string v15, "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration"

    const/16 v16, 0x0

    packed-switch v0, :pswitch_data_0

    const-string v17, "owner"

    aput-object v17, v14, v16

    goto :goto_2

    :pswitch_0
    const-string v17, "name"

    aput-object v17, v14, v16

    goto :goto_2

    :pswitch_1
    const-string v17, "substitution"

    aput-object v17, v14, v16

    goto :goto_2

    :pswitch_2
    const-string v17, "typeParameters"

    aput-object v17, v14, v16

    goto :goto_2

    :pswitch_3
    const-string v17, "kind"

    aput-object v17, v14, v16

    goto :goto_2

    :pswitch_4
    const-string v17, "visibility"

    aput-object v17, v14, v16

    goto :goto_2

    :pswitch_5
    const-string v17, "modality"

    aput-object v17, v14, v16

    goto :goto_2

    :pswitch_6
    const-string v17, "type"

    aput-object v17, v14, v16

    goto :goto_2

    :pswitch_7
    aput-object v15, v14, v16

    :goto_2
    const-string v16, "setName"

    const-string v17, "setSubstitution"

    const-string v18, "setTypeParameters"

    const-string v19, "setKind"

    const-string v20, "setVisibility"

    const-string v21, "setModality"

    const-string v22, "setReturnType"

    const-string v23, "setOwner"

    if-eq v0, v12, :cond_d

    if-eq v0, v11, :cond_c

    if-eq v0, v10, :cond_b

    if-eq v0, v9, :cond_a

    if-eq v0, v8, :cond_9

    if-eq v0, v7, :cond_8

    if-eq v0, v6, :cond_7

    if-eq v0, v5, :cond_6

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_2

    aput-object v15, v14, v12

    goto :goto_3

    :cond_2
    const-string v15, "setCopyOverrides"

    aput-object v15, v14, v12

    goto :goto_3

    :cond_3
    aput-object v17, v14, v12

    goto :goto_3

    :cond_4
    const-string v15, "setDispatchReceiverParameter"

    aput-object v15, v14, v12

    goto :goto_3

    :cond_5
    aput-object v18, v14, v12

    goto :goto_3

    :cond_6
    aput-object v16, v14, v12

    goto :goto_3

    :cond_7
    aput-object v19, v14, v12

    goto :goto_3

    :cond_8
    aput-object v20, v14, v12

    goto :goto_3

    :cond_9
    aput-object v21, v14, v12

    goto :goto_3

    :cond_a
    aput-object v22, v14, v12

    goto :goto_3

    :cond_b
    const-string v15, "setPreserveSourceElement"

    aput-object v15, v14, v12

    goto :goto_3

    :cond_c
    const-string v15, "setOriginal"

    aput-object v15, v14, v12

    goto :goto_3

    :cond_d
    aput-object v23, v14, v12

    :goto_3
    packed-switch v0, :pswitch_data_1

    aput-object v23, v14, v11

    goto :goto_4

    :pswitch_8
    aput-object v16, v14, v11

    goto :goto_4

    :pswitch_9
    aput-object v17, v14, v11

    goto :goto_4

    :pswitch_a
    aput-object v18, v14, v11

    goto :goto_4

    :pswitch_b
    aput-object v19, v14, v11

    goto :goto_4

    :pswitch_c
    aput-object v20, v14, v11

    goto :goto_4

    :pswitch_d
    aput-object v21, v14, v11

    goto :goto_4

    :pswitch_e
    aput-object v22, v14, v11

    :goto_4
    :pswitch_f
    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    if-eq v0, v12, :cond_e

    if-eq v0, v11, :cond_e

    if-eq v0, v10, :cond_e

    if-eq v0, v9, :cond_e

    if-eq v0, v8, :cond_e

    if-eq v0, v7, :cond_e

    if-eq v0, v6, :cond_e

    if-eq v0, v5, :cond_e

    if-eq v0, v4, :cond_e

    if-eq v0, v3, :cond_e

    if-eq v0, v2, :cond_e

    if-eq v0, v1, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_4
        :pswitch_7
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_7
        :pswitch_7
        :pswitch_1
        :pswitch_7
        :pswitch_7
        :pswitch_0
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_f
        :pswitch_d
        :pswitch_f
        :pswitch_c
        :pswitch_f
        :pswitch_b
        :pswitch_f
        :pswitch_a
        :pswitch_f
        :pswitch_f
        :pswitch_9
        :pswitch_f
        :pswitch_f
        :pswitch_8
        :pswitch_f
    .end packed-switch
.end method


# virtual methods
.method public b()Lcom/shabakaty/downloader/yh3;
    .locals 24

    move-object/from16 v0, p0

    .line 1
    iget-object v9, v0, Lcom/shabakaty/downloader/zh3$a;->k:Lcom/shabakaty/downloader/zh3;

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v10, Lcom/shabakaty/downloader/tq$a;->s:Lcom/shabakaty/downloader/tq$a;

    const/4 v11, 0x0

    .line 3
    iget-object v2, v0, Lcom/shabakaty/downloader/zh3$a;->a:Lcom/shabakaty/downloader/qm0;

    .line 4
    iget-object v3, v0, Lcom/shabakaty/downloader/zh3$a;->b:Lcom/shabakaty/downloader/eu2;

    .line 5
    iget-object v4, v0, Lcom/shabakaty/downloader/zh3$a;->c:Lcom/shabakaty/downloader/mr0;

    .line 6
    iget-object v5, v0, Lcom/shabakaty/downloader/zh3$a;->d:Lcom/shabakaty/downloader/yh3;

    .line 7
    iget-object v6, v0, Lcom/shabakaty/downloader/zh3$a;->e:Lcom/shabakaty/downloader/tq$a;

    .line 8
    iget-object v7, v0, Lcom/shabakaty/downloader/zh3$a;->i:Lcom/shabakaty/downloader/hw2;

    .line 9
    sget-object v23, Lcom/shabakaty/downloader/s94;->a:Lcom/shabakaty/downloader/s94;

    move-object v1, v9

    move-object/from16 v8, v23

    .line 10
    invoke-virtual/range {v1 .. v8}, Lcom/shabakaty/downloader/zh3;->U0(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/eu2;Lcom/shabakaty/downloader/mr0;Lcom/shabakaty/downloader/yh3;Lcom/shabakaty/downloader/tq$a;Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/s94;)Lcom/shabakaty/downloader/zh3;

    move-result-object v1

    .line 11
    invoke-virtual {v9}, Lcom/shabakaty/downloader/zh3;->t()Ljava/util/List;

    move-result-object v2

    .line 12
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    iget-object v4, v0, Lcom/shabakaty/downloader/zh3$a;->f:Lcom/shabakaty/downloader/tt4;

    .line 14
    invoke-static {v2, v4, v1, v3}, Lcom/shabakaty/downloader/nh3;->J(Ljava/util/List;Lcom/shabakaty/downloader/tt4;Lcom/shabakaty/downloader/qm0;Ljava/util/List;)Lcom/shabakaty/downloader/wt4;

    move-result-object v2

    .line 15
    iget-object v4, v0, Lcom/shabakaty/downloader/zh3$a;->j:Lcom/shabakaty/downloader/qe2;

    .line 16
    sget-object v5, Lcom/shabakaty/downloader/xz4;->v:Lcom/shabakaty/downloader/xz4;

    invoke-virtual {v2, v4, v5}, Lcom/shabakaty/downloader/wt4;->k(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/xz4;)Lcom/shabakaty/downloader/qe2;

    move-result-object v6

    if-nez v6, :cond_0

    goto/16 :goto_a

    .line 17
    :cond_0
    sget-object v7, Lcom/shabakaty/downloader/xz4;->u:Lcom/shabakaty/downloader/xz4;

    invoke-virtual {v2, v4, v7}, Lcom/shabakaty/downloader/wt4;->k(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/xz4;)Lcom/shabakaty/downloader/qe2;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 18
    invoke-virtual {v1, v4}, Lcom/shabakaty/downloader/zh3;->X0(Lcom/shabakaty/downloader/qe2;)V

    .line 19
    :cond_1
    iget-object v4, v0, Lcom/shabakaty/downloader/zh3$a;->h:Lcom/shabakaty/downloader/ao3;

    if-eqz v4, :cond_2

    .line 20
    invoke-interface {v4, v2}, Lcom/shabakaty/downloader/ao3;->d(Lcom/shabakaty/downloader/wt4;)Lcom/shabakaty/downloader/ao3;

    move-result-object v4

    if-nez v4, :cond_3

    goto/16 :goto_a

    :cond_2
    move-object v4, v11

    .line 21
    :cond_3
    iget-object v8, v9, Lcom/shabakaty/downloader/zh3;->K:Lcom/shabakaty/downloader/ao3;

    if-eqz v8, :cond_5

    .line 22
    invoke-interface {v8}, Lcom/shabakaty/downloader/mz4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v8

    invoke-virtual {v2, v8, v7}, Lcom/shabakaty/downloader/wt4;->k(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/xz4;)Lcom/shabakaty/downloader/qe2;

    move-result-object v7

    if-nez v7, :cond_4

    goto/16 :goto_a

    .line 23
    :cond_4
    new-instance v8, Lcom/shabakaty/downloader/bo3;

    new-instance v12, Lcom/shabakaty/downloader/r81;

    iget-object v13, v9, Lcom/shabakaty/downloader/zh3;->K:Lcom/shabakaty/downloader/ao3;

    invoke-interface {v13}, Lcom/shabakaty/downloader/ao3;->getValue()Lcom/shabakaty/downloader/co3;

    move-result-object v13

    invoke-direct {v12, v1, v7, v13}, Lcom/shabakaty/downloader/r81;-><init>(Lcom/shabakaty/downloader/rq;Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/co3;)V

    iget-object v7, v9, Lcom/shabakaty/downloader/zh3;->K:Lcom/shabakaty/downloader/ao3;

    invoke-interface {v7}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v7

    invoke-direct {v8, v1, v12, v7}, Lcom/shabakaty/downloader/bo3;-><init>(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/co3;Lcom/shabakaty/downloader/d9;)V

    goto :goto_0

    :cond_5
    move-object v8, v11

    .line 24
    :goto_0
    invoke-virtual {v1, v6, v3, v4, v8}, Lcom/shabakaty/downloader/zh3;->Y0(Lcom/shabakaty/downloader/qe2;Ljava/util/List;Lcom/shabakaty/downloader/ao3;Lcom/shabakaty/downloader/ao3;)V

    .line 25
    iget-object v3, v9, Lcom/shabakaty/downloader/zh3;->M:Lcom/shabakaty/downloader/bi3;

    if-nez v3, :cond_6

    move-object v4, v11

    goto :goto_2

    :cond_6
    new-instance v4, Lcom/shabakaty/downloader/bi3;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/j8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v14

    .line 26
    iget-object v15, v0, Lcom/shabakaty/downloader/zh3$a;->b:Lcom/shabakaty/downloader/eu2;

    .line 27
    iget-object v3, v9, Lcom/shabakaty/downloader/zh3;->M:Lcom/shabakaty/downloader/bi3;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/wh3;->g()Lcom/shabakaty/downloader/mr0;

    move-result-object v3

    .line 28
    iget-object v6, v0, Lcom/shabakaty/downloader/zh3$a;->e:Lcom/shabakaty/downloader/tq$a;

    if-ne v6, v10, :cond_7

    .line 29
    invoke-virtual {v3}, Lcom/shabakaty/downloader/mr0;->d()Lcom/shabakaty/downloader/mr0;

    move-result-object v6

    invoke-static {v6}, Lcom/shabakaty/downloader/lr0;->e(Lcom/shabakaty/downloader/mr0;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 30
    sget-object v3, Lcom/shabakaty/downloader/lr0;->h:Lcom/shabakaty/downloader/mr0;

    :cond_7
    move-object/from16 v16, v3

    .line 31
    iget-object v3, v9, Lcom/shabakaty/downloader/zh3;->M:Lcom/shabakaty/downloader/bi3;

    .line 32
    iget-boolean v6, v3, Lcom/shabakaty/downloader/wh3;->v:Z

    .line 33
    iget-boolean v7, v3, Lcom/shabakaty/downloader/wh3;->w:Z

    .line 34
    iget-boolean v3, v3, Lcom/shabakaty/downloader/wh3;->z:Z

    .line 35
    iget-object v8, v0, Lcom/shabakaty/downloader/zh3$a;->e:Lcom/shabakaty/downloader/tq$a;

    .line 36
    iget-object v12, v0, Lcom/shabakaty/downloader/zh3$a;->d:Lcom/shabakaty/downloader/yh3;

    if-nez v12, :cond_8

    move-object/from16 v21, v11

    goto :goto_1

    .line 37
    :cond_8
    invoke-interface {v12}, Lcom/shabakaty/downloader/yh3;->p()Lcom/shabakaty/downloader/ai3;

    move-result-object v12

    move-object/from16 v21, v12

    :goto_1
    move-object v12, v4

    move-object v13, v1

    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v3

    move-object/from16 v20, v8

    move-object/from16 v22, v23

    .line 38
    invoke-direct/range {v12 .. v22}, Lcom/shabakaty/downloader/bi3;-><init>(Lcom/shabakaty/downloader/yh3;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/eu2;Lcom/shabakaty/downloader/mr0;ZZZLcom/shabakaty/downloader/tq$a;Lcom/shabakaty/downloader/ai3;Lcom/shabakaty/downloader/s94;)V

    :goto_2
    if-eqz v4, :cond_a

    .line 39
    iget-object v3, v9, Lcom/shabakaty/downloader/zh3;->M:Lcom/shabakaty/downloader/bi3;

    .line 40
    iget-object v6, v3, Lcom/shabakaty/downloader/bi3;->D:Lcom/shabakaty/downloader/qe2;

    .line 41
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/zh3;->V0(Lcom/shabakaty/downloader/wt4;Lcom/shabakaty/downloader/vh3;)Lcom/shabakaty/downloader/xn1;

    move-result-object v3

    .line 42
    iput-object v3, v4, Lcom/shabakaty/downloader/wh3;->C:Lcom/shabakaty/downloader/xn1;

    if-eqz v6, :cond_9

    .line 43
    invoke-virtual {v2, v6, v5}, Lcom/shabakaty/downloader/wt4;->k(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/xz4;)Lcom/shabakaty/downloader/qe2;

    move-result-object v3

    goto :goto_3

    :cond_9
    move-object v3, v11

    :goto_3
    invoke-virtual {v4, v3}, Lcom/shabakaty/downloader/bi3;->V0(Lcom/shabakaty/downloader/qe2;)V

    .line 44
    :cond_a
    iget-object v3, v9, Lcom/shabakaty/downloader/zh3;->N:Lcom/shabakaty/downloader/fi3;

    if-nez v3, :cond_b

    move-object v5, v11

    goto :goto_5

    :cond_b
    new-instance v5, Lcom/shabakaty/downloader/gi3;

    invoke-interface {v3}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v14

    .line 45
    iget-object v15, v0, Lcom/shabakaty/downloader/zh3$a;->b:Lcom/shabakaty/downloader/eu2;

    .line 46
    iget-object v3, v9, Lcom/shabakaty/downloader/zh3;->N:Lcom/shabakaty/downloader/fi3;

    invoke-interface {v3}, Lcom/shabakaty/downloader/ir2;->g()Lcom/shabakaty/downloader/mr0;

    move-result-object v3

    .line 47
    iget-object v6, v0, Lcom/shabakaty/downloader/zh3$a;->e:Lcom/shabakaty/downloader/tq$a;

    if-ne v6, v10, :cond_c

    .line 48
    invoke-virtual {v3}, Lcom/shabakaty/downloader/mr0;->d()Lcom/shabakaty/downloader/mr0;

    move-result-object v6

    invoke-static {v6}, Lcom/shabakaty/downloader/lr0;->e(Lcom/shabakaty/downloader/mr0;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 49
    sget-object v3, Lcom/shabakaty/downloader/lr0;->h:Lcom/shabakaty/downloader/mr0;

    :cond_c
    move-object/from16 v16, v3

    .line 50
    iget-object v3, v9, Lcom/shabakaty/downloader/zh3;->N:Lcom/shabakaty/downloader/fi3;

    invoke-interface {v3}, Lcom/shabakaty/downloader/vh3;->c0()Z

    move-result v17

    iget-object v3, v9, Lcom/shabakaty/downloader/zh3;->N:Lcom/shabakaty/downloader/fi3;

    invoke-interface {v3}, Lcom/shabakaty/downloader/ir2;->l()Z

    move-result v18

    iget-object v3, v9, Lcom/shabakaty/downloader/zh3;->N:Lcom/shabakaty/downloader/fi3;

    invoke-interface {v3}, Lcom/shabakaty/downloader/xn1;->z()Z

    move-result v19

    .line 51
    iget-object v3, v0, Lcom/shabakaty/downloader/zh3$a;->e:Lcom/shabakaty/downloader/tq$a;

    .line 52
    iget-object v6, v0, Lcom/shabakaty/downloader/zh3$a;->d:Lcom/shabakaty/downloader/yh3;

    if-nez v6, :cond_d

    move-object/from16 v21, v11

    goto :goto_4

    .line 53
    :cond_d
    invoke-interface {v6}, Lcom/shabakaty/downloader/yh3;->i0()Lcom/shabakaty/downloader/fi3;

    move-result-object v6

    move-object/from16 v21, v6

    :goto_4
    move-object v12, v5

    move-object v13, v1

    move-object/from16 v20, v3

    move-object/from16 v22, v23

    .line 54
    invoke-direct/range {v12 .. v22}, Lcom/shabakaty/downloader/gi3;-><init>(Lcom/shabakaty/downloader/yh3;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/eu2;Lcom/shabakaty/downloader/mr0;ZZZLcom/shabakaty/downloader/tq$a;Lcom/shabakaty/downloader/fi3;Lcom/shabakaty/downloader/s94;)V

    :goto_5
    if-eqz v5, :cond_10

    .line 55
    iget-object v3, v9, Lcom/shabakaty/downloader/zh3;->N:Lcom/shabakaty/downloader/fi3;

    invoke-interface {v3}, Lcom/shabakaty/downloader/rq;->i()Ljava/util/List;

    move-result-object v13

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v12, v5

    move-object v14, v2

    invoke-static/range {v12 .. v17}, Lcom/shabakaty/downloader/yn1;->V0(Lcom/shabakaty/downloader/xn1;Ljava/util/List;Lcom/shabakaty/downloader/wt4;ZZ[Z)Ljava/util/List;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v3, :cond_e

    .line 56
    iput-boolean v7, v1, Lcom/shabakaty/downloader/zh3;->O:Z

    .line 57
    iget-object v3, v0, Lcom/shabakaty/downloader/zh3$a;->a:Lcom/shabakaty/downloader/qm0;

    .line 58
    invoke-static {v3}, Lcom/shabakaty/downloader/hr0;->e(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/zd2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/shabakaty/downloader/zd2;->p()Lcom/shabakaty/downloader/b74;

    move-result-object v3

    iget-object v8, v9, Lcom/shabakaty/downloader/zh3;->N:Lcom/shabakaty/downloader/fi3;

    invoke-interface {v8}, Lcom/shabakaty/downloader/rq;->i()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/shabakaty/downloader/sz4;

    invoke-interface {v8}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v8

    invoke-static {v5, v3, v8}, Lcom/shabakaty/downloader/gi3;->U0(Lcom/shabakaty/downloader/fi3;Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/tz4;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 59
    :cond_e
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-ne v8, v7, :cond_f

    .line 60
    iget-object v7, v9, Lcom/shabakaty/downloader/zh3;->N:Lcom/shabakaty/downloader/fi3;

    invoke-static {v2, v7}, Lcom/shabakaty/downloader/zh3;->V0(Lcom/shabakaty/downloader/wt4;Lcom/shabakaty/downloader/vh3;)Lcom/shabakaty/downloader/xn1;

    move-result-object v7

    .line 61
    iput-object v7, v5, Lcom/shabakaty/downloader/wh3;->C:Lcom/shabakaty/downloader/xn1;

    .line 62
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/sz4;

    invoke-virtual {v5, v3}, Lcom/shabakaty/downloader/gi3;->W0(Lcom/shabakaty/downloader/sz4;)V

    goto :goto_6

    .line 63
    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 64
    :cond_10
    :goto_6
    iget-object v3, v9, Lcom/shabakaty/downloader/zh3;->P:Lcom/shabakaty/downloader/na1;

    if-nez v3, :cond_11

    move-object v6, v11

    goto :goto_7

    :cond_11
    new-instance v6, Lcom/shabakaty/downloader/oa1;

    invoke-interface {v3}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v3

    invoke-direct {v6, v3, v1}, Lcom/shabakaty/downloader/oa1;-><init>(Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/yh3;)V

    :goto_7
    iget-object v3, v9, Lcom/shabakaty/downloader/zh3;->Q:Lcom/shabakaty/downloader/na1;

    if-nez v3, :cond_12

    goto :goto_8

    :cond_12
    new-instance v11, Lcom/shabakaty/downloader/oa1;

    invoke-interface {v3}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v3

    invoke-direct {v11, v3, v1}, Lcom/shabakaty/downloader/oa1;-><init>(Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/yh3;)V

    :goto_8
    invoke-virtual {v1, v4, v5, v6, v11}, Lcom/shabakaty/downloader/zh3;->W0(Lcom/shabakaty/downloader/bi3;Lcom/shabakaty/downloader/fi3;Lcom/shabakaty/downloader/na1;Lcom/shabakaty/downloader/na1;)V

    .line 65
    iget-boolean v3, v0, Lcom/shabakaty/downloader/zh3$a;->g:Z

    if-eqz v3, :cond_14

    .line 66
    invoke-static {}, Lcom/shabakaty/downloader/f94;->d()Lcom/shabakaty/downloader/f94;

    move-result-object v3

    .line 67
    invoke-virtual {v9}, Lcom/shabakaty/downloader/zh3;->f()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/yh3;

    .line 68
    invoke-interface {v5, v2}, Lcom/shabakaty/downloader/yh3;->d(Lcom/shabakaty/downloader/wt4;)Lcom/shabakaty/downloader/yh3;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/shabakaty/downloader/f94;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 69
    :cond_13
    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/zh3;->I0(Ljava/util/Collection;)V

    .line 70
    :cond_14
    invoke-virtual {v9}, Lcom/shabakaty/downloader/zh3;->G()Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, v9, Lcom/shabakaty/downloader/wz4;->x:Lcom/shabakaty/downloader/w13;

    if-eqz v2, :cond_15

    .line 71
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/wz4;->T0(Lcom/shabakaty/downloader/w13;)V

    :cond_15
    move-object v11, v1

    :goto_a
    return-object v11
.end method
