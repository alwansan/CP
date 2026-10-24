.class public final Lcom/shabakaty/downloader/ro2;
.super Ljava/lang/Object;
.source "MediaCodecInfo.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Landroid/media/MediaCodecInfo$CodecCapabilities;

.field public final e:Z

.field public final f:Z

.field public final g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/ro2;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/shabakaty/downloader/ro2;->b:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/shabakaty/downloader/ro2;->c:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/shabakaty/downloader/ro2;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 7
    iput-boolean p8, p0, Lcom/shabakaty/downloader/ro2;->e:Z

    .line 8
    iput-boolean p10, p0, Lcom/shabakaty/downloader/ro2;->f:Z

    .line 9
    invoke-static {p2}, Lcom/shabakaty/downloader/nt2;->m(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/shabakaty/downloader/ro2;->g:Z

    return-void
.end method

.method public static a(Landroid/media/MediaCodecInfo$VideoCapabilities;II)Landroid/graphics/Point;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getWidthAlignment()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getHeightAlignment()I

    move-result p0

    .line 3
    new-instance v1, Landroid/graphics/Point;

    .line 4
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/sy4;->g(II)I

    move-result p1

    mul-int p1, p1, v0

    .line 5
    invoke-static {p2, p0}, Lcom/shabakaty/downloader/sy4;->g(II)I

    move-result p2

    mul-int p2, p2, p0

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method

.method public static b(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z
    .locals 3

    .line 1
    invoke-static {p0, p1, p2}, Lcom/shabakaty/downloader/ro2;->a(Landroid/media/MediaCodecInfo$VideoCapabilities;II)Landroid/graphics/Point;

    move-result-object p1

    .line 2
    iget p2, p1, Landroid/graphics/Point;->x:I

    .line 3
    iget p1, p1, Landroid/graphics/Point;->y:I

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    cmpl-double v2, p3, v0

    if-eqz v2, :cond_1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, p3, v0

    if-gez v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p3, p4}, Ljava/lang/Math;->floor(D)D

    move-result-wide p3

    .line 5
    invoke-virtual {p0, p2, p1, p3, p4}, Landroid/media/MediaCodecInfo$VideoCapabilities;->areSizeAndRateSupported(IID)Z

    move-result p0

    return p0

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {p0, p2, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result p0

    return p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Lcom/shabakaty/downloader/ro2;
    .locals 12

    move-object v1, p0

    move-object v4, p3

    .line 1
    new-instance v11, Lcom/shabakaty/downloader/ro2;

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-nez p7, :cond_4

    if-eqz v4, :cond_4

    .line 2
    sget v3, Lcom/shabakaty/downloader/sy4;->a:I

    const/16 v5, 0x13

    if-lt v3, v5, :cond_0

    const-string v5, "adaptive-playback"

    .line 3
    invoke-virtual {p3, v5}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_4

    const/16 v5, 0x16

    if-gt v3, v5, :cond_3

    .line 4
    sget-object v3, Lcom/shabakaty/downloader/sy4;->d:Ljava/lang/String;

    const-string v5, "ODROID-XU3"

    .line 5
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "Nexus 10"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    const-string v3, "OMX.Exynos.AVC.Decoder"

    .line 6
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "OMX.Exynos.AVC.Decoder.secure"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_4

    const/4 v8, 0x1

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    :goto_2
    const/16 v3, 0x15

    if-eqz v4, :cond_6

    .line 7
    sget v5, Lcom/shabakaty/downloader/sy4;->a:I

    if-lt v5, v3, :cond_5

    const-string v5, "tunneled-playback"

    .line 8
    invoke-virtual {p3, v5}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_6

    const/4 v9, 0x1

    goto :goto_4

    :cond_6
    const/4 v9, 0x0

    :goto_4
    if-nez p8, :cond_9

    if-eqz v4, :cond_8

    .line 9
    sget v5, Lcom/shabakaty/downloader/sy4;->a:I

    if-lt v5, v3, :cond_7

    const-string v3, "secure-playback"

    .line 10
    invoke-virtual {p3, v3}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    goto :goto_5

    :cond_7
    const/4 v3, 0x0

    :goto_5
    if-eqz v3, :cond_8

    goto :goto_6

    :cond_8
    const/4 v10, 0x0

    goto :goto_7

    :cond_9
    :goto_6
    const/4 v10, 0x1

    :goto_7
    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    .line 11
    invoke-direct/range {v0 .. v10}, Lcom/shabakaty/downloader/ro2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZZ)V

    return-object v11
.end method


# virtual methods
.method public c(Lcom/shabakaty/downloader/wh1;Lcom/shabakaty/downloader/wh1;)Lcom/shabakaty/downloader/cn0;
    .locals 13

    .line 1
    iget-object v0, p1, Lcom/shabakaty/downloader/wh1;->C:Ljava/lang/String;

    iget-object v1, p2, Lcom/shabakaty/downloader/wh1;->C:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/sy4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-boolean v2, p0, Lcom/shabakaty/downloader/ro2;->g:Z

    if-eqz v2, :cond_9

    .line 3
    iget v2, p1, Lcom/shabakaty/downloader/wh1;->K:I

    iget v3, p2, Lcom/shabakaty/downloader/wh1;->K:I

    if-eq v2, v3, :cond_1

    or-int/lit16 v0, v0, 0x400

    .line 4
    :cond_1
    iget-boolean v2, p0, Lcom/shabakaty/downloader/ro2;->e:Z

    if-nez v2, :cond_3

    iget v2, p1, Lcom/shabakaty/downloader/wh1;->H:I

    iget v3, p2, Lcom/shabakaty/downloader/wh1;->H:I

    if-ne v2, v3, :cond_2

    iget v2, p1, Lcom/shabakaty/downloader/wh1;->I:I

    iget v3, p2, Lcom/shabakaty/downloader/wh1;->I:I

    if-eq v2, v3, :cond_3

    :cond_2
    or-int/lit16 v0, v0, 0x200

    .line 5
    :cond_3
    iget-object v2, p1, Lcom/shabakaty/downloader/wh1;->O:Lcom/shabakaty/downloader/v50;

    iget-object v3, p2, Lcom/shabakaty/downloader/wh1;->O:Lcom/shabakaty/downloader/v50;

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/sy4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    or-int/lit16 v0, v0, 0x800

    .line 6
    :cond_4
    iget-object v2, p0, Lcom/shabakaty/downloader/ro2;->a:Ljava/lang/String;

    .line 7
    sget-object v3, Lcom/shabakaty/downloader/sy4;->d:Ljava/lang/String;

    const-string v4, "SM-T230"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "OMX.MARVELL.VIDEO.HW.CODA7542DECODER"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x1

    :cond_5
    if-eqz v1, :cond_6

    .line 8
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/wh1;->c(Lcom/shabakaty/downloader/wh1;)Z

    move-result v1

    if-nez v1, :cond_6

    or-int/lit8 v0, v0, 0x2

    :cond_6
    if-nez v0, :cond_8

    .line 9
    new-instance v0, Lcom/shabakaty/downloader/cn0;

    iget-object v2, p0, Lcom/shabakaty/downloader/ro2;->a:Ljava/lang/String;

    .line 10
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/wh1;->c(Lcom/shabakaty/downloader/wh1;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x3

    const/4 v5, 0x3

    goto :goto_1

    :cond_7
    const/4 v1, 0x2

    const/4 v5, 0x2

    :goto_1
    const/4 v6, 0x0

    move-object v1, v0

    move-object v3, p1

    move-object v4, p2

    .line 11
    invoke-direct/range {v1 .. v6}, Lcom/shabakaty/downloader/cn0;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/wh1;Lcom/shabakaty/downloader/wh1;II)V

    return-object v0

    :cond_8
    move v12, v0

    goto/16 :goto_2

    .line 12
    :cond_9
    iget v1, p1, Lcom/shabakaty/downloader/wh1;->P:I

    iget v2, p2, Lcom/shabakaty/downloader/wh1;->P:I

    if-eq v1, v2, :cond_a

    or-int/lit16 v0, v0, 0x1000

    .line 13
    :cond_a
    iget v1, p1, Lcom/shabakaty/downloader/wh1;->Q:I

    iget v2, p2, Lcom/shabakaty/downloader/wh1;->Q:I

    if-eq v1, v2, :cond_b

    or-int/lit16 v0, v0, 0x2000

    .line 14
    :cond_b
    iget v1, p1, Lcom/shabakaty/downloader/wh1;->R:I

    iget v2, p2, Lcom/shabakaty/downloader/wh1;->R:I

    if-eq v1, v2, :cond_c

    or-int/lit16 v0, v0, 0x4000

    :cond_c
    if-nez v0, :cond_d

    .line 15
    iget-object v1, p0, Lcom/shabakaty/downloader/ro2;->b:Ljava/lang/String;

    const-string v2, "audio/mp4a-latm"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 16
    invoke-static {p1}, Lcom/shabakaty/downloader/wo2;->c(Lcom/shabakaty/downloader/wh1;)Landroid/util/Pair;

    move-result-object v1

    .line 17
    invoke-static {p2}, Lcom/shabakaty/downloader/wo2;->c(Lcom/shabakaty/downloader/wh1;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v1, :cond_d

    if-eqz v2, :cond_d

    .line 18
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 19
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x2a

    if-ne v1, v3, :cond_d

    if-ne v2, v3, :cond_d

    .line 20
    new-instance v0, Lcom/shabakaty/downloader/cn0;

    iget-object v5, p0, Lcom/shabakaty/downloader/ro2;->a:Ljava/lang/String;

    const/4 v8, 0x3

    const/4 v9, 0x0

    move-object v4, v0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v4 .. v9}, Lcom/shabakaty/downloader/cn0;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/wh1;Lcom/shabakaty/downloader/wh1;II)V

    return-object v0

    .line 21
    :cond_d
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/wh1;->c(Lcom/shabakaty/downloader/wh1;)Z

    move-result v1

    if-nez v1, :cond_e

    or-int/lit8 v0, v0, 0x20

    .line 22
    :cond_e
    iget-object v1, p0, Lcom/shabakaty/downloader/ro2;->b:Ljava/lang/String;

    const-string v2, "audio/opus"

    .line 23
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    or-int/lit8 v0, v0, 0x2

    :cond_f
    if-nez v0, :cond_8

    .line 24
    new-instance v0, Lcom/shabakaty/downloader/cn0;

    iget-object v2, p0, Lcom/shabakaty/downloader/ro2;->a:Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/shabakaty/downloader/cn0;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/wh1;Lcom/shabakaty/downloader/wh1;II)V

    return-object v0

    .line 25
    :goto_2
    new-instance v0, Lcom/shabakaty/downloader/cn0;

    iget-object v8, p0, Lcom/shabakaty/downloader/ro2;->a:Ljava/lang/String;

    const/4 v11, 0x0

    move-object v7, v0

    move-object v9, p1

    move-object v10, p2

    invoke-direct/range {v7 .. v12}, Lcom/shabakaty/downloader/cn0;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/wh1;Lcom/shabakaty/downloader/wh1;II)V

    return-object v0
.end method

.method public d()[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ro2;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    :cond_1
    return-object v0
.end method

.method public e(Lcom/shabakaty/downloader/wh1;)Z
    .locals 12

    .line 1
    iget-object v0, p1, Lcom/shabakaty/downloader/wh1;->z:Ljava/lang/String;

    const/16 v1, 0x10

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_13

    iget-object v4, p0, Lcom/shabakaty/downloader/ro2;->b:Ljava/lang/String;

    if-nez v4, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    invoke-static {v0}, Lcom/shabakaty/downloader/nt2;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_4

    .line 3
    :cond_1
    iget-object v4, p0, Lcom/shabakaty/downloader/ro2;->b:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, ", "

    if-nez v4, :cond_2

    .line 4
    iget-object v4, p1, Lcom/shabakaty/downloader/wh1;->z:Ljava/lang/String;

    const/16 v6, 0xd

    invoke-static {v4, v6}, Lcom/shabakaty/downloader/dl3;->a(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v6

    const-string v6, "codec.mime "

    invoke-static {v7, v6, v4, v5, v0}, Lcom/shabakaty/downloader/nm0;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ro2;->h(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 5
    :cond_2
    invoke-static {p1}, Lcom/shabakaty/downloader/wo2;->c(Lcom/shabakaty/downloader/wh1;)Landroid/util/Pair;

    move-result-object v4

    if-nez v4, :cond_3

    goto/16 :goto_4

    .line 6
    :cond_3
    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 7
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 8
    iget-boolean v7, p0, Lcom/shabakaty/downloader/ro2;->g:Z

    if-nez v7, :cond_4

    const/16 v7, 0x2a

    if-eq v6, v7, :cond_4

    goto/16 :goto_4

    .line 9
    :cond_4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ro2;->d()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v7

    .line 10
    sget v8, Lcom/shabakaty/downloader/sy4;->a:I

    const/16 v9, 0x17

    if-gt v8, v9, :cond_10

    iget-object v8, p0, Lcom/shabakaty/downloader/ro2;->b:Ljava/lang/String;

    const-string v9, "video/x-vnd.on2.vp9"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    array-length v8, v7

    if-nez v8, :cond_10

    .line 11
    iget-object v7, p0, Lcom/shabakaty/downloader/ro2;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-eqz v7, :cond_5

    .line 12
    invoke-virtual {v7}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 13
    invoke-virtual {v7}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBitrateRange()Landroid/util/Range;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_0

    :cond_5
    const/4 v7, 0x0

    :goto_0
    const v8, 0xaba9500

    if-lt v7, v8, :cond_6

    const/16 v7, 0x400

    goto :goto_1

    :cond_6
    const v8, 0x7270e00

    if-lt v7, v8, :cond_7

    const/16 v7, 0x200

    goto :goto_1

    :cond_7
    const v8, 0x3938700

    if-lt v7, v8, :cond_8

    const/16 v7, 0x100

    goto :goto_1

    :cond_8
    const v8, 0x1c9c380

    if-lt v7, v8, :cond_9

    const/16 v7, 0x80

    goto :goto_1

    :cond_9
    const v8, 0x112a880

    if-lt v7, v8, :cond_a

    const/16 v7, 0x40

    goto :goto_1

    :cond_a
    const v8, 0xb71b00

    if-lt v7, v8, :cond_b

    const/16 v7, 0x20

    goto :goto_1

    :cond_b
    const v8, 0x6ddd00

    if-lt v7, v8, :cond_c

    const/16 v7, 0x10

    goto :goto_1

    :cond_c
    const v8, 0x36ee80

    if-lt v7, v8, :cond_d

    const/16 v7, 0x8

    goto :goto_1

    :cond_d
    const v8, 0x1b7740

    if-lt v7, v8, :cond_e

    const/4 v7, 0x4

    goto :goto_1

    :cond_e
    const v8, 0xc3500

    if-lt v7, v8, :cond_f

    const/4 v7, 0x2

    goto :goto_1

    :cond_f
    const/4 v7, 0x1

    .line 14
    :goto_1
    new-instance v8, Landroid/media/MediaCodecInfo$CodecProfileLevel;

    invoke-direct {v8}, Landroid/media/MediaCodecInfo$CodecProfileLevel;-><init>()V

    .line 15
    iput v3, v8, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 16
    iput v7, v8, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    new-array v7, v3, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    aput-object v8, v7, v2

    .line 17
    :cond_10
    array-length v8, v7

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v8, :cond_12

    aget-object v10, v7, v9

    .line 18
    iget v11, v10, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-ne v11, v6, :cond_11

    iget v10, v10, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    if-lt v10, v4, :cond_11

    goto :goto_4

    :cond_11
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 19
    :cond_12
    iget-object v4, p1, Lcom/shabakaty/downloader/wh1;->z:Ljava/lang/String;

    const/16 v6, 0x16

    invoke-static {v4, v6}, Lcom/shabakaty/downloader/dl3;->a(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v6

    const-string v6, "codec.profileLevel, "

    invoke-static {v7, v6, v4, v5, v0}, Lcom/shabakaty/downloader/nm0;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ro2;->h(Ljava/lang/String;)V

    :goto_3
    const/4 v0, 0x0

    goto :goto_5

    :cond_13
    :goto_4
    const/4 v0, 0x1

    :goto_5
    if-nez v0, :cond_14

    return v2

    .line 20
    :cond_14
    iget-boolean v0, p0, Lcom/shabakaty/downloader/ro2;->g:Z

    const/16 v4, 0x15

    if-eqz v0, :cond_1a

    .line 21
    iget v0, p1, Lcom/shabakaty/downloader/wh1;->H:I

    if-lez v0, :cond_19

    iget v1, p1, Lcom/shabakaty/downloader/wh1;->I:I

    if-gtz v1, :cond_15

    goto :goto_6

    .line 22
    :cond_15
    sget v3, Lcom/shabakaty/downloader/sy4;->a:I

    if-lt v3, v4, :cond_16

    .line 23
    iget p1, p1, Lcom/shabakaty/downloader/wh1;->J:F

    float-to-double v2, p1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/shabakaty/downloader/ro2;->g(IID)Z

    move-result p1

    return p1

    :cond_16
    mul-int v0, v0, v1

    .line 24
    invoke-static {}, Lcom/shabakaty/downloader/wo2;->i()I

    move-result v1

    if-gt v0, v1, :cond_17

    const/4 v2, 0x1

    :cond_17
    if-nez v2, :cond_18

    .line 25
    iget v0, p1, Lcom/shabakaty/downloader/wh1;->H:I

    iget p1, p1, Lcom/shabakaty/downloader/wh1;->I:I

    const/16 v1, 0x28

    const-string v3, "legacyFrameSize, "

    const-string v4, "x"

    invoke-static {v1, v3, v0, v4, p1}, Lcom/shabakaty/downloader/t74;->a(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ro2;->h(Ljava/lang/String;)V

    :cond_18
    return v2

    :cond_19
    :goto_6
    return v3

    .line 26
    :cond_1a
    sget v0, Lcom/shabakaty/downloader/sy4;->a:I

    if-lt v0, v4, :cond_27

    iget v4, p1, Lcom/shabakaty/downloader/wh1;->Q:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1e

    .line 27
    iget-object v6, p0, Lcom/shabakaty/downloader/ro2;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-nez v6, :cond_1b

    const-string v4, "sampleRate.caps"

    .line 28
    invoke-virtual {p0, v4}, Lcom/shabakaty/downloader/ro2;->h(Ljava/lang/String;)V

    goto :goto_7

    .line 29
    :cond_1b
    invoke-virtual {v6}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object v6

    if-nez v6, :cond_1c

    const-string v4, "sampleRate.aCaps"

    .line 30
    invoke-virtual {p0, v4}, Lcom/shabakaty/downloader/ro2;->h(Ljava/lang/String;)V

    goto :goto_7

    .line 31
    :cond_1c
    invoke-virtual {v6, v4}, Landroid/media/MediaCodecInfo$AudioCapabilities;->isSampleRateSupported(I)Z

    move-result v6

    if-nez v6, :cond_1d

    const/16 v6, 0x1f

    .line 32
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "sampleRate.support, "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/shabakaty/downloader/ro2;->h(Ljava/lang/String;)V

    :goto_7
    const/4 v4, 0x0

    goto :goto_8

    :cond_1d
    const/4 v4, 0x1

    :goto_8
    if-eqz v4, :cond_28

    .line 33
    :cond_1e
    iget p1, p1, Lcom/shabakaty/downloader/wh1;->P:I

    if-eq p1, v5, :cond_27

    .line 34
    iget-object v4, p0, Lcom/shabakaty/downloader/ro2;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-nez v4, :cond_1f

    const-string p1, "channelCount.caps"

    .line 35
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ro2;->h(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 36
    :cond_1f
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object v4

    if-nez v4, :cond_20

    const-string p1, "channelCount.aCaps"

    .line 37
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ro2;->h(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 38
    :cond_20
    iget-object v5, p0, Lcom/shabakaty/downloader/ro2;->a:Ljava/lang/String;

    iget-object v6, p0, Lcom/shabakaty/downloader/ro2;->b:Ljava/lang/String;

    .line 39
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo$AudioCapabilities;->getMaxInputChannelCount()I

    move-result v4

    if-gt v4, v3, :cond_25

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_21

    if-lez v4, :cond_21

    goto/16 :goto_a

    :cond_21
    const-string v0, "audio/mpeg"

    .line 40
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "audio/3gpp"

    .line 41
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "audio/amr-wb"

    .line 42
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "audio/mp4a-latm"

    .line 43
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "audio/vorbis"

    .line 44
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "audio/opus"

    .line 45
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "audio/raw"

    .line 46
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "audio/flac"

    .line 47
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "audio/g711-alaw"

    .line 48
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "audio/g711-mlaw"

    .line 49
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "audio/gsm"

    .line 50
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    goto :goto_a

    :cond_22
    const-string v0, "audio/ac3"

    .line 51
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 v1, 0x6

    goto :goto_9

    :cond_23
    const-string v0, "audio/eac3"

    .line 52
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_9

    :cond_24
    const/16 v1, 0x1e

    :goto_9
    const/16 v0, 0x3b

    .line 53
    invoke-static {v5, v0}, Lcom/shabakaty/downloader/dl3;->a(Ljava/lang/String;I)I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "AssumedMaxChannelAdjustment: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", ["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "MediaCodecInfo"

    .line 54
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v1

    :cond_25
    :goto_a
    if-ge v4, p1, :cond_26

    const/16 v0, 0x21

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "channelCount.support, "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ro2;->h(Ljava/lang/String;)V

    :goto_b
    const/4 p1, 0x0

    goto :goto_c

    :cond_26
    const/4 p1, 0x1

    :goto_c
    if-eqz p1, :cond_28

    :cond_27
    const/4 v2, 0x1

    :cond_28
    return v2
.end method

.method public f(Lcom/shabakaty/downloader/wh1;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/ro2;->g:Z

    if-eqz v0, :cond_0

    .line 2
    iget-boolean p1, p0, Lcom/shabakaty/downloader/ro2;->e:Z

    return p1

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/shabakaty/downloader/wo2;->c(Lcom/shabakaty/downloader/wh1;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x2a

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public g(IID)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ro2;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "sizeAndRate.caps"

    .line 2
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ro2;->h(Ljava/lang/String;)V

    return v1

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "sizeAndRate.vCaps"

    .line 4
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ro2;->h(Ljava/lang/String;)V

    return v1

    .line 5
    :cond_1
    invoke-static {v0, p1, p2, p3, p4}, Lcom/shabakaty/downloader/ro2;->b(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_5

    const/16 v2, 0x45

    const-string v4, "x"

    if-ge p1, p2, :cond_4

    .line 6
    iget-object v5, p0, Lcom/shabakaty/downloader/ro2;->a:Ljava/lang/String;

    const-string v6, "OMX.MTK.VIDEO.DECODER.HEVC"

    .line 7
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lcom/shabakaty/downloader/sy4;->b:Ljava/lang/String;

    const-string v6, "mcv5a"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    const/4 v5, 0x1

    :goto_0
    if-eqz v5, :cond_4

    .line 8
    invoke-static {v0, p2, p1, p3, p4}, Lcom/shabakaty/downloader/ro2;->b(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, "sizeAndRate.rotated, "

    .line 9
    invoke-static {v2, v0, p1, v4, p2}, Lcom/shabakaty/downloader/pe;->a(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    iget-object p2, p0, Lcom/shabakaty/downloader/ro2;->a:Ljava/lang/String;

    iget-object p3, p0, Lcom/shabakaty/downloader/ro2;->b:Ljava/lang/String;

    sget-object p4, Lcom/shabakaty/downloader/sy4;->e:Ljava/lang/String;

    const/16 v0, 0x19

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/dl3;->a(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/dl3;->a(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/dl3;->a(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p4, v0}, Lcom/shabakaty/downloader/dl3;->a(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "AssumedSupport ["

    const-string v2, "] ["

    invoke-static {v0, v1, p1, v2, p2}, Lcom/shabakaty/downloader/nl3;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", "

    invoke-static {p1, p2, p3, v2, p4}, Lcom/shabakaty/downloader/u32;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaCodecInfo"

    .line 11
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    :goto_1
    const-string v0, "sizeAndRate.support, "

    .line 12
    invoke-static {v2, v0, p1, v4, p2}, Lcom/shabakaty/downloader/pe;->a(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ro2;->h(Ljava/lang/String;)V

    return v1

    :cond_5
    :goto_2
    return v3
.end method

.method public final h(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ro2;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/shabakaty/downloader/ro2;->b:Ljava/lang/String;

    sget-object v2, Lcom/shabakaty/downloader/sy4;->e:Ljava/lang/String;

    const/16 v3, 0x14

    invoke-static {p1, v3}, Lcom/shabakaty/downloader/dl3;->a(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v0, v3}, Lcom/shabakaty/downloader/dl3;->a(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/dl3;->a(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/dl3;->a(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "NoSupport ["

    const-string v5, "] ["

    invoke-static {v3, v4, p1, v5, v0}, Lcom/shabakaty/downloader/nl3;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", "

    invoke-static {p1, v0, v1, v5, v2}, Lcom/shabakaty/downloader/u32;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaCodecInfo"

    .line 2
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ro2;->a:Ljava/lang/String;

    return-object v0
.end method
