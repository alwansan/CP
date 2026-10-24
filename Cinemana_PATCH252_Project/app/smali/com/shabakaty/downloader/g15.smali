.class public final Lcom/shabakaty/downloader/g15;
.super Lcom/shabakaty/downloader/af2;
.source "VideoInfoFragment.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/d15;

.field public final synthetic s:Lcom/shabakaty/cinemana/domain/models/local/Quality;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/d15;Lcom/shabakaty/cinemana/domain/models/local/Quality;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/g15;->r:Lcom/shabakaty/downloader/d15;

    iput-object p2, p0, Lcom/shabakaty/downloader/g15;->s:Lcom/shabakaty/cinemana/domain/models/local/Quality;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 41

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/shabakaty/downloader/g15;->r:Lcom/shabakaty/downloader/d15;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext()"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "context"

    .line 2
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v2, Lcom/shabakaty/downloader/yz;->f:Lcom/shabakaty/downloader/yz;

    if-nez v2, :cond_0

    .line 4
    new-instance v2, Lcom/shabakaty/downloader/yz;

    invoke-direct {v2, v1}, Lcom/shabakaty/downloader/yz;-><init>(Landroid/content/Context;)V

    .line 5
    sput-object v2, Lcom/shabakaty/downloader/yz;->f:Lcom/shabakaty/downloader/yz;

    .line 6
    :cond_0
    sget-object v1, Lcom/shabakaty/downloader/yz;->f:Lcom/shabakaty/downloader/yz;

    if-nez v1, :cond_1

    goto/16 :goto_6

    .line 7
    :cond_1
    iget-object v2, v0, Lcom/shabakaty/downloader/g15;->r:Lcom/shabakaty/downloader/d15;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/d15;->j2()Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    move-result-object v2

    iget-object v3, v0, Lcom/shabakaty/downloader/g15;->s:Lcom/shabakaty/cinemana/domain/models/local/Quality;

    .line 8
    iget-object v5, v3, Lcom/shabakaty/cinemana/domain/models/local/Quality;->url:Ljava/lang/String;

    const-string v3, "videoModel"

    .line 9
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "videoUrl"

    invoke-static {v5, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v3, v1, Lcom/shabakaty/downloader/yz;->c:Lcom/shabakaty/downloader/xw;

    if-nez v3, :cond_2

    goto/16 :goto_6

    .line 11
    :cond_2
    invoke-static {v3}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/shabakaty/downloader/xw;->k()Lcom/shabakaty/downloader/br3;

    move-result-object v3

    if-nez v3, :cond_3

    goto/16 :goto_6

    .line 12
    :cond_3
    new-instance v4, Lcom/shabakaty/downloader/wz;

    invoke-direct {v4, v1, v2, v3}, Lcom/shabakaty/downloader/wz;-><init>(Lcom/shabakaty/downloader/yz;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/br3;)V

    const-string v22, "Must be called from the main thread."

    .line 13
    invoke-static/range {v22 .. v22}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 14
    iget-object v6, v3, Lcom/shabakaty/downloader/br3;->h:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v4, v2, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->subtitles:Ljava/util/List;

    .line 16
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x1

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;

    .line 17
    iget-object v9, v8, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;->extention:Ljava/lang/String;

    const-string v10, "vtt"

    .line 18
    invoke-static {v9, v10}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 19
    iget-object v8, v8, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;->type:Ljava/lang/String;

    const-string v9, "ar"

    .line 20
    invoke-static {v8, v9}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x1

    goto :goto_0

    :cond_5
    const/4 v8, 0x0

    :goto_0
    if-eqz v8, :cond_4

    goto :goto_1

    :cond_6
    move-object v6, v12

    :goto_1
    check-cast v6, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;

    if-nez v6, :cond_7

    move-object/from16 v27, v12

    goto :goto_2

    .line 21
    :cond_7
    iget-object v4, v6, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;->file:Ljava/lang/String;

    move-object/from16 v27, v4

    .line 22
    :goto_2
    iget-object v4, v2, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->arTranslationFilePathVTT:Ljava/lang/String;

    const-string v6, "manaf"

    .line 23
    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    new-instance v14, Lcom/shabakaty/downloader/ip2;

    invoke-direct {v14, v15}, Lcom/shabakaty/downloader/ip2;-><init>(I)V

    .line 25
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v24, 0x1

    const/16 v26, 0x1

    const/16 v31, 0x1

    .line 26
    new-instance v4, Lcom/google/android/gms/cast/MediaTrack;

    const/16 v32, 0x0

    const/16 v33, 0x0

    const-string v28, "text/vtt"

    const-string v29, "Arabic"

    const-string v30, "ar"

    move-object/from16 v23, v4

    invoke-direct/range {v23 .. v33}, Lcom/google/android/gms/cast/MediaTrack;-><init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lorg/json/JSONObject;)V

    .line 27
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "com.google.android.gms.cast.metadata.SUBTITLE"

    const-string v6, ""

    .line 28
    invoke-virtual {v14, v4, v6}, Lcom/shabakaty/downloader/ip2;->E1(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v2}, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->c()Ljava/lang/String;

    move-result-object v4

    const-string v6, "com.google.android.gms.cast.metadata.TITLE"

    invoke-virtual {v14, v6, v4}, Lcom/shabakaty/downloader/ip2;->E1(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    new-instance v4, Lcom/shabakaty/downloader/s55;

    .line 31
    iget-object v2, v2, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->imgMediumThumbObjUrl:Ljava/lang/String;

    .line 32
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 33
    invoke-direct {v4, v2, v7, v7}, Lcom/shabakaty/downloader/s55;-><init>(Landroid/net/Uri;II)V

    .line 34
    iget-object v2, v14, Lcom/shabakaty/downloader/ip2;->r:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v1, v1, Lcom/shabakaty/downloader/yz;->a:Landroid/content/Context;

    .line 36
    new-instance v2, Lcom/shabakaty/downloader/dm4;

    invoke-direct {v2}, Lcom/shabakaty/downloader/dm4;-><init>()V

    const-string v4, "captioning"

    .line 37
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/CaptioningManager;

    .line 38
    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v4

    .line 39
    iput v4, v2, Lcom/shabakaty/downloader/dm4;->r:F

    .line 40
    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v1

    .line 41
    iget v4, v1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    .line 42
    iput v4, v2, Lcom/shabakaty/downloader/dm4;->t:I

    .line 43
    iget v4, v1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    .line 44
    iput v4, v2, Lcom/shabakaty/downloader/dm4;->s:I

    .line 45
    iget v4, v1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    const/4 v6, 0x2

    if-eq v4, v15, :cond_9

    if-eq v4, v6, :cond_8

    .line 46
    invoke-virtual {v2, v7}, Lcom/shabakaty/downloader/dm4;->W0(I)V

    goto :goto_3

    .line 47
    :cond_8
    invoke-virtual {v2, v6}, Lcom/shabakaty/downloader/dm4;->W0(I)V

    goto :goto_3

    .line 48
    :cond_9
    invoke-virtual {v2, v15}, Lcom/shabakaty/downloader/dm4;->W0(I)V

    .line 49
    :goto_3
    iget v4, v1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    .line 50
    iput v4, v2, Lcom/shabakaty/downloader/dm4;->v:I

    .line 51
    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 52
    sget-object v4, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v4, v1}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 53
    invoke-virtual {v2, v15}, Lcom/shabakaty/downloader/dm4;->o1(I)V

    goto :goto_4

    .line 54
    :cond_a
    sget-object v4, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v4, v1}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 55
    sget-object v4, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v4, v1}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 56
    invoke-virtual {v2, v6}, Lcom/shabakaty/downloader/dm4;->o1(I)V

    goto :goto_4

    .line 57
    :cond_b
    invoke-virtual {v2, v7}, Lcom/shabakaty/downloader/dm4;->o1(I)V

    .line 58
    :goto_4
    invoke-virtual {v1}, Landroid/graphics/Typeface;->isBold()Z

    move-result v4

    .line 59
    invoke-virtual {v1}, Landroid/graphics/Typeface;->isItalic()Z

    move-result v1

    if-eqz v4, :cond_c

    if-eqz v1, :cond_c

    const/4 v1, 0x3

    .line 60
    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/dm4;->D1(I)V

    goto :goto_5

    :cond_c
    if-eqz v4, :cond_d

    .line 61
    invoke-virtual {v2, v15}, Lcom/shabakaty/downloader/dm4;->D1(I)V

    goto :goto_5

    :cond_d
    if-eqz v1, :cond_e

    .line 62
    invoke-virtual {v2, v6}, Lcom/shabakaty/downloader/dm4;->D1(I)V

    goto :goto_5

    .line 63
    :cond_e
    invoke-virtual {v2, v7}, Lcom/shabakaty/downloader/dm4;->D1(I)V

    :cond_f
    :goto_5
    const/4 v1, -0x1

    .line 64
    iput v1, v2, Lcom/shabakaty/downloader/dm4;->s:I

    const/16 v1, 0xff

    .line 65
    invoke-static {v7, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    .line 66
    iput v1, v2, Lcom/shabakaty/downloader/dm4;->t:I

    const/high16 v1, -0x1000000

    .line 67
    iput v1, v2, Lcom/shabakaty/downloader/dm4;->v:I

    .line 68
    invoke-virtual {v2, v6}, Lcom/shabakaty/downloader/dm4;->W0(I)V

    .line 69
    new-instance v1, Lcom/google/android/gms/cast/MediaInfo;

    move-object v4, v1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, -0x1

    const/4 v11, 0x0

    const/16 v16, 0x0

    move-object/from16 v39, v13

    move-object/from16 v13, v16

    move-object/from16 v40, v14

    move-object/from16 v14, v16

    move-object/from16 v15, v16

    move-object/from16 v12, v16

    move-object/from16 v17, v16

    const-wide/16 v18, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 70
    invoke-direct/range {v4 .. v21}, Lcom/google/android/gms/cast/MediaInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/shabakaty/downloader/ip2;JLjava/util/List;Lcom/shabakaty/downloader/dm4;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/shabakaty/downloader/zz4;JLjava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v4, v1, Lcom/google/android/gms/cast/MediaInfo;->H:Lcom/google/android/gms/cast/MediaInfo$a;

    .line 72
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v4, v4, Lcom/google/android/gms/cast/MediaInfo$a;->a:Lcom/google/android/gms/cast/MediaInfo;

    const/4 v5, 0x1

    .line 74
    iput v5, v4, Lcom/google/android/gms/cast/MediaInfo;->s:I

    .line 75
    iget-object v4, v1, Lcom/google/android/gms/cast/MediaInfo;->H:Lcom/google/android/gms/cast/MediaInfo$a;

    .line 76
    iget-object v4, v4, Lcom/google/android/gms/cast/MediaInfo$a;->a:Lcom/google/android/gms/cast/MediaInfo;

    move-object/from16 v5, v39

    .line 77
    iput-object v5, v4, Lcom/google/android/gms/cast/MediaInfo;->w:Ljava/util/List;

    move-object/from16 v5, v40

    .line 78
    iput-object v5, v4, Lcom/google/android/gms/cast/MediaInfo;->u:Lcom/shabakaty/downloader/ip2;

    const-string v5, "\"/x-unknown\""

    .line 79
    iput-object v5, v4, Lcom/google/android/gms/cast/MediaInfo;->t:Ljava/lang/String;

    .line 80
    iput-object v2, v4, Lcom/google/android/gms/cast/MediaInfo;->x:Lcom/shabakaty/downloader/dm4;

    const-string v2, "Builder(videoUrl)\n\t\t\t\t.s\u2026tTrackStyle)\n\t\t\t\t.build()"

    .line 81
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    sget-object v26, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-wide/16 v27, -0x1

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 83
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-gtz v2, :cond_11

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 84
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-ltz v2, :cond_11

    const/16 v31, 0x0

    const/16 v32, 0x0

    .line 85
    new-instance v2, Lcom/shabakaty/downloader/gp2;

    const/16 v25, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const-wide/16 v37, 0x0

    const-wide/high16 v29, 0x3ff0000000000000L    # 1.0

    const/16 v34, 0x0

    move-object/from16 v23, v2

    move-object/from16 v24, v1

    move-object/from16 v33, v34

    .line 86
    invoke-direct/range {v23 .. v38}, Lcom/shabakaty/downloader/gp2;-><init>(Lcom/google/android/gms/cast/MediaInfo;Lcom/shabakaty/downloader/rp2;Ljava/lang/Boolean;JD[JLorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 87
    invoke-static/range {v22 .. v22}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v3}, Lcom/shabakaty/downloader/br3;->C()Z

    move-result v1

    if-nez v1, :cond_10

    const/16 v1, 0x11

    const/4 v2, 0x0

    .line 89
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/br3;->w(ILjava/lang/String;)Lcom/shabakaty/downloader/nb3;

    goto :goto_6

    .line 90
    :cond_10
    new-instance v1, Lcom/shabakaty/downloader/ui5;

    invoke-direct {v1, v3, v2}, Lcom/shabakaty/downloader/ui5;-><init>(Lcom/shabakaty/downloader/br3;Lcom/shabakaty/downloader/gp2;)V

    invoke-static {v1}, Lcom/shabakaty/downloader/br3;->x(Lcom/shabakaty/downloader/br3$g;)Lcom/shabakaty/downloader/br3$g;

    .line 91
    :goto_6
    iget-object v1, v0, Lcom/shabakaty/downloader/g15;->r:Lcom/shabakaty/downloader/d15;

    invoke-static {v1}, Lcom/shabakaty/downloader/d15;->i2(Lcom/shabakaty/downloader/d15;)Lcom/shabakaty/downloader/jl1;

    move-result-object v1

    iget-object v1, v1, Lcom/shabakaty/downloader/jl1;->e0:Lcom/shabakaty/downloader/m15;

    iget-object v1, v1, Lcom/shabakaty/downloader/m15;->S:Lcom/shabakaty/downloader/views/DownloadButton;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/views/DownloadButton;->e()V

    .line 92
    sget-object v1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object v1

    .line 93
    :cond_11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "playbackRate must be between PLAYBACK_RATE_MIN and PLAYBACK_RATE_MAX"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
