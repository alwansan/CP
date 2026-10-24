.class public final Lcom/shabakaty/downloader/sl2;
.super Ljava/lang/Object;
.source "MLKitBarcodeAnalyzer.kt"

# interfaces
.implements Lcom/shabakaty/downloader/fy1$a;


# instance fields
.field public final a:Lcom/shabakaty/downloader/ox3;

.field public b:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ox3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/sl2;->a:Lcom/shabakaty/downloader/ox3;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/fz1;)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "imageProxy"

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/fz1;->c1()Landroid/media/Image;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 2
    iget-boolean v3, v1, Lcom/shabakaty/downloader/sl2;->b:Z

    if-nez v3, :cond_19

    .line 3
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/fz1;->N0()Lcom/shabakaty/downloader/xy1;

    move-result-object v3

    invoke-interface {v3}, Lcom/shabakaty/downloader/xy1;->b()I

    move-result v3

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const/16 v6, 0x10e

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v3, :cond_1

    const/16 v9, 0x5a

    if-eq v3, v9, :cond_1

    const/16 v9, 0xb4

    if-eq v3, v9, :cond_1

    if-ne v3, v6, :cond_0

    const/16 v3, 0x10e

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v6, 0x1

    :goto_1
    const-string v9, "Invalid rotation. Only 0, 90, 180, 270 are supported currently."

    .line 5
    invoke-static {v6, v9}, Lcom/google/android/gms/common/internal/a;->b(ZLjava/lang/Object;)V

    .line 6
    invoke-virtual {v2}, Landroid/media/Image;->getFormat()I

    move-result v6

    const/16 v9, 0x100

    const/16 v10, 0x23

    if-eq v6, v9, :cond_3

    .line 7
    invoke-virtual {v2}, Landroid/media/Image;->getFormat()I

    move-result v6

    if-ne v6, v10, :cond_2

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v6, 0x1

    :goto_3
    const-string v11, "Only JPEG and YUV_420_888 are supported now"

    .line 8
    invoke-static {v6, v11}, Lcom/google/android/gms/common/internal/a;->b(ZLjava/lang/Object;)V

    .line 9
    invoke-virtual {v2}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v6

    .line 10
    invoke-virtual {v2}, Landroid/media/Image;->getFormat()I

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v9, :cond_7

    .line 11
    invoke-virtual {v2}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v6

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    new-instance v11, Lcom/shabakaty/downloader/k12;

    .line 12
    invoke-virtual {v2}, Landroid/media/Image;->getFormat()I

    move-result v13

    if-ne v13, v9, :cond_4

    const/4 v9, 0x1

    goto :goto_4

    :cond_4
    const/4 v9, 0x0

    :goto_4
    const-string v13, "Only JPEG and YUV_420_888 are supported now"

    .line 13
    invoke-static {v9, v13}, Lcom/google/android/gms/common/internal/a;->b(ZLjava/lang/Object;)V

    .line 14
    invoke-virtual {v2}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v9

    if-eqz v9, :cond_6

    array-length v13, v9

    if-ne v13, v8, :cond_6

    .line 15
    aget-object v9, v9, v7

    invoke-virtual {v9}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 16
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 17
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v13

    new-array v14, v13, [B

    .line 18
    invoke-virtual {v9, v14}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 19
    invoke-static {v14, v7, v13}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 20
    invoke-virtual {v2}, Landroid/media/Image;->getWidth()I

    move-result v9

    invoke-virtual {v2}, Landroid/media/Image;->getHeight()I

    move-result v13

    if-nez v3, :cond_5

    .line 21
    invoke-static {v15, v7, v7, v9, v13}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v9

    goto :goto_5

    :cond_5
    new-instance v14, Landroid/graphics/Matrix;

    .line 22
    invoke-direct {v14}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v8, v3

    .line 23
    invoke-virtual {v14, v8}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v21, 0x1

    move/from16 v18, v9

    move/from16 v19, v13

    move-object/from16 v20, v14

    .line 24
    invoke-static/range {v15 .. v21}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 25
    :goto_5
    invoke-direct {v11, v9, v7}, Lcom/shabakaty/downloader/k12;-><init>(Landroid/graphics/Bitmap;I)V

    goto :goto_7

    .line 26
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unexpected image format, JPEG should have exactly 1 image plane"

    .line 27
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_7
    array-length v8, v6

    const/4 v9, 0x0

    :goto_6
    if-ge v9, v8, :cond_9

    aget-object v11, v6, v9

    .line 29
    invoke-virtual {v11}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v13

    if-eqz v13, :cond_8

    .line 30
    invoke-virtual {v11}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_9
    new-instance v11, Lcom/shabakaty/downloader/k12;

    .line 31
    invoke-virtual {v2}, Landroid/media/Image;->getWidth()I

    move-result v6

    invoke-virtual {v2}, Landroid/media/Image;->getHeight()I

    move-result v8

    invoke-direct {v11, v2, v6, v8, v3}, Lcom/shabakaty/downloader/k12;-><init>(Landroid/media/Image;III)V

    .line 32
    invoke-virtual {v2}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v6

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    mul-int/lit8 v6, v6, 0x3

    div-int/lit8 v6, v6, 0x2

    .line 33
    :goto_7
    invoke-virtual {v2}, Landroid/media/Image;->getFormat()I

    move-result v8

    .line 34
    invoke-virtual {v2}, Landroid/media/Image;->getHeight()I

    move-result v9

    .line 35
    invoke-virtual {v2}, Landroid/media/Image;->getWidth()I

    move-result v2

    .line 36
    sget-object v13, Lcom/shabakaty/downloader/co6;->a:Lcom/shabakaty/downloader/yn6;

    .line 37
    const-class v13, Lcom/shabakaty/downloader/co6;

    monitor-enter v13

    :try_start_0
    const-string v14, "vision-common"

    const-string v16, "vision-common"

    .line 38
    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 39
    sget-object v19, Lcom/shabakaty/downloader/tf3;->s:Lcom/shabakaty/downloader/tf3;

    .line 40
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .line 41
    sget-object v7, Lcom/shabakaty/downloader/co6;->b:Lcom/shabakaty/downloader/gc7;

    .line 42
    invoke-virtual {v7, v14}, Lcom/shabakaty/downloader/tz6;->contains(Ljava/lang/Object;)Z

    move-result v7

    .line 43
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v14, ""

    if-nez v7, :cond_a

    const-string v12, " enableClearcut"

    .line 44
    invoke-virtual {v14, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    :cond_a
    if-nez v15, :cond_b

    .line 45
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const-string v14, " enableFirelog"

    invoke-virtual {v12, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    :cond_b
    if-nez v17, :cond_c

    .line 46
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const-string v14, " firelogEventType"

    invoke-virtual {v12, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 47
    :cond_c
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    .line 48
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v2, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    .line 49
    :cond_d
    new-instance v3, Ljava/lang/String;

    .line 50
    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_8
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v12, Lcom/shabakaty/downloader/sl6;

    .line 51
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const/16 v18, 0x1

    .line 52
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move-object v15, v12

    move/from16 v17, v7

    invoke-direct/range {v15 .. v20}, Lcom/shabakaty/downloader/sl6;-><init>(Ljava/lang/String;ZZLcom/shabakaty/downloader/tf3;I)V

    .line 53
    monitor-enter v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    sget-object v7, Lcom/shabakaty/downloader/co6;->a:Lcom/shabakaty/downloader/yn6;

    if-nez v7, :cond_f

    .line 54
    new-instance v7, Lcom/shabakaty/downloader/yn6;

    invoke-direct {v7}, Lcom/shabakaty/downloader/yn6;-><init>()V

    sput-object v7, Lcom/shabakaty/downloader/co6;->a:Lcom/shabakaty/downloader/yn6;

    :cond_f
    sget-object v7, Lcom/shabakaty/downloader/co6;->a:Lcom/shabakaty/downloader/yn6;

    .line 55
    invoke-virtual {v7, v12}, Lcom/shabakaty/downloader/rf2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shabakaty/downloader/rm6;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 56
    monitor-exit v13

    .line 57
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long/2addr v12, v4

    .line 58
    sget-object v4, Lcom/shabakaty/downloader/ce6;->s:Lcom/shabakaty/downloader/ce6;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    iget-object v5, v7, Lcom/shabakaty/downloader/rm6;->h:Ljava/util/Map;

    .line 60
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_10

    move-object/from16 v19, v11

    goto :goto_9

    .line 61
    :cond_10
    iget-object v5, v7, Lcom/shabakaty/downloader/rm6;->h:Ljava/util/Map;

    .line 62
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    sub-long v16, v14, v16

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v19, v11

    const-wide/16 v10, 0x1e

    invoke-virtual {v5, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v10

    cmp-long v5, v16, v10

    if-gtz v5, :cond_11

    goto/16 :goto_b

    .line 63
    :cond_11
    :goto_9
    iget-object v5, v7, Lcom/shabakaty/downloader/rm6;->h:Ljava/util/Map;

    .line 64
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v5, v4, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v5, Lcom/shabakaty/downloader/vc6;

    invoke-direct {v5}, Lcom/shabakaty/downloader/vc6;-><init>()V

    const/4 v10, -0x1

    if-eq v8, v10, :cond_16

    const/16 v10, 0x23

    if-eq v8, v10, :cond_15

    const v10, 0x32315659

    if-eq v8, v10, :cond_14

    const/16 v10, 0x10

    if-eq v8, v10, :cond_13

    const/16 v10, 0x11

    if-eq v8, v10, :cond_12

    .line 66
    sget-object v8, Lcom/shabakaty/downloader/bc6;->s:Lcom/shabakaty/downloader/bc6;

    goto :goto_a

    .line 67
    :cond_12
    sget-object v8, Lcom/shabakaty/downloader/bc6;->u:Lcom/shabakaty/downloader/bc6;

    goto :goto_a

    .line 68
    :cond_13
    sget-object v8, Lcom/shabakaty/downloader/bc6;->t:Lcom/shabakaty/downloader/bc6;

    goto :goto_a

    .line 69
    :cond_14
    sget-object v8, Lcom/shabakaty/downloader/bc6;->v:Lcom/shabakaty/downloader/bc6;

    goto :goto_a

    .line 70
    :cond_15
    sget-object v8, Lcom/shabakaty/downloader/bc6;->w:Lcom/shabakaty/downloader/bc6;

    goto :goto_a

    .line 71
    :cond_16
    sget-object v8, Lcom/shabakaty/downloader/bc6;->x:Lcom/shabakaty/downloader/bc6;

    .line 72
    :goto_a
    iput-object v8, v5, Lcom/shabakaty/downloader/vc6;->c:Lcom/shabakaty/downloader/bc6;

    .line 73
    sget-object v8, Lcom/shabakaty/downloader/ad6;->w:Lcom/shabakaty/downloader/ad6;

    .line 74
    iput-object v8, v5, Lcom/shabakaty/downloader/vc6;->b:Lcom/shabakaty/downloader/ad6;

    .line 75
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 76
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const v8, 0x7fffffff

    and-int/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v5, Lcom/shabakaty/downloader/vc6;->d:Ljava/lang/Integer;

    .line 77
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 78
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    and-int/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v5, Lcom/shabakaty/downloader/vc6;->f:Ljava/lang/Integer;

    .line 79
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 80
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/2addr v2, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v5, Lcom/shabakaty/downloader/vc6;->e:Ljava/lang/Integer;

    .line 81
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 82
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-wide v11, 0x7fffffffffffffffL

    and-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v5, Lcom/shabakaty/downloader/vc6;->a:Ljava/lang/Long;

    .line 83
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 84
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/2addr v2, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v5, Lcom/shabakaty/downloader/vc6;->g:Ljava/lang/Integer;

    .line 85
    new-instance v2, Lcom/shabakaty/downloader/hd6;

    .line 86
    invoke-direct {v2, v5}, Lcom/shabakaty/downloader/hd6;-><init>(Lcom/shabakaty/downloader/vc6;)V

    .line 87
    new-instance v3, Lcom/shabakaty/downloader/tk1;

    const/16 v5, 0xa

    invoke-direct {v3, v5}, Lcom/shabakaty/downloader/tk1;-><init>(I)V

    .line 88
    iput-object v2, v3, Lcom/shabakaty/downloader/tk1;->u:Ljava/lang/Object;

    .line 89
    new-instance v2, Lcom/shabakaty/downloader/ag6;

    .line 90
    invoke-direct {v2, v3}, Lcom/shabakaty/downloader/ag6;-><init>(Lcom/shabakaty/downloader/tk1;)V

    .line 91
    sget-object v3, Lcom/shabakaty/downloader/ul2;->b:Ljava/lang/Object;

    sget-object v3, Lcom/shabakaty/downloader/tk6;->r:Lcom/shabakaty/downloader/tk6;

    new-instance v5, Lcom/shabakaty/downloader/so5;

    invoke-direct {v5, v7, v2, v4}, Lcom/shabakaty/downloader/so5;-><init>(Lcom/shabakaty/downloader/rm6;Lcom/shabakaty/downloader/ag6;Lcom/shabakaty/downloader/ce6;)V

    .line 92
    invoke-virtual {v3, v5}, Lcom/shabakaty/downloader/tk6;->execute(Ljava/lang/Runnable;)V

    .line 93
    :goto_b
    invoke-static {}, Lcom/shabakaty/downloader/zt2;->c()Lcom/shabakaty/downloader/zt2;

    move-result-object v2

    const-class v3, Lcom/shabakaty/downloader/zz5;

    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/zt2;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/zz5;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v3, Lcom/google/mlkit/vision/barcode/internal/BarcodeScannerImpl;->w:Lcom/shabakaty/downloader/ti;

    sget-object v3, Lcom/google/mlkit/vision/barcode/internal/BarcodeScannerImpl;->w:Lcom/shabakaty/downloader/ti;

    .line 95
    new-instance v4, Lcom/google/mlkit/vision/barcode/internal/BarcodeScannerImpl;

    iget-object v5, v2, Lcom/shabakaty/downloader/zz5;->a:Lcom/shabakaty/downloader/g56;

    .line 96
    invoke-virtual {v5, v3}, Lcom/shabakaty/downloader/rf2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/uk6;

    iget-object v2, v2, Lcom/shabakaty/downloader/zz5;->b:Lcom/shabakaty/downloader/x61;

    .line 97
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v2, v2, Lcom/shabakaty/downloader/x61;->a:Lcom/shabakaty/downloader/pj3;

    .line 99
    invoke-interface {v2}, Lcom/shabakaty/downloader/pj3;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    .line 100
    invoke-static {}, Lcom/shabakaty/downloader/wd5;->b()Ljava/lang/String;

    move-result-object v6

    .line 101
    invoke-static {v6}, Lcom/shabakaty/downloader/g17;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/l07;

    move-result-object v6

    invoke-direct {v4, v3, v5, v2, v6}, Lcom/google/mlkit/vision/barcode/internal/BarcodeScannerImpl;-><init>(Lcom/shabakaty/downloader/ti;Lcom/shabakaty/downloader/uk6;Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/l07;)V

    const/4 v2, 0x1

    .line 102
    iput-boolean v2, v1, Lcom/shabakaty/downloader/sl2;->b:Z

    .line 103
    monitor-enter v4

    .line 104
    :try_start_3
    iget-object v2, v4, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 105
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 106
    new-instance v2, Lcom/shabakaty/downloader/au2;

    const-string v3, "This detector is already closed!"

    const/16 v5, 0xe

    invoke-direct {v2, v3, v5}, Lcom/shabakaty/downloader/au2;-><init>(Ljava/lang/String;I)V

    invoke-static {v2}, Lcom/shabakaty/downloader/kl4;->d(Ljava/lang/Exception;)Lcom/shabakaty/downloader/uk4;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v4

    goto :goto_c

    :cond_17
    move-object/from16 v11, v19

    .line 107
    :try_start_4
    iget v2, v11, Lcom/shabakaty/downloader/k12;->c:I

    const/16 v3, 0x20

    if-lt v2, v3, :cond_18

    .line 108
    iget v2, v11, Lcom/shabakaty/downloader/k12;->d:I

    if-lt v2, v3, :cond_18

    .line 109
    iget-object v2, v4, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->s:Lcom/shabakaty/downloader/tl2;

    iget-object v3, v4, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->u:Ljava/util/concurrent/Executor;

    new-instance v5, Lcom/shabakaty/downloader/sh6;

    .line 110
    invoke-direct {v5, v4, v11}, Lcom/shabakaty/downloader/sh6;-><init>(Lcom/google/mlkit/vision/common/internal/MobileVisionBase;Lcom/shabakaty/downloader/k12;)V

    iget-object v6, v4, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->t:Lcom/shabakaty/downloader/rd5;

    .line 111
    iget-object v6, v6, Lcom/shabakaty/downloader/rd5;->r:Ljava/lang/Object;

    check-cast v6, Lcom/shabakaty/downloader/rd5;

    .line 112
    invoke-virtual {v2, v3, v5, v6}, Lcom/shabakaty/downloader/tl2;->a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;Lcom/shabakaty/downloader/rd5;)Lcom/shabakaty/downloader/uk4;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v4

    goto :goto_c

    .line 113
    :cond_18
    :try_start_5
    new-instance v2, Lcom/shabakaty/downloader/au2;

    const-string v3, "InputImage width and height should be at least 32!"

    const/4 v5, 0x3

    invoke-direct {v2, v3, v5}, Lcom/shabakaty/downloader/au2;-><init>(Ljava/lang/String;I)V

    invoke-static {v2}, Lcom/shabakaty/downloader/kl4;->d(Ljava/lang/Exception;)Lcom/shabakaty/downloader/uk4;

    move-result-object v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v4

    .line 114
    :goto_c
    new-instance v3, Lcom/shabakaty/downloader/rl2;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v0, v4}, Lcom/shabakaty/downloader/rl2;-><init>(Lcom/shabakaty/downloader/sl2;Lcom/shabakaty/downloader/fz1;I)V

    check-cast v2, Lcom/shabakaty/downloader/ye7;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v4, Lcom/shabakaty/downloader/dl4;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {v2, v4, v3}, Lcom/shabakaty/downloader/ye7;->c(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/a73;)Lcom/shabakaty/downloader/uk4;

    .line 116
    new-instance v3, Lcom/shabakaty/downloader/rl2;

    const/4 v5, 0x1

    invoke-direct {v3, v1, v0, v5}, Lcom/shabakaty/downloader/rl2;-><init>(Lcom/shabakaty/downloader/sl2;Lcom/shabakaty/downloader/fz1;I)V

    .line 117
    invoke-virtual {v2, v4, v3}, Lcom/shabakaty/downloader/ye7;->b(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/p63;)Lcom/shabakaty/downloader/uk4;

    goto :goto_d

    :catchall_0
    move-exception v0

    .line 118
    monitor-exit v4

    throw v0

    :catchall_1
    move-exception v0

    .line 119
    :try_start_6
    monitor-exit v13

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit v13

    throw v0

    :cond_19
    :goto_d
    return-void
.end method
