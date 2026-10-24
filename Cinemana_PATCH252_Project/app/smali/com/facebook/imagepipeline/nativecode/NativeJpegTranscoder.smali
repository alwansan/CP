.class public Lcom/facebook/imagepipeline/nativecode/NativeJpegTranscoder;
.super Ljava/lang/Object;
.source "NativeJpegTranscoder.java"

# interfaces
.implements Lcom/facebook/imagepipeline/transcoder/ImageTranscoder;


# annotations
.annotation build Lcom/facebook/common/internal/DoNotStrip;
.end annotation


# instance fields
.field public a:I

.field public b:Z


# direct methods
.method public constructor <init>(ZIZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lcom/facebook/imagepipeline/nativecode/NativeJpegTranscoder;->a:I

    .line 3
    iput-boolean p3, p0, Lcom/facebook/imagepipeline/nativecode/NativeJpegTranscoder;->b:Z

    if-eqz p4, :cond_0

    .line 4
    invoke-static {}, Lcom/facebook/imagepipeline/nativecode/NativeJpegTranscoderSoLoader;->a()V

    :cond_0
    return-void
.end method

.method public static e(Ljava/io/InputStream;Ljava/io/OutputStream;III)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/nativecode/NativeJpegTranscoderSoLoader;->a()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p3, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/common/internal/Preconditions;->a(Ljava/lang/Boolean;)V

    const/16 v2, 0x10

    if-gt p3, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 3
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/common/internal/Preconditions;->a(Ljava/lang/Boolean;)V

    if-ltz p4, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 4
    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/common/internal/Preconditions;->a(Ljava/lang/Boolean;)V

    const/16 v2, 0x64

    if-gt p4, v2, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    .line 5
    :goto_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/common/internal/Preconditions;->a(Ljava/lang/Boolean;)V

    .line 6
    sget-object v2, Lcom/facebook/imagepipeline/transcoder/JpegTranscoderUtils;->a:Lcom/facebook/common/internal/ImmutableList;

    if-ltz p2, :cond_4

    const/16 v2, 0x10e

    if-gt p2, v2, :cond_4

    .line 7
    rem-int/lit8 v2, p2, 0x5a

    if-nez v2, :cond_4

    const/4 v2, 0x1

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    .line 8
    :goto_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/common/internal/Preconditions;->a(Ljava/lang/Boolean;)V

    const/16 v2, 0x8

    if-ne p3, v2, :cond_5

    if-eqz p2, :cond_6

    :cond_5
    const/4 v0, 0x1

    :cond_6
    const-string v1, "no transformation requested"

    .line 9
    invoke-static {v0, v1}, Lcom/facebook/common/internal/Preconditions;->b(ZLjava/lang/Object;)V

    .line 10
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {p0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/nativecode/NativeJpegTranscoder;->nativeTranscodeJpeg(Ljava/io/InputStream;Ljava/io/OutputStream;III)V

    return-void
.end method

.method public static f(Ljava/io/InputStream;Ljava/io/OutputStream;III)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/nativecode/NativeJpegTranscoderSoLoader;->a()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p3, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/common/internal/Preconditions;->a(Ljava/lang/Boolean;)V

    const/16 v2, 0x10

    if-gt p3, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 3
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/common/internal/Preconditions;->a(Ljava/lang/Boolean;)V

    if-ltz p4, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 4
    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/common/internal/Preconditions;->a(Ljava/lang/Boolean;)V

    const/16 v2, 0x64

    if-gt p4, v2, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    .line 5
    :goto_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/common/internal/Preconditions;->a(Ljava/lang/Boolean;)V

    .line 6
    sget-object v2, Lcom/facebook/imagepipeline/transcoder/JpegTranscoderUtils;->a:Lcom/facebook/common/internal/ImmutableList;

    packed-switch p2, :pswitch_data_0

    const/4 v2, 0x0

    goto :goto_4

    :pswitch_0
    const/4 v2, 0x1

    :goto_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/common/internal/Preconditions;->a(Ljava/lang/Boolean;)V

    const/16 v2, 0x8

    if-ne p3, v2, :cond_4

    if-eq p2, v1, :cond_5

    :cond_4
    const/4 v0, 0x1

    :cond_5
    const-string v1, "no transformation requested"

    .line 7
    invoke-static {v0, v1}, Lcom/facebook/common/internal/Preconditions;->b(ZLjava/lang/Object;)V

    .line 8
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {p0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/nativecode/NativeJpegTranscoder;->nativeTranscodeJpegWithExifOrientation(Ljava/io/InputStream;Ljava/io/OutputStream;III)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static native nativeTranscodeJpeg(Ljava/io/InputStream;Ljava/io/OutputStream;III)V
    .annotation build Lcom/facebook/common/internal/DoNotStrip;
    .end annotation
.end method

.method private static native nativeTranscodeJpegWithExifOrientation(Ljava/io/InputStream;Ljava/io/OutputStream;III)V
    .annotation build Lcom/facebook/common/internal/DoNotStrip;
    .end annotation
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "NativeJpegTranscoder"

    return-object v0
.end method

.method public b(Lcom/facebook/imagepipeline/image/EncodedImage;Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/common/ResizeOptions;)Z
    .locals 0

    .line 1
    sget-object p1, Lcom/facebook/imagepipeline/transcoder/JpegTranscoderUtils;->a:Lcom/facebook/common/internal/ImmutableList;

    const/4 p1, 0x0

    return p1
.end method

.method public c(Lcom/facebook/imagepipeline/image/EncodedImage;Ljava/io/OutputStream;Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/common/ResizeOptions;Lcom/facebook/imageformat/ImageFormat;Ljava/lang/Integer;)Lcom/facebook/imagepipeline/transcoder/ImageTranscodeResult;
    .locals 4

    if-nez p6, :cond_0

    const/16 p4, 0x55

    .line 1
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    :cond_0
    if-nez p3, :cond_1

    .line 2
    sget-object p3, Lcom/facebook/imagepipeline/common/RotationOptions;->c:Lcom/facebook/imagepipeline/common/RotationOptions;

    .line 3
    :cond_1
    iget p4, p0, Lcom/facebook/imagepipeline/nativecode/NativeJpegTranscoder;->a:I

    .line 4
    invoke-static {p3, p1, p4}, Lcom/facebook/imagepipeline/transcoder/DownsampleUtil;->a(Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/image/EncodedImage;I)I

    move-result p4

    const/4 p5, 0x0

    .line 5
    :try_start_0
    sget-object v0, Lcom/facebook/imagepipeline/transcoder/JpegTranscoderUtils;->a:Lcom/facebook/common/internal/ImmutableList;

    const/16 v0, 0x8

    .line 6
    div-int v1, v0, p4

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 7
    iget-boolean v3, p0, Lcom/facebook/imagepipeline/nativecode/NativeJpegTranscoder;->b:Z

    if-eqz v3, :cond_2

    move v0, v1

    .line 8
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->e()Ljava/io/InputStream;

    move-result-object p5

    .line 9
    sget-object v1, Lcom/facebook/imagepipeline/transcoder/JpegTranscoderUtils;->a:Lcom/facebook/common/internal/ImmutableList;

    .line 10
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->r()V

    .line 11
    iget v3, p1, Lcom/facebook/imagepipeline/image/EncodedImage;->v:I

    .line 12
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "Cannot transcode from null input stream!"

    if-eqz v1, :cond_3

    .line 13
    :try_start_1
    invoke-static {p3, p1}, Lcom/facebook/imagepipeline/transcoder/JpegTranscoderUtils;->a(Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/image/EncodedImage;)I

    move-result p1

    .line 14
    invoke-static {p5, v3}, Lcom/facebook/common/internal/Preconditions;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 16
    invoke-static {p5, p2, p1, v0, p3}, Lcom/facebook/imagepipeline/nativecode/NativeJpegTranscoder;->f(Ljava/io/InputStream;Ljava/io/OutputStream;III)V

    goto :goto_0

    .line 17
    :cond_3
    invoke-static {p3, p1}, Lcom/facebook/imagepipeline/transcoder/JpegTranscoderUtils;->b(Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/image/EncodedImage;)I

    move-result p1

    .line 18
    invoke-static {p5, v3}, Lcom/facebook/common/internal/Preconditions;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 20
    invoke-static {p5, p2, p1, v0, p3}, Lcom/facebook/imagepipeline/nativecode/NativeJpegTranscoder;->e(Ljava/io/InputStream;Ljava/io/OutputStream;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    :goto_0
    invoke-static {p5}, Lcom/facebook/common/internal/Closeables;->b(Ljava/io/InputStream;)V

    .line 22
    new-instance p1, Lcom/facebook/imagepipeline/transcoder/ImageTranscodeResult;

    if-ne p4, v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    invoke-direct {p1, v2}, Lcom/facebook/imagepipeline/transcoder/ImageTranscodeResult;-><init>(I)V

    return-object p1

    :catchall_0
    move-exception p1

    .line 23
    invoke-static {p5}, Lcom/facebook/common/internal/Closeables;->b(Ljava/io/InputStream;)V

    .line 24
    throw p1
.end method

.method public d(Lcom/facebook/imageformat/ImageFormat;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/imageformat/DefaultImageFormats;->a:Lcom/facebook/imageformat/ImageFormat;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
