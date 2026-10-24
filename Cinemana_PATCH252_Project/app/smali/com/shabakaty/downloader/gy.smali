.class public Lcom/shabakaty/downloader/gy;
.super Ljava/lang/Object;
.source "Chain.java"


# direct methods
.method public static a(Lcom/shabakaty/downloader/fc0;Lcom/shabakaty/downloader/zh2;Ljava/util/ArrayList;I)V
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/fc0;",
            "Lcom/shabakaty/downloader/zh2;",
            "Ljava/util/ArrayList<",
            "Lcom/shabakaty/downloader/ec0;",
            ">;I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    const/4 v12, 0x2

    if-nez p3, :cond_0

    .line 1
    iget v1, v0, Lcom/shabakaty/downloader/fc0;->z0:I

    .line 2
    iget-object v2, v0, Lcom/shabakaty/downloader/fc0;->C0:[Lcom/shabakaty/downloader/hy;

    move v14, v1

    move-object v15, v2

    const/16 v16, 0x0

    goto :goto_0

    .line 3
    :cond_0
    iget v1, v0, Lcom/shabakaty/downloader/fc0;->A0:I

    .line 4
    iget-object v2, v0, Lcom/shabakaty/downloader/fc0;->B0:[Lcom/shabakaty/downloader/hy;

    move v14, v1

    move-object v15, v2

    const/16 v16, 0x2

    :goto_0
    const/4 v9, 0x0

    :goto_1
    if-ge v9, v14, :cond_70

    .line 5
    aget-object v1, v15, v9

    .line 6
    iget-boolean v2, v1, Lcom/shabakaty/downloader/hy;->t:Z

    const/16 v17, 0x0

    const/4 v3, 0x3

    const/16 v8, 0x8

    const/4 v5, 0x1

    if-nez v2, :cond_18

    .line 7
    iget v2, v1, Lcom/shabakaty/downloader/hy;->o:I

    mul-int/lit8 v2, v2, 0x2

    .line 8
    iget-object v6, v1, Lcom/shabakaty/downloader/hy;->a:Lcom/shabakaty/downloader/ec0;

    move-object v7, v6

    const/16 v18, 0x0

    :goto_2
    if-nez v18, :cond_13

    .line 9
    iget v13, v1, Lcom/shabakaty/downloader/hy;->i:I

    add-int/2addr v13, v5

    iput v13, v1, Lcom/shabakaty/downloader/hy;->i:I

    .line 10
    iget-object v13, v6, Lcom/shabakaty/downloader/ec0;->n0:[Lcom/shabakaty/downloader/ec0;

    iget v4, v1, Lcom/shabakaty/downloader/hy;->o:I

    aput-object v17, v13, v4

    .line 11
    iget-object v13, v6, Lcom/shabakaty/downloader/ec0;->m0:[Lcom/shabakaty/downloader/ec0;

    aput-object v17, v13, v4

    .line 12
    iget v13, v6, Lcom/shabakaty/downloader/ec0;->h0:I

    if-eq v13, v8, :cond_e

    .line 13
    iget v13, v1, Lcom/shabakaty/downloader/hy;->l:I

    add-int/2addr v13, v5

    iput v13, v1, Lcom/shabakaty/downloader/hy;->l:I

    .line 14
    invoke-virtual {v6, v4}, Lcom/shabakaty/downloader/ec0;->m(I)I

    move-result v4

    if-eq v4, v3, :cond_3

    .line 15
    iget v4, v1, Lcom/shabakaty/downloader/hy;->m:I

    iget v13, v1, Lcom/shabakaty/downloader/hy;->o:I

    if-nez v13, :cond_1

    .line 16
    invoke-virtual {v6}, Lcom/shabakaty/downloader/ec0;->t()I

    move-result v13

    goto :goto_3

    :cond_1
    if-ne v13, v5, :cond_2

    .line 17
    invoke-virtual {v6}, Lcom/shabakaty/downloader/ec0;->n()I

    move-result v13

    goto :goto_3

    :cond_2
    const/4 v13, 0x0

    :goto_3
    add-int/2addr v4, v13

    .line 18
    iput v4, v1, Lcom/shabakaty/downloader/hy;->m:I

    .line 19
    :cond_3
    iget v4, v1, Lcom/shabakaty/downloader/hy;->m:I

    iget-object v13, v6, Lcom/shabakaty/downloader/ec0;->Q:[Lcom/shabakaty/downloader/wb0;

    aget-object v13, v13, v2

    invoke-virtual {v13}, Lcom/shabakaty/downloader/wb0;->e()I

    move-result v13

    add-int/2addr v13, v4

    iput v13, v1, Lcom/shabakaty/downloader/hy;->m:I

    .line 20
    iget-object v4, v6, Lcom/shabakaty/downloader/ec0;->Q:[Lcom/shabakaty/downloader/wb0;

    add-int/lit8 v21, v2, 0x1

    aget-object v4, v4, v21

    invoke-virtual {v4}, Lcom/shabakaty/downloader/wb0;->e()I

    move-result v4

    add-int/2addr v4, v13

    iput v4, v1, Lcom/shabakaty/downloader/hy;->m:I

    .line 21
    iget v4, v1, Lcom/shabakaty/downloader/hy;->n:I

    iget-object v13, v6, Lcom/shabakaty/downloader/ec0;->Q:[Lcom/shabakaty/downloader/wb0;

    aget-object v13, v13, v2

    invoke-virtual {v13}, Lcom/shabakaty/downloader/wb0;->e()I

    move-result v13

    add-int/2addr v13, v4

    iput v13, v1, Lcom/shabakaty/downloader/hy;->n:I

    .line 22
    iget-object v4, v6, Lcom/shabakaty/downloader/ec0;->Q:[Lcom/shabakaty/downloader/wb0;

    aget-object v4, v4, v21

    invoke-virtual {v4}, Lcom/shabakaty/downloader/wb0;->e()I

    move-result v4

    add-int/2addr v4, v13

    iput v4, v1, Lcom/shabakaty/downloader/hy;->n:I

    .line 23
    iget-object v4, v1, Lcom/shabakaty/downloader/hy;->b:Lcom/shabakaty/downloader/ec0;

    if-nez v4, :cond_4

    .line 24
    iput-object v6, v1, Lcom/shabakaty/downloader/hy;->b:Lcom/shabakaty/downloader/ec0;

    .line 25
    :cond_4
    iput-object v6, v1, Lcom/shabakaty/downloader/hy;->d:Lcom/shabakaty/downloader/ec0;

    .line 26
    iget-object v4, v6, Lcom/shabakaty/downloader/ec0;->T:[I

    iget v13, v1, Lcom/shabakaty/downloader/hy;->o:I

    aget v8, v4, v13

    if-ne v8, v3, :cond_e

    .line 27
    iget-object v8, v6, Lcom/shabakaty/downloader/ec0;->s:[I

    aget v22, v8, v13

    if-eqz v22, :cond_5

    aget v5, v8, v13

    if-eq v5, v3, :cond_5

    aget v5, v8, v13

    if-ne v5, v12, :cond_e

    .line 28
    :cond_5
    iget v5, v1, Lcom/shabakaty/downloader/hy;->j:I

    const/16 v22, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v1, Lcom/shabakaty/downloader/hy;->j:I

    .line 29
    iget-object v5, v6, Lcom/shabakaty/downloader/ec0;->l0:[F

    aget v23, v5, v13

    const/16 v20, 0x0

    cmpl-float v24, v23, v20

    if-lez v24, :cond_6

    .line 30
    iget v12, v1, Lcom/shabakaty/downloader/hy;->k:F

    aget v5, v5, v13

    add-float/2addr v12, v5

    iput v12, v1, Lcom/shabakaty/downloader/hy;->k:F

    .line 31
    :cond_6
    iget v5, v6, Lcom/shabakaty/downloader/ec0;->h0:I

    const/16 v12, 0x8

    if-eq v5, v12, :cond_8

    .line 32
    aget v4, v4, v13

    if-ne v4, v3, :cond_8

    aget v4, v8, v13

    if-eqz v4, :cond_7

    aget v4, v8, v13

    if-ne v4, v3, :cond_8

    :cond_7
    const/4 v4, 0x1

    goto :goto_4

    :cond_8
    const/4 v4, 0x0

    :goto_4
    if-eqz v4, :cond_b

    const/4 v4, 0x0

    cmpg-float v5, v23, v4

    if-gez v5, :cond_9

    const/4 v4, 0x1

    .line 33
    iput-boolean v4, v1, Lcom/shabakaty/downloader/hy;->q:Z

    goto :goto_5

    :cond_9
    const/4 v4, 0x1

    .line 34
    iput-boolean v4, v1, Lcom/shabakaty/downloader/hy;->r:Z

    .line 35
    :goto_5
    iget-object v4, v1, Lcom/shabakaty/downloader/hy;->h:Ljava/util/ArrayList;

    if-nez v4, :cond_a

    .line 36
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Lcom/shabakaty/downloader/hy;->h:Ljava/util/ArrayList;

    .line 37
    :cond_a
    iget-object v4, v1, Lcom/shabakaty/downloader/hy;->h:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_b
    iget-object v4, v1, Lcom/shabakaty/downloader/hy;->f:Lcom/shabakaty/downloader/ec0;

    if-nez v4, :cond_c

    .line 39
    iput-object v6, v1, Lcom/shabakaty/downloader/hy;->f:Lcom/shabakaty/downloader/ec0;

    .line 40
    :cond_c
    iget-object v4, v1, Lcom/shabakaty/downloader/hy;->g:Lcom/shabakaty/downloader/ec0;

    if-eqz v4, :cond_d

    .line 41
    iget-object v4, v4, Lcom/shabakaty/downloader/ec0;->m0:[Lcom/shabakaty/downloader/ec0;

    iget v5, v1, Lcom/shabakaty/downloader/hy;->o:I

    aput-object v6, v4, v5

    .line 42
    :cond_d
    iput-object v6, v1, Lcom/shabakaty/downloader/hy;->g:Lcom/shabakaty/downloader/ec0;

    :cond_e
    if-eq v7, v6, :cond_f

    .line 43
    iget-object v4, v7, Lcom/shabakaty/downloader/ec0;->n0:[Lcom/shabakaty/downloader/ec0;

    iget v5, v1, Lcom/shabakaty/downloader/hy;->o:I

    aput-object v6, v4, v5

    .line 44
    :cond_f
    iget-object v4, v6, Lcom/shabakaty/downloader/ec0;->Q:[Lcom/shabakaty/downloader/wb0;

    add-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    iget-object v4, v4, Lcom/shabakaty/downloader/wb0;->f:Lcom/shabakaty/downloader/wb0;

    if-eqz v4, :cond_10

    .line 45
    iget-object v4, v4, Lcom/shabakaty/downloader/wb0;->d:Lcom/shabakaty/downloader/ec0;

    .line 46
    iget-object v5, v4, Lcom/shabakaty/downloader/ec0;->Q:[Lcom/shabakaty/downloader/wb0;

    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/shabakaty/downloader/wb0;->f:Lcom/shabakaty/downloader/wb0;

    if-eqz v7, :cond_10

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/shabakaty/downloader/wb0;->f:Lcom/shabakaty/downloader/wb0;

    iget-object v5, v5, Lcom/shabakaty/downloader/wb0;->d:Lcom/shabakaty/downloader/ec0;

    if-eq v5, v6, :cond_11

    :cond_10
    move-object/from16 v4, v17

    :cond_11
    if-eqz v4, :cond_12

    goto :goto_6

    :cond_12
    move-object v4, v6

    const/16 v18, 0x1

    :goto_6
    move-object v7, v6

    const/4 v5, 0x1

    const/16 v8, 0x8

    const/4 v12, 0x2

    move-object v6, v4

    goto/16 :goto_2

    .line 47
    :cond_13
    iget-object v4, v1, Lcom/shabakaty/downloader/hy;->b:Lcom/shabakaty/downloader/ec0;

    if-eqz v4, :cond_14

    .line 48
    iget v5, v1, Lcom/shabakaty/downloader/hy;->m:I

    iget-object v4, v4, Lcom/shabakaty/downloader/ec0;->Q:[Lcom/shabakaty/downloader/wb0;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/shabakaty/downloader/wb0;->e()I

    move-result v4

    sub-int/2addr v5, v4

    iput v5, v1, Lcom/shabakaty/downloader/hy;->m:I

    .line 49
    :cond_14
    iget-object v4, v1, Lcom/shabakaty/downloader/hy;->d:Lcom/shabakaty/downloader/ec0;

    if-eqz v4, :cond_15

    .line 50
    iget v5, v1, Lcom/shabakaty/downloader/hy;->m:I

    iget-object v4, v4, Lcom/shabakaty/downloader/ec0;->Q:[Lcom/shabakaty/downloader/wb0;

    add-int/lit8 v2, v2, 0x1

    aget-object v2, v4, v2

    invoke-virtual {v2}, Lcom/shabakaty/downloader/wb0;->e()I

    move-result v2

    sub-int/2addr v5, v2

    iput v5, v1, Lcom/shabakaty/downloader/hy;->m:I

    .line 51
    :cond_15
    iput-object v6, v1, Lcom/shabakaty/downloader/hy;->c:Lcom/shabakaty/downloader/ec0;

    .line 52
    iget v2, v1, Lcom/shabakaty/downloader/hy;->o:I

    if-nez v2, :cond_16

    iget-boolean v2, v1, Lcom/shabakaty/downloader/hy;->p:Z

    if-eqz v2, :cond_16

    .line 53
    iput-object v6, v1, Lcom/shabakaty/downloader/hy;->e:Lcom/shabakaty/downloader/ec0;

    goto :goto_7

    .line 54
    :cond_16
    iget-object v2, v1, Lcom/shabakaty/downloader/hy;->a:Lcom/shabakaty/downloader/ec0;

    iput-object v2, v1, Lcom/shabakaty/downloader/hy;->e:Lcom/shabakaty/downloader/ec0;

    .line 55
    :goto_7
    iget-boolean v2, v1, Lcom/shabakaty/downloader/hy;->r:Z

    if-eqz v2, :cond_17

    iget-boolean v2, v1, Lcom/shabakaty/downloader/hy;->q:Z

    if-eqz v2, :cond_17

    const/4 v2, 0x1

    goto :goto_8

    :cond_17
    const/4 v2, 0x0

    :goto_8
    iput-boolean v2, v1, Lcom/shabakaty/downloader/hy;->s:Z

    :cond_18
    const/4 v2, 0x1

    .line 56
    iput-boolean v2, v1, Lcom/shabakaty/downloader/hy;->t:Z

    if-eqz v11, :cond_1a

    .line 57
    iget-object v2, v1, Lcom/shabakaty/downloader/hy;->a:Lcom/shabakaty/downloader/ec0;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    goto :goto_9

    :cond_19
    move/from16 v30, v9

    move/from16 v29, v14

    move-object/from16 v31, v15

    const/16 v19, 0x0

    goto/16 :goto_44

    .line 58
    :cond_1a
    :goto_9
    iget-object v12, v1, Lcom/shabakaty/downloader/hy;->a:Lcom/shabakaty/downloader/ec0;

    .line 59
    iget-object v13, v1, Lcom/shabakaty/downloader/hy;->c:Lcom/shabakaty/downloader/ec0;

    .line 60
    iget-object v8, v1, Lcom/shabakaty/downloader/hy;->b:Lcom/shabakaty/downloader/ec0;

    .line 61
    iget-object v7, v1, Lcom/shabakaty/downloader/hy;->d:Lcom/shabakaty/downloader/ec0;

    .line 62
    iget-object v2, v1, Lcom/shabakaty/downloader/hy;->e:Lcom/shabakaty/downloader/ec0;

    .line 63
    iget v4, v1, Lcom/shabakaty/downloader/hy;->k:F

    .line 64
    iget-object v5, v0, Lcom/shabakaty/downloader/ec0;->T:[I

    aget v5, v5, p3

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1b

    const/4 v5, 0x1

    goto :goto_a

    :cond_1b
    const/4 v5, 0x0

    :goto_a
    if-nez p3, :cond_1e

    .line 65
    iget v3, v2, Lcom/shabakaty/downloader/ec0;->j0:I

    const/4 v6, 0x1

    if-nez v3, :cond_1c

    const/16 v22, 0x1

    goto :goto_b

    :cond_1c
    const/16 v22, 0x0

    :goto_b
    if-ne v3, v6, :cond_1d

    const/4 v6, 0x2

    const/16 v23, 0x1

    goto :goto_c

    :cond_1d
    const/4 v6, 0x2

    const/16 v23, 0x0

    :goto_c
    move/from16 v24, v22

    if-ne v3, v6, :cond_21

    goto :goto_f

    .line 66
    :cond_1e
    iget v3, v2, Lcom/shabakaty/downloader/ec0;->k0:I

    const/4 v6, 0x1

    if-nez v3, :cond_1f

    const/16 v24, 0x1

    goto :goto_d

    :cond_1f
    const/16 v24, 0x0

    :goto_d
    if-ne v3, v6, :cond_20

    const/4 v6, 0x2

    const/16 v23, 0x1

    goto :goto_e

    :cond_20
    const/4 v6, 0x2

    const/16 v23, 0x0

    :goto_e
    if-ne v3, v6, :cond_21

    :goto_f
    const/4 v3, 0x1

    goto :goto_10

    :cond_21
    const/4 v3, 0x0

    :goto_10
    move/from16 v26, v4

    move-object v6, v12

    const/16 v25, 0x0

    :goto_11
    if-nez v25, :cond_2f

    .line 67
    iget-object v4, v6, Lcom/shabakaty/downloader/ec0;->Q:[Lcom/shabakaty/downloader/wb0;

    aget-object v4, v4, v16

    if-eqz v3, :cond_22

    const/16 v28, 0x1

    goto :goto_12

    :cond_22
    const/16 v28, 0x4

    .line 68
    :goto_12
    invoke-virtual {v4}, Lcom/shabakaty/downloader/wb0;->e()I

    move-result v29

    move/from16 v30, v9

    .line 69
    iget-object v9, v6, Lcom/shabakaty/downloader/ec0;->T:[I

    aget v9, v9, p3

    const/4 v11, 0x3

    if-ne v9, v11, :cond_23

    iget-object v9, v6, Lcom/shabakaty/downloader/ec0;->s:[I

    aget v9, v9, p3

    if-nez v9, :cond_23

    const/4 v9, 0x1

    goto :goto_13

    :cond_23
    const/4 v9, 0x0

    .line 70
    :goto_13
    iget-object v11, v4, Lcom/shabakaty/downloader/wb0;->f:Lcom/shabakaty/downloader/wb0;

    if-eqz v11, :cond_24

    if-eq v6, v12, :cond_24

    .line 71
    invoke-virtual {v11}, Lcom/shabakaty/downloader/wb0;->e()I

    move-result v11

    add-int v29, v11, v29

    :cond_24
    move/from16 v11, v29

    if-eqz v3, :cond_25

    if-eq v6, v12, :cond_25

    if-eq v6, v8, :cond_25

    move/from16 v29, v14

    const/16 v28, 0x8

    goto :goto_14

    :cond_25
    move/from16 v29, v14

    .line 72
    :goto_14
    iget-object v14, v4, Lcom/shabakaty/downloader/wb0;->f:Lcom/shabakaty/downloader/wb0;

    if-eqz v14, :cond_29

    if-ne v6, v8, :cond_26

    move-object/from16 v31, v15

    .line 73
    iget-object v15, v4, Lcom/shabakaty/downloader/wb0;->i:Lcom/shabakaty/downloader/n94;

    iget-object v14, v14, Lcom/shabakaty/downloader/wb0;->i:Lcom/shabakaty/downloader/n94;

    move-object/from16 v32, v2

    const/4 v2, 0x6

    invoke-virtual {v10, v15, v14, v11, v2}, Lcom/shabakaty/downloader/zh2;->f(Lcom/shabakaty/downloader/n94;Lcom/shabakaty/downloader/n94;II)V

    goto :goto_15

    :cond_26
    move-object/from16 v32, v2

    move-object/from16 v31, v15

    .line 74
    iget-object v2, v4, Lcom/shabakaty/downloader/wb0;->i:Lcom/shabakaty/downloader/n94;

    iget-object v14, v14, Lcom/shabakaty/downloader/wb0;->i:Lcom/shabakaty/downloader/n94;

    const/16 v15, 0x8

    invoke-virtual {v10, v2, v14, v11, v15}, Lcom/shabakaty/downloader/zh2;->f(Lcom/shabakaty/downloader/n94;Lcom/shabakaty/downloader/n94;II)V

    :goto_15
    if-eqz v9, :cond_27

    if-nez v3, :cond_27

    const/16 v28, 0x5

    :cond_27
    if-ne v6, v8, :cond_28

    if-eqz v3, :cond_28

    .line 75
    iget-object v2, v6, Lcom/shabakaty/downloader/ec0;->S:[Z

    aget-boolean v2, v2, p3

    if-eqz v2, :cond_28

    const/4 v2, 0x5

    goto :goto_16

    :cond_28
    move/from16 v2, v28

    .line 76
    :goto_16
    iget-object v9, v4, Lcom/shabakaty/downloader/wb0;->i:Lcom/shabakaty/downloader/n94;

    iget-object v4, v4, Lcom/shabakaty/downloader/wb0;->f:Lcom/shabakaty/downloader/wb0;

    iget-object v4, v4, Lcom/shabakaty/downloader/wb0;->i:Lcom/shabakaty/downloader/n94;

    invoke-virtual {v10, v9, v4, v11, v2}, Lcom/shabakaty/downloader/zh2;->d(Lcom/shabakaty/downloader/n94;Lcom/shabakaty/downloader/n94;II)Lcom/shabakaty/downloader/bd;

    goto :goto_17

    :cond_29
    move-object/from16 v32, v2

    move-object/from16 v31, v15

    :goto_17
    if-eqz v5, :cond_2b

    .line 77
    iget v2, v6, Lcom/shabakaty/downloader/ec0;->h0:I

    const/16 v4, 0x8

    if-eq v2, v4, :cond_2a

    .line 78
    iget-object v2, v6, Lcom/shabakaty/downloader/ec0;->T:[I

    aget v2, v2, p3

    const/4 v4, 0x3

    if-ne v2, v4, :cond_2a

    .line 79
    iget-object v2, v6, Lcom/shabakaty/downloader/ec0;->Q:[Lcom/shabakaty/downloader/wb0;

    add-int/lit8 v4, v16, 0x1

    aget-object v4, v2, v4

    iget-object v4, v4, Lcom/shabakaty/downloader/wb0;->i:Lcom/shabakaty/downloader/n94;

    aget-object v2, v2, v16

    iget-object v2, v2, Lcom/shabakaty/downloader/wb0;->i:Lcom/shabakaty/downloader/n94;

    const/4 v9, 0x5

    const/4 v11, 0x0

    invoke-virtual {v10, v4, v2, v11, v9}, Lcom/shabakaty/downloader/zh2;->f(Lcom/shabakaty/downloader/n94;Lcom/shabakaty/downloader/n94;II)V

    goto :goto_18

    :cond_2a
    const/4 v11, 0x0

    .line 80
    :goto_18
    iget-object v2, v6, Lcom/shabakaty/downloader/ec0;->Q:[Lcom/shabakaty/downloader/wb0;

    aget-object v2, v2, v16

    iget-object v2, v2, Lcom/shabakaty/downloader/wb0;->i:Lcom/shabakaty/downloader/n94;

    iget-object v4, v0, Lcom/shabakaty/downloader/ec0;->Q:[Lcom/shabakaty/downloader/wb0;

    aget-object v4, v4, v16

    iget-object v4, v4, Lcom/shabakaty/downloader/wb0;->i:Lcom/shabakaty/downloader/n94;

    const/16 v9, 0x8

    invoke-virtual {v10, v2, v4, v11, v9}, Lcom/shabakaty/downloader/zh2;->f(Lcom/shabakaty/downloader/n94;Lcom/shabakaty/downloader/n94;II)V

    .line 81
    :cond_2b
    iget-object v2, v6, Lcom/shabakaty/downloader/ec0;->Q:[Lcom/shabakaty/downloader/wb0;

    add-int/lit8 v4, v16, 0x1

    aget-object v2, v2, v4

    iget-object v2, v2, Lcom/shabakaty/downloader/wb0;->f:Lcom/shabakaty/downloader/wb0;

    if-eqz v2, :cond_2c

    .line 82
    iget-object v2, v2, Lcom/shabakaty/downloader/wb0;->d:Lcom/shabakaty/downloader/ec0;

    .line 83
    iget-object v4, v2, Lcom/shabakaty/downloader/ec0;->Q:[Lcom/shabakaty/downloader/wb0;

    aget-object v9, v4, v16

    iget-object v9, v9, Lcom/shabakaty/downloader/wb0;->f:Lcom/shabakaty/downloader/wb0;

    if-eqz v9, :cond_2c

    aget-object v4, v4, v16

    iget-object v4, v4, Lcom/shabakaty/downloader/wb0;->f:Lcom/shabakaty/downloader/wb0;

    iget-object v4, v4, Lcom/shabakaty/downloader/wb0;->d:Lcom/shabakaty/downloader/ec0;

    if-eq v4, v6, :cond_2d

    :cond_2c
    move-object/from16 v2, v17

    :cond_2d
    if-eqz v2, :cond_2e

    move-object v6, v2

    goto :goto_19

    :cond_2e
    const/16 v25, 0x1

    :goto_19
    move-object/from16 v11, p2

    move/from16 v14, v29

    move/from16 v9, v30

    move-object/from16 v15, v31

    move-object/from16 v2, v32

    goto/16 :goto_11

    :cond_2f
    move-object/from16 v32, v2

    move/from16 v30, v9

    move/from16 v29, v14

    move-object/from16 v31, v15

    if-eqz v7, :cond_33

    .line 84
    iget-object v2, v13, Lcom/shabakaty/downloader/ec0;->Q:[Lcom/shabakaty/downloader/wb0;

    add-int/lit8 v4, v16, 0x1

    aget-object v2, v2, v4

    iget-object v2, v2, Lcom/shabakaty/downloader/wb0;->f:Lcom/shabakaty/downloader/wb0;

    if-eqz v2, :cond_33

    .line 85
    iget-object v2, v7, Lcom/shabakaty/downloader/ec0;->Q:[Lcom/shabakaty/downloader/wb0;

    aget-object v2, v2, v4

    .line 86
    iget-object v6, v7, Lcom/shabakaty/downloader/ec0;->T:[I

    aget v6, v6, p3

    const/4 v9, 0x3

    if-ne v6, v9, :cond_30

    iget-object v6, v7, Lcom/shabakaty/downloader/ec0;->s:[I

    aget v6, v6, p3

    if-nez v6, :cond_30

    const/4 v6, 0x1

    goto :goto_1a

    :cond_30
    const/4 v6, 0x0

    :goto_1a
    if-eqz v6, :cond_31

    if-nez v3, :cond_31

    .line 87
    iget-object v6, v2, Lcom/shabakaty/downloader/wb0;->f:Lcom/shabakaty/downloader/wb0;

    iget-object v9, v6, Lcom/shabakaty/downloader/wb0;->d:Lcom/shabakaty/downloader/ec0;

    if-ne v9, v0, :cond_31

    .line 88
    iget-object v9, v2, Lcom/shabakaty/downloader/wb0;->i:Lcom/shabakaty/downloader/n94;

    iget-object v6, v6, Lcom/shabakaty/downloader/wb0;->i:Lcom/shabakaty/downloader/n94;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/wb0;->e()I

    move-result v11

    neg-int v11, v11

    const/4 v14, 0x5

    invoke-virtual {v10, v9, v6, v11, v14}, Lcom/shabakaty/downloader/zh2;->d(Lcom/shabakaty/downloader/n94;Lcom/shabakaty/downloader/n94;II)Lcom/shabakaty/downloader/bd;

    goto :goto_1b

    :cond_31
    const/4 v14, 0x5

    if-eqz v3, :cond_32

    .line 89
    iget-object v6, v2, Lcom/shabakaty/downloader/wb0;->f:Lcom/shabakaty/downloader/wb0;

    iget-object v9, v6, Lcom/shabakaty/downloader/wb0;->d:Lcom/shabakaty/downloader/ec0;

    if-ne v9, v0, :cond_32

    .line 90
    iget-object v9, v2, Lcom/shabakaty/downloader/wb0;->i:Lcom/shabakaty/downloader/n94;

    iget-object v6, v6, Lcom/shabakaty/downloader/wb0;->i:Lcom/shabakaty/downloader/n94;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/wb0;->e()I

    move-result v11

    neg-int v11, v11

    const/4 v15, 0x4

    invoke-virtual {v10, v9, v6, v11, v15}, Lcom/shabakaty/downloader/zh2;->d(Lcom/shabakaty/downloader/n94;Lcom/shabakaty/downloader/n94;II)Lcom/shabakaty/downloader/bd;

    .line 91
    :cond_32
    :goto_1b
    iget-object v6, v2, Lcom/shabakaty/downloader/wb0;->i:Lcom/shabakaty/downloader/n94;

    iget-object v9, v13, Lcom/shabakaty/downloader/ec0;->Q:[Lcom/shabakaty/downloader/wb0;

    aget-object v4, v9, v4

    iget-object v4, v4, Lcom/shabakaty/downloader/wb0;->f:Lcom/shabakaty/downloader/wb0;

    iget-object v4, v4, Lcom/shabakaty/downloader/wb0;->i:Lcom/shabakaty/downloader/n94;

    .line 92
    invoke-virtual {v2}, Lcom/shabakaty/downloader/wb0;->e()I

    move-result v2

    neg-int v2, v2

    const/4 v9, 0x6

    .line 93
    invoke-virtual {v10, v6, v4, v2, v9}, Lcom/shabakaty/downloader/zh2;->g(Lcom/shabakaty/downloader/n94;Lcom/shabakaty/downloader/n94;II)V

    goto :goto_1c

    :cond_33
    const/4 v14, 0x5

    :goto_1c
    if-eqz v5, :cond_34

    .line 94
    iget-object v2, v0, Lcom/shabakaty/downloader/ec0;->Q:[Lcom/shabakaty/downloader/wb0;

    add-int/lit8 v4, v16, 0x1

    aget-object v2, v2, v4

    iget-object v2, v2, Lcom/shabakaty/downloader/wb0;->i:Lcom/shabakaty/downloader/n94;

    iget-object v5, v13, Lcom/shabakaty/downloader/ec0;->Q:[Lcom/shabakaty/downloader/wb0;

    aget-object v6, v5, v4

    iget-object v6, v6, Lcom/shabakaty/downloader/wb0;->i:Lcom/shabakaty/downloader/n94;

    aget-object v4, v5, v4

    .line 95
    invoke-virtual {v4}, Lcom/shabakaty/downloader/wb0;->e()I

    move-result v4

    const/16 v5, 0x8

    .line 96
    invoke-virtual {v10, v2, v6, v4, v5}, Lcom/shabakaty/downloader/zh2;->f(Lcom/shabakaty/downloader/n94;Lcom/shabakaty/downloader/n94;II)V

    .line 97
    :cond_34
    iget-object v2, v1, Lcom/shabakaty/downloader/hy;->h:Ljava/util/ArrayList;

    if-eqz v2, :cond_3e

    .line 98
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_3e

    .line 99
    iget-boolean v6, v1, Lcom/shabakaty/downloader/hy;->q:Z

    if-eqz v6, :cond_35

    iget-boolean v6, v1, Lcom/shabakaty/downloader/hy;->s:Z

    if-nez v6, :cond_35

    .line 100
    iget v6, v1, Lcom/shabakaty/downloader/hy;->j:I

    int-to-float v6, v6

    goto :goto_1d

    :cond_35
    move/from16 v6, v26

    :goto_1d
    move-object/from16 v15, v17

    const/4 v9, 0x0

    const/4 v11, 0x0

    :goto_1e
    if-ge v11, v4, :cond_3e

    .line 101
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v5, v18

    check-cast v5, Lcom/shabakaty/downloader/ec0;

    .line 102
    iget-object v14, v5, Lcom/shabakaty/downloader/ec0;->l0:[F

    aget v14, v14, p3

    const/16 v18, 0x0

    cmpg-float v25, v14, v18

    if-gez v25, :cond_37

    .line 103
    iget-boolean v14, v1, Lcom/shabakaty/downloader/hy;->s:Z

    if-eqz v14, :cond_36

    .line 104
    iget-object v0, v5, Lcom/shabakaty/downloader/ec0;->Q:[Lcom/shabakaty/downloader/wb0;

    add-int/lit8 v5, v16, 0x1

    aget-object v5, v0, v5

    iget-object v5, v5, Lcom/shabakaty/downloader/wb0;->i:Lcom/shabakaty/downloader/n94;

    aget-object v0, v0, v16

    iget-object v0, v0, Lcom/shabakaty/downloader/wb0;->i:Lcom/shabakaty/downloader/n94;

    move-object/from16 v18, v2

    const/4 v2, 0x0

    const/4 v14, 0x4

    invoke-virtual {v10, v5, v0, v2, v14}, Lcom/shabakaty/downloader/zh2;->d(Lcom/shabakaty/downloader/n94;Lcom/shabakaty/downloader/n94;II)Lcom/shabakaty/downloader/bd;

    const/4 v14, 0x0

    const/16 v25, 0x4

    goto :goto_20

    :cond_36
    move-object/from16 v18, v2

    const/4 v2, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    const/16 v25, 0x4

    goto :goto_1f

    :cond_37
    move-object/from16 v18, v2

    const/16 v25, 0x4

    const/4 v2, 0x0

    :goto_1f
    cmpl-float v26, v14, v2

    if-nez v26, :cond_38

    .line 105
    iget-object v0, v5, Lcom/shabakaty/downloader/ec0;->Q:[Lcom/shabakaty/downloader/wb0;

    add-int/lit8 v2, v16, 0x1

    aget-object v2, v0, v2

    iget-object v2, v2, Lcom/shabakaty/downloader/wb0;->i:Lcom/shabakaty/downloader/n94;

    aget-object v0, v0, v16

    iget-object v0, v0, Lcom/shabakaty/downloader/wb0;->i:Lcom/shabakaty/downloader/n94;

    const/16 v5, 0x8

    const/4 v14, 0x0

    invoke-virtual {v10, v2, v0, v14, v5}, Lcom/shabakaty/downloader/zh2;->d(Lcom/shabakaty/downloader/n94;Lcom/shabakaty/downloader/n94;II)Lcom/shabakaty/downloader/bd;

    :goto_20
    move-object/from16 v34, v1

    move/from16 v33, v4

    move-object/from16 v20, v13

    const/16 v19, 0x0

    goto/16 :goto_24

    :cond_38
    const/16 v19, 0x0

    if-eqz v15, :cond_3d

    .line 106
    iget-object v2, v15, Lcom/shabakaty/downloader/ec0;->Q:[Lcom/shabakaty/downloader/wb0;

    aget-object v15, v2, v16

    iget-object v15, v15, Lcom/shabakaty/downloader/wb0;->i:Lcom/shabakaty/downloader/n94;

    add-int/lit8 v27, v16, 0x1

    .line 107
    aget-object v2, v2, v27

    iget-object v2, v2, Lcom/shabakaty/downloader/wb0;->i:Lcom/shabakaty/downloader/n94;

    .line 108
    iget-object v0, v5, Lcom/shabakaty/downloader/ec0;->Q:[Lcom/shabakaty/downloader/wb0;

    move/from16 v33, v4

    aget-object v4, v0, v16

    iget-object v4, v4, Lcom/shabakaty/downloader/wb0;->i:Lcom/shabakaty/downloader/n94;

    .line 109
    aget-object v0, v0, v27

    iget-object v0, v0, Lcom/shabakaty/downloader/wb0;->i:Lcom/shabakaty/downloader/n94;

    move-object/from16 v27, v5

    .line 110
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/zh2;->m()Lcom/shabakaty/downloader/bd;

    move-result-object v5

    move-object/from16 v34, v1

    const/4 v1, 0x0

    .line 111
    iput v1, v5, Lcom/shabakaty/downloader/bd;->b:F

    move-object/from16 v20, v13

    const/high16 v13, -0x40800000    # -1.0f

    cmpl-float v35, v6, v1

    if-eqz v35, :cond_3c

    cmpl-float v35, v9, v14

    if-nez v35, :cond_39

    goto :goto_21

    :cond_39
    cmpl-float v35, v9, v1

    if-nez v35, :cond_3a

    .line 112
    iget-object v0, v5, Lcom/shabakaty/downloader/bd;->d:Lcom/shabakaty/downloader/bd$a;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-interface {v0, v15, v4}, Lcom/shabakaty/downloader/bd$a;->a(Lcom/shabakaty/downloader/n94;F)V

    .line 113
    iget-object v0, v5, Lcom/shabakaty/downloader/bd;->d:Lcom/shabakaty/downloader/bd$a;

    invoke-interface {v0, v2, v13}, Lcom/shabakaty/downloader/bd$a;->a(Lcom/shabakaty/downloader/n94;F)V

    goto :goto_22

    :cond_3a
    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v26, :cond_3b

    .line 114
    iget-object v2, v5, Lcom/shabakaty/downloader/bd;->d:Lcom/shabakaty/downloader/bd$a;

    invoke-interface {v2, v4, v1}, Lcom/shabakaty/downloader/bd$a;->a(Lcom/shabakaty/downloader/n94;F)V

    .line 115
    iget-object v1, v5, Lcom/shabakaty/downloader/bd;->d:Lcom/shabakaty/downloader/bd$a;

    invoke-interface {v1, v0, v13}, Lcom/shabakaty/downloader/bd$a;->a(Lcom/shabakaty/downloader/n94;F)V

    goto :goto_22

    :cond_3b
    div-float/2addr v9, v6

    div-float v26, v14, v6

    div-float v9, v9, v26

    .line 116
    iget-object v13, v5, Lcom/shabakaty/downloader/bd;->d:Lcom/shabakaty/downloader/bd$a;

    invoke-interface {v13, v15, v1}, Lcom/shabakaty/downloader/bd$a;->a(Lcom/shabakaty/downloader/n94;F)V

    .line 117
    iget-object v1, v5, Lcom/shabakaty/downloader/bd;->d:Lcom/shabakaty/downloader/bd$a;

    const/high16 v13, -0x40800000    # -1.0f

    invoke-interface {v1, v2, v13}, Lcom/shabakaty/downloader/bd$a;->a(Lcom/shabakaty/downloader/n94;F)V

    .line 118
    iget-object v1, v5, Lcom/shabakaty/downloader/bd;->d:Lcom/shabakaty/downloader/bd$a;

    invoke-interface {v1, v0, v9}, Lcom/shabakaty/downloader/bd$a;->a(Lcom/shabakaty/downloader/n94;F)V

    .line 119
    iget-object v0, v5, Lcom/shabakaty/downloader/bd;->d:Lcom/shabakaty/downloader/bd$a;

    neg-float v1, v9

    invoke-interface {v0, v4, v1}, Lcom/shabakaty/downloader/bd$a;->a(Lcom/shabakaty/downloader/n94;F)V

    goto :goto_22

    :cond_3c
    :goto_21
    const/high16 v1, 0x3f800000    # 1.0f

    .line 120
    iget-object v9, v5, Lcom/shabakaty/downloader/bd;->d:Lcom/shabakaty/downloader/bd$a;

    invoke-interface {v9, v15, v1}, Lcom/shabakaty/downloader/bd$a;->a(Lcom/shabakaty/downloader/n94;F)V

    .line 121
    iget-object v9, v5, Lcom/shabakaty/downloader/bd;->d:Lcom/shabakaty/downloader/bd$a;

    invoke-interface {v9, v2, v13}, Lcom/shabakaty/downloader/bd$a;->a(Lcom/shabakaty/downloader/n94;F)V

    .line 122
    iget-object v2, v5, Lcom/shabakaty/downloader/bd;->d:Lcom/shabakaty/downloader/bd$a;

    invoke-interface {v2, v0, v1}, Lcom/shabakaty/downloader/bd$a;->a(Lcom/shabakaty/downloader/n94;F)V

    .line 123
    iget-object v0, v5, Lcom/shabakaty/downloader/bd;->d:Lcom/shabakaty/downloader/bd$a;

    invoke-interface {v0, v4, v13}, Lcom/shabakaty/downloader/bd$a;->a(Lcom/shabakaty/downloader/n94;F)V

    .line 124
    :goto_22
    invoke-virtual {v10, v5}, Lcom/shabakaty/downloader/zh2;->c(Lcom/shabakaty/downloader/bd;)V

    goto :goto_23

    :cond_3d
    move-object/from16 v34, v1

    move/from16 v33, v4

    move-object/from16 v27, v5

    move-object/from16 v20, v13

    :goto_23
    move v9, v14

    move-object/from16 v15, v27

    :goto_24
    add-int/lit8 v11, v11, 0x1

    const/4 v5, 0x1

    const/4 v14, 0x5

    move-object/from16 v0, p0

    move-object/from16 v2, v18

    move-object/from16 v13, v20

    move/from16 v4, v33

    move-object/from16 v1, v34

    goto/16 :goto_1e

    :cond_3e
    move-object/from16 v34, v1

    move-object/from16 v20, v13

    const/16 v19, 0x0

    const/16 v25, 0x4

    if-eqz v8, :cond_46

    if-eq v8, v7, :cond_3f

    if-eqz v3, :cond_46

    .line 125
    :cond_3f
    iget-object v0, v12, Lcom/shabakaty/downloader/ec0;->Q:[Lcom/shabakaty/downloader/wb0;

    aget-object v0, v0, v16

    move-object/from16 v11, v20

    .line 126
    iget-object v1, v11, Lcom/shabakaty/downloader/ec0;->Q:[Lcom/shabakaty/downloader/wb0;

    add-int/lit8 v2, v16, 0x1

    aget-object v1, v1, v2

    .line 127
    iget-object v0, v0, Lcom/shabakaty/downloader/wb0;->f:Lcom/shabakaty/downloader/wb0;

    if-eqz v0, :cond_40

    iget-object v0, v0, Lcom/shabakaty/downloader/wb0;->i:Lcom/shabakaty/downloader/n94;

    move-object v3, v0

    goto :goto_25

    :cond_40
    move-object/from16 v3, v17

    .line 128
    :goto_25
    iget-object v0, v1, Lcom/shabakaty/downloader/wb0;->f:Lcom/shabakaty/downloader/wb0;

    if-eqz v0, :cond_41

    iget-object v0, v0, Lcom/shabakaty/downloader/wb0;->i:Lcom/shabakaty/downloader/n94;

    move-object v6, v0

    goto :goto_26

    :cond_41
    move-object/from16 v6, v17

    .line 129
    :goto_26
    iget-object v0, v8, Lcom/shabakaty/downloader/ec0;->Q:[Lcom/shabakaty/downloader/wb0;

    aget-object v0, v0, v16

    if-eqz v7, :cond_42

    .line 130
    iget-object v1, v7, Lcom/shabakaty/downloader/ec0;->Q:[Lcom/shabakaty/downloader/wb0;

    aget-object v1, v1, v2

    :cond_42
    if-eqz v3, :cond_44

    if-eqz v6, :cond_44

    if-nez p3, :cond_43

    move-object/from16 v2, v32

    .line 131
    iget v2, v2, Lcom/shabakaty/downloader/ec0;->e0:F

    goto :goto_27

    :cond_43
    move-object/from16 v2, v32

    .line 132
    iget v2, v2, Lcom/shabakaty/downloader/ec0;->f0:F

    :goto_27
    move v5, v2

    .line 133
    invoke-virtual {v0}, Lcom/shabakaty/downloader/wb0;->e()I

    move-result v4

    .line 134
    invoke-virtual {v1}, Lcom/shabakaty/downloader/wb0;->e()I

    move-result v9

    .line 135
    iget-object v2, v0, Lcom/shabakaty/downloader/wb0;->i:Lcom/shabakaty/downloader/n94;

    iget-object v0, v1, Lcom/shabakaty/downloader/wb0;->i:Lcom/shabakaty/downloader/n94;

    const/4 v12, 0x7

    move-object/from16 v1, p1

    const/4 v13, 0x2

    move-object v14, v7

    move-object v7, v0

    move-object v0, v8

    move v8, v9

    move/from16 v15, v30

    move v9, v12

    invoke-virtual/range {v1 .. v9}, Lcom/shabakaty/downloader/zh2;->b(Lcom/shabakaty/downloader/n94;Lcom/shabakaty/downloader/n94;IFLcom/shabakaty/downloader/n94;Lcom/shabakaty/downloader/n94;II)V

    goto/16 :goto_40

    :cond_44
    move-object v14, v7

    move-object v0, v8

    move/from16 v15, v30

    const/4 v13, 0x2

    :cond_45
    move/from16 v30, v15

    goto/16 :goto_40

    :cond_46
    move-object v14, v7

    move-object v0, v8

    move-object/from16 v11, v20

    move/from16 v15, v30

    const/4 v13, 0x2

    if-eqz v24, :cond_58

    if-eqz v0, :cond_58

    move-object/from16 v1, v34

    .line 136
    iget v2, v1, Lcom/shabakaty/downloader/hy;->j:I

    if-lez v2, :cond_47

    iget v1, v1, Lcom/shabakaty/downloader/hy;->i:I

    if-ne v1, v2, :cond_47

    const/16 v22, 0x1

    goto :goto_28

    :cond_47
    const/16 v22, 0x0

    :goto_28
    move-object v8, v0

    move-object v9, v8

    :goto_29
    if-eqz v9, :cond_45

    .line 137
    iget-object v1, v9, Lcom/shabakaty/downloader/ec0;->n0:[Lcom/shabakaty/downloader/ec0;

    aget-object v1, v1, p3

    move-object v7, v1

    :goto_2a
    if-eqz v7, :cond_48

    .line 138
    iget v1, v7, Lcom/shabakaty/downloader/ec0;->h0:I

    const/16 v6, 0x8

    if-ne v1, v6, :cond_49

    .line 139
    iget-object v1, v7, Lcom/shabakaty/downloader/ec0;->n0:[Lcom/shabakaty/downloader/ec0;

    aget-object v7, v1, p3

    goto :goto_2a

    :cond_48
    const/16 v6, 0x8

    :cond_49
    if-nez v7, :cond_4b

    if-ne v9, v14, :cond_4a

    goto :goto_2c

    :cond_4a
    move-object v13, v7

    move-object/from16 v18, v8

    move/from16 v30, v15

    :goto_2b
    move-object v15, v9

    goto/16 :goto_33

    .line 140
    :cond_4b
    :goto_2c
    iget-object v1, v9, Lcom/shabakaty/downloader/ec0;->Q:[Lcom/shabakaty/downloader/wb0;

    aget-object v1, v1, v16

    .line 141
    iget-object v2, v1, Lcom/shabakaty/downloader/wb0;->i:Lcom/shabakaty/downloader/n94;

    .line 142
    iget-object v3, v1, Lcom/shabakaty/downloader/wb0;->f:Lcom/shabakaty/downloader/wb0;

    if-eqz v3, :cond_4c

    iget-object v3, v3, Lcom/shabakaty/downloader/wb0;->i:Lcom/shabakaty/downloader/n94;

    goto :goto_2d

    :cond_4c
    move-object/from16 v3, v17

    :goto_2d
    if-eq v8, v9, :cond_4d

    .line 143
    iget-object v3, v8, Lcom/shabakaty/downloader/ec0;->Q:[Lcom/shabakaty/downloader/wb0;

    add-int/lit8 v4, v16, 0x1

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/shabakaty/downloader/wb0;->i:Lcom/shabakaty/downloader/n94;

    goto :goto_2e

    :cond_4d
    if-ne v9, v0, :cond_4f

    .line 144
    iget-object v3, v12, Lcom/shabakaty/downloader/ec0;->Q:[Lcom/shabakaty/downloader/wb0;

    aget-object v4, v3, v16

    iget-object v4, v4, Lcom/shabakaty/downloader/wb0;->f:Lcom/shabakaty/downloader/wb0;

    if-eqz v4, :cond_4e

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/shabakaty/downloader/wb0;->f:Lcom/shabakaty/downloader/wb0;

    iget-object v3, v3, Lcom/shabakaty/downloader/wb0;->i:Lcom/shabakaty/downloader/n94;

    goto :goto_2e

    :cond_4e
    move-object/from16 v3, v17

    .line 145
    :cond_4f
    :goto_2e
    invoke-virtual {v1}, Lcom/shabakaty/downloader/wb0;->e()I

    move-result v1

    .line 146
    iget-object v4, v9, Lcom/shabakaty/downloader/ec0;->Q:[Lcom/shabakaty/downloader/wb0;

    add-int/lit8 v5, v16, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/shabakaty/downloader/wb0;->e()I

    move-result v4

    if-eqz v7, :cond_50

    .line 147
    iget-object v6, v7, Lcom/shabakaty/downloader/ec0;->Q:[Lcom/shabakaty/downloader/wb0;

    aget-object v6, v6, v16

    .line 148
    iget-object v13, v6, Lcom/shabakaty/downloader/wb0;->i:Lcom/shabakaty/downloader/n94;

    goto :goto_2f

    .line 149
    :cond_50
    iget-object v6, v11, Lcom/shabakaty/downloader/ec0;->Q:[Lcom/shabakaty/downloader/wb0;

    aget-object v6, v6, v5

    iget-object v6, v6, Lcom/shabakaty/downloader/wb0;->f:Lcom/shabakaty/downloader/wb0;

    if-eqz v6, :cond_51

    .line 150
    iget-object v13, v6, Lcom/shabakaty/downloader/wb0;->i:Lcom/shabakaty/downloader/n94;

    :goto_2f
    move-object/from16 v18, v7

    goto :goto_30

    :cond_51
    move-object/from16 v18, v7

    move-object/from16 v13, v17

    .line 151
    :goto_30
    iget-object v7, v9, Lcom/shabakaty/downloader/ec0;->Q:[Lcom/shabakaty/downloader/wb0;

    aget-object v7, v7, v5

    iget-object v7, v7, Lcom/shabakaty/downloader/wb0;->i:Lcom/shabakaty/downloader/n94;

    if-eqz v6, :cond_52

    .line 152
    invoke-virtual {v6}, Lcom/shabakaty/downloader/wb0;->e()I

    move-result v6

    add-int/2addr v4, v6

    .line 153
    :cond_52
    iget-object v6, v8, Lcom/shabakaty/downloader/ec0;->Q:[Lcom/shabakaty/downloader/wb0;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Lcom/shabakaty/downloader/wb0;->e()I

    move-result v6

    add-int/2addr v6, v1

    if-eqz v2, :cond_56

    if-eqz v3, :cond_56

    if-eqz v13, :cond_56

    if-eqz v7, :cond_56

    if-ne v9, v0, :cond_53

    .line 154
    iget-object v1, v0, Lcom/shabakaty/downloader/ec0;->Q:[Lcom/shabakaty/downloader/wb0;

    aget-object v1, v1, v16

    invoke-virtual {v1}, Lcom/shabakaty/downloader/wb0;->e()I

    move-result v1

    move v6, v1

    :cond_53
    if-ne v9, v14, :cond_54

    .line 155
    iget-object v1, v14, Lcom/shabakaty/downloader/ec0;->Q:[Lcom/shabakaty/downloader/wb0;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lcom/shabakaty/downloader/wb0;->e()I

    move-result v1

    move/from16 v20, v1

    goto :goto_31

    :cond_54
    move/from16 v20, v4

    :goto_31
    if-eqz v22, :cond_55

    const/16 v25, 0x8

    goto :goto_32

    :cond_55
    const/16 v25, 0x5

    :goto_32
    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 v1, p1

    move/from16 v30, v15

    const/4 v15, 0x5

    move v4, v6

    const/16 v21, 0x8

    move-object v6, v13

    move-object/from16 v13, v18

    move-object/from16 v18, v8

    const/16 v15, 0x8

    move/from16 v8, v20

    move-object v15, v9

    move/from16 v9, v25

    .line 156
    invoke-virtual/range {v1 .. v9}, Lcom/shabakaty/downloader/zh2;->b(Lcom/shabakaty/downloader/n94;Lcom/shabakaty/downloader/n94;IFLcom/shabakaty/downloader/n94;Lcom/shabakaty/downloader/n94;II)V

    goto :goto_33

    :cond_56
    move/from16 v30, v15

    move-object/from16 v13, v18

    move-object/from16 v18, v8

    goto/16 :goto_2b

    .line 157
    :goto_33
    iget v1, v15, Lcom/shabakaty/downloader/ec0;->h0:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_57

    move-object v8, v15

    goto :goto_34

    :cond_57
    move-object/from16 v8, v18

    :goto_34
    move-object v9, v13

    move/from16 v15, v30

    const/4 v13, 0x2

    goto/16 :goto_29

    :cond_58
    move/from16 v30, v15

    move-object/from16 v1, v34

    if-eqz v23, :cond_67

    if-eqz v0, :cond_67

    .line 158
    iget v2, v1, Lcom/shabakaty/downloader/hy;->j:I

    if-lez v2, :cond_59

    iget v1, v1, Lcom/shabakaty/downloader/hy;->i:I

    if-ne v1, v2, :cond_59

    const/16 v22, 0x1

    goto :goto_35

    :cond_59
    const/16 v22, 0x0

    :goto_35
    move-object v13, v0

    move-object v15, v13

    :goto_36
    if-eqz v13, :cond_64

    .line 159
    iget-object v1, v13, Lcom/shabakaty/downloader/ec0;->n0:[Lcom/shabakaty/downloader/ec0;

    aget-object v1, v1, p3

    :goto_37
    if-eqz v1, :cond_5a

    .line 160
    iget v2, v1, Lcom/shabakaty/downloader/ec0;->h0:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_5a

    .line 161
    iget-object v1, v1, Lcom/shabakaty/downloader/ec0;->n0:[Lcom/shabakaty/downloader/ec0;

    aget-object v1, v1, p3

    goto :goto_37

    :cond_5a
    if-eq v13, v0, :cond_62

    if-eq v13, v14, :cond_62

    if-eqz v1, :cond_62

    if-ne v1, v14, :cond_5b

    move-object/from16 v9, v17

    goto :goto_38

    :cond_5b
    move-object v9, v1

    .line 162
    :goto_38
    iget-object v1, v13, Lcom/shabakaty/downloader/ec0;->Q:[Lcom/shabakaty/downloader/wb0;

    aget-object v1, v1, v16

    .line 163
    iget-object v2, v1, Lcom/shabakaty/downloader/wb0;->i:Lcom/shabakaty/downloader/n94;

    .line 164
    iget-object v3, v15, Lcom/shabakaty/downloader/ec0;->Q:[Lcom/shabakaty/downloader/wb0;

    add-int/lit8 v4, v16, 0x1

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/shabakaty/downloader/wb0;->i:Lcom/shabakaty/downloader/n94;

    .line 165
    invoke-virtual {v1}, Lcom/shabakaty/downloader/wb0;->e()I

    move-result v1

    .line 166
    iget-object v5, v13, Lcom/shabakaty/downloader/ec0;->Q:[Lcom/shabakaty/downloader/wb0;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lcom/shabakaty/downloader/wb0;->e()I

    move-result v5

    if-eqz v9, :cond_5d

    .line 167
    iget-object v6, v9, Lcom/shabakaty/downloader/ec0;->Q:[Lcom/shabakaty/downloader/wb0;

    aget-object v6, v6, v16

    .line 168
    iget-object v7, v6, Lcom/shabakaty/downloader/wb0;->i:Lcom/shabakaty/downloader/n94;

    .line 169
    iget-object v8, v6, Lcom/shabakaty/downloader/wb0;->f:Lcom/shabakaty/downloader/wb0;

    if-eqz v8, :cond_5c

    iget-object v8, v8, Lcom/shabakaty/downloader/wb0;->i:Lcom/shabakaty/downloader/n94;

    goto :goto_3a

    :cond_5c
    move-object/from16 v8, v17

    goto :goto_3a

    .line 170
    :cond_5d
    iget-object v6, v14, Lcom/shabakaty/downloader/ec0;->Q:[Lcom/shabakaty/downloader/wb0;

    aget-object v6, v6, v16

    if-eqz v6, :cond_5e

    .line 171
    iget-object v7, v6, Lcom/shabakaty/downloader/wb0;->i:Lcom/shabakaty/downloader/n94;

    goto :goto_39

    :cond_5e
    move-object/from16 v7, v17

    .line 172
    :goto_39
    iget-object v8, v13, Lcom/shabakaty/downloader/ec0;->Q:[Lcom/shabakaty/downloader/wb0;

    aget-object v8, v8, v4

    iget-object v8, v8, Lcom/shabakaty/downloader/wb0;->i:Lcom/shabakaty/downloader/n94;

    :goto_3a
    if-eqz v6, :cond_5f

    .line 173
    invoke-virtual {v6}, Lcom/shabakaty/downloader/wb0;->e()I

    move-result v6

    add-int/2addr v6, v5

    move/from16 v18, v6

    goto :goto_3b

    :cond_5f
    move/from16 v18, v5

    .line 174
    :goto_3b
    iget-object v5, v15, Lcom/shabakaty/downloader/ec0;->Q:[Lcom/shabakaty/downloader/wb0;

    aget-object v4, v5, v4

    invoke-virtual {v4}, Lcom/shabakaty/downloader/wb0;->e()I

    move-result v4

    add-int/2addr v4, v1

    if-eqz v22, :cond_60

    const/16 v20, 0x8

    goto :goto_3c

    :cond_60
    const/16 v20, 0x4

    :goto_3c
    if-eqz v2, :cond_61

    if-eqz v3, :cond_61

    if-eqz v7, :cond_61

    if-eqz v8, :cond_61

    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 v1, p1

    move-object v6, v7

    move-object v7, v8

    move/from16 v8, v18

    move-object/from16 v18, v9

    move/from16 v9, v20

    .line 175
    invoke-virtual/range {v1 .. v9}, Lcom/shabakaty/downloader/zh2;->b(Lcom/shabakaty/downloader/n94;Lcom/shabakaty/downloader/n94;IFLcom/shabakaty/downloader/n94;Lcom/shabakaty/downloader/n94;II)V

    goto :goto_3d

    :cond_61
    move-object/from16 v18, v9

    :goto_3d
    move-object/from16 v8, v18

    goto :goto_3e

    :cond_62
    move-object v8, v1

    .line 176
    :goto_3e
    iget v1, v13, Lcom/shabakaty/downloader/ec0;->h0:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_63

    move-object v15, v13

    :cond_63
    move-object v13, v8

    goto/16 :goto_36

    .line 177
    :cond_64
    iget-object v1, v0, Lcom/shabakaty/downloader/ec0;->Q:[Lcom/shabakaty/downloader/wb0;

    aget-object v1, v1, v16

    .line 178
    iget-object v2, v12, Lcom/shabakaty/downloader/ec0;->Q:[Lcom/shabakaty/downloader/wb0;

    aget-object v2, v2, v16

    iget-object v2, v2, Lcom/shabakaty/downloader/wb0;->f:Lcom/shabakaty/downloader/wb0;

    .line 179
    iget-object v3, v14, Lcom/shabakaty/downloader/ec0;->Q:[Lcom/shabakaty/downloader/wb0;

    add-int/lit8 v4, v16, 0x1

    aget-object v12, v3, v4

    .line 180
    iget-object v3, v11, Lcom/shabakaty/downloader/ec0;->Q:[Lcom/shabakaty/downloader/wb0;

    aget-object v3, v3, v4

    iget-object v13, v3, Lcom/shabakaty/downloader/wb0;->f:Lcom/shabakaty/downloader/wb0;

    if-eqz v2, :cond_66

    if-eq v0, v14, :cond_65

    .line 181
    iget-object v3, v1, Lcom/shabakaty/downloader/wb0;->i:Lcom/shabakaty/downloader/n94;

    iget-object v2, v2, Lcom/shabakaty/downloader/wb0;->i:Lcom/shabakaty/downloader/n94;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/wb0;->e()I

    move-result v1

    const/4 v4, 0x5

    invoke-virtual {v10, v3, v2, v1, v4}, Lcom/shabakaty/downloader/zh2;->d(Lcom/shabakaty/downloader/n94;Lcom/shabakaty/downloader/n94;II)Lcom/shabakaty/downloader/bd;

    goto :goto_3f

    :cond_65
    if-eqz v13, :cond_66

    .line 182
    iget-object v3, v1, Lcom/shabakaty/downloader/wb0;->i:Lcom/shabakaty/downloader/n94;

    iget-object v4, v2, Lcom/shabakaty/downloader/wb0;->i:Lcom/shabakaty/downloader/n94;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/wb0;->e()I

    move-result v5

    const/high16 v6, 0x3f000000    # 0.5f

    iget-object v7, v12, Lcom/shabakaty/downloader/wb0;->i:Lcom/shabakaty/downloader/n94;

    iget-object v8, v13, Lcom/shabakaty/downloader/wb0;->i:Lcom/shabakaty/downloader/n94;

    .line 183
    invoke-virtual {v12}, Lcom/shabakaty/downloader/wb0;->e()I

    move-result v9

    const/4 v15, 0x5

    move-object/from16 v1, p1

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    move-object v7, v8

    move v8, v9

    move v9, v15

    .line 184
    invoke-virtual/range {v1 .. v9}, Lcom/shabakaty/downloader/zh2;->b(Lcom/shabakaty/downloader/n94;Lcom/shabakaty/downloader/n94;IFLcom/shabakaty/downloader/n94;Lcom/shabakaty/downloader/n94;II)V

    :cond_66
    :goto_3f
    if-eqz v13, :cond_67

    if-eq v0, v14, :cond_67

    .line 185
    iget-object v1, v12, Lcom/shabakaty/downloader/wb0;->i:Lcom/shabakaty/downloader/n94;

    iget-object v2, v13, Lcom/shabakaty/downloader/wb0;->i:Lcom/shabakaty/downloader/n94;

    invoke-virtual {v12}, Lcom/shabakaty/downloader/wb0;->e()I

    move-result v3

    neg-int v3, v3

    const/4 v4, 0x5

    invoke-virtual {v10, v1, v2, v3, v4}, Lcom/shabakaty/downloader/zh2;->d(Lcom/shabakaty/downloader/n94;Lcom/shabakaty/downloader/n94;II)Lcom/shabakaty/downloader/bd;

    :cond_67
    :goto_40
    if-nez v24, :cond_68

    if-eqz v23, :cond_6f

    :cond_68
    if-eqz v0, :cond_6f

    if-eq v0, v14, :cond_6f

    .line 186
    iget-object v1, v0, Lcom/shabakaty/downloader/ec0;->Q:[Lcom/shabakaty/downloader/wb0;

    aget-object v2, v1, v16

    if-nez v14, :cond_69

    move-object v8, v0

    goto :goto_41

    :cond_69
    move-object v8, v14

    .line 187
    :goto_41
    iget-object v3, v8, Lcom/shabakaty/downloader/ec0;->Q:[Lcom/shabakaty/downloader/wb0;

    add-int/lit8 v4, v16, 0x1

    aget-object v3, v3, v4

    .line 188
    iget-object v5, v2, Lcom/shabakaty/downloader/wb0;->f:Lcom/shabakaty/downloader/wb0;

    if-eqz v5, :cond_6a

    iget-object v5, v5, Lcom/shabakaty/downloader/wb0;->i:Lcom/shabakaty/downloader/n94;

    goto :goto_42

    :cond_6a
    move-object/from16 v5, v17

    .line 189
    :goto_42
    iget-object v6, v3, Lcom/shabakaty/downloader/wb0;->f:Lcom/shabakaty/downloader/wb0;

    if-eqz v6, :cond_6b

    iget-object v6, v6, Lcom/shabakaty/downloader/wb0;->i:Lcom/shabakaty/downloader/n94;

    goto :goto_43

    :cond_6b
    move-object/from16 v6, v17

    :goto_43
    if-eq v11, v8, :cond_6d

    .line 190
    iget-object v6, v11, Lcom/shabakaty/downloader/ec0;->Q:[Lcom/shabakaty/downloader/wb0;

    aget-object v6, v6, v4

    .line 191
    iget-object v6, v6, Lcom/shabakaty/downloader/wb0;->f:Lcom/shabakaty/downloader/wb0;

    if-eqz v6, :cond_6c

    iget-object v6, v6, Lcom/shabakaty/downloader/wb0;->i:Lcom/shabakaty/downloader/n94;

    move-object/from16 v17, v6

    :cond_6c
    move-object/from16 v6, v17

    :cond_6d
    if-ne v0, v8, :cond_6e

    .line 192
    aget-object v2, v1, v16

    .line 193
    aget-object v3, v1, v4

    :cond_6e
    if-eqz v5, :cond_6f

    if-eqz v6, :cond_6f

    const/high16 v0, 0x3f000000    # 0.5f

    .line 194
    invoke-virtual {v2}, Lcom/shabakaty/downloader/wb0;->e()I

    move-result v7

    .line 195
    iget-object v1, v8, Lcom/shabakaty/downloader/ec0;->Q:[Lcom/shabakaty/downloader/wb0;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lcom/shabakaty/downloader/wb0;->e()I

    move-result v8

    .line 196
    iget-object v2, v2, Lcom/shabakaty/downloader/wb0;->i:Lcom/shabakaty/downloader/n94;

    iget-object v9, v3, Lcom/shabakaty/downloader/wb0;->i:Lcom/shabakaty/downloader/n94;

    const/4 v11, 0x5

    move-object/from16 v1, p1

    move-object v3, v5

    move v4, v7

    move v5, v0

    move-object v7, v9

    move v9, v11

    invoke-virtual/range {v1 .. v9}, Lcom/shabakaty/downloader/zh2;->b(Lcom/shabakaty/downloader/n94;Lcom/shabakaty/downloader/n94;IFLcom/shabakaty/downloader/n94;Lcom/shabakaty/downloader/n94;II)V

    :cond_6f
    :goto_44
    add-int/lit8 v9, v30, 0x1

    const/4 v12, 0x2

    move-object/from16 v0, p0

    move-object/from16 v11, p2

    move/from16 v14, v29

    move-object/from16 v15, v31

    goto/16 :goto_1

    :cond_70
    return-void
.end method
