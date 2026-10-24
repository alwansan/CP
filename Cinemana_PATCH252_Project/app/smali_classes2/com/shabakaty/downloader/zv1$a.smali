.class public final Lcom/shabakaty/downloader/zv1$a;
.super Ljava/lang/Object;
.source "Http2Stream.kt"

# interfaces
.implements Lcom/shabakaty/downloader/l84;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/zv1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/zn;

.field public s:Z

.field public t:Z

.field public final synthetic u:Lcom/shabakaty/downloader/zv1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/zv1;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/zv1$a;->u:Lcom/shabakaty/downloader/zv1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/shabakaty/downloader/zv1$a;->t:Z

    .line 2
    new-instance p1, Lcom/shabakaty/downloader/zn;

    invoke-direct {p1}, Lcom/shabakaty/downloader/zn;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/zv1$a;->r:Lcom/shabakaty/downloader/zn;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zv1$a;->u:Lcom/shabakaty/downloader/zv1;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/zv1$a;->u:Lcom/shabakaty/downloader/zv1;

    .line 3
    iget-object v1, v1, Lcom/shabakaty/downloader/zv1;->j:Lcom/shabakaty/downloader/zv1$c;

    .line 4
    invoke-virtual {v1}, Lcom/shabakaty/downloader/qd;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 5
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/shabakaty/downloader/zv1$a;->u:Lcom/shabakaty/downloader/zv1;

    .line 6
    iget-wide v2, v1, Lcom/shabakaty/downloader/zv1;->c:J

    .line 7
    iget-wide v4, v1, Lcom/shabakaty/downloader/zv1;->d:J

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    .line 8
    iget-boolean v2, p0, Lcom/shabakaty/downloader/zv1$a;->t:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/shabakaty/downloader/zv1$a;->s:Z

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/shabakaty/downloader/zv1;->f()Lcom/shabakaty/downloader/s41;

    move-result-object v1

    if-nez v1, :cond_0

    .line 9
    iget-object v1, p0, Lcom/shabakaty/downloader/zv1$a;->u:Lcom/shabakaty/downloader/zv1;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/zv1;->l()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 10
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/shabakaty/downloader/zv1$a;->u:Lcom/shabakaty/downloader/zv1;

    .line 11
    iget-object v1, v1, Lcom/shabakaty/downloader/zv1;->j:Lcom/shabakaty/downloader/zv1$c;

    .line 12
    invoke-virtual {v1}, Lcom/shabakaty/downloader/zv1$c;->l()V

    .line 13
    iget-object v1, p0, Lcom/shabakaty/downloader/zv1$a;->u:Lcom/shabakaty/downloader/zv1;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/zv1;->b()V

    .line 14
    iget-object v1, p0, Lcom/shabakaty/downloader/zv1$a;->u:Lcom/shabakaty/downloader/zv1;

    .line 15
    iget-wide v2, v1, Lcom/shabakaty/downloader/zv1;->d:J

    .line 16
    iget-wide v4, v1, Lcom/shabakaty/downloader/zv1;->c:J

    sub-long/2addr v2, v4

    .line 17
    iget-object v1, p0, Lcom/shabakaty/downloader/zv1$a;->r:Lcom/shabakaty/downloader/zn;

    .line 18
    iget-wide v4, v1, Lcom/shabakaty/downloader/zn;->s:J

    .line 19
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 20
    iget-object v1, p0, Lcom/shabakaty/downloader/zv1$a;->u:Lcom/shabakaty/downloader/zv1;

    .line 21
    iget-wide v2, v1, Lcom/shabakaty/downloader/zv1;->c:J

    add-long/2addr v2, v10

    .line 22
    iput-wide v2, v1, Lcom/shabakaty/downloader/zv1;->c:J

    if-eqz p1, :cond_1

    .line 23
    iget-object p1, p0, Lcom/shabakaty/downloader/zv1$a;->r:Lcom/shabakaty/downloader/zn;

    .line 24
    iget-wide v2, p1, Lcom/shabakaty/downloader/zn;->s:J

    cmp-long p1, v10, v2

    if-nez p1, :cond_1

    .line 25
    invoke-virtual {v1}, Lcom/shabakaty/downloader/zv1;->f()Lcom/shabakaty/downloader/s41;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez p1, :cond_1

    const/4 p1, 0x1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    const/4 v8, 0x0

    .line 26
    :goto_1
    monitor-exit v0

    .line 27
    iget-object p1, p0, Lcom/shabakaty/downloader/zv1$a;->u:Lcom/shabakaty/downloader/zv1;

    .line 28
    iget-object p1, p1, Lcom/shabakaty/downloader/zv1;->j:Lcom/shabakaty/downloader/zv1$c;

    .line 29
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qd;->h()V

    .line 30
    :try_start_3
    iget-object p1, p0, Lcom/shabakaty/downloader/zv1$a;->u:Lcom/shabakaty/downloader/zv1;

    .line 31
    iget-object v6, p1, Lcom/shabakaty/downloader/zv1;->n:Lcom/shabakaty/downloader/qv1;

    .line 32
    iget v7, p1, Lcom/shabakaty/downloader/zv1;->m:I

    .line 33
    iget-object v9, p0, Lcom/shabakaty/downloader/zv1$a;->r:Lcom/shabakaty/downloader/zn;

    invoke-virtual/range {v6 .. v11}, Lcom/shabakaty/downloader/qv1;->g(IZLcom/shabakaty/downloader/zn;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 34
    iget-object p1, p0, Lcom/shabakaty/downloader/zv1$a;->u:Lcom/shabakaty/downloader/zv1;

    .line 35
    iget-object p1, p1, Lcom/shabakaty/downloader/zv1;->j:Lcom/shabakaty/downloader/zv1$c;

    .line 36
    invoke-virtual {p1}, Lcom/shabakaty/downloader/zv1$c;->l()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/shabakaty/downloader/zv1$a;->u:Lcom/shabakaty/downloader/zv1;

    .line 37
    iget-object v0, v0, Lcom/shabakaty/downloader/zv1;->j:Lcom/shabakaty/downloader/zv1$c;

    .line 38
    invoke-virtual {v0}, Lcom/shabakaty/downloader/zv1$c;->l()V

    throw p1

    :catchall_1
    move-exception p1

    .line 39
    :try_start_4
    iget-object v1, p0, Lcom/shabakaty/downloader/zv1$a;->u:Lcom/shabakaty/downloader/zv1;

    .line 40
    iget-object v1, v1, Lcom/shabakaty/downloader/zv1;->j:Lcom/shabakaty/downloader/zv1$c;

    .line 41
    invoke-virtual {v1}, Lcom/shabakaty/downloader/zv1$c;->l()V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    .line 42
    monitor-exit v0

    throw p1
.end method

.method public b0(Lcom/shabakaty/downloader/zn;J)V
    .locals 2

    const-string v0, "source"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ry4;->a:[B

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/zv1$a;->r:Lcom/shabakaty/downloader/zn;

    invoke-virtual {v0, p1, p2, p3}, Lcom/shabakaty/downloader/zn;->b0(Lcom/shabakaty/downloader/zn;J)V

    .line 3
    :goto_0
    iget-object p1, p0, Lcom/shabakaty/downloader/zv1$a;->r:Lcom/shabakaty/downloader/zn;

    .line 4
    iget-wide p1, p1, Lcom/shabakaty/downloader/zn;->s:J

    const-wide/16 v0, 0x4000

    cmp-long p3, p1, v0

    if-ltz p3, :cond_0

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/zv1$a;->a(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public close()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zv1$a;->u:Lcom/shabakaty/downloader/zv1;

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/ry4;->a:[B

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/shabakaty/downloader/zv1$a;->s:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 5
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/shabakaty/downloader/zv1$a;->u:Lcom/shabakaty/downloader/zv1;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/zv1;->f()Lcom/shabakaty/downloader/s41;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 6
    :goto_0
    monitor-exit v0

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/zv1$a;->u:Lcom/shabakaty/downloader/zv1;

    .line 8
    iget-object v4, v0, Lcom/shabakaty/downloader/zv1;->h:Lcom/shabakaty/downloader/zv1$a;

    .line 9
    iget-boolean v4, v4, Lcom/shabakaty/downloader/zv1$a;->t:Z

    if-nez v4, :cond_4

    .line 10
    iget-object v4, p0, Lcom/shabakaty/downloader/zv1$a;->r:Lcom/shabakaty/downloader/zn;

    .line 11
    iget-wide v4, v4, Lcom/shabakaty/downloader/zn;->s:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_2

    const/4 v2, 0x1

    :cond_2
    if-eqz v2, :cond_3

    .line 12
    :goto_1
    iget-object v0, p0, Lcom/shabakaty/downloader/zv1$a;->r:Lcom/shabakaty/downloader/zn;

    .line 13
    iget-wide v0, v0, Lcom/shabakaty/downloader/zn;->s:J

    cmp-long v2, v0, v6

    if-lez v2, :cond_4

    .line 14
    invoke-virtual {p0, v3}, Lcom/shabakaty/downloader/zv1$a;->a(Z)V

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    .line 15
    iget-object v8, v0, Lcom/shabakaty/downloader/zv1;->n:Lcom/shabakaty/downloader/qv1;

    .line 16
    iget v9, v0, Lcom/shabakaty/downloader/zv1;->m:I

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    .line 17
    invoke-virtual/range {v8 .. v13}, Lcom/shabakaty/downloader/qv1;->g(IZLcom/shabakaty/downloader/zn;J)V

    .line 18
    :cond_4
    iget-object v0, p0, Lcom/shabakaty/downloader/zv1$a;->u:Lcom/shabakaty/downloader/zv1;

    monitor-enter v0

    .line 19
    :try_start_2
    iput-boolean v3, p0, Lcom/shabakaty/downloader/zv1$a;->s:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    monitor-exit v0

    .line 21
    iget-object v0, p0, Lcom/shabakaty/downloader/zv1$a;->u:Lcom/shabakaty/downloader/zv1;

    .line 22
    iget-object v0, v0, Lcom/shabakaty/downloader/zv1;->n:Lcom/shabakaty/downloader/qv1;

    .line 23
    iget-object v0, v0, Lcom/shabakaty/downloader/qv1;->Q:Lcom/shabakaty/downloader/aw1;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/aw1;->flush()V

    .line 24
    iget-object v0, p0, Lcom/shabakaty/downloader/zv1$a;->u:Lcom/shabakaty/downloader/zv1;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/zv1;->a()V

    return-void

    :catchall_0
    move-exception v1

    .line 25
    monitor-exit v0

    throw v1

    :catchall_1
    move-exception v1

    .line 26
    monitor-exit v0

    throw v1
.end method

.method public flush()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zv1$a;->u:Lcom/shabakaty/downloader/zv1;

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/ry4;->a:[B

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/zv1$a;->u:Lcom/shabakaty/downloader/zv1;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/zv1;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit v0

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/zv1$a;->r:Lcom/shabakaty/downloader/zn;

    .line 7
    iget-wide v0, v0, Lcom/shabakaty/downloader/zn;->s:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/zv1$a;->a(Z)V

    .line 9
    iget-object v0, p0, Lcom/shabakaty/downloader/zv1$a;->u:Lcom/shabakaty/downloader/zv1;

    .line 10
    iget-object v0, v0, Lcom/shabakaty/downloader/zv1;->n:Lcom/shabakaty/downloader/qv1;

    .line 11
    iget-object v0, v0, Lcom/shabakaty/downloader/qv1;->Q:Lcom/shabakaty/downloader/aw1;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/aw1;->flush()V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 12
    monitor-exit v0

    throw v1
.end method

.method public l()Lcom/shabakaty/downloader/on4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zv1$a;->u:Lcom/shabakaty/downloader/zv1;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/zv1;->j:Lcom/shabakaty/downloader/zv1$c;

    return-object v0
.end method
