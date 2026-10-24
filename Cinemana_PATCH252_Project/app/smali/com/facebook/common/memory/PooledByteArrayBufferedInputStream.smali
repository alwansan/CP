.class public Lcom/facebook/common/memory/PooledByteArrayBufferedInputStream;
.super Ljava/io/InputStream;
.source "PooledByteArrayBufferedInputStream.java"


# instance fields
.field public final r:Ljava/io/InputStream;

.field public final s:[B

.field public final t:Lcom/facebook/common/references/ResourceReleaser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/ResourceReleaser<",
            "[B>;"
        }
    .end annotation
.end field

.field public u:I

.field public v:I

.field public w:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;[BLcom/facebook/common/references/ResourceReleaser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "[B",
            "Lcom/facebook/common/references/ResourceReleaser<",
            "[B>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/common/memory/PooledByteArrayBufferedInputStream;->r:Ljava/io/InputStream;

    .line 3
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lcom/facebook/common/memory/PooledByteArrayBufferedInputStream;->s:[B

    .line 5
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iput-object p3, p0, Lcom/facebook/common/memory/PooledByteArrayBufferedInputStream;->t:Lcom/facebook/common/references/ResourceReleaser;

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/facebook/common/memory/PooledByteArrayBufferedInputStream;->u:I

    .line 8
    iput p1, p0, Lcom/facebook/common/memory/PooledByteArrayBufferedInputStream;->v:I

    .line 9
    iput-boolean p1, p0, Lcom/facebook/common/memory/PooledByteArrayBufferedInputStream;->w:Z

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/facebook/common/memory/PooledByteArrayBufferedInputStream;->v:I

    iget v1, p0, Lcom/facebook/common/memory/PooledByteArrayBufferedInputStream;->u:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    return v2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/facebook/common/memory/PooledByteArrayBufferedInputStream;->r:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/facebook/common/memory/PooledByteArrayBufferedInputStream;->s:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_1

    return v1

    .line 3
    :cond_1
    iput v0, p0, Lcom/facebook/common/memory/PooledByteArrayBufferedInputStream;->u:I

    .line 4
    iput v1, p0, Lcom/facebook/common/memory/PooledByteArrayBufferedInputStream;->v:I

    return v2
.end method

.method public available()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/facebook/common/memory/PooledByteArrayBufferedInputStream;->v:I

    iget v1, p0, Lcom/facebook/common/memory/PooledByteArrayBufferedInputStream;->u:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->d(Z)V

    .line 2
    invoke-virtual {p0}, Lcom/facebook/common/memory/PooledByteArrayBufferedInputStream;->b()V

    .line 3
    iget v0, p0, Lcom/facebook/common/memory/PooledByteArrayBufferedInputStream;->u:I

    iget v1, p0, Lcom/facebook/common/memory/PooledByteArrayBufferedInputStream;->v:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/facebook/common/memory/PooledByteArrayBufferedInputStream;->r:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/facebook/common/memory/PooledByteArrayBufferedInputStream;->w:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream already closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/facebook/common/memory/PooledByteArrayBufferedInputStream;->w:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/facebook/common/memory/PooledByteArrayBufferedInputStream;->w:Z

    .line 3
    iget-object v0, p0, Lcom/facebook/common/memory/PooledByteArrayBufferedInputStream;->t:Lcom/facebook/common/references/ResourceReleaser;

    iget-object v1, p0, Lcom/facebook/common/memory/PooledByteArrayBufferedInputStream;->s:[B

    invoke-interface {v0, v1}, Lcom/facebook/common/references/ResourceReleaser;->a(Ljava/lang/Object;)V

    .line 4
    invoke-super {p0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void
.end method

.method public finalize()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/facebook/common/memory/PooledByteArrayBufferedInputStream;->w:Z

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    check-cast v0, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    check-cast v0, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;

    const-string v2, "PooledByteInputStream"

    const-string v3, "Finalized without closing"

    .line 4
    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->c(ILjava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/common/memory/PooledByteArrayBufferedInputStream;->close()V

    .line 6
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public read()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/facebook/common/memory/PooledByteArrayBufferedInputStream;->v:I

    iget v1, p0, Lcom/facebook/common/memory/PooledByteArrayBufferedInputStream;->u:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->d(Z)V

    .line 2
    invoke-virtual {p0}, Lcom/facebook/common/memory/PooledByteArrayBufferedInputStream;->b()V

    .line 3
    invoke-virtual {p0}, Lcom/facebook/common/memory/PooledByteArrayBufferedInputStream;->a()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    return v0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/facebook/common/memory/PooledByteArrayBufferedInputStream;->s:[B

    iget v1, p0, Lcom/facebook/common/memory/PooledByteArrayBufferedInputStream;->v:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/facebook/common/memory/PooledByteArrayBufferedInputStream;->v:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .locals 2

    .line 5
    iget v0, p0, Lcom/facebook/common/memory/PooledByteArrayBufferedInputStream;->v:I

    iget v1, p0, Lcom/facebook/common/memory/PooledByteArrayBufferedInputStream;->u:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->d(Z)V

    .line 6
    invoke-virtual {p0}, Lcom/facebook/common/memory/PooledByteArrayBufferedInputStream;->b()V

    .line 7
    invoke-virtual {p0}, Lcom/facebook/common/memory/PooledByteArrayBufferedInputStream;->a()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, -0x1

    return p1

    .line 8
    :cond_1
    iget v0, p0, Lcom/facebook/common/memory/PooledByteArrayBufferedInputStream;->u:I

    iget v1, p0, Lcom/facebook/common/memory/PooledByteArrayBufferedInputStream;->v:I

    sub-int/2addr v0, v1

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 9
    iget-object v0, p0, Lcom/facebook/common/memory/PooledByteArrayBufferedInputStream;->s:[B

    iget v1, p0, Lcom/facebook/common/memory/PooledByteArrayBufferedInputStream;->v:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    iget p1, p0, Lcom/facebook/common/memory/PooledByteArrayBufferedInputStream;->v:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/facebook/common/memory/PooledByteArrayBufferedInputStream;->v:I

    return p3
.end method

.method public skip(J)J
    .locals 5

    .line 1
    iget v0, p0, Lcom/facebook/common/memory/PooledByteArrayBufferedInputStream;->v:I

    iget v1, p0, Lcom/facebook/common/memory/PooledByteArrayBufferedInputStream;->u:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->d(Z)V

    .line 2
    invoke-virtual {p0}, Lcom/facebook/common/memory/PooledByteArrayBufferedInputStream;->b()V

    .line 3
    iget v0, p0, Lcom/facebook/common/memory/PooledByteArrayBufferedInputStream;->u:I

    iget v1, p0, Lcom/facebook/common/memory/PooledByteArrayBufferedInputStream;->v:I

    sub-int v2, v0, v1

    int-to-long v2, v2

    cmp-long v4, v2, p1

    if-ltz v4, :cond_1

    int-to-long v0, v1

    add-long/2addr v0, p1

    long-to-int v1, v0

    .line 4
    iput v1, p0, Lcom/facebook/common/memory/PooledByteArrayBufferedInputStream;->v:I

    return-wide p1

    .line 5
    :cond_1
    iput v0, p0, Lcom/facebook/common/memory/PooledByteArrayBufferedInputStream;->v:I

    .line 6
    iget-object v0, p0, Lcom/facebook/common/memory/PooledByteArrayBufferedInputStream;->r:Ljava/io/InputStream;

    sub-long/2addr p1, v2

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    add-long/2addr p1, v2

    return-wide p1
.end method
