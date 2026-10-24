.class public Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;
.super Ljava/lang/Object;
.source "ProgressiveJpegParser.java"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Z

.field public final h:Lcom/facebook/common/memory/ByteArrayPool;


# direct methods
.method public constructor <init>(Lcom/facebook/common/memory/ByteArrayPool;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->h:Lcom/facebook/common/memory/ByteArrayPool;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->c:I

    .line 5
    iput p1, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->b:I

    .line 6
    iput p1, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->d:I

    .line 7
    iput p1, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->f:I

    .line 8
    iput p1, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->e:I

    .line 9
    iput p1, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->a:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;)Z
    .locals 11

    .line 1
    iget v0, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->e:I

    .line 2
    :goto_0
    :try_start_0
    iget v1, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->a:I

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_14

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_14

    .line 3
    iget v5, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->c:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->c:I

    .line 4
    iget-boolean v6, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->g:Z

    if-eqz v6, :cond_0

    .line 5
    iput v2, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->a:I

    .line 6
    iput-boolean v3, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->g:Z

    return v3

    .line 7
    :cond_0
    iget v6, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->a:I

    const/16 v7, 0xff

    if-eqz v6, :cond_11

    const/16 v8, 0xd8

    const/4 v9, 0x2

    if-eq v6, v4, :cond_f

    const/4 v2, 0x3

    if-eq v6, v9, :cond_e

    const/4 v10, 0x4

    if-eq v6, v2, :cond_3

    const/4 v2, 0x5

    if-eq v6, v10, :cond_2

    if-eq v6, v2, :cond_1

    .line 8
    invoke-static {v3}, Lcom/facebook/common/internal/Preconditions;->d(Z)V

    goto/16 :goto_2

    .line 9
    :cond_1
    iget v2, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->b:I

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v2, v1

    sub-int/2addr v2, v9

    int-to-long v3, v2

    .line 10
    invoke-static {p1, v3, v4}, Lcom/facebook/common/util/StreamUtil;->a(Ljava/io/InputStream;J)J

    .line 11
    iget v3, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->c:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->c:I

    .line 12
    iput v9, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->a:I

    goto/16 :goto_2

    .line 13
    :cond_2
    iput v2, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->a:I

    goto/16 :goto_2

    :cond_3
    if-ne v1, v7, :cond_4

    .line 14
    iput v2, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->a:I

    goto/16 :goto_2

    :cond_4
    if-nez v1, :cond_5

    .line 15
    iput v9, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->a:I

    goto :goto_2

    :cond_5
    const/16 v2, 0xd9

    if-ne v1, v2, :cond_7

    .line 16
    iput-boolean v4, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->g:Z

    add-int/lit8 v5, v5, -0x2

    .line 17
    iget v2, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->d:I

    if-lez v2, :cond_6

    .line 18
    iput v5, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->f:I

    :cond_6
    add-int/lit8 v3, v2, 0x1

    .line 19
    iput v3, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->d:I

    iput v2, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->e:I

    .line 20
    iput v9, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->a:I

    goto :goto_2

    :cond_7
    const/16 v6, 0xda

    if-ne v1, v6, :cond_9

    add-int/lit8 v5, v5, -0x2

    .line 21
    iget v6, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->d:I

    if-lez v6, :cond_8

    .line 22
    iput v5, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->f:I

    :cond_8
    add-int/lit8 v5, v6, 0x1

    .line 23
    iput v5, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->d:I

    iput v6, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->e:I

    :cond_9
    if-ne v1, v4, :cond_a

    goto :goto_1

    :cond_a
    const/16 v5, 0xd0

    if-lt v1, v5, :cond_b

    const/16 v5, 0xd7

    if-gt v1, v5, :cond_b

    goto :goto_1

    :cond_b
    if-eq v1, v2, :cond_c

    if-eq v1, v8, :cond_c

    const/4 v3, 0x1

    :cond_c
    :goto_1
    if-eqz v3, :cond_d

    .line 24
    iput v10, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->a:I

    goto :goto_2

    .line 25
    :cond_d
    iput v9, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->a:I

    goto :goto_2

    :cond_e
    if-ne v1, v7, :cond_13

    .line 26
    iput v2, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->a:I

    goto :goto_2

    :cond_f
    if-ne v1, v8, :cond_10

    .line 27
    iput v9, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->a:I

    goto :goto_2

    .line 28
    :cond_10
    iput v2, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->a:I

    goto :goto_2

    :cond_11
    if-ne v1, v7, :cond_12

    .line 29
    iput v4, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->a:I

    goto :goto_2

    .line 30
    :cond_12
    iput v2, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->a:I

    .line 31
    :cond_13
    :goto_2
    iput v1, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->b:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 32
    :cond_14
    iget p1, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->a:I

    if-eq p1, v2, :cond_15

    iget p1, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->e:I

    if-eq p1, v0, :cond_15

    const/4 v3, 0x1

    :cond_15
    return v3

    :catch_0
    move-exception p1

    .line 33
    invoke-static {p1}, Lcom/facebook/common/internal/Throwables;->a(Ljava/lang/Throwable;)V

    .line 34
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public b(Lcom/facebook/imagepipeline/image/EncodedImage;)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->g()I

    move-result v0

    .line 3
    iget v2, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->c:I

    if-gt v0, v2, :cond_1

    return v1

    .line 4
    :cond_1
    new-instance v0, Lcom/facebook/common/memory/PooledByteArrayBufferedInputStream;

    .line 5
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->f()Ljava/io/InputStream;

    move-result-object p1

    iget-object v1, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->h:Lcom/facebook/common/memory/ByteArrayPool;

    const/16 v2, 0x4000

    invoke-interface {v1, v2}, Lcom/facebook/common/memory/Pool;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iget-object v2, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->h:Lcom/facebook/common/memory/ByteArrayPool;

    invoke-direct {v0, p1, v1, v2}, Lcom/facebook/common/memory/PooledByteArrayBufferedInputStream;-><init>(Ljava/io/InputStream;[BLcom/facebook/common/references/ResourceReleaser;)V

    .line 6
    :try_start_0
    iget p1, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->c:I

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lcom/facebook/common/util/StreamUtil;->a(Ljava/io/InputStream;J)J

    .line 7
    invoke-virtual {p0, v0}, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->a(Ljava/io/InputStream;)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-static {v0}, Lcom/facebook/common/internal/Closeables;->b(Ljava/io/InputStream;)V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    :try_start_1
    invoke-static {p1}, Lcom/facebook/common/internal/Throwables;->a(Ljava/lang/Throwable;)V

    .line 10
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/Closeables;->b(Ljava/io/InputStream;)V

    .line 12
    throw p1
.end method
