.class public final Lcom/shabakaty/downloader/dc3;
.super Lcom/shabakaty/downloader/z64;
.source "PgsDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/dc3$a;
    }
.end annotation


# instance fields
.field public final n:Lcom/shabakaty/downloader/ka3;

.field public final o:Lcom/shabakaty/downloader/ka3;

.field public final p:Lcom/shabakaty/downloader/dc3$a;

.field public q:Ljava/util/zip/Inflater;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "PgsDecoder"

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/z64;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/ka3;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ka3;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/dc3;->n:Lcom/shabakaty/downloader/ka3;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/ka3;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ka3;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/dc3;->o:Lcom/shabakaty/downloader/ka3;

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/dc3$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/dc3$a;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/dc3;->p:Lcom/shabakaty/downloader/dc3$a;

    return-void
.end method


# virtual methods
.method public k([BIZ)Lcom/shabakaty/downloader/bg4;
    .locals 37

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/shabakaty/downloader/dc3;->n:Lcom/shabakaty/downloader/ka3;

    move-object/from16 v2, p1

    .line 2
    iput-object v2, v1, Lcom/shabakaty/downloader/ka3;->a:[B

    move/from16 v2, p2

    .line 3
    iput v2, v1, Lcom/shabakaty/downloader/ka3;->c:I

    const/4 v2, 0x0

    .line 4
    iput v2, v1, Lcom/shabakaty/downloader/ka3;->b:I

    .line 5
    invoke-virtual {v1}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v1}, Lcom/shabakaty/downloader/ka3;->c()I

    move-result v3

    const/16 v4, 0x78

    if-ne v3, v4, :cond_1

    .line 6
    iget-object v3, v0, Lcom/shabakaty/downloader/dc3;->q:Ljava/util/zip/Inflater;

    if-nez v3, :cond_0

    .line 7
    new-instance v3, Ljava/util/zip/Inflater;

    invoke-direct {v3}, Ljava/util/zip/Inflater;-><init>()V

    iput-object v3, v0, Lcom/shabakaty/downloader/dc3;->q:Ljava/util/zip/Inflater;

    .line 8
    :cond_0
    iget-object v3, v0, Lcom/shabakaty/downloader/dc3;->o:Lcom/shabakaty/downloader/ka3;

    iget-object v4, v0, Lcom/shabakaty/downloader/dc3;->q:Ljava/util/zip/Inflater;

    invoke-static {v1, v3, v4}, Lcom/shabakaty/downloader/sy4;->D(Lcom/shabakaty/downloader/ka3;Lcom/shabakaty/downloader/ka3;Ljava/util/zip/Inflater;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9
    iget-object v3, v0, Lcom/shabakaty/downloader/dc3;->o:Lcom/shabakaty/downloader/ka3;

    .line 10
    iget-object v4, v3, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 11
    iget v3, v3, Lcom/shabakaty/downloader/ka3;->c:I

    .line 12
    invoke-virtual {v1, v4, v3}, Lcom/shabakaty/downloader/ka3;->C([BI)V

    .line 13
    :cond_1
    iget-object v1, v0, Lcom/shabakaty/downloader/dc3;->p:Lcom/shabakaty/downloader/dc3$a;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/dc3$a;->a()V

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    :goto_0
    iget-object v3, v0, Lcom/shabakaty/downloader/dc3;->n:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-lt v3, v5, :cond_15

    .line 16
    iget-object v3, v0, Lcom/shabakaty/downloader/dc3;->n:Lcom/shabakaty/downloader/ka3;

    iget-object v6, v0, Lcom/shabakaty/downloader/dc3;->p:Lcom/shabakaty/downloader/dc3$a;

    .line 17
    iget v7, v3, Lcom/shabakaty/downloader/ka3;->c:I

    .line 18
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v8

    .line 19
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->y()I

    move-result v9

    .line 20
    iget v10, v3, Lcom/shabakaty/downloader/ka3;->b:I

    add-int/2addr v10, v9

    if-le v10, v7, :cond_2

    .line 21
    invoke-virtual {v3, v7}, Lcom/shabakaty/downloader/ka3;->E(I)V

    move-object v3, v1

    const/4 v11, 0x0

    const/4 v12, 0x0

    goto/16 :goto_c

    :cond_2
    const/16 v7, 0x80

    if-eq v8, v7, :cond_c

    packed-switch v8, :pswitch_data_0

    :cond_3
    :goto_1
    move-object/from16 v17, v3

    move-object v3, v1

    goto/16 :goto_4

    .line 22
    :pswitch_0
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0x13

    if-ge v9, v4, :cond_4

    goto :goto_1

    .line 23
    :cond_4
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->y()I

    move-result v4

    iput v4, v6, Lcom/shabakaty/downloader/dc3$a;->d:I

    .line 24
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->y()I

    move-result v4

    iput v4, v6, Lcom/shabakaty/downloader/dc3$a;->e:I

    const/16 v4, 0xb

    .line 25
    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/ka3;->F(I)V

    .line 26
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->y()I

    move-result v4

    iput v4, v6, Lcom/shabakaty/downloader/dc3$a;->f:I

    .line 27
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->y()I

    move-result v4

    iput v4, v6, Lcom/shabakaty/downloader/dc3$a;->g:I

    goto :goto_1

    .line 28
    :pswitch_1
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x4

    if-ge v9, v4, :cond_5

    goto :goto_1

    .line 29
    :cond_5
    invoke-virtual {v3, v5}, Lcom/shabakaty/downloader/ka3;->F(I)V

    .line 30
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v5

    and-int/2addr v5, v7

    if-eqz v5, :cond_6

    const/4 v12, 0x1

    goto :goto_2

    :cond_6
    const/4 v12, 0x0

    :goto_2
    add-int/lit8 v9, v9, -0x4

    if-eqz v12, :cond_9

    const/4 v5, 0x7

    if-ge v9, v5, :cond_7

    goto :goto_1

    .line 31
    :cond_7
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->v()I

    move-result v5

    if-ge v5, v4, :cond_8

    goto :goto_1

    .line 32
    :cond_8
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->y()I

    move-result v4

    iput v4, v6, Lcom/shabakaty/downloader/dc3$a;->h:I

    .line 33
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->y()I

    move-result v4

    iput v4, v6, Lcom/shabakaty/downloader/dc3$a;->i:I

    .line 34
    iget-object v4, v6, Lcom/shabakaty/downloader/dc3$a;->a:Lcom/shabakaty/downloader/ka3;

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/ka3;->A(I)V

    add-int/lit8 v9, v9, -0x7

    .line 35
    :cond_9
    iget-object v4, v6, Lcom/shabakaty/downloader/dc3$a;->a:Lcom/shabakaty/downloader/ka3;

    .line 36
    iget v5, v4, Lcom/shabakaty/downloader/ka3;->b:I

    .line 37
    iget v4, v4, Lcom/shabakaty/downloader/ka3;->c:I

    if-ge v5, v4, :cond_3

    if-lez v9, :cond_3

    sub-int/2addr v4, v5

    .line 38
    invoke-static {v9, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 39
    iget-object v7, v6, Lcom/shabakaty/downloader/dc3$a;->a:Lcom/shabakaty/downloader/ka3;

    .line 40
    iget-object v7, v7, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 41
    invoke-virtual {v3, v7, v5, v4}, Lcom/shabakaty/downloader/ka3;->e([BII)V

    .line 42
    iget-object v6, v6, Lcom/shabakaty/downloader/dc3$a;->a:Lcom/shabakaty/downloader/ka3;

    add-int/2addr v5, v4

    invoke-virtual {v6, v5}, Lcom/shabakaty/downloader/ka3;->E(I)V

    goto :goto_1

    .line 43
    :pswitch_2
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    rem-int/lit8 v5, v9, 0x5

    if-eq v5, v4, :cond_a

    goto/16 :goto_1

    .line 45
    :cond_a
    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/ka3;->F(I)V

    .line 46
    iget-object v4, v6, Lcom/shabakaty/downloader/dc3$a;->b:[I

    invoke-static {v4, v2}, Ljava/util/Arrays;->fill([II)V

    .line 47
    div-int/lit8 v9, v9, 0x5

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v9, :cond_b

    .line 48
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v5

    .line 49
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v7

    .line 50
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v8

    .line 51
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v13

    .line 52
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v14

    int-to-double v11, v7

    const-wide v15, 0x3ff66e978d4fdf3bL    # 1.402

    add-int/lit8 v8, v8, -0x80

    int-to-double v7, v8

    mul-double v15, v15, v7

    move-object/from16 v17, v3

    add-double v2, v15, v11

    double-to-int v2, v2

    const-wide v15, 0x3fd60663c74fb54aL    # 0.34414

    add-int/lit8 v13, v13, -0x80

    move-object v3, v1

    int-to-double v0, v13

    mul-double v15, v15, v0

    sub-double v15, v11, v15

    const-wide v18, 0x3fe6da3c21187e7cL    # 0.71414

    mul-double v7, v7, v18

    sub-double v7, v15, v7

    double-to-int v7, v7

    const-wide v15, 0x3ffc5a1cac083127L    # 1.772

    mul-double v0, v0, v15

    add-double/2addr v0, v11

    double-to-int v0, v0

    .line 53
    iget-object v1, v6, Lcom/shabakaty/downloader/dc3$a;->b:[I

    shl-int/lit8 v8, v14, 0x18

    const/16 v11, 0xff

    const/4 v12, 0x0

    .line 54
    invoke-static {v2, v12, v11}, Lcom/shabakaty/downloader/sy4;->i(III)I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v8

    .line 55
    invoke-static {v7, v12, v11}, Lcom/shabakaty/downloader/sy4;->i(III)I

    move-result v7

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v2, v7

    .line 56
    invoke-static {v0, v12, v11}, Lcom/shabakaty/downloader/sy4;->i(III)I

    move-result v0

    or-int/2addr v0, v2

    aput v0, v1, v5

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v3, v17

    const/4 v2, 0x0

    goto :goto_3

    :cond_b
    move-object/from16 v17, v3

    const/4 v0, 0x1

    move-object v3, v1

    .line 57
    iput-boolean v0, v6, Lcom/shabakaty/downloader/dc3$a;->c:Z

    :goto_4
    move-object/from16 v0, v17

    const/4 v11, 0x0

    const/4 v12, 0x0

    goto/16 :goto_b

    :cond_c
    move-object/from16 v17, v3

    move-object v3, v1

    .line 58
    iget v0, v6, Lcom/shabakaty/downloader/dc3$a;->d:I

    if-eqz v0, :cond_13

    iget v0, v6, Lcom/shabakaty/downloader/dc3$a;->e:I

    if-eqz v0, :cond_13

    iget v0, v6, Lcom/shabakaty/downloader/dc3$a;->h:I

    if-eqz v0, :cond_13

    iget v0, v6, Lcom/shabakaty/downloader/dc3$a;->i:I

    if-eqz v0, :cond_13

    iget-object v0, v6, Lcom/shabakaty/downloader/dc3$a;->a:Lcom/shabakaty/downloader/ka3;

    .line 59
    iget v1, v0, Lcom/shabakaty/downloader/ka3;->c:I

    if-eqz v1, :cond_13

    .line 60
    iget v2, v0, Lcom/shabakaty/downloader/ka3;->b:I

    if-ne v2, v1, :cond_13

    .line 61
    iget-boolean v1, v6, Lcom/shabakaty/downloader/dc3$a;->c:Z

    if-nez v1, :cond_d

    goto/16 :goto_9

    :cond_d
    const/4 v12, 0x0

    .line 62
    invoke-virtual {v0, v12}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 63
    iget v0, v6, Lcom/shabakaty/downloader/dc3$a;->h:I

    iget v1, v6, Lcom/shabakaty/downloader/dc3$a;->i:I

    mul-int v0, v0, v1

    new-array v1, v0, [I

    const/4 v2, 0x0

    :cond_e
    :goto_5
    if-ge v2, v0, :cond_12

    .line 64
    iget-object v4, v6, Lcom/shabakaty/downloader/dc3$a;->a:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v4}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v4

    if-eqz v4, :cond_f

    add-int/lit8 v5, v2, 0x1

    .line 65
    iget-object v7, v6, Lcom/shabakaty/downloader/dc3$a;->b:[I

    aget v4, v7, v4

    aput v4, v1, v2

    :goto_6
    move v2, v5

    goto :goto_5

    .line 66
    :cond_f
    iget-object v4, v6, Lcom/shabakaty/downloader/dc3$a;->a:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v4}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v4

    if-eqz v4, :cond_e

    and-int/lit8 v5, v4, 0x40

    if-nez v5, :cond_10

    and-int/lit8 v5, v4, 0x3f

    goto :goto_7

    :cond_10
    and-int/lit8 v5, v4, 0x3f

    shl-int/lit8 v5, v5, 0x8

    .line 67
    iget-object v7, v6, Lcom/shabakaty/downloader/dc3$a;->a:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v7}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v7

    or-int/2addr v5, v7

    :goto_7
    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_11

    const/4 v4, 0x0

    goto :goto_8

    .line 68
    :cond_11
    iget-object v4, v6, Lcom/shabakaty/downloader/dc3$a;->b:[I

    iget-object v7, v6, Lcom/shabakaty/downloader/dc3$a;->a:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v7}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v7

    aget v4, v4, v7

    :goto_8
    add-int/2addr v5, v2

    .line 69
    invoke-static {v1, v2, v5, v4}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_6

    .line 70
    :cond_12
    iget v0, v6, Lcom/shabakaty/downloader/dc3$a;->h:I

    iget v2, v6, Lcom/shabakaty/downloader/dc3$a;->i:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 71
    invoke-static {v1, v0, v2, v4}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v22

    const/16 v35, 0x0

    const/16 v20, 0x0

    move-object/from16 v19, v20

    move-object/from16 v21, v20

    const v29, -0x800001

    const/high16 v28, -0x80000000

    move/from16 v34, v28

    const/16 v32, 0x0

    const/high16 v33, -0x1000000

    .line 72
    iget v0, v6, Lcom/shabakaty/downloader/dc3$a;->f:I

    int-to-float v0, v0

    iget v1, v6, Lcom/shabakaty/downloader/dc3$a;->d:I

    int-to-float v1, v1

    div-float v26, v0, v1

    const/16 v27, 0x0

    .line 73
    iget v0, v6, Lcom/shabakaty/downloader/dc3$a;->g:I

    int-to-float v0, v0

    iget v2, v6, Lcom/shabakaty/downloader/dc3$a;->e:I

    int-to-float v2, v2

    div-float v23, v0, v2

    const/16 v24, 0x0

    const/16 v25, 0x0

    .line 74
    iget v0, v6, Lcom/shabakaty/downloader/dc3$a;->h:I

    int-to-float v0, v0

    div-float v30, v0, v1

    .line 75
    iget v0, v6, Lcom/shabakaty/downloader/dc3$a;->i:I

    int-to-float v0, v0

    div-float v31, v0, v2

    .line 76
    new-instance v11, Lcom/shabakaty/downloader/vg0;

    move-object/from16 v18, v11

    const/16 v36, 0x0

    invoke-direct/range {v18 .. v36}, Lcom/shabakaty/downloader/vg0;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIFLcom/shabakaty/downloader/vg0$a;)V

    goto :goto_a

    :cond_13
    :goto_9
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 77
    :goto_a
    invoke-virtual {v6}, Lcom/shabakaty/downloader/dc3$a;->a()V

    move-object/from16 v0, v17

    .line 78
    :goto_b
    invoke-virtual {v0, v10}, Lcom/shabakaty/downloader/ka3;->E(I)V

    :goto_c
    if-eqz v11, :cond_14

    .line 79
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    move-object/from16 v0, p0

    move-object v1, v3

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_15
    move-object v3, v1

    .line 80
    new-instance v0, Lcom/shabakaty/downloader/by;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lcom/shabakaty/downloader/by;-><init>(Ljava/util/List;I)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
