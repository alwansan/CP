.class public final Lcom/shabakaty/downloader/d84;
.super Lcom/shabakaty/downloader/oj;
.source "SingleSampleMediaChunk.java"


# instance fields
.field public final o:I

.field public final p:Lcom/shabakaty/downloader/wh1;

.field public q:J

.field public r:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/vl0;Lcom/shabakaty/downloader/yl0;Lcom/shabakaty/downloader/wh1;ILjava/lang/Object;JJJILcom/shabakaty/downloader/wh1;)V
    .locals 16

    move-object/from16 v14, p0

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v14, p10

    .line 1
    invoke-direct/range {v0 .. v15}, Lcom/shabakaty/downloader/oj;-><init>(Lcom/shabakaty/downloader/vl0;Lcom/shabakaty/downloader/yl0;Lcom/shabakaty/downloader/wh1;ILjava/lang/Object;JJJJJ)V

    move/from16 v1, p12

    .line 2
    iput v1, v0, Lcom/shabakaty/downloader/d84;->o:I

    move-object/from16 v1, p13

    .line 3
    iput-object v1, v0, Lcom/shabakaty/downloader/d84;->p:Lcom/shabakaty/downloader/wh1;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/oj;->m:Lcom/shabakaty/downloader/qj;

    invoke-static {v0}, Lcom/shabakaty/downloader/md;->f(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v1, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/qj;->a(J)V

    .line 3
    iget v1, p0, Lcom/shabakaty/downloader/d84;->o:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/shabakaty/downloader/qj;->b(II)Lcom/shabakaty/downloader/fp4;

    move-result-object v3

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/d84;->p:Lcom/shabakaty/downloader/wh1;

    invoke-interface {v3, v0}, Lcom/shabakaty/downloader/fp4;->f(Lcom/shabakaty/downloader/wh1;)V

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/zz;->b:Lcom/shabakaty/downloader/yl0;

    iget-wide v4, p0, Lcom/shabakaty/downloader/d84;->q:J

    invoke-virtual {v0, v4, v5}, Lcom/shabakaty/downloader/yl0;->d(J)Lcom/shabakaty/downloader/yl0;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/shabakaty/downloader/zz;->i:Lcom/shabakaty/downloader/uc4;

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/uc4;->a(Lcom/shabakaty/downloader/yl0;)J

    move-result-wide v0

    const-wide/16 v4, -0x1

    cmp-long v6, v0, v4

    if-eqz v6, :cond_0

    .line 7
    iget-wide v4, p0, Lcom/shabakaty/downloader/d84;->q:J

    add-long/2addr v0, v4

    :cond_0
    move-wide v8, v0

    .line 8
    new-instance v0, Lcom/shabakaty/downloader/co0;

    iget-object v5, p0, Lcom/shabakaty/downloader/zz;->i:Lcom/shabakaty/downloader/uc4;

    iget-wide v6, p0, Lcom/shabakaty/downloader/d84;->q:J

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/shabakaty/downloader/co0;-><init>(Lcom/shabakaty/downloader/rl0;JJ)V

    :goto_0
    const/4 v1, -0x1

    const/4 v10, 0x1

    if-eq v2, v1, :cond_1

    .line 9
    iget-wide v4, p0, Lcom/shabakaty/downloader/d84;->q:J

    int-to-long v1, v2

    add-long/2addr v4, v1

    iput-wide v4, p0, Lcom/shabakaty/downloader/d84;->q:J

    const v1, 0x7fffffff

    .line 10
    invoke-interface {v3, v0, v1, v10}, Lcom/shabakaty/downloader/fp4;->d(Lcom/shabakaty/downloader/rl0;IZ)I

    move-result v2

    goto :goto_0

    .line 11
    :cond_1
    iget-wide v0, p0, Lcom/shabakaty/downloader/d84;->q:J

    long-to-int v7, v0

    .line 12
    iget-wide v4, p0, Lcom/shabakaty/downloader/zz;->g:J

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lcom/shabakaty/downloader/fp4;->b(JIIILcom/shabakaty/downloader/fp4$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    iget-object v0, p0, Lcom/shabakaty/downloader/zz;->i:Lcom/shabakaty/downloader/uc4;

    sget v1, Lcom/shabakaty/downloader/sy4;->a:I

    if-eqz v0, :cond_2

    .line 14
    :try_start_1
    iget-object v0, v0, Lcom/shabakaty/downloader/uc4;->a:Lcom/shabakaty/downloader/vl0;

    invoke-interface {v0}, Lcom/shabakaty/downloader/vl0;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 15
    :catch_0
    :cond_2
    iput-boolean v10, p0, Lcom/shabakaty/downloader/d84;->r:Z

    return-void

    :catchall_0
    move-exception v0

    .line 16
    iget-object v1, p0, Lcom/shabakaty/downloader/zz;->i:Lcom/shabakaty/downloader/uc4;

    sget v2, Lcom/shabakaty/downloader/sy4;->a:I

    if-eqz v1, :cond_3

    .line 17
    :try_start_2
    iget-object v1, v1, Lcom/shabakaty/downloader/uc4;->a:Lcom/shabakaty/downloader/vl0;

    invoke-interface {v1}, Lcom/shabakaty/downloader/vl0;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 18
    :catch_1
    :cond_3
    throw v0
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/d84;->r:Z

    return v0
.end method
