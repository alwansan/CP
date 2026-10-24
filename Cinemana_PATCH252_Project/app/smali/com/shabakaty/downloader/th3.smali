.class public final Lcom/shabakaty/downloader/th3;
.super Ljava/lang/Object;
.source "ProjectionDecoder.java"


# direct methods
.method public static a(Lcom/shabakaty/downloader/ka3;)Ljava/util/ArrayList;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ka3;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/shabakaty/downloader/sh3$a;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    const/4 v1, 0x7

    .line 2
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ka3;->F(I)V

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v3

    const v4, 0x64666c38

    const/4 v5, 0x1

    if-ne v3, v4, :cond_2

    .line 4
    new-instance v3, Lcom/shabakaty/downloader/ka3;

    invoke-direct {v3}, Lcom/shabakaty/downloader/ka3;-><init>()V

    .line 5
    new-instance v4, Ljava/util/zip/Inflater;

    invoke-direct {v4, v5}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 6
    :try_start_0
    invoke-static {v0, v3, v4}, Lcom/shabakaty/downloader/sy4;->D(Lcom/shabakaty/downloader/ka3;Lcom/shabakaty/downloader/ka3;Ljava/util/zip/Inflater;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 7
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->end()V

    return-object v2

    :cond_1
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->end()V

    move-object v0, v3

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->end()V

    .line 8
    throw v1

    :cond_2
    const v4, 0x72617720

    if-eq v3, v4, :cond_3

    return-object v2

    .line 9
    :cond_3
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iget v4, v0, Lcom/shabakaty/downloader/ka3;->b:I

    .line 11
    iget v6, v0, Lcom/shabakaty/downloader/ka3;->c:I

    :goto_1
    if-ge v4, v6, :cond_14

    .line 12
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v7

    add-int/2addr v7, v4

    if-le v7, v4, :cond_13

    if-le v7, v6, :cond_4

    goto/16 :goto_d

    .line 13
    :cond_4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v4

    const v8, 0x6d657368

    if-ne v4, v8, :cond_12

    .line 14
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v4

    const/16 v8, 0x2710

    if-le v4, v8, :cond_5

    goto :goto_3

    .line 15
    :cond_5
    new-array v8, v4, [F

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v4, :cond_6

    .line 16
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v11

    .line 17
    aput v11, v8, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 18
    :cond_6
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v10

    const/16 v11, 0x7d00

    if-le v10, v11, :cond_7

    :goto_3
    move-object/from16 v20, v0

    move-object v0, v2

    move/from16 v22, v6

    const/16 v19, 0x1

    goto/16 :goto_b

    :cond_7
    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    .line 19
    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    move-result-wide v13

    move v15, v10

    int-to-double v9, v4

    mul-double v9, v9, v11

    .line 20
    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    div-double/2addr v9, v13

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    .line 21
    new-instance v10, Lcom/shabakaty/downloader/a55;

    .line 22
    iget-object v11, v0, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 23
    invoke-direct {v10, v11, v5, v2}, Lcom/shabakaty/downloader/a55;-><init>([BILcom/shabakaty/downloader/io2;)V

    .line 24
    iget v11, v0, Lcom/shabakaty/downloader/ka3;->b:I

    const/16 v12, 0x8

    mul-int/lit8 v11, v11, 0x8

    .line 25
    invoke-virtual {v10, v11}, Lcom/shabakaty/downloader/a55;->s(I)V

    mul-int/lit8 v11, v15, 0x5

    .line 26
    new-array v11, v11, [F

    const/4 v2, 0x5

    new-array v12, v2, [I

    const/4 v1, 0x0

    const/16 v18, 0x0

    :goto_4
    if-ge v1, v15, :cond_a

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v2, :cond_9

    .line 27
    aget v20, v12, v5

    .line 28
    invoke-virtual {v10, v9}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v21

    shr-int/lit8 v22, v21, 0x1

    const/16 v19, 0x1

    and-int/lit8 v2, v21, 0x1

    neg-int v2, v2

    xor-int v2, v2, v22

    add-int v2, v20, v2

    if-ge v2, v4, :cond_b

    if-gez v2, :cond_8

    goto :goto_7

    :cond_8
    add-int/lit8 v20, v18, 0x1

    .line 29
    aget v21, v8, v2

    aput v21, v11, v18

    .line 30
    aput v2, v12, v5

    add-int/lit8 v5, v5, 0x1

    move/from16 v18, v20

    const/4 v2, 0x5

    goto :goto_5

    :cond_9
    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x5

    const/4 v5, 0x1

    goto :goto_4

    .line 31
    :cond_a
    invoke-virtual {v10}, Lcom/shabakaty/downloader/a55;->h()I

    move-result v1

    const/4 v2, 0x7

    add-int/2addr v1, v2

    and-int/lit8 v1, v1, -0x8

    invoke-virtual {v10, v1}, Lcom/shabakaty/downloader/a55;->s(I)V

    const/16 v1, 0x20

    .line 32
    invoke-virtual {v10, v1}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v4

    .line 33
    new-array v5, v4, [Lcom/shabakaty/downloader/sh3$b;

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v4, :cond_10

    const/16 v9, 0x8

    .line 34
    invoke-virtual {v10, v9}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v12

    .line 35
    invoke-virtual {v10, v9}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v2

    .line 36
    invoke-virtual {v10, v1}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v9

    const v1, 0x1f400

    if-le v9, v1, :cond_d

    :cond_b
    :goto_7
    move-object/from16 v20, v0

    move/from16 v22, v6

    :cond_c
    :goto_8
    const/16 v19, 0x1

    goto :goto_a

    :cond_d
    move-object/from16 v20, v0

    int-to-double v0, v15

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v0, v0, v16

    .line 37
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    div-double/2addr v0, v13

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    mul-int/lit8 v1, v9, 0x3

    .line 38
    new-array v1, v1, [F

    move/from16 v21, v4

    mul-int/lit8 v4, v9, 0x2

    .line 39
    new-array v4, v4, [F

    move/from16 v22, v6

    const/4 v6, 0x0

    const/16 v23, 0x0

    :goto_9
    if-ge v6, v9, :cond_f

    .line 40
    invoke-virtual {v10, v0}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v24

    shr-int/lit8 v25, v24, 0x1

    move/from16 v26, v0

    const/16 v19, 0x1

    and-int/lit8 v0, v24, 0x1

    neg-int v0, v0

    xor-int v0, v0, v25

    add-int v0, v23, v0

    if-ltz v0, :cond_c

    if-lt v0, v15, :cond_e

    goto :goto_8

    :cond_e
    mul-int/lit8 v23, v6, 0x3

    mul-int/lit8 v24, v0, 0x5

    .line 41
    aget v25, v11, v24

    aput v25, v1, v23

    add-int/lit8 v25, v23, 0x1

    add-int/lit8 v27, v24, 0x1

    .line 42
    aget v27, v11, v27

    aput v27, v1, v25

    add-int/lit8 v23, v23, 0x2

    add-int/lit8 v25, v24, 0x2

    .line 43
    aget v25, v11, v25

    aput v25, v1, v23

    mul-int/lit8 v23, v6, 0x2

    add-int/lit8 v25, v24, 0x3

    .line 44
    aget v25, v11, v25

    aput v25, v4, v23

    const/16 v19, 0x1

    add-int/lit8 v23, v23, 0x1

    add-int/lit8 v24, v24, 0x4

    .line 45
    aget v24, v11, v24

    aput v24, v4, v23

    add-int/lit8 v6, v6, 0x1

    move/from16 v23, v0

    move/from16 v0, v26

    goto :goto_9

    :goto_a
    const/4 v0, 0x0

    goto :goto_b

    :cond_f
    const/16 v19, 0x1

    .line 46
    new-instance v0, Lcom/shabakaty/downloader/sh3$b;

    invoke-direct {v0, v12, v1, v4, v2}, Lcom/shabakaty/downloader/sh3$b;-><init>(I[F[FI)V

    aput-object v0, v5, v8

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, v20

    move/from16 v4, v21

    move/from16 v6, v22

    const/16 v1, 0x20

    const/4 v2, 0x7

    goto/16 :goto_6

    :cond_10
    move-object/from16 v20, v0

    move/from16 v22, v6

    const/16 v19, 0x1

    .line 47
    new-instance v0, Lcom/shabakaty/downloader/sh3$a;

    invoke-direct {v0, v5}, Lcom/shabakaty/downloader/sh3$a;-><init>([Lcom/shabakaty/downloader/sh3$b;)V

    :goto_b
    if-nez v0, :cond_11

    goto :goto_d

    .line 48
    :cond_11
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v20

    goto :goto_c

    :cond_12
    move/from16 v22, v6

    const/16 v19, 0x1

    .line 49
    :goto_c
    invoke-virtual {v0, v7}, Lcom/shabakaty/downloader/ka3;->E(I)V

    move v4, v7

    move/from16 v6, v22

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v5, 0x1

    goto/16 :goto_1

    :cond_13
    :goto_d
    const/4 v2, 0x0

    goto :goto_e

    :cond_14
    move-object v2, v3

    :goto_e
    return-object v2
.end method
