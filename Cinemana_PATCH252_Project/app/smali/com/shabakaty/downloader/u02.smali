.class public final Lcom/shabakaty/downloader/u02;
.super Lcom/shabakaty/downloader/zz;
.source "InitializationChunk.java"


# instance fields
.field public final j:Lcom/shabakaty/downloader/a00;

.field public k:Lcom/shabakaty/downloader/a00$b;

.field public l:J

.field public volatile m:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/vl0;Lcom/shabakaty/downloader/yl0;Lcom/shabakaty/downloader/wh1;ILjava/lang/Object;Lcom/shabakaty/downloader/a00;)V
    .locals 11

    const/4 v3, 0x2

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object/from16 v6, p5

    .line 1
    invoke-direct/range {v0 .. v10}, Lcom/shabakaty/downloader/zz;-><init>(Lcom/shabakaty/downloader/vl0;Lcom/shabakaty/downloader/yl0;ILcom/shabakaty/downloader/wh1;ILjava/lang/Object;JJ)V

    move-object/from16 v1, p6

    .line 2
    iput-object v1, v0, Lcom/shabakaty/downloader/u02;->j:Lcom/shabakaty/downloader/a00;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .line 1
    iget-wide v0, p0, Lcom/shabakaty/downloader/u02;->l:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/u02;->j:Lcom/shabakaty/downloader/a00;

    iget-object v2, p0, Lcom/shabakaty/downloader/u02;->k:Lcom/shabakaty/downloader/a00$b;

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    move-object v1, v0

    check-cast v1, Lcom/shabakaty/downloader/zo;

    invoke-virtual/range {v1 .. v6}, Lcom/shabakaty/downloader/zo;->a(Lcom/shabakaty/downloader/a00$b;JJ)V

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/zz;->b:Lcom/shabakaty/downloader/yl0;

    iget-wide v1, p0, Lcom/shabakaty/downloader/u02;->l:J

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/yl0;->d(J)Lcom/shabakaty/downloader/yl0;

    move-result-object v0

    .line 4
    new-instance v7, Lcom/shabakaty/downloader/co0;

    iget-object v2, p0, Lcom/shabakaty/downloader/zz;->i:Lcom/shabakaty/downloader/uc4;

    iget-wide v3, v0, Lcom/shabakaty/downloader/yl0;->f:J

    .line 5
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/uc4;->a(Lcom/shabakaty/downloader/yl0;)J

    move-result-wide v5

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/shabakaty/downloader/co0;-><init>(Lcom/shabakaty/downloader/rl0;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :goto_0
    :try_start_1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/u02;->m:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/shabakaty/downloader/u02;->j:Lcom/shabakaty/downloader/a00;

    check-cast v0, Lcom/shabakaty/downloader/zo;

    invoke-virtual {v0, v7}, Lcom/shabakaty/downloader/zo;->c(Lcom/shabakaty/downloader/o91;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 7
    :cond_1
    :try_start_2
    iget-wide v0, v7, Lcom/shabakaty/downloader/co0;->d:J

    .line 8
    iget-object v2, p0, Lcom/shabakaty/downloader/zz;->b:Lcom/shabakaty/downloader/yl0;

    iget-wide v2, v2, Lcom/shabakaty/downloader/yl0;->f:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/shabakaty/downloader/u02;->l:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 9
    iget-object v0, p0, Lcom/shabakaty/downloader/zz;->i:Lcom/shabakaty/downloader/uc4;

    sget v1, Lcom/shabakaty/downloader/sy4;->a:I

    if-eqz v0, :cond_2

    .line 10
    :try_start_3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/uc4;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    :cond_2
    return-void

    .line 11
    :goto_1
    :try_start_4
    iget-wide v1, v7, Lcom/shabakaty/downloader/co0;->d:J

    .line 12
    iget-object v3, p0, Lcom/shabakaty/downloader/zz;->b:Lcom/shabakaty/downloader/yl0;

    iget-wide v3, v3, Lcom/shabakaty/downloader/yl0;->f:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/shabakaty/downloader/u02;->l:J

    .line 13
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    .line 14
    iget-object v1, p0, Lcom/shabakaty/downloader/zz;->i:Lcom/shabakaty/downloader/uc4;

    sget v2, Lcom/shabakaty/downloader/sy4;->a:I

    if-eqz v1, :cond_3

    .line 15
    :try_start_5
    invoke-virtual {v1}, Lcom/shabakaty/downloader/uc4;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 16
    :catch_1
    :cond_3
    throw v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/shabakaty/downloader/u02;->m:Z

    return-void
.end method
