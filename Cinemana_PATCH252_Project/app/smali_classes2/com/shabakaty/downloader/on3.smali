.class public final Lcom/shabakaty/downloader/on3;
.super Ljava/lang/Object;
.source "RealBufferedSource.kt"

# interfaces
.implements Lcom/shabakaty/downloader/eo;


# instance fields
.field public final r:Lcom/shabakaty/downloader/zn;

.field public s:Z

.field public final t:Lcom/shabakaty/downloader/r94;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/r94;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/on3;->t:Lcom/shabakaty/downloader/r94;

    .line 2
    new-instance p1, Lcom/shabakaty/downloader/zn;

    invoke-direct {p1}, Lcom/shabakaty/downloader/zn;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/on3;->r:Lcom/shabakaty/downloader/zn;

    return-void
.end method


# virtual methods
.method public C1(Lcom/shabakaty/downloader/zn;J)J
    .locals 8

    const-string v0, "sink"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 1
    iget-boolean v2, p0, Lcom/shabakaty/downloader/on3;->s:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 2
    iget-object v2, p0, Lcom/shabakaty/downloader/on3;->r:Lcom/shabakaty/downloader/zn;

    .line 3
    iget-wide v3, v2, Lcom/shabakaty/downloader/zn;->s:J

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v0

    if-nez v7, :cond_1

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/on3;->t:Lcom/shabakaty/downloader/r94;

    const/16 v1, 0x2000

    int-to-long v3, v1

    invoke-interface {v0, v2, v3, v4}, Lcom/shabakaty/downloader/r94;->C1(Lcom/shabakaty/downloader/zn;J)J

    move-result-wide v0

    cmp-long v2, v0, v5

    if-nez v2, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/on3;->r:Lcom/shabakaty/downloader/zn;

    .line 6
    iget-wide v0, v0, Lcom/shabakaty/downloader/zn;->s:J

    .line 7
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    .line 8
    iget-object v0, p0, Lcom/shabakaty/downloader/on3;->r:Lcom/shabakaty/downloader/zn;

    .line 9
    invoke-virtual {v0, p1, p2, p3}, Lcom/shabakaty/downloader/zn;->C1(Lcom/shabakaty/downloader/zn;J)J

    move-result-wide v5

    :goto_1
    return-wide v5

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const-string p1, "byteCount < 0: "

    .line 11
    invoke-static {p1, p2, p3}, Lcom/shabakaty/downloader/kp0;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public G(J)Lcom/shabakaty/downloader/fp;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/on3;->u(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/on3;->r:Lcom/shabakaty/downloader/zn;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/zn;->G(J)Lcom/shabakaty/downloader/fp;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public U()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/on3;->r:Lcom/shabakaty/downloader/zn;

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/on3;->t:Lcom/shabakaty/downloader/r94;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/zn;->s0(Lcom/shabakaty/downloader/r94;)J

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/on3;->r:Lcom/shabakaty/downloader/zn;

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/zn;->U()[B

    move-result-object v0

    return-object v0
.end method

.method public V0()Ljava/lang/String;
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/downloader/on3;->g0(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public W()Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/on3;->s:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/on3;->r:Lcom/shabakaty/downloader/zn;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/zn;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/on3;->t:Lcom/shabakaty/downloader/r94;

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/on3;->r:Lcom/shabakaty/downloader/zn;

    const/16 v3, 0x2000

    int-to-long v3, v3

    .line 5
    invoke-interface {v0, v2, v3, v4}, Lcom/shabakaty/downloader/r94;->C1(Lcom/shabakaty/downloader/zn;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public Z0(J)[B
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/on3;->u(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/on3;->r:Lcom/shabakaty/downloader/zn;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/zn;->Z0(J)[B

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public a(BJJ)J
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/on3;->s:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_6

    const-wide/16 v2, 0x0

    cmp-long v0, v2, p2

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    cmp-long v0, p4, p2

    if-ltz v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_5

    :goto_2
    const-wide/16 v0, -0x1

    cmp-long v2, p2, p4

    if-gez v2, :cond_4

    .line 2
    iget-object v2, p0, Lcom/shabakaty/downloader/on3;->r:Lcom/shabakaty/downloader/zn;

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .line 3
    invoke-virtual/range {v2 .. v7}, Lcom/shabakaty/downloader/zn;->f(BJJ)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-eqz v4, :cond_2

    move-wide v0, v2

    goto :goto_3

    .line 4
    :cond_2
    iget-object v2, p0, Lcom/shabakaty/downloader/on3;->r:Lcom/shabakaty/downloader/zn;

    .line 5
    iget-wide v3, v2, Lcom/shabakaty/downloader/zn;->s:J

    cmp-long v5, v3, p4

    if-gez v5, :cond_4

    .line 6
    iget-object v5, p0, Lcom/shabakaty/downloader/on3;->t:Lcom/shabakaty/downloader/r94;

    const/16 v6, 0x2000

    int-to-long v6, v6

    invoke-interface {v5, v2, v6, v7}, Lcom/shabakaty/downloader/r94;->C1(Lcom/shabakaty/downloader/zn;J)J

    move-result-wide v5

    cmp-long v2, v5, v0

    if-nez v2, :cond_3

    goto :goto_3

    .line 7
    :cond_3
    invoke-static {p2, p3, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    goto :goto_2

    :cond_4
    :goto_3
    return-wide v0

    .line 8
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fromIndex="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " toIndex="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 9
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(JLcom/shabakaty/downloader/fp;)Z
    .locals 8

    const-string v0, "bytes"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p3}, Lcom/shabakaty/downloader/fp;->j()I

    move-result v1

    .line 2
    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-boolean v0, p0, Lcom/shabakaty/downloader/on3;->s:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    if-eqz v0, :cond_5

    const-wide/16 v3, 0x0

    const/4 v0, 0x0

    cmp-long v5, p1, v3

    if-ltz v5, :cond_3

    if-ltz v1, :cond_3

    .line 4
    invoke-virtual {p3}, Lcom/shabakaty/downloader/fp;->j()I

    move-result v3

    sub-int/2addr v3, v0

    if-ge v3, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    int-to-long v4, v3

    add-long/2addr v4, p1

    const-wide/16 v6, 0x1

    add-long/2addr v6, v4

    .line 5
    invoke-virtual {p0, v6, v7}, Lcom/shabakaty/downloader/on3;->u(J)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    iget-object v6, p0, Lcom/shabakaty/downloader/on3;->r:Lcom/shabakaty/downloader/zn;

    .line 7
    invoke-virtual {v6, v4, v5}, Lcom/shabakaty/downloader/zn;->e(J)B

    move-result v4

    add-int v5, v0, v3

    .line 8
    invoke-virtual {p3, v5}, Lcom/shabakaty/downloader/fp;->D(I)B

    move-result v5

    if-eq v4, v5, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v2, 0x0

    :cond_4
    return v2

    .line 9
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()J
    .locals 10

    const-wide/16 v0, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/downloader/on3;->s1(J)V

    const-wide/16 v2, 0x0

    move-wide v4, v2

    :goto_0
    add-long v6, v4, v0

    .line 2
    invoke-virtual {p0, v6, v7}, Lcom/shabakaty/downloader/on3;->u(J)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3
    iget-object v8, p0, Lcom/shabakaty/downloader/on3;->r:Lcom/shabakaty/downloader/zn;

    .line 4
    invoke-virtual {v8, v4, v5}, Lcom/shabakaty/downloader/zn;->e(J)B

    move-result v8

    const/16 v9, 0x30

    int-to-byte v9, v9

    if-lt v8, v9, :cond_0

    const/16 v9, 0x39

    int-to-byte v9, v9

    if-le v8, v9, :cond_1

    :cond_0
    cmp-long v9, v4, v2

    if-nez v9, :cond_2

    const/16 v4, 0x2d

    int-to-byte v4, v4

    if-eq v8, v4, :cond_1

    goto :goto_1

    :cond_1
    move-wide v4, v6

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v9, :cond_3

    goto :goto_2

    .line 5
    :cond_3
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected leading [0-9] or \'-\' character but was 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x10

    invoke-static {v2}, Lcom/shabakaty/downloader/z02;->a(I)I

    invoke-static {v2}, Lcom/shabakaty/downloader/z02;->a(I)I

    invoke-static {v8, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "java.lang.Integer.toStri\u2026(this, checkRadix(radix))"

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/shabakaty/downloader/on3;->r:Lcom/shabakaty/downloader/zn;

    .line 7
    invoke-virtual {v0}, Lcom/shabakaty/downloader/zn;->j()J

    move-result-wide v0

    return-wide v0
.end method

.method public close()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/on3;->s:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/shabakaty/downloader/on3;->s:Z

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/on3;->t:Lcom/shabakaty/downloader/r94;

    invoke-interface {v0}, Lcom/shabakaty/downloader/r94;->close()V

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/on3;->r:Lcom/shabakaty/downloader/zn;

    .line 5
    iget-wide v1, v0, Lcom/shabakaty/downloader/zn;->s:J

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/zn;->skip(J)V

    :goto_0
    return-void
.end method

.method public d()I
    .locals 3

    const-wide/16 v0, 0x4

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/downloader/on3;->s1(J)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/on3;->r:Lcom/shabakaty/downloader/zn;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/zn;->readInt()I

    move-result v0

    const/high16 v1, -0x1000000

    and-int/2addr v1, v0

    ushr-int/lit8 v1, v1, 0x18

    const/high16 v2, 0xff0000

    and-int/2addr v2, v0

    ushr-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    const v2, 0xff00

    and-int/2addr v2, v0

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public e0(Lcom/shabakaty/downloader/i83;)I
    .locals 8

    const-string v0, "options"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/on3;->s:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_3

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/on3;->r:Lcom/shabakaty/downloader/zn;

    .line 3
    invoke-static {v0, p1, v1}, Lcom/shabakaty/downloader/bo;->b(Lcom/shabakaty/downloader/zn;Lcom/shabakaty/downloader/i83;Z)I

    move-result v0

    const/4 v2, -0x2

    const/4 v3, -0x1

    if-eq v0, v2, :cond_1

    if-eq v0, v3, :cond_2

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/i83;->r:[Lcom/shabakaty/downloader/fp;

    .line 5
    aget-object p1, p1, v0

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/fp;->j()I

    move-result p1

    .line 7
    iget-object v1, p0, Lcom/shabakaty/downloader/on3;->r:Lcom/shabakaty/downloader/zn;

    int-to-long v2, p1

    .line 8
    invoke-virtual {v1, v2, v3}, Lcom/shabakaty/downloader/zn;->skip(J)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/on3;->t:Lcom/shabakaty/downloader/r94;

    .line 10
    iget-object v2, p0, Lcom/shabakaty/downloader/on3;->r:Lcom/shabakaty/downloader/zn;

    const/16 v4, 0x2000

    int-to-long v4, v4

    .line 11
    invoke-interface {v0, v2, v4, v5}, Lcom/shabakaty/downloader/r94;->C1(Lcom/shabakaty/downloader/zn;J)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    :cond_2
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 12
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public g0(J)Ljava/lang/String;
    .locals 13

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    const-wide/16 v0, 0x1

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, p1, v2

    if-nez v4, :cond_1

    move-wide v4, v2

    goto :goto_1

    :cond_1
    add-long v4, p1, v0

    :goto_1
    const/16 v6, 0xa

    int-to-byte v12, v6

    const-wide/16 v8, 0x0

    move-object v6, p0

    move v7, v12

    move-wide v10, v4

    .line 1
    invoke-virtual/range {v6 .. v11}, Lcom/shabakaty/downloader/on3;->a(BJJ)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v10, v6, v8

    if-eqz v10, :cond_2

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/on3;->r:Lcom/shabakaty/downloader/zn;

    .line 3
    invoke-static {p1, v6, v7}, Lcom/shabakaty/downloader/bo;->a(Lcom/shabakaty/downloader/zn;J)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    cmp-long v6, v4, v2

    if-gez v6, :cond_3

    .line 4
    invoke-virtual {p0, v4, v5}, Lcom/shabakaty/downloader/on3;->u(J)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5
    iget-object v2, p0, Lcom/shabakaty/downloader/on3;->r:Lcom/shabakaty/downloader/zn;

    sub-long v6, v4, v0

    .line 6
    invoke-virtual {v2, v6, v7}, Lcom/shabakaty/downloader/zn;->e(J)B

    move-result v2

    const/16 v3, 0xd

    int-to-byte v3, v3

    if-ne v2, v3, :cond_3

    add-long/2addr v0, v4

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/downloader/on3;->u(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/shabakaty/downloader/on3;->r:Lcom/shabakaty/downloader/zn;

    .line 9
    invoke-virtual {v0, v4, v5}, Lcom/shabakaty/downloader/zn;->e(J)B

    move-result v0

    if-ne v0, v12, :cond_3

    .line 10
    iget-object p1, p0, Lcom/shabakaty/downloader/on3;->r:Lcom/shabakaty/downloader/zn;

    .line 11
    invoke-static {p1, v4, v5}, Lcom/shabakaty/downloader/bo;->a(Lcom/shabakaty/downloader/zn;J)Ljava/lang/String;

    move-result-object p1

    :goto_2
    return-object p1

    .line 12
    :cond_3
    new-instance v6, Lcom/shabakaty/downloader/zn;

    invoke-direct {v6}, Lcom/shabakaty/downloader/zn;-><init>()V

    .line 13
    iget-object v0, p0, Lcom/shabakaty/downloader/on3;->r:Lcom/shabakaty/downloader/zn;

    const-wide/16 v2, 0x0

    const/16 v1, 0x20

    .line 14
    iget-wide v4, v0, Lcom/shabakaty/downloader/zn;->s:J

    int-to-long v7, v1

    .line 15
    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-object v1, v6

    .line 16
    invoke-virtual/range {v0 .. v5}, Lcom/shabakaty/downloader/zn;->c(Lcom/shabakaty/downloader/zn;JJ)Lcom/shabakaty/downloader/zn;

    .line 17
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "\\n not found: limit="

    .line 18
    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 19
    iget-object v2, p0, Lcom/shabakaty/downloader/on3;->r:Lcom/shabakaty/downloader/zn;

    .line 20
    iget-wide v2, v2, Lcom/shabakaty/downloader/zn;->s:J

    .line 21
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " content="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v6}, Lcom/shabakaty/downloader/zn;->g()Lcom/shabakaty/downloader/fp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/fp;->n()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u2026"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 23
    invoke-direct {v0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string v0, "limit < 0: "

    .line 24
    invoke-static {v0, p1, p2}, Lcom/shabakaty/downloader/kp0;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public i()Lcom/shabakaty/downloader/zn;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/on3;->r:Lcom/shabakaty/downloader/zn;

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/on3;->s:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public l()Lcom/shabakaty/downloader/on4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/on3;->t:Lcom/shabakaty/downloader/r94;

    invoke-interface {v0}, Lcom/shabakaty/downloader/r94;->l()Lcom/shabakaty/downloader/on4;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 6

    const-string v0, "sink"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/on3;->r:Lcom/shabakaty/downloader/zn;

    .line 2
    iget-wide v1, v0, Lcom/shabakaty/downloader/zn;->s:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/on3;->t:Lcom/shabakaty/downloader/r94;

    const/16 v2, 0x2000

    int-to-long v2, v2

    invoke-interface {v1, v0, v2, v3}, Lcom/shabakaty/downloader/r94;->C1(Lcom/shabakaty/downloader/zn;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, -0x1

    return p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/on3;->r:Lcom/shabakaty/downloader/zn;

    .line 5
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/zn;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public readByte()B
    .locals 2

    const-wide/16 v0, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/downloader/on3;->s1(J)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/on3;->r:Lcom/shabakaty/downloader/zn;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/zn;->readByte()B

    move-result v0

    return v0
.end method

.method public readInt()I
    .locals 2

    const-wide/16 v0, 0x4

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/downloader/on3;->s1(J)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/on3;->r:Lcom/shabakaty/downloader/zn;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/zn;->readInt()I

    move-result v0

    return v0
.end method

.method public readShort()S
    .locals 2

    const-wide/16 v0, 0x2

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/downloader/on3;->s1(J)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/on3;->r:Lcom/shabakaty/downloader/zn;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/zn;->readShort()S

    move-result v0

    return v0
.end method

.method public s1(J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/on3;->u(J)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public skip(J)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/on3;->s:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    .line 2
    iget-object v2, p0, Lcom/shabakaty/downloader/on3;->r:Lcom/shabakaty/downloader/zn;

    .line 3
    iget-wide v3, v2, Lcom/shabakaty/downloader/zn;->s:J

    cmp-long v5, v3, v0

    if-nez v5, :cond_1

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/on3;->t:Lcom/shabakaty/downloader/r94;

    const/16 v1, 0x2000

    int-to-long v3, v1

    invoke-interface {v0, v2, v3, v4}, Lcom/shabakaty/downloader/r94;->C1(Lcom/shabakaty/downloader/zn;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 6
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/shabakaty/downloader/on3;->r:Lcom/shabakaty/downloader/zn;

    .line 7
    iget-wide v0, v0, Lcom/shabakaty/downloader/zn;->s:J

    .line 8
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 9
    iget-object v2, p0, Lcom/shabakaty/downloader/on3;->r:Lcom/shabakaty/downloader/zn;

    .line 10
    invoke-virtual {v2, v0, v1}, Lcom/shabakaty/downloader/zn;->skip(J)V

    sub-long/2addr p1, v0

    goto :goto_0

    :cond_2
    return-void

    .line 11
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "buffer("

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/on3;->t:Lcom/shabakaty/downloader/r94;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(J)Z
    .locals 6

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-ltz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    .line 1
    iget-boolean v1, p0, Lcom/shabakaty/downloader/on3;->s:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 2
    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/on3;->r:Lcom/shabakaty/downloader/zn;

    .line 3
    iget-wide v2, v1, Lcom/shabakaty/downloader/zn;->s:J

    cmp-long v4, v2, p1

    if-gez v4, :cond_2

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/on3;->t:Lcom/shabakaty/downloader/r94;

    const/16 v3, 0x2000

    int-to-long v3, v3

    invoke-interface {v2, v1, v3, v4}, Lcom/shabakaty/downloader/r94;->C1(Lcom/shabakaty/downloader/zn;J)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 5
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const-string v0, "byteCount < 0: "

    .line 6
    invoke-static {v0, p1, p2}, Lcom/shabakaty/downloader/kp0;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public y()Ljava/io/InputStream;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/on3$a;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/on3$a;-><init>(Lcom/shabakaty/downloader/on3;)V

    return-object v0
.end method

.method public y1()J
    .locals 5

    const-wide/16 v0, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/downloader/on3;->s1(J)V

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, v0, 0x1

    int-to-long v2, v1

    .line 2
    invoke-virtual {p0, v2, v3}, Lcom/shabakaty/downloader/on3;->u(J)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/on3;->r:Lcom/shabakaty/downloader/zn;

    int-to-long v3, v0

    .line 4
    invoke-virtual {v2, v3, v4}, Lcom/shabakaty/downloader/zn;->e(J)B

    move-result v2

    const/16 v3, 0x30

    int-to-byte v3, v3

    if-lt v2, v3, :cond_0

    const/16 v3, 0x39

    int-to-byte v3, v3

    if-le v2, v3, :cond_2

    :cond_0
    const/16 v3, 0x61

    int-to-byte v3, v3

    if-lt v2, v3, :cond_1

    const/16 v3, 0x66

    int-to-byte v3, v3

    if-le v2, v3, :cond_2

    :cond_1
    const/16 v3, 0x41

    int-to-byte v3, v3

    if-lt v2, v3, :cond_3

    const/16 v3, 0x46

    int-to-byte v3, v3

    if-le v2, v3, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    goto :goto_2

    .line 5
    :cond_4
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x10

    invoke-static {v3}, Lcom/shabakaty/downloader/z02;->a(I)I

    invoke-static {v3}, Lcom/shabakaty/downloader/z02;->a(I)I

    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "java.lang.Integer.toStri\u2026(this, checkRadix(radix))"

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/shabakaty/downloader/on3;->r:Lcom/shabakaty/downloader/zn;

    .line 7
    invoke-virtual {v0}, Lcom/shabakaty/downloader/zn;->y1()J

    move-result-wide v0

    return-wide v0
.end method

.method public z(Lcom/shabakaty/downloader/l84;)J
    .locals 9

    const-wide/16 v0, 0x0

    move-wide v2, v0

    .line 1
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/shabakaty/downloader/on3;->t:Lcom/shabakaty/downloader/r94;

    .line 2
    iget-object v5, p0, Lcom/shabakaty/downloader/on3;->r:Lcom/shabakaty/downloader/zn;

    const/16 v6, 0x2000

    int-to-long v6, v6

    .line 3
    invoke-interface {v4, v5, v6, v7}, Lcom/shabakaty/downloader/r94;->C1(Lcom/shabakaty/downloader/zn;J)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    .line 4
    iget-object v4, p0, Lcom/shabakaty/downloader/on3;->r:Lcom/shabakaty/downloader/zn;

    .line 5
    invoke-virtual {v4}, Lcom/shabakaty/downloader/zn;->b()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-lez v6, :cond_0

    add-long/2addr v2, v4

    .line 6
    iget-object v6, p0, Lcom/shabakaty/downloader/on3;->r:Lcom/shabakaty/downloader/zn;

    .line 7
    move-object v7, p1

    check-cast v7, Lcom/shabakaty/downloader/zn;

    invoke-virtual {v7, v6, v4, v5}, Lcom/shabakaty/downloader/zn;->b0(Lcom/shabakaty/downloader/zn;J)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v4, p0, Lcom/shabakaty/downloader/on3;->r:Lcom/shabakaty/downloader/zn;

    .line 9
    iget-wide v5, v4, Lcom/shabakaty/downloader/zn;->s:J

    cmp-long v7, v5, v0

    if-lez v7, :cond_2

    add-long/2addr v2, v5

    .line 10
    check-cast p1, Lcom/shabakaty/downloader/zn;

    invoke-virtual {p1, v4, v5, v6}, Lcom/shabakaty/downloader/zn;->b0(Lcom/shabakaty/downloader/zn;J)V

    :cond_2
    return-wide v2
.end method

.method public z0(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/on3;->r:Lcom/shabakaty/downloader/zn;

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/on3;->t:Lcom/shabakaty/downloader/r94;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/zn;->s0(Lcom/shabakaty/downloader/r94;)J

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/on3;->r:Lcom/shabakaty/downloader/zn;

    .line 4
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/zn;->z0(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
