.class public Lcom/shabakaty/downloader/uy1;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-common@@16.3.0"


# direct methods
.method public static a(Lcom/shabakaty/downloader/k12;Z)Ljava/nio/ByteBuffer;
    .locals 14
    .param p0    # Lcom/shabakaty/downloader/k12;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/k12;->f:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const-string v3, "null reference"

    if-eq v0, v1, :cond_6

    const/16 v4, 0x11

    const/4 v5, 0x0

    if-eq v0, v4, :cond_4

    const/16 p1, 0x23

    if-eq v0, p1, :cond_1

    const p0, 0x32315659

    if-eq v0, p0, :cond_0

    .line 2
    new-instance p0, Lcom/shabakaty/downloader/au2;

    const/16 p1, 0xd

    const-string v0, "Unsupported image format"

    invoke-direct {p0, v0, p1}, Lcom/shabakaty/downloader/au2;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 3
    :cond_0
    invoke-static {v5, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    throw v5

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k12;->a()[Landroid/media/Image$Plane;

    move-result-object p1

    .line 5
    invoke-static {p1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iget v0, p0, Lcom/shabakaty/downloader/k12;->c:I

    .line 7
    iget p0, p0, Lcom/shabakaty/downloader/k12;->d:I

    mul-int v3, v0, p0

    .line 8
    div-int/lit8 v4, v3, 0x4

    add-int/2addr v4, v4

    add-int/2addr v4, v3

    .line 9
    new-array v10, v4, [B

    const/4 v11, 0x1

    .line 10
    aget-object v4, p1, v11

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    const/4 v12, 0x2

    .line 11
    aget-object v5, p1, v12

    invoke-virtual {v5}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 12
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    .line 13
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    add-int/lit8 v8, v6, 0x1

    .line 14
    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/lit8 v8, v7, -0x1

    .line 15
    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    add-int v8, v3, v3

    .line 16
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    div-int/lit8 v8, v8, 0x4

    add-int/lit8 v13, v8, -0x2

    if-ne v9, v13, :cond_2

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->compareTo(Ljava/nio/ByteBuffer;)I

    move-result v9

    if-nez v9, :cond_2

    const/4 v9, 0x1

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    .line 17
    :goto_0
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 18
    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    if-eqz v9, :cond_3

    .line 19
    aget-object p0, p1, v2

    invoke-virtual {p0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0, v10, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 20
    aget-object p0, p1, v11

    invoke-virtual {p0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 21
    aget-object p1, p1, v12

    invoke-virtual {p1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 22
    invoke-virtual {p1, v10, v3, v11}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v3, v11

    add-int/2addr v8, v1

    .line 23
    invoke-virtual {p0, v10, v3, v8}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 24
    :cond_3
    aget-object v4, p1, v2

    const/4 v8, 0x0

    const/4 v9, 0x1

    move v5, v0

    move v6, p0

    move-object v7, v10

    invoke-static/range {v4 .. v9}, Lcom/shabakaty/downloader/uy1;->b(Landroid/media/Image$Plane;II[BII)V

    .line 25
    aget-object v4, p1, v11

    add-int/lit8 v8, v3, 0x1

    const/4 v1, 0x2

    const/4 v9, 0x2

    invoke-static/range {v4 .. v9}, Lcom/shabakaty/downloader/uy1;->b(Landroid/media/Image$Plane;II[BII)V

    .line 26
    aget-object v4, p1, v12

    move v8, v3

    move v9, v1

    invoke-static/range {v4 .. v9}, Lcom/shabakaty/downloader/uy1;->b(Landroid/media/Image$Plane;II[BII)V

    .line 27
    :goto_1
    invoke-static {v10}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    :cond_4
    if-eqz p1, :cond_5

    .line 28
    invoke-static {v5, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    throw v5

    .line 29
    :cond_5
    invoke-static {v5, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    throw v5

    .line 30
    :cond_6
    iget-object v0, p0, Lcom/shabakaty/downloader/k12;->a:Landroid/graphics/Bitmap;

    .line 31
    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    .line 33
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    mul-int v9, p0, v8

    .line 34
    new-array v10, v9, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v10

    move v3, p0

    move v6, p0

    move v7, v8

    .line 35
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    int-to-double v0, v8

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    .line 36
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/2addr v0, v0

    int-to-double v4, p0

    div-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    mul-int v0, v0, v1

    add-int/2addr v0, v9

    if-eqz p1, :cond_7

    .line 37
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    goto :goto_2

    .line 38
    :cond_7
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    :goto_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v0, v8, :cond_a

    const/4 v3, 0x0

    :goto_4
    if-ge v3, p0, :cond_9

    .line 39
    aget v4, v10, v1

    shr-int/lit8 v5, v4, 0x10

    const/16 v6, 0xff

    and-int/2addr v5, v6

    shr-int/lit8 v7, v4, 0x8

    and-int/2addr v7, v6

    and-int/2addr v4, v6

    mul-int/lit8 v11, v5, -0x26

    mul-int/lit8 v12, v7, 0x4a

    sub-int/2addr v11, v12

    mul-int/lit8 v12, v4, 0x70

    add-int/2addr v12, v11

    add-int/lit16 v12, v12, 0x80

    shr-int/lit8 v11, v12, 0x8

    add-int/lit16 v11, v11, 0x80

    mul-int/lit8 v12, v5, 0x70

    mul-int/lit8 v13, v7, 0x5e

    sub-int/2addr v12, v13

    mul-int/lit8 v13, v4, 0x12

    sub-int/2addr v12, v13

    add-int/lit16 v12, v12, 0x80

    shr-int/lit8 v12, v12, 0x8

    add-int/lit16 v12, v12, 0x80

    add-int/lit8 v13, v2, 0x1

    mul-int/lit8 v5, v5, 0x42

    mul-int/lit16 v7, v7, 0x81

    add-int/2addr v7, v5

    mul-int/lit8 v4, v4, 0x19

    add-int/2addr v4, v7

    add-int/lit16 v4, v4, 0x80

    shr-int/lit8 v4, v4, 0x8

    add-int/lit8 v4, v4, 0x10

    .line 40
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-byte v4, v4

    invoke-virtual {p1, v2, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    rem-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_8

    rem-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_8

    add-int/lit8 v2, v9, 0x1

    .line 41
    invoke-static {v6, v12}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-byte v4, v4

    invoke-virtual {p1, v9, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v9, v2, 0x1

    .line 42
    invoke-static {v6, v11}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-byte v4, v4

    invoke-virtual {p1, v2, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    :cond_8
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    move v2, v13

    goto :goto_4

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_a
    return-object p1
.end method

.method public static final b(Landroid/media/Image$Plane;II[BII)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {p0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v2

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v1

    div-int/2addr v2, v1

    if-nez v2, :cond_0

    return-void

    .line 4
    :cond_0
    div-int/2addr p2, v2

    .line 5
    div-int/2addr p1, p2

    const/4 p2, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    move v5, v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, p1, :cond_1

    .line 6
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    aput-byte v6, p3, p4

    add-int/2addr p4, p5

    .line 7
    invoke-virtual {p0}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {p0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
