.class public Lcom/shabakaty/downloader/bd0;
.super Lcom/shabakaty/downloader/oj;
.source "ContainerMediaChunk.java"


# instance fields
.field public final o:I

.field public final p:J

.field public final q:Lcom/shabakaty/downloader/a00;

.field public r:J

.field public volatile s:Z

.field public t:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/vl0;Lcom/shabakaty/downloader/yl0;Lcom/shabakaty/downloader/wh1;ILjava/lang/Object;JJJJJIJLcom/shabakaty/downloader/a00;)V
    .locals 3

    move-object v0, p0

    .line 1
    invoke-direct/range {p0 .. p15}, Lcom/shabakaty/downloader/oj;-><init>(Lcom/shabakaty/downloader/vl0;Lcom/shabakaty/downloader/yl0;Lcom/shabakaty/downloader/wh1;ILjava/lang/Object;JJJJJ)V

    move/from16 v1, p16

    .line 2
    iput v1, v0, Lcom/shabakaty/downloader/bd0;->o:I

    move-wide/from16 v1, p17

    .line 3
    iput-wide v1, v0, Lcom/shabakaty/downloader/bd0;->p:J

    move-object/from16 v1, p19

    .line 4
    iput-object v1, v0, Lcom/shabakaty/downloader/bd0;->q:Lcom/shabakaty/downloader/a00;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 11

    .line 1
    iget-wide v0, p0, Lcom/shabakaty/downloader/bd0;->r:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 2
    iget-object v6, p0, Lcom/shabakaty/downloader/oj;->m:Lcom/shabakaty/downloader/qj;

    invoke-static {v6}, Lcom/shabakaty/downloader/md;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-wide v0, p0, Lcom/shabakaty/downloader/bd0;->p:J

    invoke-virtual {v6, v0, v1}, Lcom/shabakaty/downloader/qj;->a(J)V

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/bd0;->q:Lcom/shabakaty/downloader/a00;

    .line 5
    iget-wide v1, p0, Lcom/shabakaty/downloader/oj;->k:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    move-wide v7, v3

    goto :goto_0

    :cond_0
    iget-wide v7, p0, Lcom/shabakaty/downloader/bd0;->p:J

    sub-long/2addr v1, v7

    move-wide v7, v1

    .line 6
    :goto_0
    iget-wide v1, p0, Lcom/shabakaty/downloader/oj;->l:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    move-wide v9, v3

    goto :goto_1

    :cond_1
    iget-wide v3, p0, Lcom/shabakaty/downloader/bd0;->p:J

    sub-long/2addr v1, v3

    move-wide v9, v1

    .line 7
    :goto_1
    move-object v5, v0

    check-cast v5, Lcom/shabakaty/downloader/zo;

    invoke-virtual/range {v5 .. v10}, Lcom/shabakaty/downloader/zo;->a(Lcom/shabakaty/downloader/a00$b;JJ)V

    .line 8
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/zz;->b:Lcom/shabakaty/downloader/yl0;

    iget-wide v1, p0, Lcom/shabakaty/downloader/bd0;->r:J

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/yl0;->d(J)Lcom/shabakaty/downloader/yl0;

    move-result-object v0

    .line 9
    new-instance v7, Lcom/shabakaty/downloader/co0;

    iget-object v2, p0, Lcom/shabakaty/downloader/zz;->i:Lcom/shabakaty/downloader/uc4;

    iget-wide v3, v0, Lcom/shabakaty/downloader/yl0;->f:J

    .line 10
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/uc4;->a(Lcom/shabakaty/downloader/yl0;)J

    move-result-wide v5

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/shabakaty/downloader/co0;-><init>(Lcom/shabakaty/downloader/rl0;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    :goto_2
    :try_start_1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/bd0;->s:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/shabakaty/downloader/bd0;->q:Lcom/shabakaty/downloader/a00;

    check-cast v0, Lcom/shabakaty/downloader/zo;

    invoke-virtual {v0, v7}, Lcom/shabakaty/downloader/zo;->c(Lcom/shabakaty/downloader/o91;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    goto :goto_2

    .line 12
    :cond_3
    :try_start_2
    iget-wide v0, v7, Lcom/shabakaty/downloader/co0;->d:J

    .line 13
    iget-object v2, p0, Lcom/shabakaty/downloader/zz;->b:Lcom/shabakaty/downloader/yl0;

    iget-wide v2, v2, Lcom/shabakaty/downloader/yl0;->f:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/shabakaty/downloader/bd0;->r:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 14
    iget-object v0, p0, Lcom/shabakaty/downloader/zz;->i:Lcom/shabakaty/downloader/uc4;

    sget v1, Lcom/shabakaty/downloader/sy4;->a:I

    if-eqz v0, :cond_4

    .line 15
    :try_start_3
    iget-object v0, v0, Lcom/shabakaty/downloader/uc4;->a:Lcom/shabakaty/downloader/vl0;

    invoke-interface {v0}, Lcom/shabakaty/downloader/vl0;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 16
    :catch_0
    :cond_4
    iget-boolean v0, p0, Lcom/shabakaty/downloader/bd0;->s:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/shabakaty/downloader/bd0;->t:Z

    return-void

    :catchall_0
    move-exception v0

    .line 17
    :try_start_4
    iget-wide v1, v7, Lcom/shabakaty/downloader/co0;->d:J

    .line 18
    iget-object v3, p0, Lcom/shabakaty/downloader/zz;->b:Lcom/shabakaty/downloader/yl0;

    iget-wide v3, v3, Lcom/shabakaty/downloader/yl0;->f:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/shabakaty/downloader/bd0;->r:J

    .line 19
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    .line 20
    iget-object v1, p0, Lcom/shabakaty/downloader/zz;->i:Lcom/shabakaty/downloader/uc4;

    sget v2, Lcom/shabakaty/downloader/sy4;->a:I

    if-eqz v1, :cond_5

    .line 21
    :try_start_5
    iget-object v1, v1, Lcom/shabakaty/downloader/uc4;->a:Lcom/shabakaty/downloader/vl0;

    invoke-interface {v1}, Lcom/shabakaty/downloader/vl0;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 22
    :catch_1
    :cond_5
    throw v0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/shabakaty/downloader/bd0;->s:Z

    return-void
.end method

.method public c()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/shabakaty/downloader/lo2;->j:J

    iget v2, p0, Lcom/shabakaty/downloader/bd0;->o:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/bd0;->t:Z

    return v0
.end method
