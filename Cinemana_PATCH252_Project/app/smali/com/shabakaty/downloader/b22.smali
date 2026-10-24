.class public final Lcom/shabakaty/downloader/b22;
.super Ljava/io/InputStream;
.source "InstrHttpInputStream.java"


# instance fields
.field public final r:Ljava/io/InputStream;

.field public final s:Lcom/shabakaty/downloader/py2;

.field public final t:Lcom/shabakaty/downloader/pn4;

.field public u:J

.field public v:J

.field public w:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/shabakaty/downloader/py2;Lcom/shabakaty/downloader/pn4;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/shabakaty/downloader/b22;->u:J

    .line 3
    iput-wide v0, p0, Lcom/shabakaty/downloader/b22;->w:J

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/b22;->t:Lcom/shabakaty/downloader/pn4;

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/b22;->r:Ljava/io/InputStream;

    .line 6
    iput-object p2, p0, Lcom/shabakaty/downloader/b22;->s:Lcom/shabakaty/downloader/py2;

    .line 7
    iget-object p1, p2, Lcom/shabakaty/downloader/py2;->u:Lcom/shabakaty/downloader/oy2$b;

    .line 8
    iget-object p1, p1, Lcom/shabakaty/downloader/qp1$a;->s:Lcom/shabakaty/downloader/qp1;

    check-cast p1, Lcom/shabakaty/downloader/oy2;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/oy2;->X()J

    move-result-wide p1

    .line 9
    iput-wide p1, p0, Lcom/shabakaty/downloader/b22;->v:J

    return-void
.end method


# virtual methods
.method public available()I
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/b22;->r:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/b22;->s:Lcom/shabakaty/downloader/py2;

    iget-object v2, p0, Lcom/shabakaty/downloader/b22;->t:Lcom/shabakaty/downloader/pn4;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/pn4;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/shabakaty/downloader/py2;->j(J)Lcom/shabakaty/downloader/py2;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/b22;->s:Lcom/shabakaty/downloader/py2;

    invoke-static {v1}, Lcom/shabakaty/downloader/qy2;->c(Lcom/shabakaty/downloader/py2;)V

    .line 4
    throw v0
.end method

.method public close()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/b22;->t:Lcom/shabakaty/downloader/pn4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/pn4;->a()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lcom/shabakaty/downloader/b22;->w:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 3
    iput-wide v0, p0, Lcom/shabakaty/downloader/b22;->w:J

    .line 4
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/b22;->r:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 5
    iget-wide v0, p0, Lcom/shabakaty/downloader/b22;->u:J

    cmp-long v2, v0, v4

    if-eqz v2, :cond_1

    .line 6
    iget-object v2, p0, Lcom/shabakaty/downloader/b22;->s:Lcom/shabakaty/downloader/py2;

    invoke-virtual {v2, v0, v1}, Lcom/shabakaty/downloader/py2;->i(J)Lcom/shabakaty/downloader/py2;

    .line 7
    :cond_1
    iget-wide v0, p0, Lcom/shabakaty/downloader/b22;->v:J

    cmp-long v2, v0, v4

    if-eqz v2, :cond_2

    .line 8
    iget-object v2, p0, Lcom/shabakaty/downloader/b22;->s:Lcom/shabakaty/downloader/py2;

    invoke-virtual {v2, v0, v1}, Lcom/shabakaty/downloader/py2;->k(J)Lcom/shabakaty/downloader/py2;

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/b22;->s:Lcom/shabakaty/downloader/py2;

    iget-wide v1, p0, Lcom/shabakaty/downloader/b22;->w:J

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/py2;->j(J)Lcom/shabakaty/downloader/py2;

    .line 10
    iget-object v0, p0, Lcom/shabakaty/downloader/b22;->s:Lcom/shabakaty/downloader/py2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/py2;->b()Lcom/shabakaty/downloader/oy2;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 11
    iget-object v1, p0, Lcom/shabakaty/downloader/b22;->s:Lcom/shabakaty/downloader/py2;

    iget-object v2, p0, Lcom/shabakaty/downloader/b22;->t:Lcom/shabakaty/downloader/pn4;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/pn4;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/shabakaty/downloader/py2;->j(J)Lcom/shabakaty/downloader/py2;

    .line 12
    iget-object v1, p0, Lcom/shabakaty/downloader/b22;->s:Lcom/shabakaty/downloader/py2;

    invoke-static {v1}, Lcom/shabakaty/downloader/qy2;->c(Lcom/shabakaty/downloader/py2;)V

    .line 13
    throw v0
.end method

.method public mark(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/b22;->r:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/b22;->r:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/b22;->r:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/b22;->t:Lcom/shabakaty/downloader/pn4;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/pn4;->a()J

    move-result-wide v1

    .line 3
    iget-wide v3, p0, Lcom/shabakaty/downloader/b22;->v:J

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    .line 4
    iput-wide v1, p0, Lcom/shabakaty/downloader/b22;->v:J

    :cond_0
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 5
    iget-wide v3, p0, Lcom/shabakaty/downloader/b22;->w:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    .line 6
    iput-wide v1, p0, Lcom/shabakaty/downloader/b22;->w:J

    .line 7
    iget-object v3, p0, Lcom/shabakaty/downloader/b22;->s:Lcom/shabakaty/downloader/py2;

    invoke-virtual {v3, v1, v2}, Lcom/shabakaty/downloader/py2;->j(J)Lcom/shabakaty/downloader/py2;

    .line 8
    iget-object v1, p0, Lcom/shabakaty/downloader/b22;->s:Lcom/shabakaty/downloader/py2;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/py2;->b()Lcom/shabakaty/downloader/oy2;

    goto :goto_0

    .line 9
    :cond_1
    iget-wide v1, p0, Lcom/shabakaty/downloader/b22;->u:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/shabakaty/downloader/b22;->u:J

    .line 10
    iget-object v3, p0, Lcom/shabakaty/downloader/b22;->s:Lcom/shabakaty/downloader/py2;

    invoke-virtual {v3, v1, v2}, Lcom/shabakaty/downloader/py2;->i(J)Lcom/shabakaty/downloader/py2;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    .line 11
    iget-object v1, p0, Lcom/shabakaty/downloader/b22;->s:Lcom/shabakaty/downloader/py2;

    iget-object v2, p0, Lcom/shabakaty/downloader/b22;->t:Lcom/shabakaty/downloader/pn4;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/pn4;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/shabakaty/downloader/py2;->j(J)Lcom/shabakaty/downloader/py2;

    .line 12
    iget-object v1, p0, Lcom/shabakaty/downloader/b22;->s:Lcom/shabakaty/downloader/py2;

    invoke-static {v1}, Lcom/shabakaty/downloader/qy2;->c(Lcom/shabakaty/downloader/py2;)V

    .line 13
    throw v0
.end method

.method public read([B)I
    .locals 7

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/b22;->r:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    .line 28
    iget-object v0, p0, Lcom/shabakaty/downloader/b22;->t:Lcom/shabakaty/downloader/pn4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/pn4;->a()J

    move-result-wide v0

    .line 29
    iget-wide v2, p0, Lcom/shabakaty/downloader/b22;->v:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 30
    iput-wide v0, p0, Lcom/shabakaty/downloader/b22;->v:J

    :cond_0
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 31
    iget-wide v2, p0, Lcom/shabakaty/downloader/b22;->w:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    .line 32
    iput-wide v0, p0, Lcom/shabakaty/downloader/b22;->w:J

    .line 33
    iget-object v2, p0, Lcom/shabakaty/downloader/b22;->s:Lcom/shabakaty/downloader/py2;

    invoke-virtual {v2, v0, v1}, Lcom/shabakaty/downloader/py2;->j(J)Lcom/shabakaty/downloader/py2;

    .line 34
    iget-object v0, p0, Lcom/shabakaty/downloader/b22;->s:Lcom/shabakaty/downloader/py2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/py2;->b()Lcom/shabakaty/downloader/oy2;

    goto :goto_0

    .line 35
    :cond_1
    iget-wide v0, p0, Lcom/shabakaty/downloader/b22;->u:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/shabakaty/downloader/b22;->u:J

    .line 36
    iget-object v2, p0, Lcom/shabakaty/downloader/b22;->s:Lcom/shabakaty/downloader/py2;

    invoke-virtual {v2, v0, v1}, Lcom/shabakaty/downloader/py2;->i(J)Lcom/shabakaty/downloader/py2;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return p1

    :catch_0
    move-exception p1

    .line 37
    iget-object v0, p0, Lcom/shabakaty/downloader/b22;->s:Lcom/shabakaty/downloader/py2;

    iget-object v1, p0, Lcom/shabakaty/downloader/b22;->t:Lcom/shabakaty/downloader/pn4;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/pn4;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/py2;->j(J)Lcom/shabakaty/downloader/py2;

    .line 38
    iget-object v0, p0, Lcom/shabakaty/downloader/b22;->s:Lcom/shabakaty/downloader/py2;

    invoke-static {v0}, Lcom/shabakaty/downloader/qy2;->c(Lcom/shabakaty/downloader/py2;)V

    .line 39
    throw p1
.end method

.method public read([BII)I
    .locals 5

    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/b22;->r:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    .line 15
    iget-object p2, p0, Lcom/shabakaty/downloader/b22;->t:Lcom/shabakaty/downloader/pn4;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/pn4;->a()J

    move-result-wide p2

    .line 16
    iget-wide v0, p0, Lcom/shabakaty/downloader/b22;->v:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 17
    iput-wide p2, p0, Lcom/shabakaty/downloader/b22;->v:J

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 18
    iget-wide v0, p0, Lcom/shabakaty/downloader/b22;->w:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 19
    iput-wide p2, p0, Lcom/shabakaty/downloader/b22;->w:J

    .line 20
    iget-object v0, p0, Lcom/shabakaty/downloader/b22;->s:Lcom/shabakaty/downloader/py2;

    invoke-virtual {v0, p2, p3}, Lcom/shabakaty/downloader/py2;->j(J)Lcom/shabakaty/downloader/py2;

    .line 21
    iget-object p2, p0, Lcom/shabakaty/downloader/b22;->s:Lcom/shabakaty/downloader/py2;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/py2;->b()Lcom/shabakaty/downloader/oy2;

    goto :goto_0

    .line 22
    :cond_1
    iget-wide p2, p0, Lcom/shabakaty/downloader/b22;->u:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/shabakaty/downloader/b22;->u:J

    .line 23
    iget-object v0, p0, Lcom/shabakaty/downloader/b22;->s:Lcom/shabakaty/downloader/py2;

    invoke-virtual {v0, p2, p3}, Lcom/shabakaty/downloader/py2;->i(J)Lcom/shabakaty/downloader/py2;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return p1

    :catch_0
    move-exception p1

    .line 24
    iget-object p2, p0, Lcom/shabakaty/downloader/b22;->s:Lcom/shabakaty/downloader/py2;

    iget-object p3, p0, Lcom/shabakaty/downloader/b22;->t:Lcom/shabakaty/downloader/pn4;

    invoke-virtual {p3}, Lcom/shabakaty/downloader/pn4;->a()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/shabakaty/downloader/py2;->j(J)Lcom/shabakaty/downloader/py2;

    .line 25
    iget-object p2, p0, Lcom/shabakaty/downloader/b22;->s:Lcom/shabakaty/downloader/py2;

    invoke-static {p2}, Lcom/shabakaty/downloader/qy2;->c(Lcom/shabakaty/downloader/py2;)V

    .line 26
    throw p1
.end method

.method public reset()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/b22;->r:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/b22;->s:Lcom/shabakaty/downloader/py2;

    iget-object v2, p0, Lcom/shabakaty/downloader/b22;->t:Lcom/shabakaty/downloader/pn4;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/pn4;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/shabakaty/downloader/py2;->j(J)Lcom/shabakaty/downloader/py2;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/b22;->s:Lcom/shabakaty/downloader/py2;

    invoke-static {v1}, Lcom/shabakaty/downloader/qy2;->c(Lcom/shabakaty/downloader/py2;)V

    .line 4
    throw v0
.end method

.method public skip(J)J
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/b22;->r:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/b22;->t:Lcom/shabakaty/downloader/pn4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/pn4;->a()J

    move-result-wide v0

    .line 3
    iget-wide v2, p0, Lcom/shabakaty/downloader/b22;->v:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 4
    iput-wide v0, p0, Lcom/shabakaty/downloader/b22;->v:J

    :cond_0
    cmp-long v2, p1, v4

    if-nez v2, :cond_1

    .line 5
    iget-wide v2, p0, Lcom/shabakaty/downloader/b22;->w:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    .line 6
    iput-wide v0, p0, Lcom/shabakaty/downloader/b22;->w:J

    .line 7
    iget-object v2, p0, Lcom/shabakaty/downloader/b22;->s:Lcom/shabakaty/downloader/py2;

    invoke-virtual {v2, v0, v1}, Lcom/shabakaty/downloader/py2;->j(J)Lcom/shabakaty/downloader/py2;

    goto :goto_0

    .line 8
    :cond_1
    iget-wide v0, p0, Lcom/shabakaty/downloader/b22;->u:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/shabakaty/downloader/b22;->u:J

    .line 9
    iget-object v2, p0, Lcom/shabakaty/downloader/b22;->s:Lcom/shabakaty/downloader/py2;

    invoke-virtual {v2, v0, v1}, Lcom/shabakaty/downloader/py2;->i(J)Lcom/shabakaty/downloader/py2;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-wide p1

    :catch_0
    move-exception p1

    .line 10
    iget-object p2, p0, Lcom/shabakaty/downloader/b22;->s:Lcom/shabakaty/downloader/py2;

    iget-object v0, p0, Lcom/shabakaty/downloader/b22;->t:Lcom/shabakaty/downloader/pn4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/pn4;->a()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/shabakaty/downloader/py2;->j(J)Lcom/shabakaty/downloader/py2;

    .line 11
    iget-object p2, p0, Lcom/shabakaty/downloader/b22;->s:Lcom/shabakaty/downloader/py2;

    invoke-static {p2}, Lcom/shabakaty/downloader/qy2;->c(Lcom/shabakaty/downloader/py2;)V

    .line 12
    throw p1
.end method
