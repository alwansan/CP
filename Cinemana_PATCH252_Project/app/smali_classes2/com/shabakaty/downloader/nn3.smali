.class public final Lcom/shabakaty/downloader/nn3;
.super Ljava/lang/Object;
.source "RealBufferedSink.kt"

# interfaces
.implements Lcom/shabakaty/downloader/do;


# instance fields
.field public final r:Lcom/shabakaty/downloader/zn;

.field public s:Z

.field public final t:Lcom/shabakaty/downloader/l84;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/l84;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/nn3;->t:Lcom/shabakaty/downloader/l84;

    .line 2
    new-instance p1, Lcom/shabakaty/downloader/zn;

    invoke-direct {p1}, Lcom/shabakaty/downloader/zn;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/nn3;->r:Lcom/shabakaty/downloader/zn;

    return-void
.end method


# virtual methods
.method public K0(J)Lcom/shabakaty/downloader/do;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/nn3;->s:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/nn3;->r:Lcom/shabakaty/downloader/zn;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/zn;->M(J)Lcom/shabakaty/downloader/zn;

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/nn3;->f0()Lcom/shabakaty/downloader/do;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public N(I)Lcom/shabakaty/downloader/do;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/nn3;->s:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/nn3;->r:Lcom/shabakaty/downloader/zn;

    .line 3
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/zn;->S(I)Lcom/shabakaty/downloader/zn;

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/nn3;->f0()Lcom/shabakaty/downloader/do;

    return-object p0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public R(I)Lcom/shabakaty/downloader/do;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/nn3;->s:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/nn3;->r:Lcom/shabakaty/downloader/zn;

    .line 3
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/zn;->O(I)Lcom/shabakaty/downloader/zn;

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/nn3;->f0()Lcom/shabakaty/downloader/do;

    return-object p0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public X(I)Lcom/shabakaty/downloader/do;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/nn3;->s:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/nn3;->r:Lcom/shabakaty/downloader/zn;

    .line 3
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/zn;->K(I)Lcom/shabakaty/downloader/zn;

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/nn3;->f0()Lcom/shabakaty/downloader/do;

    return-object p0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b0(Lcom/shabakaty/downloader/zn;J)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/nn3;->s:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/nn3;->r:Lcom/shabakaty/downloader/zn;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/shabakaty/downloader/zn;->b0(Lcom/shabakaty/downloader/zn;J)V

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/nn3;->f0()Lcom/shabakaty/downloader/do;

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/nn3;->s:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/nn3;->r:Lcom/shabakaty/downloader/zn;

    .line 3
    iget-wide v2, v1, Lcom/shabakaty/downloader/zn;->s:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 4
    iget-object v4, p0, Lcom/shabakaty/downloader/nn3;->t:Lcom/shabakaty/downloader/l84;

    invoke-interface {v4, v1, v2, v3}, Lcom/shabakaty/downloader/l84;->b0(Lcom/shabakaty/downloader/zn;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 5
    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/shabakaty/downloader/nn3;->t:Lcom/shabakaty/downloader/l84;

    invoke-interface {v1}, Lcom/shabakaty/downloader/l84;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    :goto_1
    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lcom/shabakaty/downloader/nn3;->s:Z

    if-nez v0, :cond_3

    :goto_2
    return-void

    .line 7
    :cond_3
    throw v0
.end method

.method public e1([B)Lcom/shabakaty/downloader/do;
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/nn3;->s:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/nn3;->r:Lcom/shabakaty/downloader/zn;

    .line 3
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/zn;->D([B)Lcom/shabakaty/downloader/zn;

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/nn3;->f0()Lcom/shabakaty/downloader/do;

    return-object p0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f0()Lcom/shabakaty/downloader/do;
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/nn3;->s:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/nn3;->r:Lcom/shabakaty/downloader/zn;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/zn;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/nn3;->t:Lcom/shabakaty/downloader/l84;

    .line 5
    iget-object v3, p0, Lcom/shabakaty/downloader/nn3;->r:Lcom/shabakaty/downloader/zn;

    .line 6
    invoke-interface {v2, v3, v0, v1}, Lcom/shabakaty/downloader/l84;->b0(Lcom/shabakaty/downloader/zn;J)V

    :cond_0
    return-object p0

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/nn3;->s:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/nn3;->r:Lcom/shabakaty/downloader/zn;

    .line 3
    iget-wide v1, v0, Lcom/shabakaty/downloader/zn;->s:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 4
    iget-object v3, p0, Lcom/shabakaty/downloader/nn3;->t:Lcom/shabakaty/downloader/l84;

    invoke-interface {v3, v0, v1, v2}, Lcom/shabakaty/downloader/l84;->b0(Lcom/shabakaty/downloader/zn;J)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/nn3;->t:Lcom/shabakaty/downloader/l84;

    invoke-interface {v0}, Lcom/shabakaty/downloader/l84;->flush()V

    return-void

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i()Lcom/shabakaty/downloader/zn;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/nn3;->r:Lcom/shabakaty/downloader/zn;

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/nn3;->s:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public j0(Lcom/shabakaty/downloader/fp;)Lcom/shabakaty/downloader/do;
    .locals 1

    const-string v0, "byteString"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/nn3;->s:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/nn3;->r:Lcom/shabakaty/downloader/zn;

    .line 3
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/zn;->B(Lcom/shabakaty/downloader/fp;)Lcom/shabakaty/downloader/zn;

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/nn3;->f0()Lcom/shabakaty/downloader/do;

    return-object p0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public l()Lcom/shabakaty/downloader/on4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/nn3;->t:Lcom/shabakaty/downloader/l84;

    invoke-interface {v0}, Lcom/shabakaty/downloader/l84;->l()Lcom/shabakaty/downloader/on4;

    move-result-object v0

    return-object v0
.end method

.method public s0(Lcom/shabakaty/downloader/r94;)J
    .locals 7

    const-string v0, "source"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/shabakaty/downloader/nn3;->r:Lcom/shabakaty/downloader/zn;

    const/16 v3, 0x2000

    int-to-long v3, v3

    .line 2
    invoke-interface {p1, v2, v3, v4}, Lcom/shabakaty/downloader/r94;->C1(Lcom/shabakaty/downloader/zn;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    return-wide v0

    :cond_0
    add-long/2addr v0, v2

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/nn3;->f0()Lcom/shabakaty/downloader/do;

    goto :goto_0
.end method

.method public t1(J)Lcom/shabakaty/downloader/do;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/nn3;->s:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/nn3;->r:Lcom/shabakaty/downloader/zn;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/zn;->L(J)Lcom/shabakaty/downloader/zn;

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/nn3;->f0()Lcom/shabakaty/downloader/do;

    return-object p0

    .line 5
    :cond_0
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

    iget-object v1, p0, Lcom/shabakaty/downloader/nn3;->t:Lcom/shabakaty/downloader/l84;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v1()Ljava/io/OutputStream;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/nn3$a;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/nn3$a;-><init>(Lcom/shabakaty/downloader/nn3;)V

    return-object v0
.end method

.method public w0(Ljava/lang/String;)Lcom/shabakaty/downloader/do;
    .locals 1

    const-string v0, "string"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/nn3;->s:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/nn3;->r:Lcom/shabakaty/downloader/zn;

    .line 3
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/zn;->Y(Ljava/lang/String;)Lcom/shabakaty/downloader/zn;

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/nn3;->f0()Lcom/shabakaty/downloader/do;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/nn3;->s:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/nn3;->r:Lcom/shabakaty/downloader/zn;

    .line 3
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/zn;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/nn3;->f0()Lcom/shabakaty/downloader/do;

    return p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([BII)Lcom/shabakaty/downloader/do;
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-boolean v0, p0, Lcom/shabakaty/downloader/nn3;->s:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/nn3;->r:Lcom/shabakaty/downloader/zn;

    .line 8
    invoke-virtual {v0, p1, p2, p3}, Lcom/shabakaty/downloader/zn;->J([BII)Lcom/shabakaty/downloader/zn;

    .line 9
    invoke-virtual {p0}, Lcom/shabakaty/downloader/nn3;->f0()Lcom/shabakaty/downloader/do;

    return-object p0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
