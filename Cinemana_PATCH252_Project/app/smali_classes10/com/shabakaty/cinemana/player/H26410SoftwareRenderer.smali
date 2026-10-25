.class public final Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;
.super Lcom/shabakaty/downloader/bk;
.source "H26410SoftwareRenderer.java"


# static fields
.field private static final DROP_LATE_US:J = 0x3d090L

.field private static final MAX_EARLY_US:J = 0xc350L

.field private static final RESULT_BUFFER_READ:I = -0x4

.field private static final RESULT_FORMAT_READ:I = -0x5

.field private static final RESULT_NOTHING_READ:I = -0x3

.field private static final VIDEO_TRACK_TYPE:I = 0x2

.field private static lastHigh10Format:Lcom/shabakaty/downloader/wh1;

.field private static subtitleRefreshPending:Z


# instance fields
.field private configured:Z

.field private currentFormat:Lcom/shabakaty/downloader/wh1;

.field private decodedFrames:J

.field private final decoder:Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;

.field private ended:Z

.field private final eventDispatcher:Lcom/shabakaty/downloader/o25$a;

.field private failedFrames:J

.field private firstFrameReported:Z

.field private forceHigh10AfterRefresh:Z

.field private final input:Lcom/shabakaty/downloader/bn0;

.field private lastVideoSize:Lcom/shabakaty/downloader/p25;

.field private outputStartUs:J

.field private noOutputSamples:I

.field private noOutputWarningReported:Z

.field private pending:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

.field private surface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/shabakaty/downloader/o25;)V
    .locals 2

    .line 48
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/bk;-><init>(I)V

    .line 33
    new-instance v1, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;

    invoke-direct {v1}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;-><init>()V

    iput-object v1, p0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->decoder:Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;

    .line 37
    new-instance v1, Lcom/shabakaty/downloader/bn0;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/bn0;-><init>(I)V

    iput-object v1, p0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->input:Lcom/shabakaty/downloader/bn0;

    .line 43
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->outputStartUs:J

    .line 49
    new-instance v0, Lcom/shabakaty/downloader/o25$a;

    invoke-direct {v0, p1, p2}, Lcom/shabakaty/downloader/o25$a;-><init>(Landroid/os/Handler;Lcom/shabakaty/downloader/o25;)V

    iput-object v0, p0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->eventDispatcher:Lcom/shabakaty/downloader/o25$a;

    .line 50
    return-void
.end method


.method public static markSubtitleRefresh()V
    .locals 2

    const-string v0, "decoder_policy_subtitle_refresh_check"
    invoke-static {v0}, Lcom/shabakaty/cinemana/player/PlayerDiagnosticLog;->event(Ljava/lang/String;)V

    sget-object v0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->lastHigh10Format:Lcom/shabakaty/downloader/wh1;

    if-eqz v0, :done

    invoke-static {v0}, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->isHigh10(Lcom/shabakaty/downloader/wh1;)Z

    move-result v1

    if-eqz v1, :done

    iget-object v1, v0, Lcom/shabakaty/downloader/wh1;->F:Lcom/shabakaty/downloader/o01;

    if-nez v1, :done

    invoke-static {}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;->isH264Available()Z

    move-result v1

    if-eqz v1, :done

    const/4 v1, 0x1

    sput-boolean v1, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->subtitleRefreshPending:Z

    const-string v0, "CinemanaDecoderPolicy"
    const-string v1, "Subtitle-driven MediaItem refresh armed to preserve the active High 10 FFmpeg decoder"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    const-string v0, "decoder_policy_subtitle_refresh_armed"
    invoke-static {v0}, Lcom/shabakaty/cinemana/player/PlayerDiagnosticLog;->event(Ljava/lang/String;)V

    :done
    return-void
.end method

.method public static shouldUseSoftware(Lcom/shabakaty/downloader/wh1;)Z
    .locals 3

    const-string v1, "decoder_policy_should_use_software_check"
    invoke-static {v1, p0}, Lcom/shabakaty/cinemana/player/PlayerDiagnosticLog;->value(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p0, :notSupported

    invoke-static {p0}, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->isHigh10(Lcom/shabakaty/downloader/wh1;)Z

    move-result v0

    if-eqz v0, :refreshCheck

    const-string v1, "decoder_policy_high10_true"
    invoke-static {v1}, Lcom/shabakaty/cinemana/player/PlayerDiagnosticLog;->event(Ljava/lang/String;)V
    const/4 v0, 0x1

    return v0

    :refreshCheck
    sget-boolean v0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->subtitleRefreshPending:Z

    if-eqz v0, :notSupported

    sget-object v0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->lastHigh10Format:Lcom/shabakaty/downloader/wh1;

    if-eqz v0, :notSupported

    invoke-static {v0}, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->isHigh10(Lcom/shabakaty/downloader/wh1;)Z

    move-result v0

    if-eqz v0, :notSupported

    iget-object v0, p0, Lcom/shabakaty/downloader/wh1;->F:Lcom/shabakaty/downloader/o01;

    if-eqz v0, :checkAmbiguous

    goto :notSupported

    :checkAmbiguous
    invoke-static {p0}, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->isAmbiguousAvc(Lcom/shabakaty/downloader/wh1;)Z

    move-result v0

    if-eqz v0, :notSupported

    const-string v1, "decoder_policy_ambiguous_refresh_true"
    invoke-static {v1}, Lcom/shabakaty/cinemana/player/PlayerDiagnosticLog;->event(Ljava/lang/String;)V
    const/4 v0, 0x1

    return v0

    :notSupported
    const/4 v0, 0x0

        const-string v1, "decoder_policy_software_false"
        invoke-static {v1}, Lcom/shabakaty/cinemana/player/PlayerDiagnosticLog;->event(Ljava/lang/String;)V

        return v0
.end method

.method private static isAmbiguousAvc(Lcom/shabakaty/downloader/wh1;)Z
    .locals 4

    if-eqz p0, :no

    const-string v0, "video/avc"

    iget-object v1, p0, Lcom/shabakaty/downloader/wh1;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :no

    iget-object v0, p0, Lcom/shabakaty/downloader/wh1;->z:Ljava/lang/String;

    if-eqz v0, :checkCsd

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :checkCsd

    goto :no

    :checkCsd
    iget-object v0, p0, Lcom/shabakaty/downloader/wh1;->E:Ljava/util/List;

    if-eqz v0, :yes

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :scanCsd
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :yes

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :scanCsd

    check-cast v1, [B

    array-length v2, v1

    if-lez v2, :scanCsd

    goto :no

    :yes
    const/4 v0, 0x1

    return v0

    :no
    const/4 v0, 0x0

    return v0
.end method

.method private resolveRefreshFormat(Lcom/shabakaty/downloader/wh1;)Lcom/shabakaty/downloader/wh1;
    .locals 4

    if-eqz p1, :checkFallback

    invoke-static {p1}, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->isHigh10(Lcom/shabakaty/downloader/wh1;)Z

    move-result v0

    if-eqz v0, :checkFallback

    sput-object p1, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->lastHigh10Format:Lcom/shabakaty/downloader/wh1;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->forceHigh10AfterRefresh:Z

    sput-boolean v0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->subtitleRefreshPending:Z

    return-object p1

    :checkFallback
    sget-boolean v0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->subtitleRefreshPending:Z

    if-nez v0, :tryFallback

    iget-boolean v0, p0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->forceHigh10AfterRefresh:Z

    if-eqz v0, :normalFormat

    :tryFallback
    if-eqz p1, :findCachedFormat

    invoke-static {p1}, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->isAmbiguousAvc(Lcom/shabakaty/downloader/wh1;)Z

    move-result v0

    if-eqz v0, :normalFormat

    :findCachedFormat
    iget-object v0, p0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->currentFormat:Lcom/shabakaty/downloader/wh1;

    if-eqz v0, :staticFallback

    invoke-static {v0}, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->isHigh10(Lcom/shabakaty/downloader/wh1;)Z

    move-result v1

    if-nez v1, :useCachedFormat

    :staticFallback
    sget-object v0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->lastHigh10Format:Lcom/shabakaty/downloader/wh1;

    if-eqz v0, :normalFormat

    invoke-static {v0}, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->isHigh10(Lcom/shabakaty/downloader/wh1;)Z

    move-result v1

    if-eqz v1, :normalFormat

    :useCachedFormat
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->forceHigh10AfterRefresh:Z

    const/4 v1, 0x0

    sput-boolean v1, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->subtitleRefreshPending:Z

    const-string v1, "CinemanaDecoderPolicy"

    const-string v2, "Subtitle refresh produced an ambiguous H.264 format; reusing the last verified High 10 Format and FFmpeg decoder"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :normalFormat
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->forceHigh10AfterRefresh:Z

    sput-boolean v0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->subtitleRefreshPending:Z

    sput-object v0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->lastHigh10Format:Lcom/shabakaty/downloader/wh1;

    return-object p1
.end method



.method private configure(Lcom/shabakaty/downloader/wh1;)Z
    .locals 2

    const-string v0, "ffmpeg_configure_enter"
    invoke-static {v0, p1}, Lcom/shabakaty/cinemana/player/PlayerDiagnosticLog;->value(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->configured:Z

    .line 87
    iget-object v1, p0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->decoder:Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;

    invoke-virtual {v1}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->release()V

    .line 88
    invoke-static {p1}, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->isHigh10(Lcom/shabakaty/downloader/wh1;)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 89
    :cond_0
    iget-object v1, p1, Lcom/shabakaty/downloader/wh1;->F:Lcom/shabakaty/downloader/o01;

    if-eqz v1, :cond_1

    return v0

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->decoder:Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;

    iget-object v1, p1, Lcom/shabakaty/downloader/wh1;->E:Ljava/util/List;

    iget p1, p1, Lcom/shabakaty/downloader/wh1;->K:I

    invoke-virtual {v0, v1, p1}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->configure(Ljava/util/List;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->configured:Z
    const-string v0, "ffmpeg_configure_result"
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    move-result-object v1
    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/player/PlayerDiagnosticLog;->value(Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    iget-boolean p1, p0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->configured:Z

    return p1
.end method

.method public static isHigh10(Lcom/shabakaty/downloader/wh1;)Z
    .locals 7

    .line 61
    const/4 v0, 0x0

    if-eqz p0, :cond_a

    const-string v1, "video/avc"

    iget-object v2, p0, Lcom/shabakaty/downloader/wh1;->C:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/wh1;->z:Ljava/lang/String;

    .line 63
    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 64
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 65
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v1, v4

    .line 66
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 68
    const-string v6, "avc1.6e"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "avc3.6e"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x8

    if-lt v5, v6, :cond_2

    return v2

    .line 65
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 72
    :cond_3
    iget-object p0, p0, Lcom/shabakaty/downloader/wh1;->E:Ljava/util/List;

    .line 73
    if-eqz p0, :cond_9

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 74
    if-nez v1, :cond_4

    goto :goto_1

    .line 75
    :cond_4
    const/4 v3, 0x0

    :goto_2
    add-int/lit8 v4, v3, 0x2

    array-length v5, v1

    if-ge v4, v5, :cond_8

    .line 76
    nop

    .line 77
    add-int/lit8 v5, v3, 0x4

    array-length v6, v1

    if-ge v5, v6, :cond_5

    aget-byte v6, v1, v3

    if-nez v6, :cond_5

    add-int/lit8 v6, v3, 0x1

    aget-byte v6, v1, v6

    if-nez v6, :cond_5

    aget-byte v6, v1, v4

    if-nez v6, :cond_5

    add-int/lit8 v6, v3, 0x3

    aget-byte v6, v1, v6

    if-ne v6, v2, :cond_5

    goto :goto_3

    .line 78
    :cond_5
    aget-byte v5, v1, v3

    if-nez v5, :cond_6

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v1, v5

    if-nez v5, :cond_6

    aget-byte v4, v1, v4

    if-ne v4, v2, :cond_6

    add-int/lit8 v5, v3, 0x3

    goto :goto_3

    .line 79
    :cond_6
    const/4 v5, -0x1

    :goto_3
    if-ltz v5, :cond_7

    add-int/lit8 v4, v5, 0x1

    array-length v6, v1

    if-ge v4, v6, :cond_7

    aget-byte v5, v1, v5

    and-int/lit8 v5, v5, 0x1f

    const/4 v6, 0x7

    if-ne v5, v6, :cond_7

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x6e

    if-ne v4, v5, :cond_7

    return v2

    .line 75
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 81
    :cond_8
    goto :goto_1

    .line 82
    :cond_9
    return v0

    .line 61
    :cond_a
    :goto_4
    return v0
.end method

.method private notifyFirstFrame()V
    .locals 6

    const-string v0, "renderer_first_frame_notification"
    invoke-static {v0}, Lcom/shabakaty/cinemana/player/PlayerDiagnosticLog;->event(Ljava/lang/String;)V

    .line 209
    iget-boolean v0, p0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->firstFrameReported:Z

    if-eqz v0, :cond_0

    return-void

    .line 210
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->firstFrameReported:Z

    .line 211
    iget-object v0, p0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->eventDispatcher:Lcom/shabakaty/downloader/o25$a;

    iget-object v0, v0, Lcom/shabakaty/downloader/o25$a;->a:Landroid/os/Handler;

    .line 212
    if-eqz v0, :cond_1

    new-instance v1, Lcom/shabakaty/downloader/jp0;

    iget-object v2, p0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->eventDispatcher:Lcom/shabakaty/downloader/o25$a;

    iget-object v3, p0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->surface:Landroid/view/Surface;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/shabakaty/downloader/jp0;-><init>(Lcom/shabakaty/downloader/o25$a;Ljava/lang/Object;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 213
    :cond_1
    return-void
.end method

.method private notifyVideoSize(II)V
    .locals 3

    .line 196
    if-lez p1, :cond_3

    if-gtz p2, :cond_0

    goto :goto_0

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->lastVideoSize:Lcom/shabakaty/downloader/p25;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->lastVideoSize:Lcom/shabakaty/downloader/p25;

    iget v0, v0, Lcom/shabakaty/downloader/p25;->a:I

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->lastVideoSize:Lcom/shabakaty/downloader/p25;

    iget v0, v0, Lcom/shabakaty/downloader/p25;->b:I

    if-ne v0, p2, :cond_1

    return-void

    .line 198
    :cond_1
    new-instance v0, Lcom/shabakaty/downloader/p25;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/shabakaty/downloader/p25;-><init>(IIIF)V

    iput-object v0, p0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->lastVideoSize:Lcom/shabakaty/downloader/p25;

    .line 199
    iget-object p1, p0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->eventDispatcher:Lcom/shabakaty/downloader/o25$a;

    iget-object p1, p1, Lcom/shabakaty/downloader/o25$a;->a:Landroid/os/Handler;

    .line 200
    if-eqz p1, :cond_2

    new-instance p2, Lcom/shabakaty/downloader/or;

    iget-object v0, p0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->eventDispatcher:Lcom/shabakaty/downloader/o25$a;

    iget-object v1, p0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->lastVideoSize:Lcom/shabakaty/downloader/p25;

    invoke-direct {p2, v0, v1}, Lcom/shabakaty/downloader/or;-><init>(Lcom/shabakaty/downloader/o25$a;Lcom/shabakaty/downloader/p25;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 201
    :cond_2
    return-void

    .line 196
    :cond_3
    :goto_0
    return-void
.end method

.method private releasePending()V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->pending:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->decoder:Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->pending:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    invoke-virtual {v0, v1}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->releaseFrame(Landroidx/media3/decoder/VideoDecoderOutputBuffer;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->pending:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 220
    :cond_0
    return-void
.end method

.method private reportDecoderError()V
    .locals 5

    .line 204
    iget-object v0, p0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->eventDispatcher:Lcom/shabakaty/downloader/o25$a;

    iget-object v0, v0, Lcom/shabakaty/downloader/o25$a;->a:Landroid/os/Handler;

    .line 205
    if-eqz v0, :cond_0

    new-instance v1, Lcom/shabakaty/downloader/or;

    iget-object v2, p0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->eventDispatcher:Lcom/shabakaty/downloader/o25$a;

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "H.264 High 10 software decoder initialization failed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/shabakaty/downloader/or;-><init>(Lcom/shabakaty/downloader/o25$a;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 206
    :cond_0
    return-void
.end method


# virtual methods
.method public B()V
    .locals 2

    .line 113
    invoke-direct {p0}, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->releasePending()V

    .line 114
    iget-object v0, p0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->decoder:Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;

    invoke-virtual {v0}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->release()V

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->configured:Z

    .line 116
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->surface:Landroid/view/Surface;

    .line 117
    iput-object v1, p0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->currentFormat:Lcom/shabakaty/downloader/wh1;

    .line 118
    iput-object v1, p0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->lastVideoSize:Lcom/shabakaty/downloader/p25;

    .line 119
    iput-boolean v0, p0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->firstFrameReported:Z

    .line 120
    iput-boolean v0, p0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->ended:Z

    .line 121
    return-void
.end method

.method public D(JZ)V
    .locals 0

    .line 105
    iput-wide p1, p0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->outputStartUs:J

    .line 106
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->ended:Z

    .line 107
    iput-boolean p1, p0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->firstFrameReported:Z

    .line 108
    invoke-direct {p0}, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->releasePending()V

    .line 109
    iget-boolean p1, p0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->configured:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->decoder:Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;

    invoke-virtual {p1}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->reset()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->currentFormat:Lcom/shabakaty/downloader/wh1;

    invoke-direct {p0, p1}, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->configure(Lcom/shabakaty/downloader/wh1;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->configured:Z

    .line 110
    :cond_0
    return-void
.end method

.method public E()V
    .locals 0

    .line 123
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->B()V

    return-void
.end method


.method public H([Lcom/shabakaty/downloader/wh1;JJ)V
    .locals 3

    const-string v0, "renderer_stream_refresh_enter"
    invoke-static {v0}, Lcom/shabakaty/cinemana/player/PlayerDiagnosticLog;->event(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :useCurrentFormat

    array-length v0, p1

    if-lez v0, :useCurrentFormat

    const/4 v0, 0x0

    aget-object p1, p1, v0

    goto :resolveFormat

    :useCurrentFormat
    iget-object p1, p0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->currentFormat:Lcom/shabakaty/downloader/wh1;

    :resolveFormat
    invoke-direct {p0, p1}, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->resolveRefreshFormat(Lcom/shabakaty/downloader/wh1;)Lcom/shabakaty/downloader/wh1;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->currentFormat:Lcom/shabakaty/downloader/wh1;
    const-string v0, "renderer_resolved_format"
    invoke-static {v0, p1}, Lcom/shabakaty/cinemana/player/PlayerDiagnosticLog;->value(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "CinemanaDecoderPolicy"

    const-string v1, "H26410 software renderer handling stream/source refresh; resolving the video Format before configuring FFmpeg"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide p2, p0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->outputStartUs:J

    iput-boolean v2, p0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->ended:Z

    iput-boolean v2, p0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->firstFrameReported:Z

    iput-object v2, p0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->lastVideoSize:Lcom/shabakaty/downloader/p25;

    iput v2, p0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->noOutputSamples:I

    iput-boolean v2, p0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->noOutputWarningReported:Z

    invoke-direct {p0}, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->releasePending()V

    iget-object p1, p0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->currentFormat:Lcom/shabakaty/downloader/wh1;

    invoke-direct {p0, p1}, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->configure(Lcom/shabakaty/downloader/wh1;)Z

    iget-boolean v0, p0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->configured:Z

    if-eqz v0, :configurationFailed

    const-string v0, "CinemanaDecoderPolicy"
    const-string v1, "FFmpeg video decoder configured for refreshed stream"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    const-string v0, "renderer_stream_refresh_configured"
    invoke-static {v0}, Lcom/shabakaty/cinemana/player/PlayerDiagnosticLog;->event(Ljava/lang/String;)V

    return-void

    :configurationFailed
    const-string v0, "CinemanaDecoderPolicy"
    const-string v1, "FFmpeg video decoder configuration failed for refreshed stream"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    const-string v0, "renderer_stream_refresh_configuration_failed"
    invoke-static {v0}, Lcom/shabakaty/cinemana/player/PlayerDiagnosticLog;->event(Ljava/lang/String;)V

    return-void
.end method



.method public a(Lcom/shabakaty/downloader/wh1;)I
    .locals 2

    invoke-static {p1}, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->shouldUseSoftware(Lcom/shabakaty/downloader/wh1;)Z

    move-result v0

    if-eqz v0, :unsupported

    iget-object v0, p1, Lcom/shabakaty/downloader/wh1;->F:Lcom/shabakaty/downloader/o01;

    if-nez v0, :unsupported

    invoke-static {}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;->isH264Available()Z

    move-result v0

    if-eqz v0, :unsupported

    invoke-static {p1}, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->isHigh10(Lcom/shabakaty/downloader/wh1;)Z

    move-result v0

    if-eqz v0, :supported

    sput-object p1, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->lastHigh10Format:Lcom/shabakaty/downloader/wh1;

    :supported
    const/4 p1, 0x4

    return p1

    :unsupported
    const/4 v0, 0x0

    return v0
.end method


.method public b()Z
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->configured:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()Z
    .locals 1

    .line 216
    iget-boolean v0, p0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->ended:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->pending:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 52
    const-string v0, "H264-High10-FFmpeg"

    return-object v0
.end method

.method public o(JJ)V
    .locals 15

    .line 125
    move-object v0, p0

    iget-object v1, v0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->surface:Landroid/view/Surface;

    if-eqz v1, :cond_12

    iget-boolean v1, v0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->ended:Z

    if-eqz v1, :cond_0

    goto/16 :goto_4

    .line 129
    :cond_0
    iget-object v1, v0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->pending:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    const/4 v2, 0x0

    const-wide/32 v3, 0xc350

    const-wide/16 v5, 0x1

    if-eqz v1, :cond_5

    .line 130
    iget-object v1, v0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->pending:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    iget-wide v7, v1, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->s:J

    sub-long v7, v7, p1

    .line 131
    cmp-long v1, v7, v3

    if-lez v1, :cond_1

    return-void

    .line 132
    :cond_1
    const-wide/32 v3, -0x3d090

    cmp-long v1, v7, v3

    if-gez v1, :cond_2

    .line 133
    invoke-direct {p0}, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->releasePending()V

    .line 134
    return-void

    .line 136
    :cond_2
    iget-object v1, v0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->pending:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 137
    iput-object v2, v0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->pending:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 138
    iget-object v2, v0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->decoder:Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;

    iget-object v3, v0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->surface:Landroid/view/Surface;

    invoke-virtual {v2, v1, v3}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->render(Landroidx/media3/decoder/VideoDecoderOutputBuffer;Landroid/view/Surface;)Z

    move-result v2

    .line 139
    if-eqz v2, :cond_3

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->forceHigh10AfterRefresh:Z

    iget v3, v1, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->width:I

    iget v4, v1, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->height:I

    invoke-direct {p0, v3, v4}, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->notifyVideoSize(II)V

    invoke-direct {p0}, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->notifyFirstFrame()V

    .line 140
    :cond_3
    iget-object v3, v0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->decoder:Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;

    invoke-virtual {v3, v1}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->releaseFrame(Landroidx/media3/decoder/VideoDecoderOutputBuffer;)V

    .line 141
    if-eqz v2, :cond_4

    iget-wide v1, v0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->decodedFrames:J

    add-long/2addr v1, v5

    iput-wide v1, v0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->decodedFrames:J

    goto :goto_0

    :cond_4
    iget-wide v1, v0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->failedFrames:J

    add-long/2addr v1, v5

    iput-wide v1, v0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->failedFrames:J

    .line 142
    :goto_0
    return-void

    .line 147
    :cond_5
    const/4 v1, 0x0

    const/4 v7, 0x0

    :goto_1
    const/16 v8, 0x8

    if-ge v7, v8, :cond_11

    .line 148
    iget-object v8, v0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->input:Lcom/shabakaty/downloader/bn0;

    invoke-virtual {v8}, Lcom/shabakaty/downloader/bn0;->H()V

    .line 149
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->A()Lcom/shabakaty/downloader/yh1;

    move-result-object v8

    iget-object v9, v0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->input:Lcom/shabakaty/downloader/bn0;

    invoke-virtual {p0, v8, v9, v1}, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->I(Lcom/shabakaty/downloader/yh1;Lcom/shabakaty/downloader/bn0;I)I

    move-result v8

    .line 150
    const/4 v9, -0x3

    if-ne v8, v9, :cond_6

    return-void

    .line 151
    :cond_6
    const/4 v9, -0x5

    if-ne v8, v9, :cond_9

    .line 152
    iget-object v8, v0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->s:Lcom/shabakaty/downloader/yh1;

    iget-object v8, v8, Lcom/shabakaty/downloader/yh1;->t:Ljava/lang/Object;

    .line 153
    instance-of v9, v8, Lcom/shabakaty/downloader/wh1;

    if-nez v9, :cond_7

    return-void

    .line 154
    :cond_7
    check-cast v8, Lcom/shabakaty/downloader/wh1;

    invoke-direct {p0, v8}, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->resolveRefreshFormat(Lcom/shabakaty/downloader/wh1;)Lcom/shabakaty/downloader/wh1;

    move-result-object v8

    iput-object v8, v0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->currentFormat:Lcom/shabakaty/downloader/wh1;

    const-string v9, "CinemanaDecoderPolicy"

    const-string v10, "Software renderer received a new video Format from SampleStream"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v8, v0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->currentFormat:Lcom/shabakaty/downloader/wh1;

    invoke-direct {p0, v8}, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->configure(Lcom/shabakaty/downloader/wh1;)Z

    iget-boolean v9, v0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->configured:Z

    if-eqz v9, :cond_8

    const-string v9, "CinemanaDecoderPolicy"

    const-string v10, "FFmpeg video decoder configured after stream refresh"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_8
    const-string v9, "CinemanaDecoderPolicy"

    const-string v10, "FFmpeg video decoder configuration failed after stream refresh"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    goto :goto_3

    .line 158
    :cond_9
    const/4 v9, -0x4

    if-eq v8, v9, :cond_a

    return-void

    .line 159
    :cond_a
    iget-object v8, v0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->input:Lcom/shabakaty/downloader/bn0;

    invoke-virtual {v8}, Lcom/shabakaty/downloader/bn0;->F()Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_b

    .line 160
    iput-boolean v9, v0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->ended:Z

    .line 161
    return-void

    .line 163
    :cond_b
    iget-boolean v8, v0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->configured:Z

    if-nez v8, :cond_c

    iget-object v8, v0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->currentFormat:Lcom/shabakaty/downloader/wh1;

    invoke-direct {p0, v8}, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->configure(Lcom/shabakaty/downloader/wh1;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 164
    invoke-direct {p0}, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->reportDecoderError()V

    .line 165
    iput-boolean v9, v0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->ended:Z

    .line 166
    return-void

    .line 168
    :cond_c
    iget-object v8, v0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->input:Lcom/shabakaty/downloader/bn0;

    invoke-virtual {v8}, Lcom/shabakaty/downloader/bn0;->K()V

    .line 169
    iget-object v9, v0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->decoder:Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;

    iget-object v8, v0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->input:Lcom/shabakaty/downloader/bn0;

    iget-object v10, v8, Lcom/shabakaty/downloader/bn0;->t:Ljava/nio/ByteBuffer;

    iget-object v8, v0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->input:Lcom/shabakaty/downloader/bn0;

    iget-wide v11, v8, Lcom/shabakaty/downloader/bn0;->v:J

    iget-wide v13, v0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->outputStartUs:J

    invoke-virtual/range {v9 .. v14}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->decode(Ljava/nio/ByteBuffer;JJ)Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    move-result-object v8

    .line 170
    if-eqz v8, :cond_10

    const/4 v9, 0x0

    iput v9, v0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->noOutputSamples:I

    iput-boolean v9, v0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->noOutputWarningReported:Z

    .line 171
    iput-object v8, v0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->pending:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 172
    iget-object v1, v0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->pending:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    iget-wide v7, v1, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->s:J

    sub-long v7, v7, p1

    .line 173
    cmp-long v1, v7, v3

    if-lez v1, :cond_d

    return-void

    .line 174
    :cond_d
    iget-object v1, v0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->pending:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 175
    iput-object v2, v0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->pending:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 176
    iget-object v2, v0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->decoder:Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;

    iget-object v3, v0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->surface:Landroid/view/Surface;

    invoke-virtual {v2, v1, v3}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->render(Landroidx/media3/decoder/VideoDecoderOutputBuffer;Landroid/view/Surface;)Z

    move-result v2

    .line 177
    if-eqz v2, :cond_e

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->forceHigh10AfterRefresh:Z

    iget v3, v1, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->width:I

    iget v4, v1, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->height:I

    invoke-direct {p0, v3, v4}, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->notifyVideoSize(II)V

    invoke-direct {p0}, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->notifyFirstFrame()V

    .line 178
    :cond_e
    iget-object v3, v0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->decoder:Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;

    invoke-virtual {v3, v1}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->releaseFrame(Landroidx/media3/decoder/VideoDecoderOutputBuffer;)V

    .line 179
    if-eqz v2, :cond_f

    iget-wide v1, v0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->decodedFrames:J

    add-long/2addr v1, v5

    iput-wide v1, v0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->decodedFrames:J

    goto :goto_2

    :cond_f
    iget-wide v1, v0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->failedFrames:J

    add-long/2addr v1, v5

    iput-wide v1, v0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->failedFrames:J

    .line 180
    :goto_2
    return-void

    .line 147
    :cond_10
    iget v9, v0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->noOutputSamples:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->noOutputSamples:I

    const/16 v10, 0x78

    if-lt v9, v10, :goto_3

    iget-boolean v10, v0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->noOutputWarningReported:Z

    if-nez v10, :goto_3

    const/4 v10, 0x1

    iput-boolean v10, v0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->noOutputWarningReported:Z

    const-string v9, "CinemanaDecoderPolicy"

    const-string v10, "FFmpeg consumed 120 video samples without producing a frame after source refresh; verify the active Format, codec-specific data, and packet stream"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 183
    :cond_11
    return-void

    .line 125
    :cond_12
    :goto_4
    return-void
.end method

.method public p(ILjava/lang/Object;)V
    .locals 1

    const-string v0, "renderer_surface_event"
    invoke-static {v0}, Lcom/shabakaty/cinemana/player/PlayerDiagnosticLog;->event(Ljava/lang/String;)V

    .line 186
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 187
    instance-of p1, p2, Landroid/view/Surface;

    if-eqz p1, :cond_0

    check-cast p2, Landroid/view/Surface;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 188
    :goto_0
    iget-object p1, p0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->surface:Landroid/view/Surface;

    if-eq p2, p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->firstFrameReported:Z

    .line 189
    :cond_1
    iput-object p2, p0, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->surface:Landroid/view/Surface;

    .line 190
    return-void

    .line 192
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/shabakaty/downloader/bk;->p(ILjava/lang/Object;)V

    .line 193
    return-void
.end method
