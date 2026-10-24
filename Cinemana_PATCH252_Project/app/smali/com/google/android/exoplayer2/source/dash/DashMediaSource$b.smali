.class public final Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;
.super Lcom/shabakaty/downloader/nn4;
.source "DashMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/DashMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:I

.field public final f:J

.field public final g:J

.field public final h:J

.field public final i:Lcom/shabakaty/downloader/zk0;

.field public final j:Lcom/shabakaty/downloader/dp2;

.field public final k:Lcom/shabakaty/downloader/dp2$f;


# direct methods
.method public constructor <init>(JJJIJJJLcom/shabakaty/downloader/zk0;Lcom/shabakaty/downloader/dp2;Lcom/shabakaty/downloader/dp2$f;)V
    .locals 7

    move-object v0, p0

    move-object/from16 v1, p14

    move-object/from16 v2, p16

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/nn4;-><init>()V

    .line 2
    iget-boolean v3, v1, Lcom/shabakaty/downloader/zk0;->d:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-ne v3, v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-static {v4}, Lcom/shabakaty/downloader/md;->e(Z)V

    move-wide v3, p1

    .line 3
    iput-wide v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->b:J

    move-wide v3, p3

    .line 4
    iput-wide v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->c:J

    move-wide v3, p5

    .line 5
    iput-wide v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->d:J

    move v3, p7

    .line 6
    iput v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->e:I

    move-wide v3, p8

    .line 7
    iput-wide v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->f:J

    move-wide/from16 v3, p10

    .line 8
    iput-wide v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->g:J

    move-wide/from16 v3, p12

    .line 9
    iput-wide v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->h:J

    .line 10
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->i:Lcom/shabakaty/downloader/zk0;

    move-object/from16 v1, p15

    .line 11
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->j:Lcom/shabakaty/downloader/dp2;

    .line 12
    iput-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->k:Lcom/shabakaty/downloader/dp2$f;

    return-void
.end method

.method public static r(Lcom/shabakaty/downloader/zk0;)Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/zk0;->d:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/shabakaty/downloader/zk0;->e:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v0, p0, Lcom/shabakaty/downloader/zk0;->b:J

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public b(Ljava/lang/Object;)I
    .locals 2

    .line 1
    instance-of v0, p1, Ljava/lang/Integer;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3
    iget v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->e:I

    sub-int/2addr p1, v0

    if-ltz p1, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->i()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, p1

    :cond_2
    :goto_0
    return v1
.end method

.method public g(ILcom/shabakaty/downloader/nn4$b;Z)Lcom/shabakaty/downloader/nn4$b;
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->i()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/shabakaty/downloader/md;->d(III)I

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 2
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->i:Lcom/shabakaty/downloader/zk0;

    .line 3
    iget-object v2, v2, Lcom/shabakaty/downloader/zk0;->m:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/vb3;

    .line 4
    iget-object v2, v2, Lcom/shabakaty/downloader/vb3;->a:Ljava/lang/String;

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object v4, v0

    :goto_0
    if-eqz p3, :cond_1

    .line 5
    iget p3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->e:I

    add-int/2addr p3, p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_1
    move-object v5, v0

    const/4 v6, 0x0

    .line 6
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->i:Lcom/shabakaty/downloader/zk0;

    .line 7
    invoke-virtual {p3, p1}, Lcom/shabakaty/downloader/zk0;->d(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/jp;->c(J)J

    move-result-wide v7

    .line 8
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->i:Lcom/shabakaty/downloader/zk0;

    .line 9
    iget-object p3, p3, Lcom/shabakaty/downloader/zk0;->m:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/vb3;

    .line 10
    iget-wide v2, p1, Lcom/shabakaty/downloader/vb3;->b:J

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->i:Lcom/shabakaty/downloader/zk0;

    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/zk0;->b(I)Lcom/shabakaty/downloader/vb3;

    move-result-object p1

    iget-wide v0, p1, Lcom/shabakaty/downloader/vb3;->b:J

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/jp;->c(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->f:J

    sub-long v9, v0, v2

    move-object v3, p2

    .line 11
    invoke-virtual/range {v3 .. v10}, Lcom/shabakaty/downloader/nn4$b;->f(Ljava/lang/Object;Ljava/lang/Object;IJJ)Lcom/shabakaty/downloader/nn4$b;

    return-object p2
.end method

.method public i()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->i:Lcom/shabakaty/downloader/zk0;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/zk0;->c()I

    move-result v0

    return v0
.end method

.method public m(I)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->i()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/shabakaty/downloader/md;->d(III)I

    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->e:I

    add-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public o(ILcom/shabakaty/downloader/nn4$c;J)Lcom/shabakaty/downloader/nn4$c;
    .locals 37

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move/from16 v3, p1

    .line 1
    invoke-static {v3, v1, v2}, Lcom/shabakaty/downloader/md;->d(III)I

    .line 2
    iget-wide v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->h:J

    .line 3
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->i:Lcom/shabakaty/downloader/zk0;

    invoke-static {v5}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->r(Lcom/shabakaty/downloader/zk0;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    move-wide/from16 v29, v3

    goto/16 :goto_4

    :cond_1
    const-wide/16 v5, 0x0

    cmp-long v7, p3, v5

    if-lez v7, :cond_2

    add-long v3, v3, p3

    .line 4
    iget-wide v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->g:J

    cmp-long v9, v3, v7

    if-lez v9, :cond_2

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    .line 5
    :cond_2
    iget-wide v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->f:J

    add-long/2addr v7, v3

    .line 6
    iget-object v9, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->i:Lcom/shabakaty/downloader/zk0;

    invoke-virtual {v9, v1}, Lcom/shabakaty/downloader/zk0;->e(I)J

    move-result-wide v9

    const/4 v11, 0x0

    .line 7
    :goto_1
    iget-object v12, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->i:Lcom/shabakaty/downloader/zk0;

    invoke-virtual {v12}, Lcom/shabakaty/downloader/zk0;->c()I

    move-result v12

    const/4 v13, -0x1

    add-int/2addr v12, v13

    if-ge v11, v12, :cond_3

    cmp-long v12, v7, v9

    if-ltz v12, :cond_3

    sub-long/2addr v7, v9

    add-int/lit8 v11, v11, 0x1

    .line 8
    iget-object v9, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->i:Lcom/shabakaty/downloader/zk0;

    invoke-virtual {v9, v11}, Lcom/shabakaty/downloader/zk0;->e(I)J

    move-result-wide v9

    goto :goto_1

    .line 9
    :cond_3
    iget-object v12, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->i:Lcom/shabakaty/downloader/zk0;

    .line 10
    invoke-virtual {v12, v11}, Lcom/shabakaty/downloader/zk0;->b(I)Lcom/shabakaty/downloader/vb3;

    move-result-object v11

    const/4 v12, 0x2

    .line 11
    iget-object v14, v11, Lcom/shabakaty/downloader/vb3;->c:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v14, :cond_5

    .line 12
    iget-object v2, v11, Lcom/shabakaty/downloader/vb3;->c:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/l4;

    iget v2, v2, Lcom/shabakaty/downloader/l4;->b:I

    if-ne v2, v12, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v15, v15, 0x1

    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    const/4 v15, -0x1

    :goto_3
    if-ne v15, v13, :cond_6

    goto :goto_0

    .line 13
    :cond_6
    iget-object v2, v11, Lcom/shabakaty/downloader/vb3;->c:Ljava/util/List;

    .line 14
    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/l4;

    iget-object v2, v2, Lcom/shabakaty/downloader/l4;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/ur3;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/ur3;->b()Lcom/shabakaty/downloader/dl0;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 15
    invoke-interface {v1, v9, v10}, Lcom/shabakaty/downloader/dl0;->O0(J)J

    move-result-wide v11

    cmp-long v2, v11, v5

    if-nez v2, :cond_7

    goto :goto_0

    .line 16
    :cond_7
    invoke-interface {v1, v7, v8, v9, v10}, Lcom/shabakaty/downloader/dl0;->u0(JJ)J

    move-result-wide v5

    .line 17
    invoke-interface {v1, v5, v6}, Lcom/shabakaty/downloader/dl0;->d(J)J

    move-result-wide v1

    add-long/2addr v1, v3

    sub-long v3, v1, v7

    goto/16 :goto_0

    .line 18
    :goto_4
    sget-object v17, Lcom/shabakaty/downloader/nn4$c;->r:Ljava/lang/Object;

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->j:Lcom/shabakaty/downloader/dp2;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->i:Lcom/shabakaty/downloader/zk0;

    move-object/from16 v19, v1

    iget-wide v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->b:J

    move-wide/from16 v20, v2

    iget-wide v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->c:J

    move-wide/from16 v22, v2

    iget-wide v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->d:J

    move-wide/from16 v24, v2

    const/16 v26, 0x1

    .line 19
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->r(Lcom/shabakaty/downloader/zk0;)Z

    move-result v27

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->k:Lcom/shabakaty/downloader/dp2$f;

    move-object/from16 v28, v1

    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->g:J

    move-wide/from16 v31, v1

    const/16 v33, 0x0

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->i()I

    move-result v1

    const/4 v2, 0x1

    add-int/lit8 v34, v1, -0x1

    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->f:J

    move-wide/from16 v35, v1

    move-object/from16 v16, p2

    .line 21
    invoke-virtual/range {v16 .. v36}, Lcom/shabakaty/downloader/nn4$c;->d(Ljava/lang/Object;Lcom/shabakaty/downloader/dp2;Ljava/lang/Object;JJJZZLcom/shabakaty/downloader/dp2$f;JJIIJ)Lcom/shabakaty/downloader/nn4$c;

    return-object p2
.end method

.method public p()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
