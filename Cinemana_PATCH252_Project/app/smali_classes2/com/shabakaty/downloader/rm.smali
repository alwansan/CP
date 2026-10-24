.class public Lcom/shabakaty/downloader/rm;
.super Lcom/facebook/imagepipeline/request/BasePostprocessor;
.source "BlurPostprocessor.java"


# instance fields
.field public final c:Landroid/content/Context;

.field public final d:I

.field public final e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/facebook/imagepipeline/request/BasePostprocessor;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/rm;->c:Landroid/content/Context;

    .line 3
    iput p2, p0, Lcom/shabakaty/downloader/rm;->d:I

    const/4 p1, 0x1

    .line 4
    iput p1, p0, Lcom/shabakaty/downloader/rm;->e:I

    return-void
.end method


# virtual methods
.method public c()Lcom/facebook/cache/common/CacheKey;
    .locals 3

    .line 1
    new-instance v0, Lcom/facebook/cache/common/SimpleCacheKey;

    const-string v1, "radius="

    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/shabakaty/downloader/rm;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",sampling="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/shabakaty/downloader/rm;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/cache/common/SimpleCacheKey;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public d(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 38

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 2
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 3
    iget v4, v1, Lcom/shabakaty/downloader/rm;->e:I

    div-int/2addr v2, v4

    .line 4
    div-int/2addr v3, v4

    .line 5
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 6
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 7
    iget v4, v1, Lcom/shabakaty/downloader/rm;->e:I

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    div-float/2addr v5, v4

    invoke-virtual {v3, v5, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 8
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    const/4 v13, 0x2

    .line 9
    invoke-virtual {v4, v13}, Landroid/graphics/Paint;->setFlags(I)V

    const/4 v14, 0x0

    move-object/from16 v5, p2

    .line 10
    invoke-virtual {v3, v5, v14, v14, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v4, 0x1

    .line 11
    :try_start_0
    iget-object v5, v1, Lcom/shabakaty/downloader/rm;->c:Landroid/content/Context;

    iget v6, v1, Lcom/shabakaty/downloader/rm;->d:I

    invoke-static {v5, v2, v6}, Lcom/shabakaty/downloader/mm3;->a(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v30, v2

    goto/16 :goto_a

    :catch_0
    nop

    .line 12
    iget v12, v1, Lcom/shabakaty/downloader/rm;->d:I

    if-ge v12, v4, :cond_0

    const/4 v2, 0x0

    goto/16 :goto_b

    .line 13
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 14
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    mul-int v9, v11, v10

    .line 15
    new-array v8, v9, [I

    const/4 v7, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v5, v2

    move-object v6, v8

    move-object/from16 v18, v8

    move v8, v11

    move v14, v9

    move/from16 v9, v16

    move/from16 p2, v10

    move/from16 v10, v17

    move/from16 v16, v11

    move v3, v12

    move/from16 v12, p2

    .line 16
    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    add-int/lit8 v5, v11, -0x1

    add-int/lit8 v10, v12, -0x1

    add-int v6, v3, v3

    add-int/2addr v6, v4

    .line 17
    new-array v7, v14, [I

    .line 18
    new-array v8, v14, [I

    .line 19
    new-array v9, v14, [I

    .line 20
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v14

    new-array v14, v14, [I

    add-int/lit8 v16, v6, 0x1

    shr-int/lit8 v16, v16, 0x1

    mul-int v15, v16, v16

    mul-int/lit16 v4, v15, 0x100

    .line 21
    new-array v13, v4, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_1

    .line 22
    div-int v20, v1, v15

    aput v20, v13, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    const/4 v4, 0x2

    new-array v15, v4, [I

    const/4 v4, 0x1

    aput v1, v15, v4

    const/4 v1, 0x0

    aput v6, v15, v1

    .line 23
    const-class v1, I

    invoke-static {v1, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    add-int/lit8 v4, v3, 0x1

    const/4 v15, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_1
    if-ge v15, v12, :cond_6

    neg-int v0, v3

    move-object/from16 v30, v2

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move v2, v0

    const/4 v0, 0x0

    :goto_2
    const v31, 0xff00

    const/high16 v32, 0xff0000

    if-gt v2, v3, :cond_3

    move/from16 v34, v10

    move/from16 v33, v12

    const/4 v12, 0x0

    .line 24
    invoke-static {v2, v12}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v5, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    add-int v10, v10, v20

    aget v10, v18, v10

    add-int v35, v2, v3

    .line 25
    aget-object v35, v1, v35

    and-int v32, v10, v32

    shr-int/lit8 v32, v32, 0x10

    .line 26
    aput v32, v35, v12

    and-int v31, v10, v31

    shr-int/lit8 v31, v31, 0x8

    const/16 v16, 0x1

    .line 27
    aput v31, v35, v16

    and-int/lit16 v10, v10, 0xff

    const/16 v19, 0x2

    .line 28
    aput v10, v35, v19

    .line 29
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v10

    sub-int v10, v4, v10

    .line 30
    aget v31, v35, v12

    mul-int v31, v31, v10

    add-int v0, v31, v0

    .line 31
    aget v31, v35, v16

    mul-int v31, v31, v10

    add-int v22, v31, v22

    .line 32
    aget v31, v35, v19

    mul-int v31, v31, v10

    add-int v23, v31, v23

    if-lez v2, :cond_2

    .line 33
    aget v10, v35, v12

    add-int v27, v27, v10

    .line 34
    aget v10, v35, v16

    add-int v28, v28, v10

    .line 35
    aget v10, v35, v19

    add-int v29, v29, v10

    goto :goto_3

    .line 36
    :cond_2
    aget v10, v35, v12

    add-int v24, v24, v10

    .line 37
    aget v10, v35, v16

    add-int v25, v25, v10

    .line 38
    aget v10, v35, v19

    add-int v26, v26, v10

    :goto_3
    add-int/lit8 v2, v2, 0x1

    move/from16 v12, v33

    move/from16 v10, v34

    goto :goto_2

    :cond_3
    move/from16 v34, v10

    move/from16 v33, v12

    move v2, v0

    move v12, v3

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v11, :cond_5

    .line 39
    aget v10, v13, v2

    aput v10, v7, v20

    .line 40
    aget v10, v13, v22

    aput v10, v8, v20

    .line 41
    aget v10, v13, v23

    aput v10, v9, v20

    sub-int v2, v2, v24

    sub-int v22, v22, v25

    sub-int v23, v23, v26

    sub-int v10, v12, v3

    add-int/2addr v10, v6

    .line 42
    rem-int/2addr v10, v6

    aget-object v10, v1, v10

    const/16 v35, 0x0

    .line 43
    aget v36, v10, v35

    sub-int v24, v24, v36

    const/16 v16, 0x1

    .line 44
    aget v35, v10, v16

    sub-int v25, v25, v35

    const/16 v19, 0x2

    .line 45
    aget v35, v10, v19

    sub-int v26, v26, v35

    if-nez v15, :cond_4

    add-int v35, v0, v3

    move-object/from16 v36, v13

    add-int/lit8 v13, v35, 0x1

    .line 46
    invoke-static {v13, v5}, Ljava/lang/Math;->min(II)I

    move-result v13

    aput v13, v14, v0

    goto :goto_5

    :cond_4
    move-object/from16 v36, v13

    .line 47
    :goto_5
    aget v13, v14, v0

    add-int v13, v21, v13

    aget v13, v18, v13

    and-int v35, v13, v32

    shr-int/lit8 v35, v35, 0x10

    const/16 v37, 0x0

    .line 48
    aput v35, v10, v37

    and-int v35, v13, v31

    shr-int/lit8 v35, v35, 0x8

    const/16 v16, 0x1

    .line 49
    aput v35, v10, v16

    and-int/lit16 v13, v13, 0xff

    const/16 v19, 0x2

    .line 50
    aput v13, v10, v19

    .line 51
    aget v13, v10, v37

    add-int v27, v27, v13

    .line 52
    aget v13, v10, v16

    add-int v28, v28, v13

    .line 53
    aget v10, v10, v19

    add-int v29, v29, v10

    add-int v2, v2, v27

    add-int v22, v22, v28

    add-int v23, v23, v29

    add-int/lit8 v12, v12, 0x1

    .line 54
    rem-int/2addr v12, v6

    .line 55
    rem-int v10, v12, v6

    aget-object v10, v1, v10

    const/4 v13, 0x0

    .line 56
    aget v35, v10, v13

    add-int v24, v24, v35

    const/16 v16, 0x1

    .line 57
    aget v35, v10, v16

    add-int v25, v25, v35

    const/16 v19, 0x2

    .line 58
    aget v35, v10, v19

    add-int v26, v26, v35

    .line 59
    aget v35, v10, v13

    sub-int v27, v27, v35

    .line 60
    aget v13, v10, v16

    sub-int v28, v28, v13

    .line 61
    aget v10, v10, v19

    sub-int v29, v29, v10

    add-int/lit8 v20, v20, 0x1

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v13, v36

    goto/16 :goto_4

    :cond_5
    move-object/from16 v36, v13

    add-int v21, v21, v11

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p1

    move-object/from16 v2, v30

    move/from16 v12, v33

    move/from16 v10, v34

    goto/16 :goto_1

    :cond_6
    move-object/from16 v30, v2

    move/from16 v34, v10

    move/from16 v33, v12

    move-object/from16 v36, v13

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v11, :cond_c

    neg-int v2, v3

    mul-int v5, v2, v11

    move/from16 v24, v6

    move-object/from16 v23, v14

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move v14, v2

    move v6, v5

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_7
    if-gt v14, v3, :cond_9

    move/from16 v25, v11

    const/4 v11, 0x0

    .line 62
    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v26

    add-int v26, v26, v0

    add-int v27, v14, v3

    .line 63
    aget-object v27, v1, v27

    .line 64
    aget v28, v7, v26

    aput v28, v27, v11

    .line 65
    aget v11, v8, v26

    const/16 v16, 0x1

    aput v11, v27, v16

    .line 66
    aget v11, v9, v26

    const/16 v19, 0x2

    aput v11, v27, v19

    .line 67
    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v11

    sub-int v11, v4, v11

    .line 68
    aget v28, v7, v26

    mul-int v28, v28, v11

    add-int v2, v28, v2

    .line 69
    aget v28, v8, v26

    mul-int v28, v28, v11

    add-int v10, v28, v10

    .line 70
    aget v26, v9, v26

    mul-int v26, v26, v11

    add-int v12, v26, v12

    if-lez v14, :cond_7

    const/4 v11, 0x0

    .line 71
    aget v26, v27, v11

    add-int v20, v20, v26

    const/16 v16, 0x1

    .line 72
    aget v26, v27, v16

    add-int v21, v21, v26

    const/16 v19, 0x2

    .line 73
    aget v26, v27, v19

    add-int v22, v22, v26

    goto :goto_8

    :cond_7
    const/4 v11, 0x0

    const/16 v16, 0x1

    const/16 v19, 0x2

    .line 74
    aget v26, v27, v11

    add-int v13, v13, v26

    .line 75
    aget v11, v27, v16

    add-int/2addr v5, v11

    .line 76
    aget v11, v27, v19

    add-int/2addr v15, v11

    :goto_8
    move/from16 v11, v34

    if-ge v14, v11, :cond_8

    add-int v6, v6, v25

    :cond_8
    add-int/lit8 v14, v14, 0x1

    move/from16 v34, v11

    move/from16 v11, v25

    goto :goto_7

    :cond_9
    move/from16 v25, v11

    move/from16 v11, v34

    move/from16 v27, v0

    move v6, v5

    move-object/from16 v26, v9

    move v14, v13

    move/from16 v9, v33

    move v5, v2

    move v13, v3

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v9, :cond_b

    const/high16 v28, -0x1000000

    .line 77
    aget v29, v18, v27

    and-int v28, v29, v28

    aget v29, v36, v5

    shl-int/lit8 v29, v29, 0x10

    or-int v28, v28, v29

    aget v29, v36, v10

    shl-int/lit8 v29, v29, 0x8

    or-int v28, v28, v29

    aget v29, v36, v12

    or-int v28, v28, v29

    aput v28, v18, v27

    sub-int/2addr v5, v14

    sub-int/2addr v10, v6

    sub-int/2addr v12, v15

    sub-int v28, v13, v3

    add-int v28, v28, v24

    .line 78
    rem-int v28, v28, v24

    aget-object v28, v1, v28

    const/16 v29, 0x0

    .line 79
    aget v31, v28, v29

    sub-int v14, v14, v31

    const/16 v16, 0x1

    .line 80
    aget v29, v28, v16

    sub-int v6, v6, v29

    const/16 v19, 0x2

    .line 81
    aget v29, v28, v19

    sub-int v15, v15, v29

    move/from16 v29, v3

    if-nez v0, :cond_a

    add-int v3, v2, v4

    .line 82
    invoke-static {v3, v11}, Ljava/lang/Math;->min(II)I

    move-result v3

    mul-int v3, v3, v25

    aput v3, v23, v2

    .line 83
    :cond_a
    aget v3, v23, v2

    add-int/2addr v3, v0

    .line 84
    aget v31, v7, v3

    const/16 v32, 0x0

    aput v31, v28, v32

    .line 85
    aget v31, v8, v3

    const/16 v16, 0x1

    aput v31, v28, v16

    .line 86
    aget v3, v26, v3

    const/16 v19, 0x2

    aput v3, v28, v19

    .line 87
    aget v3, v28, v32

    add-int v20, v20, v3

    .line 88
    aget v3, v28, v16

    add-int v21, v21, v3

    .line 89
    aget v3, v28, v19

    add-int v22, v22, v3

    add-int v5, v5, v20

    add-int v10, v10, v21

    add-int v12, v12, v22

    add-int/lit8 v13, v13, 0x1

    .line 90
    rem-int v13, v13, v24

    .line 91
    aget-object v3, v1, v13

    const/16 v28, 0x0

    .line 92
    aget v31, v3, v28

    add-int v14, v14, v31

    const/16 v16, 0x1

    .line 93
    aget v31, v3, v16

    add-int v6, v6, v31

    const/16 v19, 0x2

    .line 94
    aget v31, v3, v19

    add-int v15, v15, v31

    .line 95
    aget v31, v3, v28

    sub-int v20, v20, v31

    .line 96
    aget v28, v3, v16

    sub-int v21, v21, v28

    .line 97
    aget v3, v3, v19

    sub-int v22, v22, v3

    add-int v27, v27, v25

    add-int/lit8 v2, v2, 0x1

    move/from16 v3, v29

    goto/16 :goto_9

    :cond_b
    move/from16 v29, v3

    add-int/lit8 v0, v0, 0x1

    move/from16 v33, v9

    move/from16 v34, v11

    move-object/from16 v14, v23

    move/from16 v6, v24

    move/from16 v11, v25

    move-object/from16 v9, v26

    goto/16 :goto_6

    :cond_c
    move/from16 v25, v11

    move/from16 v9, v33

    const/4 v7, 0x0

    const/4 v0, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, v30

    move-object/from16 v6, v18

    move/from16 v8, v25

    move v1, v9

    move v9, v0

    move v12, v1

    .line 98
    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    :goto_a
    move-object/from16 v2, v30

    .line 99
    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v3, 0x1

    invoke-static {v2, v0, v1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 100
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const-string v1, "Wrong Native code setup, reflection failed."

    .line 101
    sget-boolean v2, Lcom/facebook/imagepipeline/core/NativeCodeSetup;->a:Z

    if-eqz v2, :cond_e

    .line 102
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    if-ne v2, v3, :cond_e

    .line 103
    :try_start_1
    sget-object v2, Lcom/facebook/imagepipeline/request/BasePostprocessor;->b:Ljava/lang/reflect/Method;

    if-nez v2, :cond_d

    .line 104
    const-class v2, Lcom/facebook/imagepipeline/nativecode/Bitmaps;

    sget v3, Lcom/facebook/imagepipeline/nativecode/Bitmaps;->a:I

    const-string v3, "copyBitmap"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    .line 105
    const-class v4, Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    const-class v4, Landroid/graphics/Bitmap;

    const/4 v6, 0x1

    aput-object v4, v5, v6

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/facebook/imagepipeline/request/BasePostprocessor;->b:Ljava/lang/reflect/Method;

    .line 106
    :cond_d
    sget-object v2, Lcom/facebook/imagepipeline/request/BasePostprocessor;->b:Ljava/lang/reflect/Method;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v4, p1

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v0, 0x0

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_c

    :catch_1
    move-exception v0

    .line 107
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_2
    move-exception v0

    .line 108
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_3
    move-exception v0

    .line 109
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_4
    move-exception v0

    .line 110
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_e
    move-object/from16 v4, p1

    .line 111
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 112
    invoke-virtual {v1, v0, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_c
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    const-class v0, Lcom/shabakaty/downloader/rm;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
