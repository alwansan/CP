.class public final Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;
.super Ljava/lang/Object;
.source "FfmpegVideoDecoder.java"


# static fields
.field private static final NO_OUTPUT:I = -0x1

.field private static final OK:I = 0x0

.field private static final SURFACE_MODE:I = 0x1


# instance fields
.field private nativeContext:J

.field private padding:I

.field private rotationDegrees:I

.field private staging:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/16 v0, 0x40

    iput v0, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->padding:I

    return-void
.end method

.method private static combineCsd(Ljava/util/List;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)[B"
        }
    .end annotation

    .line 17
    const/4 v0, 0x0

    if-eqz p0, :cond_8

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v2, 0x0

    move-wide v4, v2

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    if-eqz v6, :cond_1

    array-length v6, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    goto :goto_0

    :cond_2
    cmp-long v1, v4, v2

    if-lez v1, :cond_8

    const-wide/32 v1, 0x100000

    cmp-long v3, v4, v1

    if-lez v3, :cond_3

    goto :goto_3

    :cond_3
    long-to-int v0, v4

    new-array v1, v0, [B

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_4
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    if-eqz v4, :cond_4

    array-length v5, v4

    if-nez v5, :cond_5

    goto :goto_1

    :cond_5
    array-length v5, v4

    invoke-static {v4, v2, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v4

    add-int/2addr v3, v4

    goto :goto_1

    :cond_6
    if-ne v3, v0, :cond_7

    goto :goto_2

    :cond_7
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    :goto_2
    return-object v1

    :cond_8
    :goto_3
    return-object v0
.end method

.method private ensureStaging(I)V
    .locals 2

    .line 15
    iget-object v0, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->staging:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->staging:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-lt v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-ge v0, p1, :cond_1

    const/high16 v1, 0x20000000

    if-ge v0, v1, :cond_1

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-ge v0, p1, :cond_2

    goto :goto_1

    :cond_2
    move p1, v0

    :goto_1
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->staging:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private native ffmpegInitialize(Ljava/lang/String;[BI)J
.end method

.method private native ffmpegReceiveFrame(JILandroidx/media3/decoder/VideoDecoderOutputBuffer;ZI)I
.end method

.method private native ffmpegRelease(J)V
.end method

.method private native ffmpegReleaseFrame(J)V
.end method

.method private native ffmpegRenderFrame(JLandroid/view/Surface;Landroidx/media3/decoder/VideoDecoderOutputBuffer;III)I
.end method

.method private native ffmpegReset(J)J
.end method

.method private native ffmpegSendPacket(JLjava/nio/ByteBuffer;IJ)I
.end method

.method private static normalize(I)I
    .locals 1

    .line 16
    rem-int/lit16 p0, p0, 0x168

    if-gez p0, :cond_0

    add-int/lit16 p0, p0, 0x168

    :cond_0
    const/16 v0, 0x5a

    if-eq p0, v0, :cond_2

    const/16 v0, 0xb4

    if-eq p0, v0, :cond_2

    const/16 v0, 0x10e

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :cond_2
    :goto_0
    return p0
.end method


# virtual methods
.method public configure(Ljava/util/List;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;I)Z"
        }
    .end annotation

    const-string v4, "ffmpeg_decoder_configure_enter"
    invoke-static {v4}, Lcom/shabakaty/cinemana/player/PlayerDiagnosticLog;->event(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->release()V

    invoke-static {}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;->isH264Available()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "ffmpeg_decoder_library_unavailable"
    invoke-static {v0}, Lcom/shabakaty/cinemana/player/PlayerDiagnosticLog;->event(Ljava/lang/String;)V
    return v1

    :cond_0
    invoke-static {p2}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->normalize(I)I

    move-result p2

    iput p2, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->rotationDegrees:I

    invoke-static {}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;->inputPadding()I

    move-result p2

    iput p2, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->padding:I

    invoke-static {p1}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->combineCsd(Ljava/util/List;)[B

    move-result-object p1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result p2

    const/4 v0, 0x4

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v0, 0x1

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    const-wide/16 v2, 0x0

    :try_start_0
    const-string v4, "h264"

    invoke-direct {p0, v4, p1, p2}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->ffmpegInitialize(Ljava/lang/String;[BI)J

    move-result-wide p1

    iput-wide p1, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->nativeContext:J

    iget-wide p1, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->nativeContext:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, p1, v2

    if-eqz v4, :cond_1

    const/4 v1, 0x1
    :cond_1
        const-string v4, "ffmpeg_decoder_configure_complete"
        invoke-static {v4}, Lcom/shabakaty/cinemana/player/PlayerDiagnosticLog;->event(Ljava/lang/String;)V
        return v1

        :catchall_0
    move-exception p1

    iput-wide v2, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->nativeContext:J

    const-string v0, "ffmpeg_decoder_configure_exception"
    invoke-static {v0}, Lcom/shabakaty/cinemana/player/PlayerDiagnosticLog;->event(Ljava/lang/String;)V
    return v1
.end method

.method public decode(Ljava/nio/ByteBuffer;JJ)Landroidx/media3/decoder/VideoDecoderOutputBuffer;
    .locals 11

    .line 10
    move-object v8, p0

    iget-wide v0, v8, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->nativeContext:J

    const-wide/16 v2, 0x0

    const/4 v9, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_5

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-gtz v5, :cond_1

    return-object v9

    :cond_1
    :try_start_0
    iget v0, v8, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->padding:I

    add-int/2addr v0, v5

    invoke-direct {p0, v0}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->ensureStaging(I)V

    iget-object v0, v8, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->staging:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    iget-object v0, v8, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->staging:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iget-object v0, v8, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->staging:Ljava/nio/ByteBuffer;

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    iget-object v0, v8, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->staging:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    iget-wide v2, v8, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->nativeContext:J

    iget-object v4, v8, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->staging:Ljava/nio/ByteBuffer;

    move-object v1, p0

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->ffmpegSendPacket(JLjava/nio/ByteBuffer;IJ)I

    move-result v0

    if-eqz v0, :cond_2

    return-object v9

    :cond_2
    new-instance v0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    invoke-direct {v0}, Landroidx/media3/decoder/VideoDecoderOutputBuffer;-><init>()V

    iget-wide v2, v8, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->nativeContext:J

    cmp-long v1, p2, p4

    if-gez v1, :cond_3

    const/4 v1, 0x1

    const/4 v6, 0x1

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    :goto_0
    iget v7, v8, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->rotationDegrees:I

    const/4 v4, 0x1

    move-object v1, p0

    move-object v5, v0

    invoke-direct/range {v1 .. v7}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->ffmpegReceiveFrame(JILandroidx/media3/decoder/VideoDecoderOutputBuffer;ZI)I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v0}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->releaseFrame(Landroidx/media3/decoder/VideoDecoderOutputBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v9

    :cond_4
    return-object v0

    :catchall_0
    move-exception v0

    :cond_5
    :goto_1
    return-object v9
.end method

.method public release()V
    .locals 5

    const-string v4, "ffmpeg_decoder_release"
    invoke-static {v4}, Lcom/shabakaty/cinemana/player/PlayerDiagnosticLog;->event(Ljava/lang/String;)V

    .line 14
    iget-wide v0, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->nativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    :try_start_0
    iget-wide v0, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->nativeContext:J

    invoke-direct {p0, v0, v1}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->ffmpegRelease(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_0
    iput-wide v2, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->nativeContext:J

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->staging:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public releaseFrame(Landroidx/media3/decoder/VideoDecoderOutputBuffer;)V
    .locals 5

    .line 12
    if-eqz p1, :cond_1

    iget-wide v0, p1, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->decoderPrivate:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    iget-wide v0, p1, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->decoderPrivate:J

    invoke-direct {p0, v0, v1}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->ffmpegReleaseFrame(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_0
    iput-wide v2, p1, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->decoderPrivate:J

    :cond_1
    :goto_1
    return-void
.end method

.method public render(Landroidx/media3/decoder/VideoDecoderOutputBuffer;Landroid/view/Surface;)Z
    .locals 10

    const-string v0, "ffmpeg_render_enter"
    invoke-static {v0}, Lcom/shabakaty/cinemana/player/PlayerDiagnosticLog;->event(Ljava/lang/String;)V

    .line 11
    iget-wide v1, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->nativeContext:J

    const-wide/16 v3, 0x0

    const/4 v9, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-wide v2, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->nativeContext:J

    iget v6, p1, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->width:I

    iget v7, p1, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->height:I

    iget v8, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->rotationDegrees:I

    move-object v1, p0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v1 .. v8}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->ffmpegRenderFrame(JLandroid/view/Surface;Landroidx/media3/decoder/VideoDecoderOutputBuffer;III)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :render_failed

    const-string v0, "ffmpeg_render_success"
    invoke-static {v0}, Lcom/shabakaty/cinemana/player/PlayerDiagnosticLog;->event(Ljava/lang/String;)V
    const/4 v9, 0x1

    goto :cond_1

    :render_failed
    const-string v0, "ffmpeg_render_native_failure"
    invoke-static {v0}, Lcom/shabakaty/cinemana/player/PlayerDiagnosticLog;->event(Ljava/lang/String;)V

    :cond_1
    return v9

    :catchall_0
    move-exception v0
    const-string v0, "ffmpeg_render_exception"
    invoke-static {v0}, Lcom/shabakaty/cinemana/player/PlayerDiagnosticLog;->event(Ljava/lang/String;)V

    :cond_2
    :goto_0
    const-string v0, "ffmpeg_render_unavailable_or_failed"
    invoke-static {v0}, Lcom/shabakaty/cinemana/player/PlayerDiagnosticLog;->event(Ljava/lang/String;)V
    return v9
.end method

.method public reset()Z
    .locals 8

    const-string v7, "ffmpeg_decoder_reset"
    invoke-static {v7}, Lcom/shabakaty/cinemana/player/PlayerDiagnosticLog;->event(Ljava/lang/String;)V

    .line 13
    iget-wide v0, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->nativeContext:J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    return v2

    :cond_0
    iget-wide v0, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->nativeContext:J

    :try_start_0
    invoke-direct {p0, v0, v1}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->ffmpegReset(J)J

    move-result-wide v5

    iput-wide v5, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->nativeContext:J

    iget-wide v5, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->nativeContext:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    cmp-long v7, v5, v3

    if-nez v7, :cond_1

    :try_start_1
    invoke-direct {p0, v0, v1}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->ffmpegRelease(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_0
    return v2

    :cond_1
    const/4 v0, 0x1

    return v0

    :catchall_1
    move-exception v5

    iput-wide v3, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->nativeContext:J

    :try_start_2
    invoke-direct {p0, v0, v1}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->ffmpegRelease(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :goto_1
    return v2
.end method
