.class public final Lcom/shabakaty/downloader/i87;
.super Lcom/shabakaty/downloader/n47;
.source "com.google.mlkit:barcode-scanning@@16.1.1"


# instance fields
.field public final a:Lcom/google/android/libraries/barhopper/RecognitionOptions;

.field public b:Lcom/google/android/libraries/barhopper/BarhopperV2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/p37;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/n47;-><init>()V

    new-instance v0, Lcom/google/android/libraries/barhopper/RecognitionOptions;

    .line 2
    invoke-direct {v0}, Lcom/google/android/libraries/barhopper/RecognitionOptions;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/i87;->a:Lcom/google/android/libraries/barhopper/RecognitionOptions;

    .line 3
    iget p1, p1, Lcom/shabakaty/downloader/p37;->r:I

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/libraries/barhopper/RecognitionOptions;->a(I)V

    return-void
.end method

.method public static h2(Lcom/google/android/libraries/barhopper/Barcode$CalendarDateTime;)Lcom/shabakaty/downloader/t17;
    .locals 10

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v9, Lcom/shabakaty/downloader/t17;

    iget v1, p0, Lcom/google/android/libraries/barhopper/Barcode$CalendarDateTime;->year:I

    iget v2, p0, Lcom/google/android/libraries/barhopper/Barcode$CalendarDateTime;->month:I

    iget v3, p0, Lcom/google/android/libraries/barhopper/Barcode$CalendarDateTime;->day:I

    iget v4, p0, Lcom/google/android/libraries/barhopper/Barcode$CalendarDateTime;->hours:I

    iget v5, p0, Lcom/google/android/libraries/barhopper/Barcode$CalendarDateTime;->minutes:I

    iget v6, p0, Lcom/google/android/libraries/barhopper/Barcode$CalendarDateTime;->seconds:I

    iget-boolean v7, p0, Lcom/google/android/libraries/barhopper/Barcode$CalendarDateTime;->isUtc:Z

    iget-object v8, p0, Lcom/google/android/libraries/barhopper/Barcode$CalendarDateTime;->rawValue:Ljava/lang/String;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/shabakaty/downloader/t17;-><init>(IIIIIIZLjava/lang/String;)V

    return-object v9
.end method


# virtual methods
.method public final d()V
    .locals 6

    iget-object v0, p0, Lcom/shabakaty/downloader/i87;->b:Lcom/google/android/libraries/barhopper/BarhopperV2;

    if-eqz v0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Lcom/google/android/libraries/barhopper/BarhopperV2;

    invoke-direct {v0}, Lcom/google/android/libraries/barhopper/BarhopperV2;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/i87;->b:Lcom/google/android/libraries/barhopper/BarhopperV2;

    .line 2
    iget-wide v1, v0, Lcom/google/android/libraries/barhopper/BarhopperV2;->r:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    const-string v0, "BarhopperV2"

    const-string v1, "Native context already exists."

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/libraries/barhopper/BarhopperV2;->createNative()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/libraries/barhopper/BarhopperV2;->r:J

    cmp-long v0, v1, v3

    if-eqz v0, :cond_2

    :goto_0
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to create native context."

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/i87;->b:Lcom/google/android/libraries/barhopper/BarhopperV2;

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {v0}, Lcom/google/android/libraries/barhopper/BarhopperV2;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shabakaty/downloader/i87;->b:Lcom/google/android/libraries/barhopper/BarhopperV2;

    :cond_0
    return-void
.end method

.method public final g2(Ljava/nio/ByteBuffer;Lcom/shabakaty/downloader/z57;)[Lcom/google/android/libraries/barhopper/Barcode;
    .locals 9

    iget-object v0, p0, Lcom/shabakaty/downloader/i87;->b:Lcom/google/android/libraries/barhopper/BarhopperV2;

    const-string v1, "null reference"

    .line 1
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget v3, p2, Lcom/shabakaty/downloader/z57;->s:I

    .line 5
    iget v4, p2, Lcom/shabakaty/downloader/z57;->t:I

    .line 6
    iget-object v6, p0, Lcom/shabakaty/downloader/i87;->a:Lcom/google/android/libraries/barhopper/RecognitionOptions;

    .line 7
    iget-wide v1, v0, Lcom/google/android/libraries/barhopper/BarhopperV2;->r:J

    const-wide/16 v7, 0x0

    cmp-long p2, v1, v7

    if-eqz p2, :cond_0

    move-object v5, p1

    .line 8
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/libraries/barhopper/BarhopperV2;->recognizeBufferNative(JIILjava/nio/ByteBuffer;Lcom/google/android/libraries/barhopper/RecognitionOptions;)[Lcom/google/android/libraries/barhopper/Barcode;

    move-result-object p1

    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Native context does not exist."

    .line 10
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    if-nez v1, :cond_2

    .line 12
    iget v1, p2, Lcom/shabakaty/downloader/z57;->s:I

    .line 13
    iget p2, p2, Lcom/shabakaty/downloader/z57;->t:I

    .line 14
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    iget-object v2, p0, Lcom/shabakaty/downloader/i87;->a:Lcom/google/android/libraries/barhopper/RecognitionOptions;

    .line 15
    invoke-virtual {v0, v1, p2, p1, v2}, Lcom/google/android/libraries/barhopper/BarhopperV2;->a(II[BLcom/google/android/libraries/barhopper/RecognitionOptions;)[Lcom/google/android/libraries/barhopper/Barcode;

    move-result-object p1

    goto :goto_0

    .line 16
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    .line 17
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 18
    iget p1, p2, Lcom/shabakaty/downloader/z57;->s:I

    .line 19
    iget p2, p2, Lcom/shabakaty/downloader/z57;->t:I

    .line 20
    iget-object v2, p0, Lcom/shabakaty/downloader/i87;->a:Lcom/google/android/libraries/barhopper/RecognitionOptions;

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/google/android/libraries/barhopper/BarhopperV2;->a(II[BLcom/google/android/libraries/barhopper/RecognitionOptions;)[Lcom/google/android/libraries/barhopper/Barcode;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final y1(Lcom/shabakaty/downloader/gx1;Lcom/shabakaty/downloader/z57;)Ljava/util/List;
    .locals 45
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/gx1;",
            "Lcom/shabakaty/downloader/z57;",
            ")",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/k37;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    iget v2, v1, Lcom/shabakaty/downloader/z57;->r:I

    const/4 v3, 0x0

    const/4 v4, -0x1

    const-string v5, "null reference"

    if-eq v2, v4, :cond_3

    const/16 v4, 0x11

    if-eq v2, v4, :cond_2

    const/16 v4, 0x23

    if-eq v2, v4, :cond_1

    const v3, 0x32315659

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 3
    iget v1, v1, Lcom/shabakaty/downloader/z57;->r:I

    const/16 v3, 0x25

    const-string v4, "Unsupported image format: "

    .line 4
    invoke-static {v3, v4, v1}, Lcom/shabakaty/downloader/gl3;->a(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/shabakaty/downloader/p43;->h2(Lcom/shabakaty/downloader/gx1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/Image;

    .line 6
    invoke-static {v2, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    invoke-virtual {v2}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/shabakaty/downloader/i87;->g2(Ljava/nio/ByteBuffer;Lcom/shabakaty/downloader/z57;)[Lcom/google/android/libraries/barhopper/Barcode;

    move-result-object v2

    goto :goto_1

    .line 8
    :cond_2
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/shabakaty/downloader/p43;->h2(Lcom/shabakaty/downloader/gx1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2, v1}, Lcom/shabakaty/downloader/i87;->g2(Ljava/nio/ByteBuffer;Lcom/shabakaty/downloader/z57;)[Lcom/google/android/libraries/barhopper/Barcode;

    move-result-object v2

    goto :goto_1

    .line 9
    :cond_3
    iget-object v2, v0, Lcom/shabakaty/downloader/i87;->b:Lcom/google/android/libraries/barhopper/BarhopperV2;

    .line 10
    invoke-static {v2, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    invoke-static/range {p1 .. p1}, Lcom/shabakaty/downloader/p43;->h2(Lcom/shabakaty/downloader/gx1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    iget-object v4, v0, Lcom/shabakaty/downloader/i87;->a:Lcom/google/android/libraries/barhopper/RecognitionOptions;

    .line 12
    iget-wide v5, v2, Lcom/google/android/libraries/barhopper/BarhopperV2;->r:J

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-eqz v9, :cond_1a

    .line 13
    invoke-virtual {v2, v5, v6, v3, v4}, Lcom/google/android/libraries/barhopper/BarhopperV2;->recognizeBitmapNative(JLandroid/graphics/Bitmap;Lcom/google/android/libraries/barhopper/RecognitionOptions;)[Lcom/google/android/libraries/barhopper/Barcode;

    move-result-object v2

    .line 14
    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    .line 15
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 16
    sget-object v4, Lcom/shabakaty/downloader/tz1;->a:Lcom/shabakaty/downloader/tz1;

    .line 17
    iget v5, v1, Lcom/shabakaty/downloader/z57;->s:I

    .line 18
    iget v6, v1, Lcom/shabakaty/downloader/z57;->t:I

    .line 19
    iget v7, v1, Lcom/shabakaty/downloader/z57;->u:I

    .line 20
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v7, :cond_4

    const/4 v4, 0x0

    goto :goto_3

    .line 21
    :cond_4
    new-instance v4, Landroid/graphics/Matrix;

    .line 22
    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    neg-int v8, v5

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    neg-int v10, v6

    int-to-float v10, v10

    div-float/2addr v10, v9

    .line 23
    invoke-virtual {v4, v8, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    mul-int/lit8 v8, v7, 0x5a

    int-to-float v8, v8

    .line 24
    invoke-virtual {v4, v8}, Landroid/graphics/Matrix;->postRotate(F)Z

    rem-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_5

    move v8, v6

    goto :goto_2

    :cond_5
    move v8, v5

    :goto_2
    if-nez v7, :cond_6

    move v5, v6

    :cond_6
    int-to-float v6, v8

    div-float/2addr v6, v9

    int-to-float v5, v5

    div-float/2addr v5, v9

    .line 25
    invoke-virtual {v4, v6, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 26
    :goto_3
    array-length v5, v2

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v5, :cond_19

    aget-object v7, v2, v6

    .line 27
    iget-object v8, v7, Lcom/google/android/libraries/barhopper/Barcode;->cornerPoints:[Landroid/graphics/Point;

    if-eqz v8, :cond_8

    if-eqz v4, :cond_8

    const/16 v8, 0x8

    new-array v8, v8, [F

    const/4 v9, 0x0

    .line 28
    :goto_5
    iget-object v10, v7, Lcom/google/android/libraries/barhopper/Barcode;->cornerPoints:[Landroid/graphics/Point;

    array-length v11, v10

    if-ge v9, v11, :cond_7

    add-int v11, v9, v9

    .line 29
    aget-object v12, v10, v9

    iget v12, v12, Landroid/graphics/Point;->x:I

    int-to-float v12, v12

    aput v12, v8, v11

    add-int/lit8 v11, v11, 0x1

    .line 30
    aget-object v10, v10, v9

    iget v10, v10, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    aput v10, v8, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 31
    :cond_7
    invoke-virtual {v4, v8}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 32
    iget v9, v1, Lcom/shabakaty/downloader/z57;->u:I

    const/4 v10, 0x0

    .line 33
    :goto_6
    iget-object v11, v7, Lcom/google/android/libraries/barhopper/Barcode;->cornerPoints:[Landroid/graphics/Point;

    array-length v12, v11

    if-ge v10, v12, :cond_8

    add-int v13, v10, v9

    .line 34
    rem-int/2addr v13, v12

    aget-object v11, v11, v13

    add-int v12, v10, v10

    .line 35
    aget v13, v8, v12

    float-to-int v13, v13

    iput v13, v11, Landroid/graphics/Point;->x:I

    add-int/lit8 v12, v12, 0x1

    .line 36
    aget v12, v8, v12

    float-to-int v12, v12

    iput v12, v11, Landroid/graphics/Point;->y:I

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 37
    :cond_8
    iget-object v8, v7, Lcom/google/android/libraries/barhopper/Barcode;->email:Lcom/google/android/libraries/barhopper/Barcode$Email;

    if-eqz v8, :cond_9

    .line 38
    new-instance v9, Lcom/shabakaty/downloader/f27;

    iget v10, v8, Lcom/google/android/libraries/barhopper/Barcode$Email;->type:I

    iget-object v11, v8, Lcom/google/android/libraries/barhopper/Barcode$Email;->address:Ljava/lang/String;

    iget-object v12, v8, Lcom/google/android/libraries/barhopper/Barcode$Email;->subject:Ljava/lang/String;

    iget-object v8, v8, Lcom/google/android/libraries/barhopper/Barcode$Email;->body:Ljava/lang/String;

    invoke-direct {v9, v10, v11, v12, v8}, Lcom/shabakaty/downloader/f27;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_9
    const/4 v9, 0x0

    :goto_7
    move-object/from16 v17, v9

    .line 39
    iget-object v8, v7, Lcom/google/android/libraries/barhopper/Barcode;->phone:Lcom/google/android/libraries/barhopper/Barcode$Phone;

    if-eqz v8, :cond_a

    .line 40
    new-instance v9, Lcom/shabakaty/downloader/z27;

    iget v10, v8, Lcom/google/android/libraries/barhopper/Barcode$Phone;->type:I

    iget-object v8, v8, Lcom/google/android/libraries/barhopper/Barcode$Phone;->number:Ljava/lang/String;

    invoke-direct {v9, v10, v8}, Lcom/shabakaty/downloader/z27;-><init>(ILjava/lang/String;)V

    move-object/from16 v18, v9

    goto :goto_8

    :cond_a
    const/4 v8, 0x0

    move-object/from16 v18, v8

    .line 41
    :goto_8
    iget-object v8, v7, Lcom/google/android/libraries/barhopper/Barcode;->sms:Lcom/google/android/libraries/barhopper/Barcode$Sms;

    if-eqz v8, :cond_b

    .line 42
    new-instance v9, Lcom/shabakaty/downloader/d37;

    iget-object v10, v8, Lcom/google/android/libraries/barhopper/Barcode$Sms;->message:Ljava/lang/String;

    iget-object v8, v8, Lcom/google/android/libraries/barhopper/Barcode$Sms;->phoneNumber:Ljava/lang/String;

    invoke-direct {v9, v10, v8}, Lcom/shabakaty/downloader/d37;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v19, v9

    goto :goto_9

    :cond_b
    const/4 v8, 0x0

    move-object/from16 v19, v8

    .line 43
    :goto_9
    iget-object v8, v7, Lcom/google/android/libraries/barhopper/Barcode;->wifi:Lcom/google/android/libraries/barhopper/Barcode$WiFi;

    if-eqz v8, :cond_c

    .line 44
    new-instance v9, Lcom/shabakaty/downloader/h37;

    iget-object v10, v8, Lcom/google/android/libraries/barhopper/Barcode$WiFi;->ssid:Ljava/lang/String;

    iget-object v11, v8, Lcom/google/android/libraries/barhopper/Barcode$WiFi;->password:Ljava/lang/String;

    iget v8, v8, Lcom/google/android/libraries/barhopper/Barcode$WiFi;->encryptionType:I

    invoke-direct {v9, v10, v11, v8}, Lcom/shabakaty/downloader/h37;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v20, v9

    goto :goto_a

    :cond_c
    const/4 v8, 0x0

    move-object/from16 v20, v8

    .line 45
    :goto_a
    iget-object v8, v7, Lcom/google/android/libraries/barhopper/Barcode;->url:Lcom/google/android/libraries/barhopper/Barcode$UrlBookmark;

    if-eqz v8, :cond_d

    .line 46
    new-instance v9, Lcom/shabakaty/downloader/e37;

    iget-object v10, v8, Lcom/google/android/libraries/barhopper/Barcode$UrlBookmark;->title:Ljava/lang/String;

    iget-object v8, v8, Lcom/google/android/libraries/barhopper/Barcode$UrlBookmark;->url:Ljava/lang/String;

    invoke-direct {v9, v10, v8}, Lcom/shabakaty/downloader/e37;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v21, v9

    goto :goto_b

    :cond_d
    const/4 v8, 0x0

    move-object/from16 v21, v8

    .line 47
    :goto_b
    iget-object v8, v7, Lcom/google/android/libraries/barhopper/Barcode;->geoPoint:Lcom/google/android/libraries/barhopper/Barcode$GeoPoint;

    if-eqz v8, :cond_e

    .line 48
    new-instance v9, Lcom/shabakaty/downloader/h27;

    iget-wide v10, v8, Lcom/google/android/libraries/barhopper/Barcode$GeoPoint;->lat:D

    iget-wide v12, v8, Lcom/google/android/libraries/barhopper/Barcode$GeoPoint;->lng:D

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/shabakaty/downloader/h27;-><init>(DD)V

    move-object/from16 v22, v9

    goto :goto_c

    :cond_e
    const/4 v8, 0x0

    move-object/from16 v22, v8

    .line 49
    :goto_c
    iget-object v8, v7, Lcom/google/android/libraries/barhopper/Barcode;->calendarEvent:Lcom/google/android/libraries/barhopper/Barcode$CalendarEvent;

    if-eqz v8, :cond_f

    .line 50
    new-instance v23, Lcom/shabakaty/downloader/w17;

    iget-object v10, v8, Lcom/google/android/libraries/barhopper/Barcode$CalendarEvent;->summary:Ljava/lang/String;

    iget-object v11, v8, Lcom/google/android/libraries/barhopper/Barcode$CalendarEvent;->description:Ljava/lang/String;

    iget-object v12, v8, Lcom/google/android/libraries/barhopper/Barcode$CalendarEvent;->location:Ljava/lang/String;

    iget-object v13, v8, Lcom/google/android/libraries/barhopper/Barcode$CalendarEvent;->organizer:Ljava/lang/String;

    iget-object v14, v8, Lcom/google/android/libraries/barhopper/Barcode$CalendarEvent;->status:Ljava/lang/String;

    iget-object v9, v8, Lcom/google/android/libraries/barhopper/Barcode$CalendarEvent;->start:Lcom/google/android/libraries/barhopper/Barcode$CalendarDateTime;

    .line 51
    invoke-static {v9}, Lcom/shabakaty/downloader/i87;->h2(Lcom/google/android/libraries/barhopper/Barcode$CalendarDateTime;)Lcom/shabakaty/downloader/t17;

    move-result-object v15

    iget-object v8, v8, Lcom/google/android/libraries/barhopper/Barcode$CalendarEvent;->end:Lcom/google/android/libraries/barhopper/Barcode$CalendarDateTime;

    .line 52
    invoke-static {v8}, Lcom/shabakaty/downloader/i87;->h2(Lcom/google/android/libraries/barhopper/Barcode$CalendarDateTime;)Lcom/shabakaty/downloader/t17;

    move-result-object v16

    move-object/from16 v9, v23

    invoke-direct/range {v9 .. v16}, Lcom/shabakaty/downloader/w17;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/t17;Lcom/shabakaty/downloader/t17;)V

    goto :goto_d

    :cond_f
    const/4 v8, 0x0

    move-object/from16 v23, v8

    .line 53
    :goto_d
    iget-object v8, v7, Lcom/google/android/libraries/barhopper/Barcode;->contactInfo:Lcom/google/android/libraries/barhopper/Barcode$ContactInfo;

    if-eqz v8, :cond_17

    .line 54
    new-instance v24, Lcom/shabakaty/downloader/z17;

    iget-object v9, v8, Lcom/google/android/libraries/barhopper/Barcode$ContactInfo;->name:Lcom/google/android/libraries/barhopper/Barcode$PersonName;

    if-eqz v9, :cond_10

    .line 55
    new-instance v10, Lcom/shabakaty/downloader/x27;

    iget-object v11, v9, Lcom/google/android/libraries/barhopper/Barcode$PersonName;->formattedName:Ljava/lang/String;

    iget-object v12, v9, Lcom/google/android/libraries/barhopper/Barcode$PersonName;->pronunciation:Ljava/lang/String;

    iget-object v13, v9, Lcom/google/android/libraries/barhopper/Barcode$PersonName;->prefix:Ljava/lang/String;

    iget-object v14, v9, Lcom/google/android/libraries/barhopper/Barcode$PersonName;->first:Ljava/lang/String;

    iget-object v15, v9, Lcom/google/android/libraries/barhopper/Barcode$PersonName;->middle:Ljava/lang/String;

    iget-object v0, v9, Lcom/google/android/libraries/barhopper/Barcode$PersonName;->last:Ljava/lang/String;

    iget-object v9, v9, Lcom/google/android/libraries/barhopper/Barcode$PersonName;->suffix:Ljava/lang/String;

    move-object/from16 v25, v10

    move-object/from16 v26, v11

    move-object/from16 v27, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    move-object/from16 v30, v15

    move-object/from16 v31, v0

    move-object/from16 v32, v9

    invoke-direct/range {v25 .. v32}, Lcom/shabakaty/downloader/x27;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_10
    const/4 v0, 0x0

    move-object v10, v0

    :goto_e
    iget-object v11, v8, Lcom/google/android/libraries/barhopper/Barcode$ContactInfo;->organization:Ljava/lang/String;

    iget-object v12, v8, Lcom/google/android/libraries/barhopper/Barcode$ContactInfo;->title:Ljava/lang/String;

    iget-object v0, v8, Lcom/google/android/libraries/barhopper/Barcode$ContactInfo;->phones:[Lcom/google/android/libraries/barhopper/Barcode$Phone;

    if-nez v0, :cond_11

    const/4 v0, 0x0

    move-object v13, v0

    goto :goto_10

    .line 56
    :cond_11
    array-length v9, v0

    new-array v9, v9, [Lcom/shabakaty/downloader/z27;

    const/4 v13, 0x0

    :goto_f
    array-length v14, v0

    if-ge v13, v14, :cond_12

    .line 57
    new-instance v14, Lcom/shabakaty/downloader/z27;

    aget-object v15, v0, v13

    move-object/from16 v16, v0

    iget v0, v15, Lcom/google/android/libraries/barhopper/Barcode$Phone;->type:I

    iget-object v15, v15, Lcom/google/android/libraries/barhopper/Barcode$Phone;->number:Ljava/lang/String;

    invoke-direct {v14, v0, v15}, Lcom/shabakaty/downloader/z27;-><init>(ILjava/lang/String;)V

    aput-object v14, v9, v13

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v16

    goto :goto_f

    :cond_12
    move-object v13, v9

    .line 58
    :goto_10
    iget-object v0, v8, Lcom/google/android/libraries/barhopper/Barcode$ContactInfo;->emails:[Lcom/google/android/libraries/barhopper/Barcode$Email;

    if-nez v0, :cond_13

    const/4 v0, 0x0

    move-object v14, v0

    move-object/from16 v26, v2

    move-object/from16 p1, v4

    goto :goto_12

    .line 59
    :cond_13
    array-length v9, v0

    new-array v9, v9, [Lcom/shabakaty/downloader/f27;

    const/4 v14, 0x0

    :goto_11
    array-length v15, v0

    if-ge v14, v15, :cond_14

    .line 60
    new-instance v15, Lcom/shabakaty/downloader/f27;

    aget-object v1, v0, v14

    move-object/from16 v16, v0

    iget v0, v1, Lcom/google/android/libraries/barhopper/Barcode$Email;->type:I

    move-object/from16 v26, v2

    iget-object v2, v1, Lcom/google/android/libraries/barhopper/Barcode$Email;->address:Ljava/lang/String;

    move-object/from16 p1, v4

    iget-object v4, v1, Lcom/google/android/libraries/barhopper/Barcode$Email;->subject:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/libraries/barhopper/Barcode$Email;->body:Ljava/lang/String;

    invoke-direct {v15, v0, v2, v4, v1}, Lcom/shabakaty/downloader/f27;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v15, v9, v14

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v4, p1

    move-object/from16 v1, p2

    move-object/from16 v0, v16

    move-object/from16 v2, v26

    goto :goto_11

    :cond_14
    move-object/from16 v26, v2

    move-object/from16 p1, v4

    move-object v14, v9

    .line 61
    :goto_12
    iget-object v15, v8, Lcom/google/android/libraries/barhopper/Barcode$ContactInfo;->urls:[Ljava/lang/String;

    iget-object v0, v8, Lcom/google/android/libraries/barhopper/Barcode$ContactInfo;->addresses:[Lcom/google/android/libraries/barhopper/Barcode$Address;

    if-nez v0, :cond_15

    const/4 v0, 0x0

    move-object/from16 v16, v0

    goto :goto_14

    .line 62
    :cond_15
    array-length v1, v0

    new-array v1, v1, [Lcom/shabakaty/downloader/q17;

    const/4 v2, 0x0

    :goto_13
    array-length v4, v0

    if-ge v2, v4, :cond_16

    .line 63
    new-instance v4, Lcom/shabakaty/downloader/q17;

    aget-object v8, v0, v2

    iget v9, v8, Lcom/google/android/libraries/barhopper/Barcode$Address;->type:I

    iget-object v8, v8, Lcom/google/android/libraries/barhopper/Barcode$Address;->addressLines:[Ljava/lang/String;

    invoke-direct {v4, v9, v8}, Lcom/shabakaty/downloader/q17;-><init>(I[Ljava/lang/String;)V

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_16
    move-object/from16 v16, v1

    :goto_14
    move-object/from16 v9, v24

    .line 64
    invoke-direct/range {v9 .. v16}, Lcom/shabakaty/downloader/z17;-><init>(Lcom/shabakaty/downloader/x27;Ljava/lang/String;Ljava/lang/String;[Lcom/shabakaty/downloader/z27;[Lcom/shabakaty/downloader/f27;[Ljava/lang/String;[Lcom/shabakaty/downloader/q17;)V

    goto :goto_15

    :cond_17
    move-object/from16 v26, v2

    move-object/from16 p1, v4

    const/4 v0, 0x0

    move-object/from16 v24, v0

    .line 65
    :goto_15
    iget-object v0, v7, Lcom/google/android/libraries/barhopper/Barcode;->driverLicense:Lcom/google/android/libraries/barhopper/Barcode$DriverLicense;

    if-eqz v0, :cond_18

    .line 66
    new-instance v1, Lcom/shabakaty/downloader/c27;

    iget-object v2, v0, Lcom/google/android/libraries/barhopper/Barcode$DriverLicense;->documentType:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/libraries/barhopper/Barcode$DriverLicense;->firstName:Ljava/lang/String;

    iget-object v8, v0, Lcom/google/android/libraries/barhopper/Barcode$DriverLicense;->middleName:Ljava/lang/String;

    iget-object v9, v0, Lcom/google/android/libraries/barhopper/Barcode$DriverLicense;->lastName:Ljava/lang/String;

    iget-object v10, v0, Lcom/google/android/libraries/barhopper/Barcode$DriverLicense;->gender:Ljava/lang/String;

    iget-object v11, v0, Lcom/google/android/libraries/barhopper/Barcode$DriverLicense;->addressStreet:Ljava/lang/String;

    iget-object v12, v0, Lcom/google/android/libraries/barhopper/Barcode$DriverLicense;->addressCity:Ljava/lang/String;

    iget-object v13, v0, Lcom/google/android/libraries/barhopper/Barcode$DriverLicense;->addressState:Ljava/lang/String;

    iget-object v14, v0, Lcom/google/android/libraries/barhopper/Barcode$DriverLicense;->addressZip:Ljava/lang/String;

    iget-object v15, v0, Lcom/google/android/libraries/barhopper/Barcode$DriverLicense;->licenseNumber:Ljava/lang/String;

    move/from16 v42, v5

    iget-object v5, v0, Lcom/google/android/libraries/barhopper/Barcode$DriverLicense;->issueDate:Ljava/lang/String;

    move/from16 v43, v6

    iget-object v6, v0, Lcom/google/android/libraries/barhopper/Barcode$DriverLicense;->expiryDate:Ljava/lang/String;

    move-object/from16 v44, v3

    iget-object v3, v0, Lcom/google/android/libraries/barhopper/Barcode$DriverLicense;->birthDate:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/libraries/barhopper/Barcode$DriverLicense;->issuingCountry:Ljava/lang/String;

    move-object/from16 v27, v1

    move-object/from16 v28, v2

    move-object/from16 v29, v4

    move-object/from16 v30, v8

    move-object/from16 v31, v9

    move-object/from16 v32, v10

    move-object/from16 v33, v11

    move-object/from16 v34, v12

    move-object/from16 v35, v13

    move-object/from16 v36, v14

    move-object/from16 v37, v15

    move-object/from16 v38, v5

    move-object/from16 v39, v6

    move-object/from16 v40, v3

    move-object/from16 v41, v0

    invoke-direct/range {v27 .. v41}, Lcom/shabakaty/downloader/c27;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v25, v1

    goto :goto_16

    :cond_18
    move-object/from16 v44, v3

    move/from16 v42, v5

    move/from16 v43, v6

    const/4 v0, 0x0

    move-object/from16 v25, v0

    .line 67
    :goto_16
    new-instance v0, Lcom/shabakaty/downloader/k37;

    iget v11, v7, Lcom/google/android/libraries/barhopper/Barcode;->format:I

    iget-object v12, v7, Lcom/google/android/libraries/barhopper/Barcode;->displayValue:Ljava/lang/String;

    iget-object v13, v7, Lcom/google/android/libraries/barhopper/Barcode;->rawValue:Ljava/lang/String;

    iget-object v14, v7, Lcom/google/android/libraries/barhopper/Barcode;->rawBytes:[B

    iget-object v15, v7, Lcom/google/android/libraries/barhopper/Barcode;->cornerPoints:[Landroid/graphics/Point;

    iget v1, v7, Lcom/google/android/libraries/barhopper/Barcode;->valueFormat:I

    move-object v10, v0

    move/from16 v16, v1

    invoke-direct/range {v10 .. v25}, Lcom/shabakaty/downloader/k37;-><init>(ILjava/lang/String;Ljava/lang/String;[B[Landroid/graphics/Point;ILcom/shabakaty/downloader/f27;Lcom/shabakaty/downloader/z27;Lcom/shabakaty/downloader/d37;Lcom/shabakaty/downloader/h37;Lcom/shabakaty/downloader/e37;Lcom/shabakaty/downloader/h27;Lcom/shabakaty/downloader/w17;Lcom/shabakaty/downloader/z17;Lcom/shabakaty/downloader/c27;)V

    move-object/from16 v1, v44

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v43, 0x1

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move-object v3, v1

    move-object/from16 v2, v26

    move/from16 v5, v42

    move-object/from16 v1, p2

    goto/16 :goto_4

    :cond_19
    move-object v1, v3

    return-object v1

    .line 68
    :cond_1a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Native context does not exist."

    .line 69
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
