.class public final Lcom/shabakaty/downloader/ub0;
.super Ljava/io/BufferedInputStream;
.source "ConstrainableInputStream.java"


# instance fields
.field public final r:Z

.field public final s:I

.field public t:J

.field public u:J

.field public v:I

.field public w:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;II)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    const-wide/16 p1, 0x0

    .line 2
    iput-wide p1, p0, Lcom/shabakaty/downloader/ub0;->u:J

    const/4 p1, 0x1

    const/4 p2, 0x0

    if-ltz p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-static {v0}, Lcom/shabakaty/downloader/z02;->o(Z)V

    .line 4
    iput p3, p0, Lcom/shabakaty/downloader/ub0;->s:I

    .line 5
    iput p3, p0, Lcom/shabakaty/downloader/ub0;->v:I

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 6
    :goto_1
    iput-boolean p1, p0, Lcom/shabakaty/downloader/ub0;->r:Z

    .line 7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/shabakaty/downloader/ub0;->t:J

    return-void
.end method

.method public static a(Ljava/io/InputStream;II)Lcom/shabakaty/downloader/ub0;
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/shabakaty/downloader/ub0;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lcom/shabakaty/downloader/ub0;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/ub0;

    invoke-direct {v0, p0, p1, p2}, Lcom/shabakaty/downloader/ub0;-><init>(Ljava/io/InputStream;II)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public read([BII)I
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/ub0;->w:Z

    const/4 v1, -0x1

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/shabakaty/downloader/ub0;->r:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/shabakaty/downloader/ub0;->v:I

    if-gtz v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 3
    iput-boolean v2, p0, Lcom/shabakaty/downloader/ub0;->w:Z

    return v1

    .line 4
    :cond_1
    iget-wide v0, p0, Lcom/shabakaty/downloader/ub0;->u:J

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    cmp-long v6, v0, v3

    if-nez v6, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 6
    iget-wide v3, p0, Lcom/shabakaty/downloader/ub0;->t:J

    sub-long/2addr v0, v3

    .line 7
    iget-wide v3, p0, Lcom/shabakaty/downloader/ub0;->u:J

    cmp-long v6, v0, v3

    if-lez v6, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_5

    .line 8
    iget-boolean v0, p0, Lcom/shabakaty/downloader/ub0;->r:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/shabakaty/downloader/ub0;->v:I

    if-le p3, v0, :cond_4

    move p3, v0

    .line 9
    :cond_4
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result p1

    .line 10
    iget p2, p0, Lcom/shabakaty/downloader/ub0;->v:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/shabakaty/downloader/ub0;->v:I
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v5

    .line 11
    :cond_5
    new-instance p1, Ljava/net/SocketTimeoutException;

    const-string p2, "Read timeout"

    invoke-direct {p1, p2}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_2
    return v1
.end method

.method public reset()V
    .locals 2

    .line 1
    invoke-super {p0}, Ljava/io/BufferedInputStream;->reset()V

    .line 2
    iget v0, p0, Lcom/shabakaty/downloader/ub0;->s:I

    iget v1, p0, Ljava/io/BufferedInputStream;->markpos:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/shabakaty/downloader/ub0;->v:I

    return-void
.end method
