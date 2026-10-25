.class public final Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;
.super Ljava/lang/Object;
.source "FfmpegLibrary.java"


# static fields
.field private static volatile attempted:Z

.field private static volatile h264Available:Z

.field private static volatile loaded:Z

.field private static volatile padding:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4
    const/16 v0, 0x40

    sput v0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;->padding:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native ffmpegGetInputBufferPaddingSize()I
.end method

.method private static native ffmpegGetVersion()Ljava/lang/String;
.end method

.method private static native ffmpegHasDecoder(Ljava/lang/String;)Z
.end method

.method public static inputPadding()I
    .locals 1

    .line 12
    invoke-static {}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;->isH264Available()Z

    sget v0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;->padding:I

    return v0
.end method

.method public static isDecoderAvailable(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :unavailable

    invoke-static {}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;->isH264Available()Z

    sget-boolean v0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;->loaded:Z

    if-eqz v0, :unavailable

    invoke-static {p0}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;->ffmpegHasDecoder(Ljava/lang/String;)Z

    move-result v0

    return v0

    :unavailable
    const/4 v0, 0x0

    return v0
.end method


.method public static isH264Available()Z
    .locals 5

    .line 7
    sget-boolean v0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;->attempted:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const-class v0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;

    monitor-enter v0

    :try_start_0
    sget-boolean v3, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;->attempted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v3, :cond_0

    .line 8
    :try_start_1
    const-string v3, "avutil"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v3, "avcodec"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v3, "swresample"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v3, "swscale"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v3, "media3ext"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    sput-boolean v2, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;->loaded:Z

    invoke-static {}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;->ffmpegGetInputBufferPaddingSize()I

    move-result v3

    const/16 v4, 0x40

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    sput v3, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;->padding:I

    const-string v3, "h264"

    invoke-static {v3}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;->ffmpegHasDecoder(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;->h264Available:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 9
    :catchall_0
    move-exception v3

    :try_start_2
    sput-boolean v1, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;->loaded:Z

    sput-boolean v1, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;->h264Available:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    :try_start_3
    sput-boolean v2, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;->attempted:Z

    goto :goto_1

    :catchall_1
    move-exception v1

    sput-boolean v2, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;->attempted:Z

    throw v1

    .line 10
    :cond_0
    :goto_1
    monitor-exit v0

    goto :goto_2

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1

    :cond_1
    :goto_2
    sget-boolean v0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;->loaded:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;->h264Available:Z

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method
