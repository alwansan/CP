.class public Lcom/shabakaty/downloader/c21;
.super Ljava/lang/Object;
.source "EdgeTreatment.java"

# interfaces
.implements Lcom/shabakaty/downloader/v37;
.implements Lcom/shabakaty/downloader/a95;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(I)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v2, "a"

    aput-object v2, v0, v1

    goto :goto_0

    :pswitch_1
    const-string v2, "typeProjection"

    aput-object v2, v0, v1

    goto :goto_0

    :pswitch_2
    const-string v2, "type"

    aput-object v2, v0, v1

    goto :goto_0

    :pswitch_3
    const-string v2, "supertype"

    aput-object v2, v0, v1

    goto :goto_0

    :pswitch_4
    const-string v2, "subtype"

    aput-object v2, v0, v1

    goto :goto_0

    :pswitch_5
    const-string v2, "typeCheckingProcedure"

    aput-object v2, v0, v1

    goto :goto_0

    :pswitch_6
    const-string v2, "b"

    aput-object v2, v0, v1

    :goto_0
    const/4 v1, 0x1

    const-string v2, "kotlin/reflect/jvm/internal/impl/types/checker/TypeCheckerProcedureCallbacksImpl"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    packed-switch p0, :pswitch_data_1

    const-string p0, "assertEqualTypes"

    aput-object p0, v0, v1

    goto :goto_1

    :pswitch_7
    const-string p0, "noCorrespondingSupertype"

    aput-object p0, v0, v1

    goto :goto_1

    :pswitch_8
    const-string p0, "capture"

    aput-object p0, v0, v1

    goto :goto_1

    :pswitch_9
    const-string p0, "assertSubtype"

    aput-object p0, v0, v1

    goto :goto_1

    :pswitch_a
    const-string p0, "assertEqualTypeConstructors"

    aput-object p0, v0, v1

    :goto_1
    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public J(Ljava/lang/String;Lcom/shabakaty/downloader/si;IILjava/util/Map;)Lcom/shabakaty/downloader/jm;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/si;",
            "II",
            "Ljava/util/Map<",
            "Lcom/shabakaty/downloader/f31;",
            "*>;)",
            "Lcom/shabakaty/downloader/jm;"
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p5

    .line 1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_31

    .line 2
    sget-object v4, Lcom/shabakaty/downloader/si;->v:Lcom/shabakaty/downloader/si;

    move-object/from16 v5, p2

    if-ne v5, v4, :cond_30

    if-ltz v1, :cond_2f

    if-ltz v2, :cond_2f

    .line 3
    sget-object v4, Lcom/shabakaty/downloader/cj4;->r:Lcom/shabakaty/downloader/cj4;

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    .line 4
    sget-object v6, Lcom/shabakaty/downloader/f31;->t:Lcom/shabakaty/downloader/f31;

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/cj4;

    if-eqz v6, :cond_0

    move-object v4, v6

    .line 5
    :cond_0
    sget-object v6, Lcom/shabakaty/downloader/f31;->u:Lcom/shabakaty/downloader/f31;

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/ft0;

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    move-object v6, v5

    .line 6
    :goto_0
    sget-object v7, Lcom/shabakaty/downloader/f31;->v:Lcom/shabakaty/downloader/f31;

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/ft0;

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move-object v3, v5

    :goto_1
    move-object v5, v6

    goto :goto_2

    :cond_3
    move-object v3, v5

    :goto_2
    const/4 v6, 0x6

    new-array v6, v6, [Lcom/shabakaty/downloader/j31;

    .line 7
    new-instance v7, Lcom/shabakaty/downloader/ll3;

    const/16 v8, 0xd

    invoke-direct {v7, v8}, Lcom/shabakaty/downloader/ll3;-><init>(I)V

    const/4 v8, 0x0

    aput-object v7, v6, v8

    new-instance v7, Lcom/shabakaty/downloader/ow4;

    const/4 v9, 0x4

    invoke-direct {v7, v9}, Lcom/shabakaty/downloader/ow4;-><init>(I)V

    const/4 v10, 0x1

    aput-object v7, v6, v10

    new-instance v7, Lcom/shabakaty/downloader/vl4;

    invoke-direct {v7}, Lcom/shabakaty/downloader/vl4;-><init>()V

    const/4 v11, 0x2

    aput-object v7, v6, v11

    new-instance v7, Lcom/shabakaty/downloader/d95;

    invoke-direct {v7}, Lcom/shabakaty/downloader/d95;-><init>()V

    const/4 v12, 0x3

    aput-object v7, v6, v12

    new-instance v7, Lcom/shabakaty/downloader/xl2;

    const/16 v12, 0xb

    invoke-direct {v7, v12}, Lcom/shabakaty/downloader/xl2;-><init>(I)V

    aput-object v7, v6, v9

    new-instance v7, Lcom/shabakaty/downloader/zl2;

    const/16 v12, 0x11

    invoke-direct {v7, v12}, Lcom/shabakaty/downloader/zl2;-><init>(I)V

    const/4 v12, 0x5

    aput-object v7, v6, v12

    .line 8
    new-instance v7, Lcom/shabakaty/downloader/n31;

    invoke-direct {v7, v0}, Lcom/shabakaty/downloader/n31;-><init>(Ljava/lang/String;)V

    .line 9
    iput-object v4, v7, Lcom/shabakaty/downloader/n31;->b:Lcom/shabakaty/downloader/cj4;

    .line 10
    iput-object v5, v7, Lcom/shabakaty/downloader/n31;->c:Lcom/shabakaty/downloader/ft0;

    .line 11
    iput-object v3, v7, Lcom/shabakaty/downloader/n31;->d:Lcom/shabakaty/downloader/ft0;

    const-string v13, "[)>\u001e05\u001d"

    .line 12
    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    const-string v14, "\u001e\u0004"

    if-eqz v13, :cond_4

    invoke-virtual {v0, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/16 v0, 0xec

    .line 13
    iget-object v13, v7, Lcom/shabakaty/downloader/n31;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    iput v11, v7, Lcom/shabakaty/downloader/n31;->i:I

    .line 15
    iget v0, v7, Lcom/shabakaty/downloader/n31;->f:I

    add-int/lit8 v0, v0, 0x7

    iput v0, v7, Lcom/shabakaty/downloader/n31;->f:I

    goto :goto_3

    :cond_4
    const-string v13, "[)>\u001e06\u001d"

    .line 16
    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-virtual {v0, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0xed

    .line 17
    iget-object v13, v7, Lcom/shabakaty/downloader/n31;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18
    iput v11, v7, Lcom/shabakaty/downloader/n31;->i:I

    .line 19
    iget v0, v7, Lcom/shabakaty/downloader/n31;->f:I

    add-int/lit8 v0, v0, 0x7

    iput v0, v7, Lcom/shabakaty/downloader/n31;->f:I

    :cond_5
    :goto_3
    const/4 v0, 0x0

    .line 20
    :cond_6
    :goto_4
    invoke-virtual {v7}, Lcom/shabakaty/downloader/n31;->d()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 21
    aget-object v13, v6, v0

    invoke-interface {v13, v7}, Lcom/shabakaty/downloader/j31;->d(Lcom/shabakaty/downloader/n31;)V

    .line 22
    iget v13, v7, Lcom/shabakaty/downloader/n31;->g:I

    if-ltz v13, :cond_6

    const/4 v0, -0x1

    .line 23
    iput v0, v7, Lcom/shabakaty/downloader/n31;->g:I

    move v0, v13

    goto :goto_4

    .line 24
    :cond_7
    invoke-virtual {v7}, Lcom/shabakaty/downloader/n31;->a()I

    move-result v6

    .line 25
    invoke-virtual {v7}, Lcom/shabakaty/downloader/n31;->e()V

    .line 26
    iget-object v13, v7, Lcom/shabakaty/downloader/n31;->h:Lcom/shabakaty/downloader/bj4;

    .line 27
    iget v13, v13, Lcom/shabakaty/downloader/bj4;->b:I

    const/16 v14, 0xfe

    if-ge v6, v13, :cond_8

    if-eqz v0, :cond_8

    if-eq v0, v12, :cond_8

    if-eq v0, v9, :cond_8

    .line 28
    iget-object v0, v7, Lcom/shabakaty/downloader/n31;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    :cond_8
    iget-object v0, v7, Lcom/shabakaty/downloader/n31;->e:Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const/16 v12, 0x81

    if-ge v6, v13, :cond_9

    .line 31
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    :cond_9
    :goto_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-ge v6, v13, :cond_b

    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/2addr v6, v10

    mul-int/lit16 v6, v6, 0x95

    .line 34
    rem-int/lit16 v6, v6, 0xfd

    add-int/2addr v6, v10

    add-int/2addr v6, v12

    if-gt v6, v14, :cond_a

    goto :goto_6

    :cond_a
    add-int/lit16 v6, v6, -0xfe

    :goto_6
    int-to-char v6, v6

    .line 35
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 36
    :cond_b
    iget-object v0, v7, Lcom/shabakaty/downloader/n31;->e:Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6, v4, v5, v3, v10}, Lcom/shabakaty/downloader/bj4;->i(ILcom/shabakaty/downloader/cj4;Lcom/shabakaty/downloader/ft0;Lcom/shabakaty/downloader/ft0;Z)Lcom/shabakaty/downloader/bj4;

    move-result-object v3

    .line 39
    sget-object v4, Lcom/shabakaty/downloader/t41;->a:[I

    .line 40
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    .line 41
    iget v5, v3, Lcom/shabakaty/downloader/bj4;->b:I

    if-ne v4, v5, :cond_2e

    .line 42
    new-instance v4, Ljava/lang/StringBuilder;

    .line 43
    iget v6, v3, Lcom/shabakaty/downloader/bj4;->c:I

    add-int/2addr v5, v6

    .line 44
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 45
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v3}, Lcom/shabakaty/downloader/bj4;->c()I

    move-result v5

    if-ne v5, v10, :cond_c

    .line 47
    iget v5, v3, Lcom/shabakaty/downloader/bj4;->c:I

    .line 48
    invoke-static {v0, v5}, Lcom/shabakaty/downloader/t41;->a(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 50
    :cond_c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->capacity()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 51
    new-array v6, v5, [I

    .line 52
    new-array v7, v5, [I

    .line 53
    new-array v12, v5, [I

    const/4 v13, 0x0

    :goto_7
    if-ge v13, v5, :cond_e

    add-int/lit8 v14, v13, 0x1

    .line 54
    invoke-virtual {v3, v14}, Lcom/shabakaty/downloader/bj4;->a(I)I

    move-result v15

    aput v15, v6, v13

    .line 55
    iget v15, v3, Lcom/shabakaty/downloader/bj4;->h:I

    .line 56
    aput v15, v7, v13

    .line 57
    aput v8, v12, v13

    if-lez v13, :cond_d

    add-int/lit8 v15, v13, -0x1

    .line 58
    aget v15, v12, v15

    aget v16, v6, v13

    add-int v15, v15, v16

    aput v15, v12, v13

    :cond_d
    move v13, v14

    goto :goto_7

    :cond_e
    const/4 v12, 0x0

    :goto_8
    if-ge v12, v5, :cond_11

    .line 59
    new-instance v13, Ljava/lang/StringBuilder;

    aget v14, v6, v12

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    move v14, v12

    .line 60
    :goto_9
    iget v15, v3, Lcom/shabakaty/downloader/bj4;->b:I

    if-ge v14, v15, :cond_f

    .line 61
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/2addr v14, v5

    goto :goto_9

    .line 62
    :cond_f
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aget v14, v7, v12

    invoke-static {v13, v14}, Lcom/shabakaty/downloader/t41;->a(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v13

    move v14, v12

    const/4 v15, 0x0

    .line 63
    :goto_a
    aget v16, v7, v12

    mul-int v8, v16, v5

    if-ge v14, v8, :cond_10

    .line 64
    iget v8, v3, Lcom/shabakaty/downloader/bj4;->b:I

    add-int/2addr v8, v14

    add-int/lit8 v16, v15, 0x1

    .line 65
    invoke-virtual {v13, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-virtual {v4, v8, v15}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/2addr v14, v5

    move/from16 v15, v16

    const/4 v8, 0x0

    goto :goto_a

    :cond_10
    add-int/lit8 v12, v12, 0x1

    const/4 v8, 0x0

    goto :goto_8

    .line 66
    :cond_11
    :goto_b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    new-instance v4, Lcom/shabakaty/downloader/mn4;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/bj4;->e()I

    move-result v5

    invoke-virtual {v3}, Lcom/shabakaty/downloader/bj4;->d()I

    move-result v6

    invoke-direct {v4, v0, v5, v6}, Lcom/shabakaty/downloader/mn4;-><init>(Ljava/lang/CharSequence;II)V

    const/4 v0, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 68
    :goto_c
    iget v7, v4, Lcom/shabakaty/downloader/mn4;->c:I

    if-ne v0, v7, :cond_12

    if-nez v5, :cond_12

    add-int/lit8 v7, v6, 0x1

    .line 69
    invoke-virtual {v4, v6}, Lcom/shabakaty/downloader/mn4;->c(I)V

    move v6, v7

    .line 70
    :cond_12
    iget v7, v4, Lcom/shabakaty/downloader/mn4;->c:I

    sub-int/2addr v7, v11

    if-ne v0, v7, :cond_13

    if-nez v5, :cond_13

    iget v7, v4, Lcom/shabakaty/downloader/mn4;->d:I

    rem-int/2addr v7, v9

    if-eqz v7, :cond_13

    add-int/lit8 v7, v6, 0x1

    .line 71
    invoke-virtual {v4, v6}, Lcom/shabakaty/downloader/mn4;->d(I)V

    move v6, v7

    .line 72
    :cond_13
    iget v7, v4, Lcom/shabakaty/downloader/mn4;->c:I

    sub-int/2addr v7, v11

    if-ne v0, v7, :cond_14

    if-nez v5, :cond_14

    iget v7, v4, Lcom/shabakaty/downloader/mn4;->d:I

    rem-int/lit8 v7, v7, 0x8

    if-ne v7, v9, :cond_14

    add-int/lit8 v7, v6, 0x1

    .line 73
    invoke-virtual {v4, v6}, Lcom/shabakaty/downloader/mn4;->e(I)V

    move v6, v7

    .line 74
    :cond_14
    iget v7, v4, Lcom/shabakaty/downloader/mn4;->c:I

    add-int/2addr v7, v9

    if-ne v0, v7, :cond_15

    if-ne v5, v11, :cond_15

    iget v7, v4, Lcom/shabakaty/downloader/mn4;->d:I

    rem-int/lit8 v7, v7, 0x8

    if-nez v7, :cond_15

    add-int/lit8 v7, v6, 0x1

    .line 75
    invoke-virtual {v4, v6}, Lcom/shabakaty/downloader/mn4;->f(I)V

    move v6, v7

    .line 76
    :cond_15
    iget v7, v4, Lcom/shabakaty/downloader/mn4;->c:I

    if-ge v0, v7, :cond_16

    if-ltz v5, :cond_16

    invoke-virtual {v4, v5, v0}, Lcom/shabakaty/downloader/mn4;->h(II)Z

    move-result v7

    if-nez v7, :cond_16

    add-int/lit8 v7, v6, 0x1

    .line 77
    invoke-virtual {v4, v0, v5, v6}, Lcom/shabakaty/downloader/mn4;->n(III)V

    move v6, v7

    :cond_16
    add-int/lit8 v0, v0, -0x2

    add-int/lit8 v5, v5, 0x2

    if-ltz v0, :cond_17

    .line 78
    iget v7, v4, Lcom/shabakaty/downloader/mn4;->d:I

    if-lt v5, v7, :cond_15

    :cond_17
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v5, v5, 0x3

    :cond_18
    if-ltz v0, :cond_19

    .line 79
    iget v7, v4, Lcom/shabakaty/downloader/mn4;->d:I

    if-ge v5, v7, :cond_19

    invoke-virtual {v4, v5, v0}, Lcom/shabakaty/downloader/mn4;->h(II)Z

    move-result v7

    if-nez v7, :cond_19

    add-int/lit8 v7, v6, 0x1

    .line 80
    invoke-virtual {v4, v0, v5, v6}, Lcom/shabakaty/downloader/mn4;->n(III)V

    move v6, v7

    :cond_19
    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v5, v5, -0x2

    .line 81
    iget v7, v4, Lcom/shabakaty/downloader/mn4;->c:I

    if-ge v0, v7, :cond_1a

    if-gez v5, :cond_18

    :cond_1a
    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v5, v5, 0x1

    if-lt v0, v7, :cond_2d

    .line 82
    iget v8, v4, Lcom/shabakaty/downloader/mn4;->d:I

    if-lt v5, v8, :cond_2d

    sub-int/2addr v8, v10

    sub-int/2addr v7, v10

    .line 83
    invoke-virtual {v4, v8, v7}, Lcom/shabakaty/downloader/mn4;->h(II)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 84
    iget v0, v4, Lcom/shabakaty/downloader/mn4;->d:I

    sub-int/2addr v0, v10

    iget v5, v4, Lcom/shabakaty/downloader/mn4;->c:I

    sub-int/2addr v5, v10

    invoke-virtual {v4, v0, v5, v10}, Lcom/shabakaty/downloader/mn4;->m(IIZ)V

    .line 85
    iget v0, v4, Lcom/shabakaty/downloader/mn4;->d:I

    sub-int/2addr v0, v11

    iget v5, v4, Lcom/shabakaty/downloader/mn4;->c:I

    sub-int/2addr v5, v11

    invoke-virtual {v4, v0, v5, v10}, Lcom/shabakaty/downloader/mn4;->m(IIZ)V

    .line 86
    :cond_1b
    invoke-virtual {v3}, Lcom/shabakaty/downloader/bj4;->e()I

    move-result v0

    .line 87
    invoke-virtual {v3}, Lcom/shabakaty/downloader/bj4;->d()I

    move-result v5

    .line 88
    new-instance v6, Lcom/shabakaty/downloader/yu0;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/bj4;->g()I

    move-result v7

    invoke-virtual {v3}, Lcom/shabakaty/downloader/bj4;->f()I

    move-result v8

    invoke-direct {v6, v7, v8}, Lcom/shabakaty/downloader/yu0;-><init>(II)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_d
    if-ge v7, v5, :cond_26

    .line 89
    iget v9, v3, Lcom/shabakaty/downloader/bj4;->e:I

    rem-int v9, v7, v9

    if-nez v9, :cond_1e

    const/4 v9, 0x0

    const/4 v12, 0x0

    .line 90
    :goto_e
    invoke-virtual {v3}, Lcom/shabakaty/downloader/bj4;->g()I

    move-result v13

    if-ge v9, v13, :cond_1d

    .line 91
    rem-int/lit8 v13, v9, 0x2

    if-nez v13, :cond_1c

    const/4 v13, 0x1

    goto :goto_f

    :cond_1c
    const/4 v13, 0x0

    :goto_f
    invoke-virtual {v6, v12, v8, v13}, Lcom/shabakaty/downloader/yu0;->e(IIZ)V

    add-int/2addr v12, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_e

    :cond_1d
    add-int/lit8 v8, v8, 0x1

    :cond_1e
    const/4 v9, 0x0

    const/4 v12, 0x0

    :goto_10
    if-ge v9, v0, :cond_23

    .line 92
    iget v13, v3, Lcom/shabakaty/downloader/bj4;->d:I

    rem-int v13, v9, v13

    if-nez v13, :cond_1f

    .line 93
    invoke-virtual {v6, v12, v8, v10}, Lcom/shabakaty/downloader/yu0;->e(IIZ)V

    add-int/lit8 v12, v12, 0x1

    .line 94
    :cond_1f
    iget-object v13, v4, Lcom/shabakaty/downloader/mn4;->b:Ljava/lang/Object;

    check-cast v13, [B

    iget v14, v4, Lcom/shabakaty/downloader/mn4;->d:I

    mul-int v14, v14, v7

    add-int/2addr v14, v9

    aget-byte v13, v13, v14

    if-ne v13, v10, :cond_20

    const/4 v13, 0x1

    goto :goto_11

    :cond_20
    const/4 v13, 0x0

    .line 95
    :goto_11
    invoke-virtual {v6, v12, v8, v13}, Lcom/shabakaty/downloader/yu0;->e(IIZ)V

    add-int/2addr v12, v10

    .line 96
    iget v13, v3, Lcom/shabakaty/downloader/bj4;->d:I

    rem-int v14, v9, v13

    sub-int/2addr v13, v10

    if-ne v14, v13, :cond_22

    .line 97
    rem-int/lit8 v13, v7, 0x2

    if-nez v13, :cond_21

    const/4 v13, 0x1

    goto :goto_12

    :cond_21
    const/4 v13, 0x0

    :goto_12
    invoke-virtual {v6, v12, v8, v13}, Lcom/shabakaty/downloader/yu0;->e(IIZ)V

    add-int/lit8 v12, v12, 0x1

    :cond_22
    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    :cond_23
    add-int/lit8 v8, v8, 0x1

    .line 98
    iget v9, v3, Lcom/shabakaty/downloader/bj4;->e:I

    rem-int v12, v7, v9

    sub-int/2addr v9, v10

    if-ne v12, v9, :cond_25

    const/4 v9, 0x0

    const/4 v12, 0x0

    .line 99
    :goto_13
    invoke-virtual {v3}, Lcom/shabakaty/downloader/bj4;->g()I

    move-result v13

    if-ge v9, v13, :cond_24

    .line 100
    invoke-virtual {v6, v12, v8, v10}, Lcom/shabakaty/downloader/yu0;->e(IIZ)V

    add-int/2addr v12, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_13

    :cond_24
    add-int/lit8 v8, v8, 0x1

    :cond_25
    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    .line 101
    :cond_26
    iget v0, v6, Lcom/shabakaty/downloader/yu0;->b:I

    .line 102
    iget v3, v6, Lcom/shabakaty/downloader/yu0;->c:I

    .line 103
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 104
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 105
    div-int v7, v4, v0

    div-int v8, v5, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    mul-int v8, v0, v7

    sub-int/2addr v4, v8

    .line 106
    div-int/2addr v4, v11

    mul-int v8, v3, v7

    sub-int/2addr v5, v8

    .line 107
    div-int/2addr v5, v11

    if-lt v2, v3, :cond_28

    if-ge v1, v0, :cond_27

    goto :goto_14

    .line 108
    :cond_27
    new-instance v8, Lcom/shabakaty/downloader/jm;

    invoke-direct {v8, v1, v2}, Lcom/shabakaty/downloader/jm;-><init>(II)V

    goto :goto_15

    .line 109
    :cond_28
    :goto_14
    new-instance v8, Lcom/shabakaty/downloader/jm;

    invoke-direct {v8, v0, v3}, Lcom/shabakaty/downloader/jm;-><init>(II)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 110
    :goto_15
    iget-object v1, v8, Lcom/shabakaty/downloader/jm;->u:[I

    array-length v1, v1

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v1, :cond_29

    .line 111
    iget-object v9, v8, Lcom/shabakaty/downloader/jm;->u:[I

    const/4 v12, 0x0

    aput v12, v9, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_29
    const/4 v12, 0x0

    const/4 v1, 0x0

    :goto_17
    if-ge v1, v3, :cond_2c

    move v9, v4

    const/4 v2, 0x0

    :goto_18
    if-ge v2, v0, :cond_2b

    .line 112
    invoke-virtual {v6, v2, v1}, Lcom/shabakaty/downloader/yu0;->b(II)B

    move-result v11

    if-ne v11, v10, :cond_2a

    .line 113
    invoke-virtual {v8, v9, v5, v7, v7}, Lcom/shabakaty/downloader/jm;->c(IIII)V

    :cond_2a
    add-int/lit8 v2, v2, 0x1

    add-int/2addr v9, v7

    goto :goto_18

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    add-int/2addr v5, v7

    goto :goto_17

    :cond_2c
    return-object v8

    :cond_2d
    const/4 v12, 0x0

    goto/16 :goto_c

    .line 114
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The number of codewords does not match the selected symbol"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Requested dimensions can\'t be negative: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x78

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Can only encode DATA_MATRIX, but got "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Found empty contents"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Lcom/shabakaty/downloader/ts4;Lcom/shabakaty/downloader/ts4;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x4

    .line 2
    invoke-static {p1}, Lcom/shabakaty/downloader/c21;->a(I)V

    throw v0

    :cond_1
    const/4 p1, 0x3

    invoke-static {p1}, Lcom/shabakaty/downloader/c21;->a(I)V

    throw v0
.end method

.method public c()Z
    .locals 0

    instance-of p0, p0, Lcom/shabakaty/downloader/xm2;

    return p0
.end method

.method public e(Landroidx/navigation/NavController;)Landroid/os/Bundle;
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/navigation/NavController;->d()Lcom/shabakaty/downloader/vw2;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p1, Lcom/shabakaty/downloader/vw2;->t:Landroid/os/Bundle;

    :goto_0
    if-nez p1, :cond_1

    .line 3
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_1
    return-object p1
.end method

.method public f(Landroidx/navigation/NavController;)Lcom/shabakaty/downloader/sy3;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/navigation/NavController;->e()Landroidx/navigation/c;

    move-result-object v0

    .line 2
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/c21;->e(Landroidx/navigation/NavController;)Landroid/os/Bundle;

    move-result-object p1

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/sy3;

    .line 4
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/c21;->k(Landroidx/navigation/c;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/c21;->g(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-direct {v1, v0, p1}, Lcom/shabakaty/downloader/sy3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public g(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    const-string v0, "debugLabel"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Debug label not set"

    :cond_0
    return-object p1
.end method

.method public h(FFFLcom/shabakaty/downloader/w44;)V
    .locals 0

    const/4 p2, 0x0

    .line 1
    invoke-virtual {p4, p1, p2}, Lcom/shabakaty/downloader/w44;->d(FF)V

    return-void
.end method

.method public i(Landroidx/navigation/fragment/a$a;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object p1, p1, Landroidx/navigation/fragment/a$a;->z:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/16 v0, 0x2e

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 2
    invoke-static {p1, v0, v1, v2}, Lcom/shabakaty/downloader/re4;->j0(Ljava/lang/String;CLjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Fragment class was not set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j(Landroidx/navigation/NavController;)Lcom/shabakaty/downloader/sy3;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/navigation/NavController;->h()Lcom/shabakaty/downloader/vw2;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/shabakaty/downloader/vw2;->s:Landroidx/navigation/c;

    .line 3
    :goto_0
    invoke-virtual {p1}, Landroidx/navigation/NavController;->h()Lcom/shabakaty/downloader/vw2;

    move-result-object p1

    if-nez p1, :cond_1

    move-object p1, v1

    goto :goto_1

    .line 4
    :cond_1
    iget-object p1, p1, Lcom/shabakaty/downloader/vw2;->t:Landroid/os/Bundle;

    :goto_1
    if-nez p1, :cond_2

    .line 5
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_2
    if-nez v0, :cond_3

    goto :goto_2

    .line 6
    :cond_3
    new-instance v1, Lcom/shabakaty/downloader/sy3;

    .line 7
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/c21;->k(Landroidx/navigation/c;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/c21;->g(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-direct {v1, v0, p1}, Lcom/shabakaty/downloader/sy3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-object v1
.end method

.method public k(Landroidx/navigation/c;)Ljava/lang/String;
    .locals 1

    .line 1
    instance-of v0, p1, Landroidx/navigation/fragment/a$a;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/navigation/fragment/a$a;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/c21;->i(Landroidx/navigation/fragment/a$a;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p1}, Landroidx/navigation/c;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, ""

    :goto_1
    return-object p1
.end method
