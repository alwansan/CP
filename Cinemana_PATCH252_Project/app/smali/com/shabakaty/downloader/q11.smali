.class public final Lcom/shabakaty/downloader/q11;
.super Lcom/shabakaty/downloader/z64;
.source "DvbDecoder.java"


# instance fields
.field public final n:Lcom/shabakaty/downloader/r11;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    const-string v0, "DvbDecoder"

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/z64;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    .line 3
    array-length v1, p1

    const/4 v1, 0x0

    add-int/lit8 v1, v1, 0x1

    .line 4
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    add-int/lit8 v1, v2, 0x1

    .line 5
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v2

    .line 6
    new-instance v1, Lcom/shabakaty/downloader/r11;

    invoke-direct {v1, v0, p1}, Lcom/shabakaty/downloader/r11;-><init>(II)V

    iput-object v1, p0, Lcom/shabakaty/downloader/q11;->n:Lcom/shabakaty/downloader/r11;

    return-void
.end method


# virtual methods
.method public k([BIZ)Lcom/shabakaty/downloader/bg4;
    .locals 47

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 1
    iget-object v2, v0, Lcom/shabakaty/downloader/q11;->n:Lcom/shabakaty/downloader/r11;

    .line 2
    iget-object v2, v2, Lcom/shabakaty/downloader/r11;->f:Lcom/shabakaty/downloader/r11$h;

    .line 3
    iget-object v3, v2, Lcom/shabakaty/downloader/r11$h;->c:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 4
    iget-object v3, v2, Lcom/shabakaty/downloader/r11$h;->d:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 5
    iget-object v3, v2, Lcom/shabakaty/downloader/r11$h;->e:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 6
    iget-object v3, v2, Lcom/shabakaty/downloader/r11$h;->f:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 7
    iget-object v3, v2, Lcom/shabakaty/downloader/r11$h;->g:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 8
    iput-object v1, v2, Lcom/shabakaty/downloader/r11$h;->h:Lcom/shabakaty/downloader/r11$b;

    .line 9
    iput-object v1, v2, Lcom/shabakaty/downloader/r11$h;->i:Lcom/shabakaty/downloader/r11$d;

    .line 10
    :cond_0
    new-instance v2, Lcom/shabakaty/downloader/by;

    iget-object v3, v0, Lcom/shabakaty/downloader/q11;->n:Lcom/shabakaty/downloader/r11;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v4, Lcom/shabakaty/downloader/a55;

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-direct {v4, v5, v6}, Lcom/shabakaty/downloader/a55;-><init>([BI)V

    .line 12
    :goto_0
    invoke-virtual {v4}, Lcom/shabakaty/downloader/a55;->b()I

    move-result v5

    const/16 v6, 0x30

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-lt v5, v6, :cond_c

    const/16 v5, 0x8

    .line 13
    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v6

    const/16 v11, 0xf

    if-ne v6, v11, :cond_c

    .line 14
    iget-object v6, v3, Lcom/shabakaty/downloader/r11;->f:Lcom/shabakaty/downloader/r11$h;

    .line 15
    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v11

    const/16 v12, 0x10

    .line 16
    invoke-virtual {v4, v12}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v13

    .line 17
    invoke-virtual {v4, v12}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v14

    .line 18
    invoke-virtual {v4}, Lcom/shabakaty/downloader/a55;->f()I

    move-result v15

    add-int/2addr v15, v14

    mul-int/lit8 v1, v14, 0x8

    .line 19
    invoke-virtual {v4}, Lcom/shabakaty/downloader/a55;->b()I

    move-result v10

    if-le v1, v10, :cond_1

    const-string v1, "DvbParser"

    const-string v5, "Data field length exceeds limit"

    .line 20
    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-virtual {v4}, Lcom/shabakaty/downloader/a55;->b()I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/shabakaty/downloader/a55;->v(I)V

    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    packed-switch v11, :pswitch_data_0

    goto/16 :goto_8

    .line 22
    :pswitch_0
    iget v5, v6, Lcom/shabakaty/downloader/r11$h;->a:I

    if-ne v13, v5, :cond_b

    .line 23
    invoke-virtual {v4, v1}, Lcom/shabakaty/downloader/a55;->v(I)V

    .line 24
    invoke-virtual {v4}, Lcom/shabakaty/downloader/a55;->j()Z

    move-result v1

    .line 25
    invoke-virtual {v4, v7}, Lcom/shabakaty/downloader/a55;->v(I)V

    .line 26
    invoke-virtual {v4, v12}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v17

    .line 27
    invoke-virtual {v4, v12}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v18

    if-eqz v1, :cond_2

    .line 28
    invoke-virtual {v4, v12}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v10

    .line 29
    invoke-virtual {v4, v12}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v1

    .line 30
    invoke-virtual {v4, v12}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v5

    .line 31
    invoke-virtual {v4, v12}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v7

    move/from16 v20, v1

    move/from16 v21, v5

    move/from16 v22, v7

    move/from16 v19, v10

    goto :goto_2

    :cond_2
    move/from16 v20, v17

    move/from16 v22, v18

    const/16 v19, 0x0

    const/16 v21, 0x0

    .line 32
    :goto_2
    new-instance v1, Lcom/shabakaty/downloader/r11$b;

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v22}, Lcom/shabakaty/downloader/r11$b;-><init>(IIIIII)V

    .line 33
    iput-object v1, v6, Lcom/shabakaty/downloader/r11$h;->h:Lcom/shabakaty/downloader/r11$b;

    goto/16 :goto_8

    .line 34
    :pswitch_1
    iget v1, v6, Lcom/shabakaty/downloader/r11$h;->a:I

    if-ne v13, v1, :cond_3

    .line 35
    invoke-static {v4}, Lcom/shabakaty/downloader/r11;->g(Lcom/shabakaty/downloader/a55;)Lcom/shabakaty/downloader/r11$c;

    move-result-object v1

    .line 36
    iget-object v5, v6, Lcom/shabakaty/downloader/r11$h;->e:Landroid/util/SparseArray;

    iget v6, v1, Lcom/shabakaty/downloader/r11$c;->a:I

    invoke-virtual {v5, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_8

    .line 37
    :cond_3
    iget v1, v6, Lcom/shabakaty/downloader/r11$h;->b:I

    if-ne v13, v1, :cond_b

    .line 38
    invoke-static {v4}, Lcom/shabakaty/downloader/r11;->g(Lcom/shabakaty/downloader/a55;)Lcom/shabakaty/downloader/r11$c;

    move-result-object v1

    .line 39
    iget-object v5, v6, Lcom/shabakaty/downloader/r11$h;->g:Landroid/util/SparseArray;

    iget v6, v1, Lcom/shabakaty/downloader/r11$c;->a:I

    invoke-virtual {v5, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_8

    .line 40
    :pswitch_2
    iget v1, v6, Lcom/shabakaty/downloader/r11$h;->a:I

    if-ne v13, v1, :cond_4

    .line 41
    invoke-static {v4, v14}, Lcom/shabakaty/downloader/r11;->f(Lcom/shabakaty/downloader/a55;I)Lcom/shabakaty/downloader/r11$a;

    move-result-object v1

    .line 42
    iget-object v5, v6, Lcom/shabakaty/downloader/r11$h;->d:Landroid/util/SparseArray;

    iget v6, v1, Lcom/shabakaty/downloader/r11$a;->a:I

    invoke-virtual {v5, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_8

    .line 43
    :cond_4
    iget v1, v6, Lcom/shabakaty/downloader/r11$h;->b:I

    if-ne v13, v1, :cond_b

    .line 44
    invoke-static {v4, v14}, Lcom/shabakaty/downloader/r11;->f(Lcom/shabakaty/downloader/a55;I)Lcom/shabakaty/downloader/r11$a;

    move-result-object v1

    .line 45
    iget-object v5, v6, Lcom/shabakaty/downloader/r11$h;->f:Landroid/util/SparseArray;

    iget v6, v1, Lcom/shabakaty/downloader/r11$a;->a:I

    invoke-virtual {v5, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_8

    .line 46
    :pswitch_3
    iget-object v10, v6, Lcom/shabakaty/downloader/r11$h;->i:Lcom/shabakaty/downloader/r11$d;

    .line 47
    iget v11, v6, Lcom/shabakaty/downloader/r11$h;->a:I

    if-ne v13, v11, :cond_b

    if-eqz v10, :cond_b

    .line 48
    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v11

    .line 49
    invoke-virtual {v4, v1}, Lcom/shabakaty/downloader/a55;->v(I)V

    .line 50
    invoke-virtual {v4}, Lcom/shabakaty/downloader/a55;->j()Z

    move-result v18

    .line 51
    invoke-virtual {v4, v7}, Lcom/shabakaty/downloader/a55;->v(I)V

    .line 52
    invoke-virtual {v4, v12}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v19

    .line 53
    invoke-virtual {v4, v12}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v20

    .line 54
    invoke-virtual {v4, v7}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v21

    .line 55
    invoke-virtual {v4, v7}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v22

    .line 56
    invoke-virtual {v4, v8}, Lcom/shabakaty/downloader/a55;->v(I)V

    .line 57
    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v23

    .line 58
    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v24

    .line 59
    invoke-virtual {v4, v1}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v25

    .line 60
    invoke-virtual {v4, v8}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v26

    .line 61
    invoke-virtual {v4, v8}, Lcom/shabakaty/downloader/a55;->v(I)V

    add-int/lit8 v14, v14, -0xa

    .line 62
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    :goto_3
    if-lez v14, :cond_7

    .line 63
    invoke-virtual {v4, v12}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v13

    .line 64
    invoke-virtual {v4, v8}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v12

    .line 65
    invoke-virtual {v4, v8}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v29

    const/16 v5, 0xc

    .line 66
    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v30

    .line 67
    invoke-virtual {v4, v1}, Lcom/shabakaty/downloader/a55;->v(I)V

    .line 68
    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v31

    add-int/lit8 v14, v14, -0x6

    if-eq v12, v9, :cond_6

    if-ne v12, v8, :cond_5

    goto :goto_4

    :cond_5
    const/16 v32, 0x0

    const/16 v33, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/16 v5, 0x8

    .line 69
    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v16

    .line 70
    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v17

    add-int/lit8 v14, v14, -0x2

    move/from16 v32, v16

    move/from16 v33, v17

    .line 71
    :goto_5
    new-instance v5, Lcom/shabakaty/downloader/r11$g;

    move-object/from16 v27, v5

    move/from16 v28, v12

    invoke-direct/range {v27 .. v33}, Lcom/shabakaty/downloader/r11$g;-><init>(IIIIII)V

    invoke-virtual {v7, v13, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0x8

    const/16 v12, 0x10

    goto :goto_3

    .line 72
    :cond_7
    new-instance v1, Lcom/shabakaty/downloader/r11$f;

    move-object/from16 v16, v1

    move/from16 v17, v11

    move-object/from16 v27, v7

    invoke-direct/range {v16 .. v27}, Lcom/shabakaty/downloader/r11$f;-><init>(IZIIIIIIIILandroid/util/SparseArray;)V

    .line 73
    iget v5, v10, Lcom/shabakaty/downloader/r11$d;->b:I

    if-nez v5, :cond_8

    .line 74
    iget-object v5, v6, Lcom/shabakaty/downloader/r11$h;->c:Landroid/util/SparseArray;

    invoke-virtual {v5, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/r11$f;

    if-eqz v5, :cond_8

    .line 75
    iget-object v5, v5, Lcom/shabakaty/downloader/r11$f;->j:Landroid/util/SparseArray;

    const/4 v10, 0x0

    .line 76
    :goto_6
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v10, v7, :cond_8

    .line 77
    iget-object v7, v1, Lcom/shabakaty/downloader/r11$f;->j:Landroid/util/SparseArray;

    invoke-virtual {v5, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v5, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/shabakaty/downloader/r11$g;

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 78
    :cond_8
    iget-object v5, v6, Lcom/shabakaty/downloader/r11$h;->c:Landroid/util/SparseArray;

    iget v6, v1, Lcom/shabakaty/downloader/r11$f;->a:I

    invoke-virtual {v5, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_8

    .line 79
    :pswitch_4
    iget v5, v6, Lcom/shabakaty/downloader/r11$h;->a:I

    if-ne v13, v5, :cond_b

    .line 80
    iget-object v5, v6, Lcom/shabakaty/downloader/r11$h;->i:Lcom/shabakaty/downloader/r11$d;

    const/16 v7, 0x8

    .line 81
    invoke-virtual {v4, v7}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v9

    .line 82
    invoke-virtual {v4, v1}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v1

    .line 83
    invoke-virtual {v4, v8}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v10

    .line 84
    invoke-virtual {v4, v8}, Lcom/shabakaty/downloader/a55;->v(I)V

    add-int/lit8 v14, v14, -0x2

    .line 85
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    :goto_7
    if-lez v14, :cond_9

    .line 86
    invoke-virtual {v4, v7}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v11

    .line 87
    invoke-virtual {v4, v7}, Lcom/shabakaty/downloader/a55;->v(I)V

    const/16 v12, 0x10

    .line 88
    invoke-virtual {v4, v12}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v13

    .line 89
    invoke-virtual {v4, v12}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v7

    add-int/lit8 v14, v14, -0x6

    .line 90
    new-instance v12, Lcom/shabakaty/downloader/r11$e;

    invoke-direct {v12, v13, v7}, Lcom/shabakaty/downloader/r11$e;-><init>(II)V

    invoke-virtual {v8, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v7, 0x8

    goto :goto_7

    .line 91
    :cond_9
    new-instance v7, Lcom/shabakaty/downloader/r11$d;

    invoke-direct {v7, v9, v1, v10, v8}, Lcom/shabakaty/downloader/r11$d;-><init>(IIILandroid/util/SparseArray;)V

    if-eqz v10, :cond_a

    .line 92
    iput-object v7, v6, Lcom/shabakaty/downloader/r11$h;->i:Lcom/shabakaty/downloader/r11$d;

    .line 93
    iget-object v1, v6, Lcom/shabakaty/downloader/r11$h;->c:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 94
    iget-object v1, v6, Lcom/shabakaty/downloader/r11$h;->d:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 95
    iget-object v1, v6, Lcom/shabakaty/downloader/r11$h;->e:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    goto :goto_8

    :cond_a
    if-eqz v5, :cond_b

    .line 96
    iget v5, v5, Lcom/shabakaty/downloader/r11$d;->a:I

    if-eq v5, v1, :cond_b

    .line 97
    iput-object v7, v6, Lcom/shabakaty/downloader/r11$h;->i:Lcom/shabakaty/downloader/r11$d;

    .line 98
    :cond_b
    :goto_8
    invoke-virtual {v4}, Lcom/shabakaty/downloader/a55;->f()I

    move-result v1

    sub-int/2addr v15, v1

    invoke-virtual {v4, v15}, Lcom/shabakaty/downloader/a55;->w(I)V

    goto/16 :goto_1

    .line 99
    :cond_c
    iget-object v1, v3, Lcom/shabakaty/downloader/r11;->f:Lcom/shabakaty/downloader/r11$h;

    iget-object v4, v1, Lcom/shabakaty/downloader/r11$h;->i:Lcom/shabakaty/downloader/r11$d;

    if-nez v4, :cond_d

    .line 100
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object/from16 v26, v2

    goto/16 :goto_11

    .line 101
    :cond_d
    iget-object v1, v1, Lcom/shabakaty/downloader/r11$h;->h:Lcom/shabakaty/downloader/r11$b;

    if-eqz v1, :cond_e

    goto :goto_9

    .line 102
    :cond_e
    iget-object v1, v3, Lcom/shabakaty/downloader/r11;->d:Lcom/shabakaty/downloader/r11$b;

    .line 103
    :goto_9
    iget-object v5, v3, Lcom/shabakaty/downloader/r11;->g:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_f

    iget v6, v1, Lcom/shabakaty/downloader/r11$b;->a:I

    add-int/2addr v6, v9

    .line 104
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ne v6, v5, :cond_f

    iget v5, v1, Lcom/shabakaty/downloader/r11$b;->b:I

    add-int/2addr v5, v9

    iget-object v6, v3, Lcom/shabakaty/downloader/r11;->g:Landroid/graphics/Bitmap;

    .line 105
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-eq v5, v6, :cond_10

    .line 106
    :cond_f
    iget v5, v1, Lcom/shabakaty/downloader/r11$b;->a:I

    add-int/2addr v5, v9

    iget v6, v1, Lcom/shabakaty/downloader/r11$b;->b:I

    add-int/2addr v6, v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 107
    invoke-static {v5, v6, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v3, Lcom/shabakaty/downloader/r11;->g:Landroid/graphics/Bitmap;

    .line 108
    iget-object v6, v3, Lcom/shabakaty/downloader/r11;->c:Landroid/graphics/Canvas;

    invoke-virtual {v6, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 109
    :cond_10
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 110
    iget-object v4, v4, Lcom/shabakaty/downloader/r11$d;->c:Landroid/util/SparseArray;

    const/4 v6, 0x0

    .line 111
    :goto_a
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-ge v6, v10, :cond_1b

    .line 112
    iget-object v10, v3, Lcom/shabakaty/downloader/r11;->c:Landroid/graphics/Canvas;

    invoke-virtual {v10}, Landroid/graphics/Canvas;->save()I

    .line 113
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/shabakaty/downloader/r11$e;

    .line 114
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    .line 115
    iget-object v12, v3, Lcom/shabakaty/downloader/r11;->f:Lcom/shabakaty/downloader/r11$h;

    iget-object v12, v12, Lcom/shabakaty/downloader/r11$h;->c:Landroid/util/SparseArray;

    invoke-virtual {v12, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shabakaty/downloader/r11$f;

    .line 116
    iget v12, v10, Lcom/shabakaty/downloader/r11$e;->a:I

    iget v13, v1, Lcom/shabakaty/downloader/r11$b;->c:I

    add-int/2addr v12, v13

    .line 117
    iget v10, v10, Lcom/shabakaty/downloader/r11$e;->b:I

    iget v13, v1, Lcom/shabakaty/downloader/r11$b;->e:I

    add-int/2addr v10, v13

    .line 118
    iget v13, v11, Lcom/shabakaty/downloader/r11$f;->c:I

    add-int/2addr v13, v12

    iget v14, v1, Lcom/shabakaty/downloader/r11$b;->d:I

    .line 119
    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 120
    iget v14, v11, Lcom/shabakaty/downloader/r11$f;->d:I

    add-int/2addr v14, v10

    iget v15, v1, Lcom/shabakaty/downloader/r11$b;->f:I

    .line 121
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 122
    iget-object v15, v3, Lcom/shabakaty/downloader/r11;->c:Landroid/graphics/Canvas;

    invoke-virtual {v15, v12, v10, v13, v14}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 123
    iget-object v13, v3, Lcom/shabakaty/downloader/r11;->f:Lcom/shabakaty/downloader/r11$h;

    iget-object v13, v13, Lcom/shabakaty/downloader/r11$h;->d:Landroid/util/SparseArray;

    iget v14, v11, Lcom/shabakaty/downloader/r11$f;->f:I

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/shabakaty/downloader/r11$a;

    if-nez v13, :cond_11

    .line 124
    iget-object v13, v3, Lcom/shabakaty/downloader/r11;->f:Lcom/shabakaty/downloader/r11$h;

    iget-object v13, v13, Lcom/shabakaty/downloader/r11$h;->f:Landroid/util/SparseArray;

    iget v14, v11, Lcom/shabakaty/downloader/r11$f;->f:I

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/shabakaty/downloader/r11$a;

    if-nez v13, :cond_11

    .line 125
    iget-object v13, v3, Lcom/shabakaty/downloader/r11;->e:Lcom/shabakaty/downloader/r11$a;

    .line 126
    :cond_11
    iget-object v14, v11, Lcom/shabakaty/downloader/r11$f;->j:Landroid/util/SparseArray;

    const/4 v15, 0x0

    .line 127
    :goto_b
    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v15, v9, :cond_17

    .line 128
    invoke-virtual {v14, v15}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 129
    invoke-virtual {v14, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Lcom/shabakaty/downloader/r11$g;

    .line 130
    iget-object v7, v3, Lcom/shabakaty/downloader/r11;->f:Lcom/shabakaty/downloader/r11$h;

    iget-object v7, v7, Lcom/shabakaty/downloader/r11$h;->e:Landroid/util/SparseArray;

    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shabakaty/downloader/r11$c;

    if-nez v7, :cond_12

    .line 131
    iget-object v7, v3, Lcom/shabakaty/downloader/r11;->f:Lcom/shabakaty/downloader/r11$h;

    iget-object v7, v7, Lcom/shabakaty/downloader/r11$h;->g:Landroid/util/SparseArray;

    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shabakaty/downloader/r11$c;

    :cond_12
    if-eqz v7, :cond_16

    .line 132
    iget-boolean v9, v7, Lcom/shabakaty/downloader/r11$c;->b:Z

    if-eqz v9, :cond_13

    const/4 v9, 0x0

    goto :goto_c

    :cond_13
    iget-object v9, v3, Lcom/shabakaty/downloader/r11;->a:Landroid/graphics/Paint;

    .line 133
    :goto_c
    iget v0, v11, Lcom/shabakaty/downloader/r11$f;->e:I

    move-object/from16 v24, v4

    iget v4, v8, Lcom/shabakaty/downloader/r11$g;->a:I

    add-int/2addr v4, v12

    iget v8, v8, Lcom/shabakaty/downloader/r11$g;->b:I

    add-int/2addr v8, v10

    move-object/from16 v25, v14

    iget-object v14, v3, Lcom/shabakaty/downloader/r11;->c:Landroid/graphics/Canvas;

    move-object/from16 v26, v2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_14

    .line 134
    iget-object v2, v13, Lcom/shabakaty/downloader/r11$a;->d:[I

    goto :goto_d

    :cond_14
    const/4 v2, 0x2

    if-ne v0, v2, :cond_15

    .line 135
    iget-object v2, v13, Lcom/shabakaty/downloader/r11$a;->c:[I

    goto :goto_d

    .line 136
    :cond_15
    iget-object v2, v13, Lcom/shabakaty/downloader/r11$a;->b:[I

    :goto_d
    move/from16 v27, v6

    .line 137
    iget-object v6, v7, Lcom/shabakaty/downloader/r11$c;->c:[B

    move-object/from16 v17, v6

    move-object/from16 v18, v2

    move/from16 v19, v0

    move/from16 v20, v4

    move/from16 v21, v8

    move-object/from16 v22, v9

    move-object/from16 v23, v14

    invoke-static/range {v17 .. v23}, Lcom/shabakaty/downloader/r11;->e([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 138
    iget-object v6, v7, Lcom/shabakaty/downloader/r11$c;->d:[B

    const/4 v7, 0x1

    add-int/lit8 v21, v8, 0x1

    move-object/from16 v17, v6

    invoke-static/range {v17 .. v23}, Lcom/shabakaty/downloader/r11;->e([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_e

    :cond_16
    move-object/from16 v26, v2

    move-object/from16 v24, v4

    move/from16 v27, v6

    move-object/from16 v25, v14

    :goto_e
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v4, v24

    move-object/from16 v14, v25

    move-object/from16 v2, v26

    move/from16 v6, v27

    const/4 v7, 0x3

    const/4 v8, 0x2

    goto/16 :goto_b

    :cond_17
    move-object/from16 v26, v2

    move-object/from16 v24, v4

    move/from16 v27, v6

    .line 139
    iget-boolean v0, v11, Lcom/shabakaty/downloader/r11$f;->b:Z

    if-eqz v0, :cond_1a

    .line 140
    iget v0, v11, Lcom/shabakaty/downloader/r11$f;->e:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_18

    .line 141
    iget-object v0, v13, Lcom/shabakaty/downloader/r11$a;->d:[I

    iget v4, v11, Lcom/shabakaty/downloader/r11$f;->g:I

    aget v0, v0, v4

    const/4 v4, 0x2

    goto :goto_f

    :cond_18
    const/4 v4, 0x2

    if-ne v0, v4, :cond_19

    .line 142
    iget-object v0, v13, Lcom/shabakaty/downloader/r11$a;->c:[I

    iget v6, v11, Lcom/shabakaty/downloader/r11$f;->h:I

    aget v0, v0, v6

    goto :goto_f

    .line 143
    :cond_19
    iget-object v0, v13, Lcom/shabakaty/downloader/r11$a;->b:[I

    iget v6, v11, Lcom/shabakaty/downloader/r11$f;->i:I

    aget v0, v0, v6

    .line 144
    :goto_f
    iget-object v6, v3, Lcom/shabakaty/downloader/r11;->b:Landroid/graphics/Paint;

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 145
    iget-object v0, v3, Lcom/shabakaty/downloader/r11;->c:Landroid/graphics/Canvas;

    int-to-float v6, v12

    int-to-float v7, v10

    iget v8, v11, Lcom/shabakaty/downloader/r11$f;->c:I

    add-int/2addr v8, v12

    int-to-float v8, v8

    iget v9, v11, Lcom/shabakaty/downloader/r11$f;->d:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    iget-object v13, v3, Lcom/shabakaty/downloader/r11;->b:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v8

    move/from16 v20, v9

    move-object/from16 v21, v13

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_10

    :cond_1a
    const/4 v2, 0x3

    const/4 v4, 0x2

    :goto_10
    const/16 v45, 0x0

    const/16 v30, 0x0

    move-object/from16 v29, v30

    move-object/from16 v31, v30

    const v39, -0x800001

    const/high16 v38, -0x80000000

    move/from16 v44, v38

    const/16 v42, 0x0

    const/high16 v43, -0x1000000

    .line 146
    iget-object v0, v3, Lcom/shabakaty/downloader/r11;->g:Landroid/graphics/Bitmap;

    iget v6, v11, Lcom/shabakaty/downloader/r11$f;->c:I

    iget v7, v11, Lcom/shabakaty/downloader/r11$f;->d:I

    .line 147
    invoke-static {v0, v12, v10, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v32

    int-to-float v0, v12

    .line 148
    iget v6, v1, Lcom/shabakaty/downloader/r11$b;->a:I

    int-to-float v6, v6

    div-float v36, v0, v6

    const/16 v37, 0x0

    int-to-float v0, v10

    .line 149
    iget v7, v1, Lcom/shabakaty/downloader/r11$b;->b:I

    int-to-float v7, v7

    div-float v33, v0, v7

    const/16 v34, 0x0

    const/16 v35, 0x0

    .line 150
    iget v0, v11, Lcom/shabakaty/downloader/r11$f;->c:I

    int-to-float v0, v0

    div-float v40, v0, v6

    .line 151
    iget v0, v11, Lcom/shabakaty/downloader/r11$f;->d:I

    int-to-float v0, v0

    div-float v41, v0, v7

    .line 152
    new-instance v0, Lcom/shabakaty/downloader/vg0;

    move-object/from16 v28, v0

    const/16 v46, 0x0

    invoke-direct/range {v28 .. v46}, Lcom/shabakaty/downloader/vg0;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIFLcom/shabakaty/downloader/vg0$a;)V

    .line 153
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v0, v3, Lcom/shabakaty/downloader/r11;->c:Landroid/graphics/Canvas;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 155
    iget-object v0, v3, Lcom/shabakaty/downloader/r11;->c:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v6, v27, 0x1

    move-object/from16 v0, p0

    move-object/from16 v4, v24

    move-object/from16 v2, v26

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    goto/16 :goto_a

    :cond_1b
    move-object/from16 v26, v2

    .line 156
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    :goto_11
    move-object/from16 v0, v26

    const/4 v2, 0x1

    .line 157
    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/by;-><init>(Ljava/util/List;I)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
