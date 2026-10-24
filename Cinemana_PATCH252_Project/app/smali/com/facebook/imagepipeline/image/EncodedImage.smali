.class public Lcom/facebook/imagepipeline/image/EncodedImage;
.super Ljava/lang/Object;
.source "EncodedImage.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public A:Lcom/facebook/imagepipeline/common/BytesRange;

.field public B:Landroid/graphics/ColorSpace;

.field public C:Z

.field public final r:Lcom/facebook/common/references/CloseableReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public final s:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/io/FileInputStream;",
            ">;"
        }
    .end annotation
.end field

.field public t:Lcom/facebook/imageformat/ImageFormat;

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Lcom/facebook/common/internal/Supplier;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/io/FileInputStream;",
            ">;I)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    sget-object v0, Lcom/facebook/imageformat/ImageFormat;->b:Lcom/facebook/imageformat/ImageFormat;

    iput-object v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->t:Lcom/facebook/imageformat/ImageFormat;

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->u:I

    const/4 v1, 0x0

    .line 15
    iput v1, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->v:I

    .line 16
    iput v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->w:I

    .line 17
    iput v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->x:I

    const/4 v1, 0x1

    .line 18
    iput v1, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->y:I

    .line 19
    iput v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->z:I

    .line 20
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->r:Lcom/facebook/common/references/CloseableReference;

    .line 22
    iput-object p1, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->s:Lcom/facebook/common/internal/Supplier;

    .line 23
    iput p2, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->z:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/common/references/CloseableReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/facebook/imageformat/ImageFormat;->b:Lcom/facebook/imageformat/ImageFormat;

    iput-object v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->t:Lcom/facebook/imageformat/ImageFormat;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->u:I

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->v:I

    .line 5
    iput v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->w:I

    .line 6
    iput v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->x:I

    const/4 v1, 0x1

    .line 7
    iput v1, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->y:I

    .line 8
    iput v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->z:I

    .line 9
    invoke-static {p1}, Lcom/facebook/common/references/CloseableReference;->j(Lcom/facebook/common/references/CloseableReference;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->a(Ljava/lang/Boolean;)V

    .line 10
    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->a()Lcom/facebook/common/references/CloseableReference;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->r:Lcom/facebook/common/references/CloseableReference;

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->s:Lcom/facebook/common/internal/Supplier;

    return-void
.end method

.method public static a(Lcom/facebook/imagepipeline/image/EncodedImage;)Lcom/facebook/imagepipeline/image/EncodedImage;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 1
    iget-object v1, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->s:Lcom/facebook/common/internal/Supplier;

    if-eqz v1, :cond_0

    .line 2
    new-instance v0, Lcom/facebook/imagepipeline/image/EncodedImage;

    iget v2, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->z:I

    invoke-direct {v0, v1, v2}, Lcom/facebook/imagepipeline/image/EncodedImage;-><init>(Lcom/facebook/common/internal/Supplier;I)V

    goto :goto_1

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->r:Lcom/facebook/common/references/CloseableReference;

    .line 4
    invoke-static {v1}, Lcom/facebook/common/references/CloseableReference;->c(Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    :try_start_0
    new-instance v0, Lcom/facebook/imagepipeline/image/EncodedImage;

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/image/EncodedImage;-><init>(Lcom/facebook/common/references/CloseableReference;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v1}, Lcom/facebook/common/references/CloseableReference;->close()V

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {v0, p0}, Lcom/facebook/imagepipeline/image/EncodedImage;->b(Lcom/facebook/imagepipeline/image/EncodedImage;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 8
    invoke-virtual {v1}, Lcom/facebook/common/references/CloseableReference;->close()V

    .line 9
    throw p0

    :cond_3
    :goto_2
    return-object v0
.end method

.method public static k(Lcom/facebook/imagepipeline/image/EncodedImage;)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->u:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->w:I

    if-ltz v0, :cond_0

    iget p0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->x:I

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static p(Lcom/facebook/imagepipeline/image/EncodedImage;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/EncodedImage;->o()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public b(Lcom/facebook/imagepipeline/image/EncodedImage;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->r()V

    .line 2
    iget-object v0, p1, Lcom/facebook/imagepipeline/image/EncodedImage;->t:Lcom/facebook/imageformat/ImageFormat;

    .line 3
    iput-object v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->t:Lcom/facebook/imageformat/ImageFormat;

    .line 4
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->r()V

    .line 5
    iget v0, p1, Lcom/facebook/imagepipeline/image/EncodedImage;->w:I

    .line 6
    iput v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->w:I

    .line 7
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->r()V

    .line 8
    iget v0, p1, Lcom/facebook/imagepipeline/image/EncodedImage;->x:I

    .line 9
    iput v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->x:I

    .line 10
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->r()V

    .line 11
    iget v0, p1, Lcom/facebook/imagepipeline/image/EncodedImage;->u:I

    .line 12
    iput v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->u:I

    .line 13
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->r()V

    .line 14
    iget v0, p1, Lcom/facebook/imagepipeline/image/EncodedImage;->v:I

    .line 15
    iput v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->v:I

    .line 16
    iget v0, p1, Lcom/facebook/imagepipeline/image/EncodedImage;->y:I

    .line 17
    iput v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->y:I

    .line 18
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->g()I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->z:I

    .line 19
    iget-object v0, p1, Lcom/facebook/imagepipeline/image/EncodedImage;->A:Lcom/facebook/imagepipeline/common/BytesRange;

    .line 20
    iput-object v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->A:Lcom/facebook/imagepipeline/common/BytesRange;

    .line 21
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->r()V

    .line 22
    iget-object v0, p1, Lcom/facebook/imagepipeline/image/EncodedImage;->B:Landroid/graphics/ColorSpace;

    .line 23
    iput-object v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->B:Landroid/graphics/ColorSpace;

    .line 24
    iget-boolean p1, p1, Lcom/facebook/imagepipeline/image/EncodedImage;->C:Z

    .line 25
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->C:Z

    return-void
.end method

.method public c()Lcom/facebook/common/references/CloseableReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->r:Lcom/facebook/common/references/CloseableReference;

    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->c(Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->r:Lcom/facebook/common/references/CloseableReference;

    sget-object v1, Lcom/facebook/common/references/CloseableReference;->v:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->close()V

    :cond_0
    return-void
.end method

.method public d(I)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/EncodedImage;->c()Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/EncodedImage;->g()I

    move-result v1

    .line 3
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 4
    new-array v1, p1, [B

    .line 5
    :try_start_0
    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/common/memory/PooledByteBuffer;

    const/4 v3, 0x0

    .line 6
    invoke-interface {v2, v3, v1, v3, p1}, Lcom/facebook/common/memory/PooledByteBuffer;->q(I[BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->close()V

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, p1, 0x2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    .line 9
    aget-byte v4, v1, v2

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 10
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v5, v3

    const-string v4, "%02X"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 12
    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->close()V

    .line 13
    throw p1
.end method

.method public e()Ljava/io/InputStream;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->s:Lcom/facebook/common/internal/Supplier;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/facebook/common/internal/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->r:Lcom/facebook/common/references/CloseableReference;

    .line 4
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->c(Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    :try_start_0
    new-instance v1, Lcom/facebook/common/memory/PooledByteBufferInputStream;

    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/common/memory/PooledByteBuffer;

    invoke-direct {v1, v2}, Lcom/facebook/common/memory/PooledByteBufferInputStream;-><init>(Lcom/facebook/common/memory/PooledByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->close()V

    .line 7
    throw v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Ljava/io/InputStream;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/EncodedImage;->e()Ljava/io/InputStream;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->r:Lcom/facebook/common/references/CloseableReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->f()Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->r:Lcom/facebook/common/references/CloseableReference;

    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/memory/PooledByteBuffer;

    invoke-interface {v0}, Lcom/facebook/common/memory/PooledByteBuffer;->size()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->z:I

    return v0
.end method

.method public final j()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/EncodedImage;->e()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/imageformat/ImageFormatChecker;->b(Ljava/io/InputStream;)Lcom/facebook/imageformat/ImageFormat;

    move-result-object v0

    .line 2
    iput-object v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->t:Lcom/facebook/imageformat/ImageFormat;

    .line 3
    invoke-static {v0}, Lcom/facebook/imageformat/DefaultImageFormats;->a(Lcom/facebook/imageformat/ImageFormat;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    sget-object v1, Lcom/facebook/imageformat/DefaultImageFormats;->j:Lcom/facebook/imageformat/ImageFormat;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const/4 v4, 0x4

    const/4 v5, 0x0

    if-eqz v1, :cond_a

    .line 4
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/EncodedImage;->e()Ljava/io/InputStream;

    move-result-object v1

    new-array v6, v4, [B

    .line 5
    :try_start_0
    invoke-virtual {v1, v6}, Ljava/io/InputStream;->read([B)I

    const-string v7, "RIFF"

    .line 6
    invoke-static {v6, v7}, Lcom/facebook/imageutils/WebpUtil;->a([BLjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    goto/16 :goto_4

    .line 7
    :cond_2
    invoke-static {v1}, Lcom/facebook/imageutils/WebpUtil;->c(Ljava/io/InputStream;)I

    .line 8
    invoke-virtual {v1, v6}, Ljava/io/InputStream;->read([B)I

    const-string v7, "WEBP"

    .line 9
    invoke-static {v6, v7}, Lcom/facebook/imageutils/WebpUtil;->a([BLjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_4

    .line 10
    :cond_3
    invoke-virtual {v1, v6}, Ljava/io/InputStream;->read([B)I

    .line 11
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v4, :cond_4

    .line 12
    aget-byte v9, v6, v8

    int-to-char v9, v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 13
    :cond_4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "VP8 "

    .line 14
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 15
    invoke-static {v1}, Lcom/facebook/imageutils/WebpUtil;->d(Ljava/io/InputStream;)Landroid/util/Pair;

    move-result-object v5

    goto :goto_4

    :cond_5
    const-string v7, "VP8L"

    .line 16
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 17
    invoke-static {v1}, Lcom/facebook/imageutils/WebpUtil;->e(Ljava/io/InputStream;)Landroid/util/Pair;

    move-result-object v5

    goto :goto_4

    :cond_6
    const-string v7, "VP8X"

    .line 18
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-wide/16 v6, 0x8

    .line 19
    invoke-virtual {v1, v6, v7}, Ljava/io/InputStream;->skip(J)J

    .line 20
    new-instance v6, Landroid/util/Pair;

    invoke-static {v1}, Lcom/facebook/imageutils/WebpUtil;->f(Ljava/io/InputStream;)I

    move-result v7

    add-int/2addr v7, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v1}, Lcom/facebook/imageutils/WebpUtil;->f(Ljava/io/InputStream;)I

    move-result v8

    add-int/2addr v8, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    .line 22
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_3
    move-object v5, v6

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v6

    .line 23
    :try_start_2
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_8

    .line 24
    :cond_7
    :goto_4
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :catch_2
    move-exception v1

    .line 25
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_8
    :goto_5
    if-eqz v5, :cond_c

    .line 26
    iget-object v1, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->w:I

    .line 27
    iget-object v1, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->x:I

    goto :goto_8

    :goto_6
    if-eqz v1, :cond_9

    .line 28
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_7

    :catch_3
    move-exception v1

    .line 29
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 30
    :cond_9
    :goto_7
    throw v0

    .line 31
    :cond_a
    :try_start_5
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/EncodedImage;->e()Ljava/io/InputStream;

    move-result-object v5

    .line 32
    invoke-static {v5}, Lcom/facebook/imageutils/BitmapUtil;->a(Ljava/io/InputStream;)Lcom/facebook/imageutils/ImageMetaData;

    move-result-object v1

    .line 33
    iget-object v6, v1, Lcom/facebook/imageutils/ImageMetaData;->b:Landroid/graphics/ColorSpace;

    .line 34
    iput-object v6, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->B:Landroid/graphics/ColorSpace;

    .line 35
    iget-object v6, v1, Lcom/facebook/imageutils/ImageMetaData;->a:Landroid/util/Pair;

    if-eqz v6, :cond_b

    .line 36
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->w:I

    .line 37
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->x:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 38
    :cond_b
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 39
    :catch_4
    iget-object v5, v1, Lcom/facebook/imageutils/ImageMetaData;->a:Landroid/util/Pair;

    .line 40
    :cond_c
    :goto_8
    sget-object v1, Lcom/facebook/imageformat/DefaultImageFormats;->a:Lcom/facebook/imageformat/ImageFormat;

    const/4 v6, -0x1

    if-ne v0, v1, :cond_15

    iget v1, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->u:I

    if-ne v1, v6, :cond_15

    if-eqz v5, :cond_19

    .line 41
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/EncodedImage;->e()Ljava/io/InputStream;

    move-result-object v0

    .line 42
    :try_start_7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :cond_d
    :goto_9
    invoke-static {v0, v2, v3}, Lcom/facebook/imageutils/StreamProcessor;->a(Ljava/io/InputStream;IZ)I

    move-result v1

    const/4 v5, 0x2

    const/16 v6, 0xff

    if-ne v1, v6, :cond_12

    const/16 v1, 0xff

    :goto_a
    if-ne v1, v6, :cond_e

    .line 44
    invoke-static {v0, v2, v3}, Lcom/facebook/imageutils/StreamProcessor;->a(Ljava/io/InputStream;IZ)I

    move-result v1

    goto :goto_a

    :cond_e
    const/16 v6, 0xe1

    if-ne v1, v6, :cond_f

    goto :goto_c

    :cond_f
    const/16 v6, 0xd8

    if-eq v1, v6, :cond_d

    if-ne v1, v2, :cond_10

    goto :goto_9

    :cond_10
    const/16 v6, 0xd9

    if-eq v1, v6, :cond_12

    const/16 v6, 0xda

    if-ne v1, v6, :cond_11

    goto :goto_b

    .line 45
    :cond_11
    invoke-static {v0, v5, v3}, Lcom/facebook/imageutils/StreamProcessor;->a(Ljava/io/InputStream;IZ)I

    move-result v1

    sub-int/2addr v1, v5

    int-to-long v5, v1

    .line 46
    invoke-virtual {v0, v5, v6}, Ljava/io/InputStream;->skip(J)J

    goto :goto_9

    :cond_12
    :goto_b
    const/4 v2, 0x0

    :goto_c
    if-eqz v2, :cond_13

    .line 47
    invoke-static {v0, v5, v3}, Lcom/facebook/imageutils/StreamProcessor;->a(Ljava/io/InputStream;IZ)I

    move-result v1

    sub-int/2addr v1, v5

    const/4 v2, 0x6

    if-le v1, v2, :cond_13

    .line 48
    invoke-static {v0, v4, v3}, Lcom/facebook/imageutils/StreamProcessor;->a(Ljava/io/InputStream;IZ)I

    move-result v2

    add-int/lit8 v1, v1, -0x4

    .line 49
    invoke-static {v0, v5, v3}, Lcom/facebook/imageutils/StreamProcessor;->a(Ljava/io/InputStream;IZ)I

    move-result v4

    add-int/lit8 v1, v1, -0x2

    const v5, 0x45786966

    if-ne v2, v5, :cond_13

    if-nez v4, :cond_13

    goto :goto_d

    :cond_13
    const/4 v1, 0x0

    :goto_d
    if-nez v1, :cond_14

    goto :goto_e

    .line 50
    :cond_14
    invoke-static {v0, v1}, Lcom/facebook/imageutils/TiffUtil;->a(Ljava/io/InputStream;I)I

    move-result v3
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 51
    :catch_5
    :goto_e
    iput v3, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->v:I

    .line 52
    invoke-static {v3}, Lcom/facebook/imageutils/JfifUtil;->a(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->u:I

    goto :goto_10

    .line 53
    :cond_15
    sget-object v1, Lcom/facebook/imageformat/DefaultImageFormats;->k:Lcom/facebook/imageformat/ImageFormat;

    if-ne v0, v1, :cond_18

    iget v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->u:I

    if-ne v0, v6, :cond_18

    .line 54
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/EncodedImage;->e()Ljava/io/InputStream;

    move-result-object v0

    .line 55
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x3

    const-string v5, "HeifExifUtil"

    const/16 v6, 0x18

    if-lt v1, v6, :cond_16

    .line 56
    :try_start_8
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, v0}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    const-string v0, "Orientation"

    .line 57
    invoke-virtual {v1, v0, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v3
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_f

    :catch_6
    move-exception v0

    .line 58
    sget-object v1, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    check-cast v1, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;

    invoke-virtual {v1, v4}, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->a(I)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 59
    sget-object v1, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    check-cast v1, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;

    const-string v2, "Failed reading Heif Exif orientation -> ignoring"

    .line 60
    invoke-virtual {v1, v4, v5, v2, v0}, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f

    .line 61
    :cond_16
    sget-object v0, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    check-cast v0, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;

    invoke-virtual {v0, v4}, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->a(I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 62
    sget-object v0, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    check-cast v0, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;

    const-string v1, "Trying to read Heif Exif information before Android N -> ignoring"

    .line 63
    invoke-virtual {v0, v4, v5, v1}, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->c(ILjava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_17
    :goto_f
    iput v3, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->v:I

    .line 65
    invoke-static {v3}, Lcom/facebook/imageutils/JfifUtil;->a(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->u:I

    goto :goto_10

    .line 66
    :cond_18
    iget v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->u:I

    if-ne v0, v6, :cond_19

    .line 67
    iput v3, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->u:I

    :cond_19
    :goto_10
    return-void

    :catchall_1
    move-exception v0

    if-eqz v5, :cond_1a

    .line 68
    :try_start_9
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 69
    :catch_7
    :cond_1a
    throw v0
.end method

.method public declared-synchronized o()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->r:Lcom/facebook/common/references/CloseableReference;

    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->j(Lcom/facebook/common/references/CloseableReference;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->s:Lcom/facebook/common/internal/Supplier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final r()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->w:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->x:I

    if-gez v0, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/EncodedImage;->j()V

    :cond_1
    return-void
.end method
