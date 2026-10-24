.class public Lcom/shabakaty/downloader/zp5$a;
.super Lcom/shabakaty/downloader/zp5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/zp5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final v:[B

.field public final w:I

.field public final x:I

.field public y:I


# direct methods
.method public constructor <init>([BII)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/zp5;-><init>(Lcom/shabakaty/downloader/cl3;)V

    const-string v0, "buffer"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    or-int v0, p2, p3

    array-length v1, p1

    add-int v2, p2, p3

    sub-int/2addr v1, v2

    or-int/2addr v0, v1

    if-ltz v0, :cond_0

    iput-object p1, p0, Lcom/shabakaty/downloader/zp5$a;->v:[B

    iput p2, p0, Lcom/shabakaty/downloader/zp5$a;->w:I

    iput p2, p0, Lcom/shabakaty/downloader/zp5$a;->y:I

    iput v2, p0, Lcom/shabakaty/downloader/zp5$a;->x:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const-string p1, "Array range is invalid. Buffer.length=%d, offset=%d, length=%d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final A(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/zp5$a;->h0(I)V

    return-void
.end method

.method public final B(ILcom/shabakaty/downloader/hn5;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/downloader/zp5$a;->A(II)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/shabakaty/downloader/zp5$a;->P(II)V

    invoke-virtual {p0, v1, p2}, Lcom/shabakaty/downloader/zp5$a;->q(ILcom/shabakaty/downloader/hn5;)V

    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/shabakaty/downloader/zp5$a;->A(II)V

    return-void
.end method

.method public final C(ILcom/shabakaty/downloader/y26;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/downloader/zp5$a;->A(II)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/shabakaty/downloader/zp5$a;->P(II)V

    invoke-virtual {p0, v1, p2}, Lcom/shabakaty/downloader/zp5$a;->r(ILcom/shabakaty/downloader/y26;)V

    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/shabakaty/downloader/zp5$a;->A(II)V

    return-void
.end method

.method public final D(IZ)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/zp5$a;->h0(I)V

    int-to-byte p1, p2

    .line 2
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/zp5$a;->o(B)V

    return-void
.end method

.method public final E(J)V
    .locals 9

    .line 1
    sget-boolean v0, Lcom/shabakaty/downloader/zp5;->u:Z

    const/4 v1, 0x7

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x80

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/zp5$a;->v()I

    move-result v0

    const/16 v6, 0xa

    if-lt v0, v6, :cond_1

    :goto_0
    and-long v6, p1, v4

    cmp-long v0, v6, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/zp5$a;->v:[B

    iget v1, p0, Lcom/shabakaty/downloader/zp5$a;->y:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/shabakaty/downloader/zp5$a;->y:I

    int-to-long v1, v1

    long-to-int p2, p1

    int-to-byte p1, p2

    invoke-static {v0, v1, v2, p1}, Lcom/shabakaty/downloader/ob6;->g([BJB)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/zp5$a;->v:[B

    iget v6, p0, Lcom/shabakaty/downloader/zp5$a;->y:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/shabakaty/downloader/zp5$a;->y:I

    int-to-long v6, v6

    long-to-int v8, p1

    and-int/lit8 v8, v8, 0x7f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    invoke-static {v0, v6, v7, v8}, Lcom/shabakaty/downloader/ob6;->g([BJB)V

    ushr-long/2addr p1, v1

    goto :goto_0

    :cond_1
    :goto_1
    and-long v6, p1, v4

    cmp-long v0, v6, v2

    if-nez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/zp5$a;->v:[B

    iget v1, p0, Lcom/shabakaty/downloader/zp5$a;->y:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/shabakaty/downloader/zp5$a;->y:I

    long-to-int p2, p1

    int-to-byte p1, p2

    aput-byte p1, v0, v1

    return-void

    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/zp5$a;->v:[B

    iget v6, p0, Lcom/shabakaty/downloader/zp5$a;->y:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/shabakaty/downloader/zp5$a;->y:I

    long-to-int v7, p1

    and-int/lit8 v7, v7, 0x7f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v0, v6
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    ushr-long/2addr p1, v1

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance p2, Lcom/shabakaty/downloader/zp5$c;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/shabakaty/downloader/zp5$a;->y:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget v1, p0, Lcom/shabakaty/downloader/zp5$a;->x:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/shabakaty/downloader/zp5$c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final M(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/zp5$a;->h0(I)V

    if-ltz p2, :cond_0

    .line 2
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/zp5$a;->h0(I)V

    goto :goto_0

    :cond_0
    int-to-long p1, p2

    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/zp5$a;->E(J)V

    :goto_0
    return-void
.end method

.method public final N(IJ)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x1

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/zp5$a;->h0(I)V

    .line 2
    invoke-virtual {p0, p2, p3}, Lcom/shabakaty/downloader/zp5$a;->Q(J)V

    return-void
.end method

.method public final P(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/zp5$a;->h0(I)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/zp5$a;->h0(I)V

    return-void
.end method

.method public final Q(J)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/zp5$a;->v:[B

    iget v1, p0, Lcom/shabakaty/downloader/zp5$a;->y:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/shabakaty/downloader/zp5$a;->y:I

    long-to-int v3, p1

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/shabakaty/downloader/zp5$a;->y:I

    const/16 v3, 0x8

    shr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/shabakaty/downloader/zp5$a;->y:I

    const/16 v3, 0x10

    shr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/shabakaty/downloader/zp5$a;->y:I

    const/16 v3, 0x18

    shr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/shabakaty/downloader/zp5$a;->y:I

    const/16 v3, 0x20

    shr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/shabakaty/downloader/zp5$a;->y:I

    const/16 v3, 0x28

    shr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/shabakaty/downloader/zp5$a;->y:I

    const/16 v3, 0x30

    shr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/shabakaty/downloader/zp5$a;->y:I

    const/16 v1, 0x38

    shr-long/2addr p1, v1

    long-to-int p2, p1

    int-to-byte p1, p2

    aput-byte p1, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/shabakaty/downloader/zp5$c;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/shabakaty/downloader/zp5$a;->y:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget v1, p0, Lcom/shabakaty/downloader/zp5$a;->x:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/shabakaty/downloader/zp5$c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final U(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x5

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/zp5$a;->h0(I)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/zp5$a;->i0(I)V

    return-void
.end method

.method public final g0(I)V
    .locals 2

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/zp5$a;->h0(I)V

    return-void

    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/downloader/zp5$a;->E(J)V

    return-void
.end method

.method public final h0(I)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/shabakaty/downloader/zp5;->u:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/zp5$a;->v()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_1

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/zp5$a;->v:[B

    iget v1, p0, Lcom/shabakaty/downloader/zp5$a;->y:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/shabakaty/downloader/zp5$a;->y:I

    int-to-long v1, v1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lcom/shabakaty/downloader/ob6;->g([BJB)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/zp5$a;->v:[B

    iget v1, p0, Lcom/shabakaty/downloader/zp5$a;->y:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/shabakaty/downloader/zp5$a;->y:I

    int-to-long v1, v1

    and-int/lit8 v3, p1, 0x7f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/shabakaty/downloader/ob6;->g([BJB)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :cond_1
    :goto_1
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/zp5$a;->v:[B

    iget v1, p0, Lcom/shabakaty/downloader/zp5$a;->y:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/shabakaty/downloader/zp5$a;->y:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void

    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/zp5$a;->v:[B

    iget v1, p0, Lcom/shabakaty/downloader/zp5$a;->y:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/shabakaty/downloader/zp5$a;->y:I

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/shabakaty/downloader/zp5$c;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/shabakaty/downloader/zp5$a;->y:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p0, Lcom/shabakaty/downloader/zp5$a;->x:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/shabakaty/downloader/zp5$c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final i0(I)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/zp5$a;->v:[B

    iget v1, p0, Lcom/shabakaty/downloader/zp5$a;->y:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/shabakaty/downloader/zp5$a;->y:I

    int-to-byte v3, p1

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/shabakaty/downloader/zp5$a;->y:I

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/shabakaty/downloader/zp5$a;->y:I

    shr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/shabakaty/downloader/zp5$a;->y:I

    shr-int/lit8 p1, p1, 0x18

    aput-byte p1, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/shabakaty/downloader/zp5$c;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/shabakaty/downloader/zp5$a;->y:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p0, Lcom/shabakaty/downloader/zp5$a;->x:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/shabakaty/downloader/zp5$c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final l([BII)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/shabakaty/downloader/zp5$a;->n([BII)V

    return-void
.end method

.method public m()V
    .locals 0

    return-void
.end method

.method public final n([BII)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/zp5$a;->v:[B

    iget v1, p0, Lcom/shabakaty/downloader/zp5$a;->y:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/shabakaty/downloader/zp5$a;->y:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/shabakaty/downloader/zp5$a;->y:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/shabakaty/downloader/zp5$c;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/shabakaty/downloader/zp5$a;->y:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/shabakaty/downloader/zp5$a;->x:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, v1

    const-string p3, "Pos: %d, limit: %d, len: %d"

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/shabakaty/downloader/zp5$c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final o(B)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/zp5$a;->v:[B

    iget v1, p0, Lcom/shabakaty/downloader/zp5$a;->y:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/shabakaty/downloader/zp5$a;->y:I

    aput-byte p1, v0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/shabakaty/downloader/zp5$c;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/shabakaty/downloader/zp5$a;->y:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p0, Lcom/shabakaty/downloader/zp5$a;->x:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/shabakaty/downloader/zp5$c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final o0(Lcom/shabakaty/downloader/hn5;)V
    .locals 1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/hn5;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/zp5$a;->h0(I)V

    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/hn5;->i(Lcom/shabakaty/downloader/cl4;)V

    return-void
.end method

.method public final p(IJ)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/zp5$a;->h0(I)V

    .line 2
    invoke-virtual {p0, p2, p3}, Lcom/shabakaty/downloader/zp5$a;->E(J)V

    return-void
.end method

.method public final p0(Lcom/shabakaty/downloader/y26;)V
    .locals 1

    invoke-interface {p1}, Lcom/shabakaty/downloader/y26;->s()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/zp5$a;->h0(I)V

    invoke-interface {p1, p0}, Lcom/shabakaty/downloader/y26;->q(Lcom/shabakaty/downloader/zp5;)V

    return-void
.end method

.method public final q(ILcom/shabakaty/downloader/hn5;)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/zp5$a;->h0(I)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/zp5$a;->o0(Lcom/shabakaty/downloader/hn5;)V

    return-void
.end method

.method public final q0(Ljava/lang/String;)V
    .locals 5

    iget v0, p0, Lcom/shabakaty/downloader/zp5$a;->y:I

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-static {v1}, Lcom/shabakaty/downloader/zp5;->l0(I)I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Lcom/shabakaty/downloader/zp5;->l0(I)I

    move-result v2

    if-ne v2, v1, :cond_0

    add-int v1, v0, v2

    iput v1, p0, Lcom/shabakaty/downloader/zp5$a;->y:I

    iget-object v3, p0, Lcom/shabakaty/downloader/zp5$a;->v:[B

    invoke-virtual {p0}, Lcom/shabakaty/downloader/zp5$a;->v()I

    move-result v4

    invoke-static {p1, v3, v1, v4}, Lcom/shabakaty/downloader/zb6;->b(Ljava/lang/CharSequence;[BII)I

    move-result v1

    iput v0, p0, Lcom/shabakaty/downloader/zp5$a;->y:I

    sub-int v3, v1, v0

    sub-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lcom/shabakaty/downloader/zp5$a;->h0(I)V

    iput v1, p0, Lcom/shabakaty/downloader/zp5$a;->y:I

    return-void

    :cond_0
    invoke-static {p1}, Lcom/shabakaty/downloader/zb6;->a(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/zp5$a;->h0(I)V

    iget-object v1, p0, Lcom/shabakaty/downloader/zp5$a;->v:[B

    iget v2, p0, Lcom/shabakaty/downloader/zp5$a;->y:I

    invoke-virtual {p0}, Lcom/shabakaty/downloader/zp5$a;->v()I

    move-result v3

    invoke-static {p1, v1, v2, v3}, Lcom/shabakaty/downloader/zb6;->b(Ljava/lang/CharSequence;[BII)I

    move-result v1

    iput v1, p0, Lcom/shabakaty/downloader/zp5$a;->y:I
    :try_end_0
    .catch Lcom/shabakaty/downloader/oc6; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/shabakaty/downloader/zp5$c;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/zp5$c;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception v1

    iput v0, p0, Lcom/shabakaty/downloader/zp5$a;->y:I

    invoke-virtual {p0, p1, v1}, Lcom/shabakaty/downloader/zp5;->u(Ljava/lang/String;Lcom/shabakaty/downloader/oc6;)V

    return-void
.end method

.method public final r(ILcom/shabakaty/downloader/y26;)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/zp5$a;->h0(I)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/zp5$a;->p0(Lcom/shabakaty/downloader/y26;)V

    return-void
.end method

.method public final s(ILcom/shabakaty/downloader/y26;Lcom/shabakaty/downloader/o66;)V
    .locals 2

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/zp5$a;->h0(I)V

    .line 2
    move-object p1, p2

    check-cast p1, Lcom/shabakaty/downloader/wj5;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/wj5;->d()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p3, p1}, Lcom/shabakaty/downloader/o66;->f(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/wj5;->c(I)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/zp5$a;->h0(I)V

    iget-object p1, p0, Lcom/shabakaty/downloader/zp5;->s:Lcom/shabakaty/downloader/mq5;

    invoke-interface {p3, p2, p1}, Lcom/shabakaty/downloader/o66;->e(Ljava/lang/Object;Lcom/shabakaty/downloader/ie6;)V

    return-void
.end method

.method public final t(ILjava/lang/String;)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/zp5$a;->h0(I)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/zp5$a;->q0(Ljava/lang/String;)V

    return-void
.end method

.method public final v()I
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/zp5$a;->x:I

    iget v1, p0, Lcom/shabakaty/downloader/zp5$a;->y:I

    sub-int/2addr v0, v1

    return v0
.end method
