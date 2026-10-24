.class public final Lcom/shabakaty/downloader/qh3$a;
.super Ljava/lang/Object;
.source "ProgressiveMediaPeriod.java"

# interfaces
.implements Lcom/shabakaty/downloader/ij2$e;
.implements Lcom/shabakaty/downloader/lx1$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/qh3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:J

.field public final b:Landroid/net/Uri;

.field public final c:Lcom/shabakaty/downloader/uc4;

.field public final d:Lcom/shabakaty/downloader/oh3;

.field public final e:Lcom/shabakaty/downloader/p91;

.field public final f:Lcom/shabakaty/downloader/b00;

.field public final g:Lcom/shabakaty/downloader/ie3;

.field public volatile h:Z

.field public i:Z

.field public j:J

.field public k:Lcom/shabakaty/downloader/yl0;

.field public l:J

.field public m:Lcom/shabakaty/downloader/fp4;

.field public n:Z

.field public final synthetic o:Lcom/shabakaty/downloader/qh3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/qh3;Landroid/net/Uri;Lcom/shabakaty/downloader/vl0;Lcom/shabakaty/downloader/oh3;Lcom/shabakaty/downloader/p91;Lcom/shabakaty/downloader/b00;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/qh3$a;->o:Lcom/shabakaty/downloader/qh3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/qh3$a;->b:Landroid/net/Uri;

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/uc4;

    invoke-direct {p1, p3}, Lcom/shabakaty/downloader/uc4;-><init>(Lcom/shabakaty/downloader/vl0;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/qh3$a;->c:Lcom/shabakaty/downloader/uc4;

    .line 4
    iput-object p4, p0, Lcom/shabakaty/downloader/qh3$a;->d:Lcom/shabakaty/downloader/oh3;

    .line 5
    iput-object p5, p0, Lcom/shabakaty/downloader/qh3$a;->e:Lcom/shabakaty/downloader/p91;

    .line 6
    iput-object p6, p0, Lcom/shabakaty/downloader/qh3$a;->f:Lcom/shabakaty/downloader/b00;

    .line 7
    new-instance p1, Lcom/shabakaty/downloader/ie3;

    invoke-direct {p1}, Lcom/shabakaty/downloader/ie3;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/qh3$a;->g:Lcom/shabakaty/downloader/ie3;

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/shabakaty/downloader/qh3$a;->i:Z

    const-wide/16 p1, -0x1

    .line 9
    iput-wide p1, p0, Lcom/shabakaty/downloader/qh3$a;->l:J

    .line 10
    invoke-static {}, Lcom/shabakaty/downloader/hj2;->a()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/shabakaty/downloader/qh3$a;->a:J

    const-wide/16 p1, 0x0

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/qh3$a;->c(J)Lcom/shabakaty/downloader/yl0;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/qh3$a;->k:Lcom/shabakaty/downloader/yl0;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 18

    move-object/from16 v1, p0

    const/4 v0, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-nez v2, :cond_d

    .line 1
    iget-boolean v3, v1, Lcom/shabakaty/downloader/qh3$a;->h:Z

    if-nez v3, :cond_d

    const/4 v3, 0x1

    const-wide/16 v4, -0x1

    .line 2
    :try_start_0
    iget-object v6, v1, Lcom/shabakaty/downloader/qh3$a;->g:Lcom/shabakaty/downloader/ie3;

    iget-wide v13, v6, Lcom/shabakaty/downloader/ie3;->a:J

    .line 3
    invoke-virtual {v1, v13, v14}, Lcom/shabakaty/downloader/qh3$a;->c(J)Lcom/shabakaty/downloader/yl0;

    move-result-object v6

    iput-object v6, v1, Lcom/shabakaty/downloader/qh3$a;->k:Lcom/shabakaty/downloader/yl0;

    .line 4
    iget-object v7, v1, Lcom/shabakaty/downloader/qh3$a;->c:Lcom/shabakaty/downloader/uc4;

    invoke-virtual {v7, v6}, Lcom/shabakaty/downloader/uc4;->a(Lcom/shabakaty/downloader/yl0;)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/shabakaty/downloader/qh3$a;->l:J

    cmp-long v8, v6, v4

    if-eqz v8, :cond_1

    add-long/2addr v6, v13

    .line 5
    iput-wide v6, v1, Lcom/shabakaty/downloader/qh3$a;->l:J

    .line 6
    :cond_1
    iget-object v6, v1, Lcom/shabakaty/downloader/qh3$a;->o:Lcom/shabakaty/downloader/qh3;

    iget-object v7, v1, Lcom/shabakaty/downloader/qh3$a;->c:Lcom/shabakaty/downloader/uc4;

    invoke-virtual {v7}, Lcom/shabakaty/downloader/uc4;->o()Ljava/util/Map;

    move-result-object v7

    invoke-static {v7}, Lcom/shabakaty/downloader/nx1;->a(Ljava/util/Map;)Lcom/shabakaty/downloader/nx1;

    move-result-object v7

    .line 7
    iput-object v7, v6, Lcom/shabakaty/downloader/qh3;->I:Lcom/shabakaty/downloader/nx1;

    .line 8
    iget-object v6, v1, Lcom/shabakaty/downloader/qh3$a;->c:Lcom/shabakaty/downloader/uc4;

    .line 9
    iget-object v7, v1, Lcom/shabakaty/downloader/qh3$a;->o:Lcom/shabakaty/downloader/qh3;

    .line 10
    iget-object v7, v7, Lcom/shabakaty/downloader/qh3;->I:Lcom/shabakaty/downloader/nx1;

    if-eqz v7, :cond_2

    .line 11
    iget v7, v7, Lcom/shabakaty/downloader/nx1;->w:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    .line 12
    new-instance v8, Lcom/shabakaty/downloader/lx1;

    invoke-direct {v8, v6, v7, v1}, Lcom/shabakaty/downloader/lx1;-><init>(Lcom/shabakaty/downloader/vl0;ILcom/shabakaty/downloader/lx1$a;)V

    .line 13
    iget-object v6, v1, Lcom/shabakaty/downloader/qh3$a;->o:Lcom/shabakaty/downloader/qh3;

    .line 14
    new-instance v7, Lcom/shabakaty/downloader/qh3$d;

    invoke-direct {v7, v0, v3}, Lcom/shabakaty/downloader/qh3$d;-><init>(IZ)V

    invoke-virtual {v6, v7}, Lcom/shabakaty/downloader/qh3;->v(Lcom/shabakaty/downloader/qh3$d;)Lcom/shabakaty/downloader/fp4;

    move-result-object v6

    .line 15
    iput-object v6, v1, Lcom/shabakaty/downloader/qh3$a;->m:Lcom/shabakaty/downloader/fp4;

    .line 16
    sget-object v7, Lcom/shabakaty/downloader/qh3;->e0:Lcom/shabakaty/downloader/wh1;

    .line 17
    check-cast v6, Lcom/shabakaty/downloader/bx3;

    invoke-virtual {v6, v7}, Lcom/shabakaty/downloader/bx3;->f(Lcom/shabakaty/downloader/wh1;)V

    goto :goto_1

    :cond_2
    move-object v8, v6

    .line 18
    :goto_1
    iget-object v6, v1, Lcom/shabakaty/downloader/qh3$a;->d:Lcom/shabakaty/downloader/oh3;

    iget-object v9, v1, Lcom/shabakaty/downloader/qh3$a;->b:Landroid/net/Uri;

    iget-object v7, v1, Lcom/shabakaty/downloader/qh3$a;->c:Lcom/shabakaty/downloader/uc4;

    .line 19
    invoke-virtual {v7}, Lcom/shabakaty/downloader/uc4;->o()Ljava/util/Map;

    move-result-object v10

    iget-wide v11, v1, Lcom/shabakaty/downloader/qh3$a;->l:J

    iget-object v15, v1, Lcom/shabakaty/downloader/qh3$a;->e:Lcom/shabakaty/downloader/p91;

    .line 20
    move-object v7, v6

    check-cast v7, Lcom/shabakaty/downloader/tk1;

    move-wide/from16 v16, v11

    move-wide v11, v13

    move-wide v4, v13

    move-wide/from16 v13, v16

    invoke-virtual/range {v7 .. v15}, Lcom/shabakaty/downloader/tk1;->x(Lcom/shabakaty/downloader/rl0;Landroid/net/Uri;Ljava/util/Map;JJLcom/shabakaty/downloader/p91;)V

    .line 21
    iget-object v6, v1, Lcom/shabakaty/downloader/qh3$a;->o:Lcom/shabakaty/downloader/qh3;

    .line 22
    iget-object v6, v6, Lcom/shabakaty/downloader/qh3;->I:Lcom/shabakaty/downloader/nx1;

    if-eqz v6, :cond_3

    .line 23
    iget-object v6, v1, Lcom/shabakaty/downloader/qh3$a;->d:Lcom/shabakaty/downloader/oh3;

    check-cast v6, Lcom/shabakaty/downloader/tk1;

    .line 24
    iget-object v6, v6, Lcom/shabakaty/downloader/tk1;->t:Ljava/lang/Object;

    move-object v7, v6

    check-cast v7, Lcom/shabakaty/downloader/n91;

    instance-of v7, v7, Lcom/shabakaty/downloader/bv2;

    if-eqz v7, :cond_3

    .line 25
    check-cast v6, Lcom/shabakaty/downloader/n91;

    check-cast v6, Lcom/shabakaty/downloader/bv2;

    .line 26
    iput-boolean v3, v6, Lcom/shabakaty/downloader/bv2;->r:Z

    .line 27
    :cond_3
    iget-boolean v6, v1, Lcom/shabakaty/downloader/qh3$a;->i:Z

    if-eqz v6, :cond_4

    .line 28
    iget-object v6, v1, Lcom/shabakaty/downloader/qh3$a;->d:Lcom/shabakaty/downloader/oh3;

    iget-wide v7, v1, Lcom/shabakaty/downloader/qh3$a;->j:J

    check-cast v6, Lcom/shabakaty/downloader/tk1;

    .line 29
    iget-object v6, v6, Lcom/shabakaty/downloader/tk1;->t:Ljava/lang/Object;

    check-cast v6, Lcom/shabakaty/downloader/n91;

    .line 30
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    invoke-interface {v6, v4, v5, v7, v8}, Lcom/shabakaty/downloader/n91;->b(JJ)V

    .line 32
    iput-boolean v0, v1, Lcom/shabakaty/downloader/qh3$a;->i:Z

    :cond_4
    :goto_2
    move-wide v13, v4

    :cond_5
    if-nez v2, :cond_7

    .line 33
    iget-boolean v4, v1, Lcom/shabakaty/downloader/qh3$a;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v4, :cond_7

    .line 34
    :try_start_1
    iget-object v4, v1, Lcom/shabakaty/downloader/qh3$a;->f:Lcom/shabakaty/downloader/b00;

    .line 35
    monitor-enter v4
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 36
    :goto_3
    :try_start_2
    iget-boolean v5, v4, Lcom/shabakaty/downloader/b00;->s:Z

    if-nez v5, :cond_6

    .line 37
    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 38
    :cond_6
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 39
    :try_start_4
    iget-object v4, v1, Lcom/shabakaty/downloader/qh3$a;->d:Lcom/shabakaty/downloader/oh3;

    iget-object v5, v1, Lcom/shabakaty/downloader/qh3$a;->g:Lcom/shabakaty/downloader/ie3;

    check-cast v4, Lcom/shabakaty/downloader/tk1;

    .line 40
    iget-object v6, v4, Lcom/shabakaty/downloader/tk1;->t:Ljava/lang/Object;

    check-cast v6, Lcom/shabakaty/downloader/n91;

    .line 41
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v4, v4, Lcom/shabakaty/downloader/tk1;->u:Ljava/lang/Object;

    check-cast v4, Lcom/shabakaty/downloader/o91;

    .line 43
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-interface {v6, v4, v5}, Lcom/shabakaty/downloader/n91;->f(Lcom/shabakaty/downloader/o91;Lcom/shabakaty/downloader/ie3;)I

    move-result v2

    .line 45
    iget-object v4, v1, Lcom/shabakaty/downloader/qh3$a;->d:Lcom/shabakaty/downloader/oh3;

    check-cast v4, Lcom/shabakaty/downloader/tk1;

    invoke-virtual {v4}, Lcom/shabakaty/downloader/tk1;->m()J

    move-result-wide v4

    .line 46
    iget-object v6, v1, Lcom/shabakaty/downloader/qh3$a;->o:Lcom/shabakaty/downloader/qh3;

    .line 47
    iget-wide v6, v6, Lcom/shabakaty/downloader/qh3;->A:J

    add-long/2addr v6, v13

    cmp-long v8, v4, v6

    if-lez v8, :cond_5

    .line 48
    iget-object v6, v1, Lcom/shabakaty/downloader/qh3$a;->f:Lcom/shabakaty/downloader/b00;

    invoke-virtual {v6}, Lcom/shabakaty/downloader/b00;->a()Z

    .line 49
    iget-object v6, v1, Lcom/shabakaty/downloader/qh3$a;->o:Lcom/shabakaty/downloader/qh3;

    .line 50
    iget-object v7, v6, Lcom/shabakaty/downloader/qh3;->G:Landroid/os/Handler;

    .line 51
    iget-object v6, v6, Lcom/shabakaty/downloader/qh3;->F:Ljava/lang/Runnable;

    .line 52
    invoke-virtual {v7, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 53
    :try_start_5
    monitor-exit v4

    throw v0
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 54
    :catch_0
    :try_start_6
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_7
    if-ne v2, v3, :cond_8

    const/4 v2, 0x0

    goto :goto_4

    .line 55
    :cond_8
    iget-object v3, v1, Lcom/shabakaty/downloader/qh3$a;->d:Lcom/shabakaty/downloader/oh3;

    check-cast v3, Lcom/shabakaty/downloader/tk1;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/tk1;->m()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_9

    .line 56
    iget-object v3, v1, Lcom/shabakaty/downloader/qh3$a;->g:Lcom/shabakaty/downloader/ie3;

    iget-object v4, v1, Lcom/shabakaty/downloader/qh3$a;->d:Lcom/shabakaty/downloader/oh3;

    check-cast v4, Lcom/shabakaty/downloader/tk1;

    invoke-virtual {v4}, Lcom/shabakaty/downloader/tk1;->m()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/shabakaty/downloader/ie3;->a:J

    .line 57
    :cond_9
    :goto_4
    iget-object v3, v1, Lcom/shabakaty/downloader/qh3$a;->c:Lcom/shabakaty/downloader/uc4;

    if-eqz v3, :cond_0

    .line 58
    :try_start_7
    iget-object v3, v3, Lcom/shabakaty/downloader/uc4;->a:Lcom/shabakaty/downloader/vl0;

    invoke-interface {v3}, Lcom/shabakaty/downloader/vl0;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    :catch_1
    nop

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    if-ne v2, v3, :cond_a

    goto :goto_5

    .line 59
    :cond_a
    iget-object v2, v1, Lcom/shabakaty/downloader/qh3$a;->d:Lcom/shabakaty/downloader/oh3;

    check-cast v2, Lcom/shabakaty/downloader/tk1;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/tk1;->m()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_b

    .line 60
    iget-object v2, v1, Lcom/shabakaty/downloader/qh3$a;->g:Lcom/shabakaty/downloader/ie3;

    iget-object v3, v1, Lcom/shabakaty/downloader/qh3$a;->d:Lcom/shabakaty/downloader/oh3;

    check-cast v3, Lcom/shabakaty/downloader/tk1;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/tk1;->m()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/shabakaty/downloader/ie3;->a:J

    .line 61
    :cond_b
    :goto_5
    iget-object v2, v1, Lcom/shabakaty/downloader/qh3$a;->c:Lcom/shabakaty/downloader/uc4;

    sget v3, Lcom/shabakaty/downloader/sy4;->a:I

    if-eqz v2, :cond_c

    .line 62
    :try_start_8
    iget-object v2, v2, Lcom/shabakaty/downloader/uc4;->a:Lcom/shabakaty/downloader/vl0;

    invoke-interface {v2}, Lcom/shabakaty/downloader/vl0;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 63
    :catch_2
    :cond_c
    throw v0

    :cond_d
    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/shabakaty/downloader/qh3$a;->h:Z

    return-void
.end method

.method public final c(J)Lcom/shabakaty/downloader/yl0;
    .locals 16

    move-object/from16 v0, p0

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 2
    iget-object v2, v0, Lcom/shabakaty/downloader/qh3$a;->b:Landroid/net/Uri;

    .line 3
    iget-object v1, v0, Lcom/shabakaty/downloader/qh3$a;->o:Lcom/shabakaty/downloader/qh3;

    .line 4
    iget-object v12, v1, Lcom/shabakaty/downloader/qh3;->z:Ljava/lang/String;

    .line 5
    sget-object v7, Lcom/shabakaty/downloader/qh3;->d0:Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 6
    new-instance v15, Lcom/shabakaty/downloader/yl0;

    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    const/4 v14, 0x0

    const/4 v5, 0x1

    const-wide/16 v10, -0x1

    const/4 v13, 0x6

    move-object v1, v15

    move-wide/from16 v8, p1

    .line 7
    invoke-direct/range {v1 .. v14}, Lcom/shabakaty/downloader/yl0;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    return-object v15

    .line 8
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The uri must be set."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
