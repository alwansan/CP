.class public final Lcom/shabakaty/downloader/zv1$b;
.super Ljava/lang/Object;
.source "Http2Stream.kt"

# interfaces
.implements Lcom/shabakaty/downloader/r94;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/zv1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/zn;

.field public final s:Lcom/shabakaty/downloader/zn;

.field public t:Z

.field public final u:J

.field public v:Z

.field public final synthetic w:Lcom/shabakaty/downloader/zv1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/zv1;JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/zv1$b;->w:Lcom/shabakaty/downloader/zv1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/shabakaty/downloader/zv1$b;->u:J

    iput-boolean p4, p0, Lcom/shabakaty/downloader/zv1$b;->v:Z

    .line 2
    new-instance p1, Lcom/shabakaty/downloader/zn;

    invoke-direct {p1}, Lcom/shabakaty/downloader/zn;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/zv1$b;->r:Lcom/shabakaty/downloader/zn;

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/zn;

    invoke-direct {p1}, Lcom/shabakaty/downloader/zn;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/zv1$b;->s:Lcom/shabakaty/downloader/zn;

    return-void
.end method


# virtual methods
.method public C1(Lcom/shabakaty/downloader/zn;J)J
    .locals 11

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
    if-eqz v2, :cond_a

    :goto_1
    const/4 v2, 0x0

    .line 1
    iget-object v3, p0, Lcom/shabakaty/downloader/zv1$b;->w:Lcom/shabakaty/downloader/zv1;

    monitor-enter v3

    .line 2
    :try_start_0
    iget-object v4, p0, Lcom/shabakaty/downloader/zv1$b;->w:Lcom/shabakaty/downloader/zv1;

    .line 3
    iget-object v4, v4, Lcom/shabakaty/downloader/zv1;->i:Lcom/shabakaty/downloader/zv1$c;

    .line 4
    invoke-virtual {v4}, Lcom/shabakaty/downloader/qd;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    iget-object v4, p0, Lcom/shabakaty/downloader/zv1$b;->w:Lcom/shabakaty/downloader/zv1;

    invoke-virtual {v4}, Lcom/shabakaty/downloader/zv1;->f()Lcom/shabakaty/downloader/s41;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 6
    iget-object v2, p0, Lcom/shabakaty/downloader/zv1$b;->w:Lcom/shabakaty/downloader/zv1;

    .line 7
    iget-object v2, v2, Lcom/shabakaty/downloader/zv1;->l:Ljava/io/IOException;

    if-eqz v2, :cond_1

    goto :goto_2

    .line 8
    :cond_1
    new-instance v2, Lcom/shabakaty/downloader/wd4;

    iget-object v4, p0, Lcom/shabakaty/downloader/zv1$b;->w:Lcom/shabakaty/downloader/zv1;

    invoke-virtual {v4}, Lcom/shabakaty/downloader/zv1;->f()Lcom/shabakaty/downloader/s41;

    move-result-object v4

    invoke-static {v4}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    invoke-direct {v2, v4}, Lcom/shabakaty/downloader/wd4;-><init>(Lcom/shabakaty/downloader/s41;)V

    .line 9
    :cond_2
    :goto_2
    iget-boolean v4, p0, Lcom/shabakaty/downloader/zv1$b;->t:Z

    if-nez v4, :cond_9

    .line 10
    iget-object v4, p0, Lcom/shabakaty/downloader/zv1$b;->s:Lcom/shabakaty/downloader/zn;

    .line 11
    iget-wide v5, v4, Lcom/shabakaty/downloader/zn;->s:J

    const-wide/16 v7, -0x1

    cmp-long v9, v5, v0

    if-lez v9, :cond_3

    .line 12
    invoke-static {p2, p3, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-virtual {v4, p1, v0, v1}, Lcom/shabakaty/downloader/zn;->C1(Lcom/shabakaty/downloader/zn;J)J

    move-result-wide v0

    .line 13
    iget-object v4, p0, Lcom/shabakaty/downloader/zv1$b;->w:Lcom/shabakaty/downloader/zv1;

    .line 14
    iget-wide v5, v4, Lcom/shabakaty/downloader/zv1;->a:J

    add-long/2addr v5, v0

    .line 15
    iput-wide v5, v4, Lcom/shabakaty/downloader/zv1;->a:J

    .line 16
    iget-wide v9, v4, Lcom/shabakaty/downloader/zv1;->b:J

    sub-long/2addr v5, v9

    if-nez v2, :cond_5

    .line 17
    iget-object v4, v4, Lcom/shabakaty/downloader/zv1;->n:Lcom/shabakaty/downloader/qv1;

    .line 18
    iget-object v4, v4, Lcom/shabakaty/downloader/qv1;->J:Lcom/shabakaty/downloader/q24;

    .line 19
    invoke-virtual {v4}, Lcom/shabakaty/downloader/q24;->a()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-long v9, v4

    cmp-long v4, v5, v9

    if-ltz v4, :cond_5

    .line 20
    iget-object v4, p0, Lcom/shabakaty/downloader/zv1$b;->w:Lcom/shabakaty/downloader/zv1;

    .line 21
    iget-object v9, v4, Lcom/shabakaty/downloader/zv1;->n:Lcom/shabakaty/downloader/qv1;

    .line 22
    iget v4, v4, Lcom/shabakaty/downloader/zv1;->m:I

    .line 23
    invoke-virtual {v9, v4, v5, v6}, Lcom/shabakaty/downloader/qv1;->o(IJ)V

    .line 24
    iget-object v4, p0, Lcom/shabakaty/downloader/zv1$b;->w:Lcom/shabakaty/downloader/zv1;

    .line 25
    iget-wide v5, v4, Lcom/shabakaty/downloader/zv1;->a:J

    .line 26
    iput-wide v5, v4, Lcom/shabakaty/downloader/zv1;->b:J

    goto :goto_3

    .line 27
    :cond_3
    iget-boolean v0, p0, Lcom/shabakaty/downloader/zv1$b;->v:Z

    if-nez v0, :cond_4

    if-nez v2, :cond_4

    .line 28
    iget-object v0, p0, Lcom/shabakaty/downloader/zv1$b;->w:Lcom/shabakaty/downloader/zv1;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/zv1;->l()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    move-wide v4, v7

    goto :goto_4

    :cond_4
    move-wide v0, v7

    :cond_5
    :goto_3
    const/4 v4, 0x0

    move-wide v4, v0

    const/4 v0, 0x0

    .line 29
    :goto_4
    :try_start_2
    iget-object v1, p0, Lcom/shabakaty/downloader/zv1$b;->w:Lcom/shabakaty/downloader/zv1;

    .line 30
    iget-object v1, v1, Lcom/shabakaty/downloader/zv1;->i:Lcom/shabakaty/downloader/zv1$c;

    .line 31
    invoke-virtual {v1}, Lcom/shabakaty/downloader/zv1$c;->l()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 32
    monitor-exit v3

    if-eqz v0, :cond_6

    const-wide/16 v0, 0x0

    goto/16 :goto_1

    :cond_6
    cmp-long p1, v4, v7

    if-eqz p1, :cond_7

    .line 33
    invoke-virtual {p0, v4, v5}, Lcom/shabakaty/downloader/zv1$b;->a(J)V

    return-wide v4

    :cond_7
    if-nez v2, :cond_8

    return-wide v7

    .line 34
    :cond_8
    throw v2

    .line 35
    :cond_9
    :try_start_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    .line 36
    :try_start_4
    iget-object p2, p0, Lcom/shabakaty/downloader/zv1$b;->w:Lcom/shabakaty/downloader/zv1;

    .line 37
    iget-object p2, p2, Lcom/shabakaty/downloader/zv1;->i:Lcom/shabakaty/downloader/zv1$c;

    .line 38
    invoke-virtual {p2}, Lcom/shabakaty/downloader/zv1$c;->l()V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    .line 39
    monitor-exit v3

    throw p1

    :cond_a
    const-string p1, "byteCount < 0: "

    .line 40
    invoke-static {p1, p2, p3}, Lcom/shabakaty/downloader/kp0;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final a(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zv1$b;->w:Lcom/shabakaty/downloader/zv1;

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/ry4;->a:[B

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/zv1;->n:Lcom/shabakaty/downloader/qv1;

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/qv1;->f(J)V

    return-void
.end method

.method public close()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zv1$b;->w:Lcom/shabakaty/downloader/zv1;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lcom/shabakaty/downloader/zv1$b;->t:Z

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/zv1$b;->s:Lcom/shabakaty/downloader/zn;

    .line 4
    iget-wide v2, v1, Lcom/shabakaty/downloader/zn;->s:J

    .line 5
    invoke-virtual {v1, v2, v3}, Lcom/shabakaty/downloader/zn;->skip(J)V

    .line 6
    iget-object v1, p0, Lcom/shabakaty/downloader/zv1$b;->w:Lcom/shabakaty/downloader/zv1;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit v0

    const-wide/16 v0, 0x0

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    .line 9
    invoke-virtual {p0, v2, v3}, Lcom/shabakaty/downloader/zv1$b;->a(J)V

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/zv1$b;->w:Lcom/shabakaty/downloader/zv1;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/zv1;->a()V

    return-void

    .line 11
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type java.lang.Object"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    .line 12
    monitor-exit v0

    throw v1
.end method

.method public l()Lcom/shabakaty/downloader/on4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zv1$b;->w:Lcom/shabakaty/downloader/zv1;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/zv1;->i:Lcom/shabakaty/downloader/zv1$c;

    return-object v0
.end method
