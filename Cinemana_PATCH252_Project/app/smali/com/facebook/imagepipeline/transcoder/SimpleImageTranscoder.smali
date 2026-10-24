.class public Lcom/facebook/imagepipeline/transcoder/SimpleImageTranscoder;
.super Ljava/lang/Object;
.source "SimpleImageTranscoder.java"

# interfaces
.implements Lcom/facebook/imagepipeline/transcoder/ImageTranscoder;


# instance fields
.field public final a:Z

.field public final b:I


# direct methods
.method public constructor <init>(ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/transcoder/SimpleImageTranscoder;->a:Z

    .line 3
    iput p2, p0, Lcom/facebook/imagepipeline/transcoder/SimpleImageTranscoder;->b:I

    return-void
.end method

.method public static e(Lcom/facebook/imageformat/ImageFormat;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    return-object p0

    .line 2
    :cond_0
    sget-object v0, Lcom/facebook/imageformat/DefaultImageFormats;->a:Lcom/facebook/imageformat/ImageFormat;

    if-ne p0, v0, :cond_1

    .line 3
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    return-object p0

    .line 4
    :cond_1
    sget-object v0, Lcom/facebook/imageformat/DefaultImageFormats;->b:Lcom/facebook/imageformat/ImageFormat;

    if-ne p0, v0, :cond_2

    .line 5
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    return-object p0

    .line 6
    :cond_2
    invoke-static {p0}, Lcom/facebook/imageformat/DefaultImageFormats;->a(Lcom/facebook/imageformat/ImageFormat;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 7
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    return-object p0

    .line 8
    :cond_3
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "SimpleImageTranscoder"

    return-object v0
.end method

.method public b(Lcom/facebook/imagepipeline/image/EncodedImage;Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/common/ResizeOptions;)Z
    .locals 1

    if-nez p2, :cond_0

    .line 1
    sget-object p2, Lcom/facebook/imagepipeline/common/RotationOptions;->c:Lcom/facebook/imagepipeline/common/RotationOptions;

    .line 2
    :cond_0
    iget-boolean p3, p0, Lcom/facebook/imagepipeline/transcoder/SimpleImageTranscoder;->a:Z

    const/4 v0, 0x1

    if-eqz p3, :cond_1

    iget p3, p0, Lcom/facebook/imagepipeline/transcoder/SimpleImageTranscoder;->b:I

    .line 3
    invoke-static {p2, p1, p3}, Lcom/facebook/imagepipeline/transcoder/DownsampleUtil;->a(Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/image/EncodedImage;I)I

    move-result p1

    if-le p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c(Lcom/facebook/imagepipeline/image/EncodedImage;Ljava/io/OutputStream;Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/common/ResizeOptions;Lcom/facebook/imageformat/ImageFormat;Ljava/lang/Integer;)Lcom/facebook/imagepipeline/transcoder/ImageTranscodeResult;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "Out-Of-Memory during transcode"

    const-string v3, "SimpleImageTranscoder"

    if-nez p6, :cond_0

    const/16 v4, 0x55

    .line 1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object/from16 v4, p6

    :goto_0
    if-nez p3, :cond_1

    .line 2
    sget-object v5, Lcom/facebook/imagepipeline/common/RotationOptions;->c:Lcom/facebook/imagepipeline/common/RotationOptions;

    goto :goto_1

    :cond_1
    move-object/from16 v5, p3

    .line 3
    :goto_1
    iget-boolean v6, v1, Lcom/facebook/imagepipeline/transcoder/SimpleImageTranscoder;->a:Z

    const/4 v7, 0x1

    if-nez v6, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    .line 4
    :cond_2
    iget v6, v1, Lcom/facebook/imagepipeline/transcoder/SimpleImageTranscoder;->b:I

    .line 5
    invoke-static {v5, v0, v6}, Lcom/facebook/imagepipeline/transcoder/DownsampleUtil;->a(Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/image/EncodedImage;I)I

    move-result v6

    .line 6
    :goto_2
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 7
    iput v6, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v9, 0x2

    .line 8
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->e()Ljava/io/InputStream;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v11, v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v8, :cond_4

    .line 9
    sget-object v0, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    check-cast v0, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    sget-object v0, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    check-cast v0, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;

    const-string v4, "Couldn\'t decode the EncodedImage InputStream ! "

    .line 11
    invoke-virtual {v0, v2, v3, v4}, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->c(ILjava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_3
    new-instance v0, Lcom/facebook/imagepipeline/transcoder/ImageTranscodeResult;

    invoke-direct {v0, v9}, Lcom/facebook/imagepipeline/transcoder/ImageTranscodeResult;-><init>(I)V

    return-object v0

    .line 13
    :cond_4
    sget-object v10, Lcom/facebook/imagepipeline/transcoder/JpegTranscoderUtils;->a:Lcom/facebook/common/internal/ImmutableList;

    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->r()V

    .line 15
    iget v12, v0, Lcom/facebook/imagepipeline/image/EncodedImage;->v:I

    .line 16
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 17
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 18
    invoke-static {v5, v0}, Lcom/facebook/imagepipeline/transcoder/JpegTranscoderUtils;->a(Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/image/EncodedImage;)I

    move-result v0

    .line 19
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v12, -0x40800000    # -1.0f

    if-eq v0, v9, :cond_8

    const/4 v13, 0x7

    if-eq v0, v13, :cond_7

    const/4 v13, 0x4

    if-eq v0, v13, :cond_6

    const/4 v13, 0x5

    if-eq v0, v13, :cond_5

    goto :goto_3

    :cond_5
    const/high16 v0, 0x42b40000    # 90.0f

    .line 20
    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 21
    invoke-virtual {v5, v12, v10}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_4

    :cond_6
    const/high16 v0, 0x43340000    # 180.0f

    .line 22
    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 23
    invoke-virtual {v5, v12, v10}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_4

    :cond_7
    const/high16 v0, -0x3d4c0000    # -90.0f

    .line 24
    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 25
    invoke-virtual {v5, v12, v10}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_4

    .line 26
    :cond_8
    invoke-virtual {v5, v12, v10}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_4

    .line 27
    :cond_9
    invoke-static {v5, v0}, Lcom/facebook/imagepipeline/transcoder/JpegTranscoderUtils;->b(Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/image/EncodedImage;)I

    move-result v0

    if-eqz v0, :cond_a

    .line 28
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v0, v0

    .line 29
    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_4

    :cond_a
    :goto_3
    move-object v5, v11

    :goto_4
    move-object/from16 v17, v5

    if-eqz v17, :cond_b

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 30
    :try_start_1
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    .line 31
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    const/16 v18, 0x0

    move-object v12, v8

    .line 32
    invoke-static/range {v12 .. v18}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v0

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v5, v8

    goto :goto_7

    :catch_0
    move-exception v0

    move-object v5, v8

    goto :goto_6

    :cond_b
    move-object v5, v8

    .line 33
    :goto_5
    :try_start_2
    invoke-static {v11}, Lcom/facebook/imagepipeline/transcoder/SimpleImageTranscoder;->e(Lcom/facebook/imageformat/ImageFormat;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v10, p2

    invoke-virtual {v5, v0, v4, v10}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 34
    new-instance v0, Lcom/facebook/imagepipeline/transcoder/ImageTranscodeResult;

    if-le v6, v7, :cond_c

    const/4 v7, 0x0

    :cond_c
    invoke-direct {v0, v7}, Lcom/facebook/imagepipeline/transcoder/ImageTranscodeResult;-><init>(I)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 35
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 36
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0

    :catchall_1
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    .line 37
    :goto_6
    :try_start_3
    invoke-static {v3, v2, v0}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    new-instance v0, Lcom/facebook/imagepipeline/transcoder/ImageTranscodeResult;

    invoke-direct {v0, v9}, Lcom/facebook/imagepipeline/transcoder/ImageTranscodeResult;-><init>(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 39
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 40
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0

    .line 41
    :goto_7
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 42
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 43
    throw v0

    :catch_2
    move-exception v0

    .line 44
    invoke-static {v3, v2, v0}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    new-instance v0, Lcom/facebook/imagepipeline/transcoder/ImageTranscodeResult;

    invoke-direct {v0, v9}, Lcom/facebook/imagepipeline/transcoder/ImageTranscodeResult;-><init>(I)V

    return-object v0
.end method

.method public d(Lcom/facebook/imageformat/ImageFormat;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/imageformat/DefaultImageFormats;->k:Lcom/facebook/imageformat/ImageFormat;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/facebook/imageformat/DefaultImageFormats;->a:Lcom/facebook/imageformat/ImageFormat;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
