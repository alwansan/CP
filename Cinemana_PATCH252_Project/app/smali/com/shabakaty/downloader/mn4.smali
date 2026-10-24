.class public Lcom/shabakaty/downloader/mn4;
.super Ljava/lang/Object;
.source "TimedValueQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/shabakaty/downloader/mn4;->a:Ljava/lang/Object;

    .line 3
    new-array p1, p1, [Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/mn4;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/shabakaty/downloader/mn4;->a:Ljava/lang/Object;

    .line 7
    iput p2, p0, Lcom/shabakaty/downloader/mn4;->d:I

    .line 8
    iput p3, p0, Lcom/shabakaty/downloader/mn4;->c:I

    mul-int p2, p2, p3

    .line 9
    new-array p1, p2, [B

    iput-object p1, p0, Lcom/shabakaty/downloader/mn4;->b:Ljava/lang/Object;

    const/4 p2, -0x1

    .line 10
    invoke-static {p1, p2}, Ljava/util/Arrays;->fill([BB)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(JLjava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/shabakaty/downloader/mn4;->d:I

    if-lez v0, :cond_0

    .line 2
    iget v1, p0, Lcom/shabakaty/downloader/mn4;->c:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    iget-object v0, p0, Lcom/shabakaty/downloader/mn4;->b:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    rem-int/2addr v1, v0

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/mn4;->a:Ljava/lang/Object;

    check-cast v0, [J

    aget-wide v1, v0, v1

    cmp-long v0, p1, v1

    if-gtz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/mn4;->b()V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/mn4;->g()V

    .line 6
    iget v0, p0, Lcom/shabakaty/downloader/mn4;->c:I

    iget v1, p0, Lcom/shabakaty/downloader/mn4;->d:I

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/shabakaty/downloader/mn4;->b:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, [Ljava/lang/Object;

    array-length v3, v3

    rem-int/2addr v0, v3

    .line 7
    iget-object v3, p0, Lcom/shabakaty/downloader/mn4;->a:Ljava/lang/Object;

    check-cast v3, [J

    aput-wide p1, v3, v0

    .line 8
    check-cast v2, [Ljava/lang/Object;

    aput-object p3, v2, v0

    add-int/lit8 v1, v1, 0x1

    .line 9
    iput v1, p0, Lcom/shabakaty/downloader/mn4;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput v0, p0, Lcom/shabakaty/downloader/mn4;->c:I

    .line 2
    iput v0, p0, Lcom/shabakaty/downloader/mn4;->d:I

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/mn4;->b:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(I)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/mn4;->c:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/shabakaty/downloader/mn4;->i(IIII)V

    .line 2
    iget v0, p0, Lcom/shabakaty/downloader/mn4;->c:I

    sub-int/2addr v0, v1

    const/4 v3, 0x2

    invoke-virtual {p0, v0, v1, p1, v3}, Lcom/shabakaty/downloader/mn4;->i(IIII)V

    .line 3
    iget v0, p0, Lcom/shabakaty/downloader/mn4;->c:I

    sub-int/2addr v0, v1

    const/4 v4, 0x3

    invoke-virtual {p0, v0, v3, p1, v4}, Lcom/shabakaty/downloader/mn4;->i(IIII)V

    .line 4
    iget v0, p0, Lcom/shabakaty/downloader/mn4;->d:I

    sub-int/2addr v0, v3

    const/4 v5, 0x4

    invoke-virtual {p0, v2, v0, p1, v5}, Lcom/shabakaty/downloader/mn4;->i(IIII)V

    .line 5
    iget v0, p0, Lcom/shabakaty/downloader/mn4;->d:I

    sub-int/2addr v0, v1

    const/4 v5, 0x5

    invoke-virtual {p0, v2, v0, p1, v5}, Lcom/shabakaty/downloader/mn4;->i(IIII)V

    .line 6
    iget v0, p0, Lcom/shabakaty/downloader/mn4;->d:I

    sub-int/2addr v0, v1

    const/4 v2, 0x6

    invoke-virtual {p0, v1, v0, p1, v2}, Lcom/shabakaty/downloader/mn4;->i(IIII)V

    .line 7
    iget v0, p0, Lcom/shabakaty/downloader/mn4;->d:I

    sub-int/2addr v0, v1

    const/4 v2, 0x7

    invoke-virtual {p0, v3, v0, p1, v2}, Lcom/shabakaty/downloader/mn4;->i(IIII)V

    .line 8
    iget v0, p0, Lcom/shabakaty/downloader/mn4;->d:I

    sub-int/2addr v0, v1

    const/16 v1, 0x8

    invoke-virtual {p0, v4, v0, p1, v1}, Lcom/shabakaty/downloader/mn4;->i(IIII)V

    return-void
.end method

.method public d(I)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/mn4;->c:I

    const/4 v1, 0x3

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v2, p1, v3}, Lcom/shabakaty/downloader/mn4;->i(IIII)V

    .line 2
    iget v0, p0, Lcom/shabakaty/downloader/mn4;->c:I

    const/4 v4, 0x2

    sub-int/2addr v0, v4

    invoke-virtual {p0, v0, v2, p1, v4}, Lcom/shabakaty/downloader/mn4;->i(IIII)V

    .line 3
    iget v0, p0, Lcom/shabakaty/downloader/mn4;->c:I

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/shabakaty/downloader/mn4;->i(IIII)V

    .line 4
    iget v0, p0, Lcom/shabakaty/downloader/mn4;->d:I

    const/4 v5, 0x4

    sub-int/2addr v0, v5

    invoke-virtual {p0, v2, v0, p1, v5}, Lcom/shabakaty/downloader/mn4;->i(IIII)V

    .line 5
    iget v0, p0, Lcom/shabakaty/downloader/mn4;->d:I

    sub-int/2addr v0, v1

    const/4 v1, 0x5

    invoke-virtual {p0, v2, v0, p1, v1}, Lcom/shabakaty/downloader/mn4;->i(IIII)V

    .line 6
    iget v0, p0, Lcom/shabakaty/downloader/mn4;->d:I

    sub-int/2addr v0, v4

    const/4 v1, 0x6

    invoke-virtual {p0, v2, v0, p1, v1}, Lcom/shabakaty/downloader/mn4;->i(IIII)V

    .line 7
    iget v0, p0, Lcom/shabakaty/downloader/mn4;->d:I

    sub-int/2addr v0, v3

    const/4 v1, 0x7

    invoke-virtual {p0, v2, v0, p1, v1}, Lcom/shabakaty/downloader/mn4;->i(IIII)V

    .line 8
    iget v0, p0, Lcom/shabakaty/downloader/mn4;->d:I

    sub-int/2addr v0, v3

    const/16 v1, 0x8

    invoke-virtual {p0, v3, v0, p1, v1}, Lcom/shabakaty/downloader/mn4;->i(IIII)V

    return-void
.end method

.method public e(I)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/mn4;->c:I

    const/4 v1, 0x3

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v2, p1, v3}, Lcom/shabakaty/downloader/mn4;->i(IIII)V

    .line 2
    iget v0, p0, Lcom/shabakaty/downloader/mn4;->c:I

    const/4 v4, 0x2

    sub-int/2addr v0, v4

    invoke-virtual {p0, v0, v2, p1, v4}, Lcom/shabakaty/downloader/mn4;->i(IIII)V

    .line 3
    iget v0, p0, Lcom/shabakaty/downloader/mn4;->c:I

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/shabakaty/downloader/mn4;->i(IIII)V

    .line 4
    iget v0, p0, Lcom/shabakaty/downloader/mn4;->d:I

    sub-int/2addr v0, v4

    const/4 v5, 0x4

    invoke-virtual {p0, v2, v0, p1, v5}, Lcom/shabakaty/downloader/mn4;->i(IIII)V

    .line 5
    iget v0, p0, Lcom/shabakaty/downloader/mn4;->d:I

    sub-int/2addr v0, v3

    const/4 v5, 0x5

    invoke-virtual {p0, v2, v0, p1, v5}, Lcom/shabakaty/downloader/mn4;->i(IIII)V

    .line 6
    iget v0, p0, Lcom/shabakaty/downloader/mn4;->d:I

    sub-int/2addr v0, v3

    const/4 v2, 0x6

    invoke-virtual {p0, v3, v0, p1, v2}, Lcom/shabakaty/downloader/mn4;->i(IIII)V

    .line 7
    iget v0, p0, Lcom/shabakaty/downloader/mn4;->d:I

    sub-int/2addr v0, v3

    const/4 v2, 0x7

    invoke-virtual {p0, v4, v0, p1, v2}, Lcom/shabakaty/downloader/mn4;->i(IIII)V

    .line 8
    iget v0, p0, Lcom/shabakaty/downloader/mn4;->d:I

    sub-int/2addr v0, v3

    const/16 v2, 0x8

    invoke-virtual {p0, v1, v0, p1, v2}, Lcom/shabakaty/downloader/mn4;->i(IIII)V

    return-void
.end method

.method public f(I)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/mn4;->c:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/shabakaty/downloader/mn4;->i(IIII)V

    .line 2
    iget v0, p0, Lcom/shabakaty/downloader/mn4;->c:I

    sub-int/2addr v0, v1

    iget v3, p0, Lcom/shabakaty/downloader/mn4;->d:I

    sub-int/2addr v3, v1

    const/4 v4, 0x2

    invoke-virtual {p0, v0, v3, p1, v4}, Lcom/shabakaty/downloader/mn4;->i(IIII)V

    .line 3
    iget v0, p0, Lcom/shabakaty/downloader/mn4;->d:I

    const/4 v3, 0x3

    sub-int/2addr v0, v3

    invoke-virtual {p0, v2, v0, p1, v3}, Lcom/shabakaty/downloader/mn4;->i(IIII)V

    .line 4
    iget v0, p0, Lcom/shabakaty/downloader/mn4;->d:I

    sub-int/2addr v0, v4

    const/4 v5, 0x4

    invoke-virtual {p0, v2, v0, p1, v5}, Lcom/shabakaty/downloader/mn4;->i(IIII)V

    .line 5
    iget v0, p0, Lcom/shabakaty/downloader/mn4;->d:I

    sub-int/2addr v0, v1

    const/4 v5, 0x5

    invoke-virtual {p0, v2, v0, p1, v5}, Lcom/shabakaty/downloader/mn4;->i(IIII)V

    .line 6
    iget v0, p0, Lcom/shabakaty/downloader/mn4;->d:I

    sub-int/2addr v0, v3

    const/4 v2, 0x6

    invoke-virtual {p0, v1, v0, p1, v2}, Lcom/shabakaty/downloader/mn4;->i(IIII)V

    .line 7
    iget v0, p0, Lcom/shabakaty/downloader/mn4;->d:I

    sub-int/2addr v0, v4

    const/4 v2, 0x7

    invoke-virtual {p0, v1, v0, p1, v2}, Lcom/shabakaty/downloader/mn4;->i(IIII)V

    .line 8
    iget v0, p0, Lcom/shabakaty/downloader/mn4;->d:I

    sub-int/2addr v0, v1

    const/16 v2, 0x8

    invoke-virtual {p0, v1, v0, p1, v2}, Lcom/shabakaty/downloader/mn4;->i(IIII)V

    return-void
.end method

.method public g()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/mn4;->b:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    .line 2
    iget v1, p0, Lcom/shabakaty/downloader/mn4;->d:I

    if-ge v1, v0, :cond_0

    return-void

    :cond_0
    mul-int/lit8 v1, v0, 0x2

    .line 3
    new-array v2, v1, [J

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    iget v3, p0, Lcom/shabakaty/downloader/mn4;->c:I

    sub-int/2addr v0, v3

    .line 6
    iget-object v4, p0, Lcom/shabakaty/downloader/mn4;->a:Ljava/lang/Object;

    check-cast v4, [J

    const/4 v5, 0x0

    invoke-static {v4, v3, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget-object v3, p0, Lcom/shabakaty/downloader/mn4;->b:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/shabakaty/downloader/mn4;->c:I

    invoke-static {v3, v4, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget v3, p0, Lcom/shabakaty/downloader/mn4;->c:I

    if-lez v3, :cond_1

    .line 9
    iget-object v4, p0, Lcom/shabakaty/downloader/mn4;->a:Ljava/lang/Object;

    check-cast v4, [J

    invoke-static {v4, v5, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    iget-object v3, p0, Lcom/shabakaty/downloader/mn4;->b:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/shabakaty/downloader/mn4;->c:I

    invoke-static {v3, v5, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    :cond_1
    iput-object v2, p0, Lcom/shabakaty/downloader/mn4;->a:Ljava/lang/Object;

    .line 12
    iput-object v1, p0, Lcom/shabakaty/downloader/mn4;->b:Ljava/lang/Object;

    .line 13
    iput v5, p0, Lcom/shabakaty/downloader/mn4;->c:I

    return-void
.end method

.method public h(II)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/mn4;->b:Ljava/lang/Object;

    check-cast v0, [B

    iget v1, p0, Lcom/shabakaty/downloader/mn4;->d:I

    mul-int p2, p2, v1

    add-int/2addr p2, p1

    aget-byte p1, v0, p2

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public i(IIII)V
    .locals 1

    if-gez p1, :cond_0

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/mn4;->c:I

    add-int/2addr p1, v0

    add-int/lit8 v0, v0, 0x4

    .line 2
    rem-int/lit8 v0, v0, 0x8

    rsub-int/lit8 v0, v0, 0x4

    add-int/2addr p2, v0

    :cond_0
    if-gez p2, :cond_1

    .line 3
    iget v0, p0, Lcom/shabakaty/downloader/mn4;->d:I

    add-int/2addr p2, v0

    add-int/lit8 v0, v0, 0x4

    .line 4
    rem-int/lit8 v0, v0, 0x8

    rsub-int/lit8 v0, v0, 0x4

    add-int/2addr p1, v0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/mn4;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p3

    rsub-int/lit8 p4, p4, 0x8

    const/4 v0, 0x1

    shl-int p4, v0, p4

    and-int/2addr p3, p4

    if-eqz p3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-virtual {p0, p2, p1, v0}, Lcom/shabakaty/downloader/mn4;->m(IIZ)V

    return-void
.end method

.method public j(JZ)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x7fffffffffffffffL

    .line 1
    :goto_0
    iget v3, p0, Lcom/shabakaty/downloader/mn4;->d:I

    if-lez v3, :cond_1

    .line 2
    iget-object v3, p0, Lcom/shabakaty/downloader/mn4;->a:Ljava/lang/Object;

    check-cast v3, [J

    iget v4, p0, Lcom/shabakaty/downloader/mn4;->c:I

    aget-wide v4, v3, v4

    sub-long v3, p1, v4

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-gez v7, :cond_0

    if-nez p3, :cond_1

    neg-long v5, v3

    cmp-long v7, v5, v1

    if-ltz v7, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/mn4;->l()Ljava/lang/Object;

    move-result-object v0

    move-wide v1, v3

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public declared-synchronized k(J)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/shabakaty/downloader/mn4;->j(JZ)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public l()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/mn4;->d:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/mn4;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/shabakaty/downloader/mn4;->c:I

    aget-object v2, v2, v3

    .line 3
    move-object v4, v0

    check-cast v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v5, v4, v3

    add-int/2addr v3, v1

    .line 4
    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    rem-int/2addr v3, v0

    iput v3, p0, Lcom/shabakaty/downloader/mn4;->c:I

    .line 5
    iget v0, p0, Lcom/shabakaty/downloader/mn4;->d:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/shabakaty/downloader/mn4;->d:I

    return-object v2
.end method

.method public m(IIZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/mn4;->b:Ljava/lang/Object;

    check-cast v0, [B

    iget v1, p0, Lcom/shabakaty/downloader/mn4;->d:I

    mul-int p2, p2, v1

    add-int/2addr p2, p1

    int-to-byte p1, p3

    aput-byte p1, v0, p2

    return-void
.end method

.method public n(III)V
    .locals 4

    add-int/lit8 v0, p1, -0x2

    add-int/lit8 v1, p2, -0x2

    const/4 v2, 0x1

    .line 1
    invoke-virtual {p0, v0, v1, p3, v2}, Lcom/shabakaty/downloader/mn4;->i(IIII)V

    add-int/lit8 v2, p2, -0x1

    const/4 v3, 0x2

    .line 2
    invoke-virtual {p0, v0, v2, p3, v3}, Lcom/shabakaty/downloader/mn4;->i(IIII)V

    add-int/lit8 v0, p1, -0x1

    const/4 v3, 0x3

    .line 3
    invoke-virtual {p0, v0, v1, p3, v3}, Lcom/shabakaty/downloader/mn4;->i(IIII)V

    const/4 v3, 0x4

    .line 4
    invoke-virtual {p0, v0, v2, p3, v3}, Lcom/shabakaty/downloader/mn4;->i(IIII)V

    const/4 v3, 0x5

    .line 5
    invoke-virtual {p0, v0, p2, p3, v3}, Lcom/shabakaty/downloader/mn4;->i(IIII)V

    const/4 v0, 0x6

    .line 6
    invoke-virtual {p0, p1, v1, p3, v0}, Lcom/shabakaty/downloader/mn4;->i(IIII)V

    const/4 v0, 0x7

    .line 7
    invoke-virtual {p0, p1, v2, p3, v0}, Lcom/shabakaty/downloader/mn4;->i(IIII)V

    const/16 v0, 0x8

    .line 8
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/shabakaty/downloader/mn4;->i(IIII)V

    return-void
.end method
