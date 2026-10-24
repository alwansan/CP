.class public final Lcom/shabakaty/downloader/op2;
.super Ljava/lang/Object;
.source "MediaPeriodQueue.java"


# instance fields
.field public final a:Lcom/shabakaty/downloader/nn4$b;

.field public final b:Lcom/shabakaty/downloader/nn4$c;

.field public final c:Lcom/shabakaty/downloader/k6;

.field public final d:Landroid/os/Handler;

.field public e:J

.field public f:I

.field public g:Z

.field public h:Lcom/shabakaty/downloader/lp2;

.field public i:Lcom/shabakaty/downloader/lp2;

.field public j:Lcom/shabakaty/downloader/lp2;

.field public k:I

.field public l:Ljava/lang/Object;

.field public m:J


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/k6;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/op2;->c:Lcom/shabakaty/downloader/k6;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/op2;->d:Landroid/os/Handler;

    .line 4
    new-instance p1, Lcom/shabakaty/downloader/nn4$b;

    invoke-direct {p1}, Lcom/shabakaty/downloader/nn4$b;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/op2;->a:Lcom/shabakaty/downloader/nn4$b;

    .line 5
    new-instance p1, Lcom/shabakaty/downloader/nn4$c;

    invoke-direct {p1}, Lcom/shabakaty/downloader/nn4$c;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/op2;->b:Lcom/shabakaty/downloader/nn4$c;

    return-void
.end method

.method public static p(Lcom/shabakaty/downloader/nn4;Ljava/lang/Object;JJLcom/shabakaty/downloader/nn4$b;)Lcom/shabakaty/downloader/uq2$a;
    .locals 15

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object v0, p0

    move-object/from16 v4, p6

    .line 1
    invoke-virtual {p0, v1, v4}, Lcom/shabakaty/downloader/nn4;->h(Ljava/lang/Object;Lcom/shabakaty/downloader/nn4$b;)Lcom/shabakaty/downloader/nn4$b;

    .line 2
    iget-object v0, v4, Lcom/shabakaty/downloader/nn4$b;->g:Lcom/shabakaty/downloader/k4;

    iget-wide v5, v4, Lcom/shabakaty/downloader/nn4$b;->d:J

    .line 3
    iget v7, v0, Lcom/shabakaty/downloader/k4;->b:I

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    :goto_0
    if-ltz v7, :cond_4

    const-wide/high16 v9, -0x8000000000000000L

    const/4 v11, 0x0

    cmp-long v12, v2, v9

    if-nez v12, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    invoke-virtual {v0, v7}, Lcom/shabakaty/downloader/k4;->a(I)Lcom/shabakaty/downloader/k4$a;

    move-result-object v12

    iget-wide v12, v12, Lcom/shabakaty/downloader/k4$a;->a:J

    cmp-long v14, v12, v9

    if-nez v14, :cond_1

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v12, v5, v9

    if-eqz v12, :cond_2

    cmp-long v9, v2, v5

    if-gez v9, :cond_3

    goto :goto_1

    :cond_1
    cmp-long v9, v2, v12

    if-gez v9, :cond_3

    :cond_2
    :goto_1
    const/4 v11, 0x1

    :cond_3
    :goto_2
    if-eqz v11, :cond_4

    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    :cond_4
    const/4 v5, -0x1

    if-ltz v7, :cond_5

    .line 5
    invoke-virtual {v0, v7}, Lcom/shabakaty/downloader/k4;->a(I)Lcom/shabakaty/downloader/k4$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/k4$a;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v7, -0x1

    :goto_3
    if-ne v7, v5, :cond_6

    .line 6
    invoke-virtual {v4, v2, v3}, Lcom/shabakaty/downloader/nn4$b;->b(J)I

    move-result v0

    .line 7
    new-instance v2, Lcom/shabakaty/downloader/uq2$a;

    move-wide/from16 v5, p4

    invoke-direct {v2, v1, v5, v6, v0}, Lcom/shabakaty/downloader/uq2$a;-><init>(Ljava/lang/Object;JI)V

    return-object v2

    :cond_6
    move-wide/from16 v5, p4

    .line 8
    invoke-virtual {v4, v7}, Lcom/shabakaty/downloader/nn4$b;->d(I)I

    move-result v3

    .line 9
    new-instance v8, Lcom/shabakaty/downloader/uq2$a;

    move-object v0, v8

    move-object/from16 v1, p1

    move v2, v7

    move-wide/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/uq2$a;-><init>(Ljava/lang/Object;IIJ)V

    return-object v8
.end method


# virtual methods
.method public a()Lcom/shabakaty/downloader/lp2;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/op2;->h:Lcom/shabakaty/downloader/lp2;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v2, p0, Lcom/shabakaty/downloader/op2;->i:Lcom/shabakaty/downloader/lp2;

    if-ne v0, v2, :cond_1

    .line 3
    iget-object v2, v0, Lcom/shabakaty/downloader/lp2;->l:Lcom/shabakaty/downloader/lp2;

    .line 4
    iput-object v2, p0, Lcom/shabakaty/downloader/op2;->i:Lcom/shabakaty/downloader/lp2;

    .line 5
    :cond_1
    invoke-virtual {v0}, Lcom/shabakaty/downloader/lp2;->h()V

    .line 6
    iget v0, p0, Lcom/shabakaty/downloader/op2;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/shabakaty/downloader/op2;->k:I

    if-nez v0, :cond_2

    .line 7
    iput-object v1, p0, Lcom/shabakaty/downloader/op2;->j:Lcom/shabakaty/downloader/lp2;

    .line 8
    iget-object v0, p0, Lcom/shabakaty/downloader/op2;->h:Lcom/shabakaty/downloader/lp2;

    iget-object v1, v0, Lcom/shabakaty/downloader/lp2;->b:Ljava/lang/Object;

    iput-object v1, p0, Lcom/shabakaty/downloader/op2;->l:Ljava/lang/Object;

    .line 9
    iget-object v0, v0, Lcom/shabakaty/downloader/lp2;->f:Lcom/shabakaty/downloader/np2;

    iget-object v0, v0, Lcom/shabakaty/downloader/np2;->a:Lcom/shabakaty/downloader/uq2$a;

    iget-wide v0, v0, Lcom/shabakaty/downloader/mp2;->d:J

    iput-wide v0, p0, Lcom/shabakaty/downloader/op2;->m:J

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/op2;->h:Lcom/shabakaty/downloader/lp2;

    .line 11
    iget-object v0, v0, Lcom/shabakaty/downloader/lp2;->l:Lcom/shabakaty/downloader/lp2;

    .line 12
    iput-object v0, p0, Lcom/shabakaty/downloader/op2;->h:Lcom/shabakaty/downloader/lp2;

    .line 13
    invoke-virtual {p0}, Lcom/shabakaty/downloader/op2;->l()V

    .line 14
    iget-object v0, p0, Lcom/shabakaty/downloader/op2;->h:Lcom/shabakaty/downloader/lp2;

    return-object v0
.end method

.method public b()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/op2;->k:I

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/op2;->h:Lcom/shabakaty/downloader/lp2;

    invoke-static {v0}, Lcom/shabakaty/downloader/md;->f(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/lp2;

    .line 3
    iget-object v1, v0, Lcom/shabakaty/downloader/lp2;->b:Ljava/lang/Object;

    iput-object v1, p0, Lcom/shabakaty/downloader/op2;->l:Ljava/lang/Object;

    .line 4
    iget-object v1, v0, Lcom/shabakaty/downloader/lp2;->f:Lcom/shabakaty/downloader/np2;

    iget-object v1, v1, Lcom/shabakaty/downloader/np2;->a:Lcom/shabakaty/downloader/uq2$a;

    iget-wide v1, v1, Lcom/shabakaty/downloader/mp2;->d:J

    iput-wide v1, p0, Lcom/shabakaty/downloader/op2;->m:J

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/shabakaty/downloader/lp2;->h()V

    .line 6
    iget-object v0, v0, Lcom/shabakaty/downloader/lp2;->l:Lcom/shabakaty/downloader/lp2;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/shabakaty/downloader/op2;->h:Lcom/shabakaty/downloader/lp2;

    .line 8
    iput-object v0, p0, Lcom/shabakaty/downloader/op2;->j:Lcom/shabakaty/downloader/lp2;

    .line 9
    iput-object v0, p0, Lcom/shabakaty/downloader/op2;->i:Lcom/shabakaty/downloader/lp2;

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/shabakaty/downloader/op2;->k:I

    .line 11
    invoke-virtual {p0}, Lcom/shabakaty/downloader/op2;->l()V

    return-void
.end method

.method public final c(Lcom/shabakaty/downloader/nn4;Lcom/shabakaty/downloader/lp2;J)Lcom/shabakaty/downloader/np2;
    .locals 18

    move-object/from16 v9, p0

    move-object/from16 v8, p1

    move-object/from16 v10, p2

    .line 1
    iget-object v11, v10, Lcom/shabakaty/downloader/lp2;->f:Lcom/shabakaty/downloader/np2;

    .line 2
    iget-wide v0, v10, Lcom/shabakaty/downloader/lp2;->o:J

    .line 3
    iget-wide v2, v11, Lcom/shabakaty/downloader/np2;->e:J

    add-long/2addr v0, v2

    sub-long v6, v0, p3

    .line 4
    iget-boolean v0, v11, Lcom/shabakaty/downloader/np2;->g:Z

    const-wide/16 v14, 0x0

    const/4 v5, -0x1

    const/16 v16, 0x0

    if-eqz v0, :cond_4

    .line 5
    iget-object v0, v11, Lcom/shabakaty/downloader/np2;->a:Lcom/shabakaty/downloader/uq2$a;

    iget-object v0, v0, Lcom/shabakaty/downloader/mp2;->a:Ljava/lang/Object;

    invoke-virtual {v8, v0}, Lcom/shabakaty/downloader/nn4;->b(Ljava/lang/Object;)I

    move-result v1

    .line 6
    iget-object v2, v9, Lcom/shabakaty/downloader/op2;->a:Lcom/shabakaty/downloader/nn4$b;

    iget-object v3, v9, Lcom/shabakaty/downloader/op2;->b:Lcom/shabakaty/downloader/nn4$c;

    iget v4, v9, Lcom/shabakaty/downloader/op2;->f:I

    iget-boolean v0, v9, Lcom/shabakaty/downloader/op2;->g:Z

    move/from16 v17, v0

    move-object/from16 v0, p1

    const/4 v12, -0x1

    move/from16 v5, v17

    .line 7
    invoke-virtual/range {v0 .. v5}, Lcom/shabakaty/downloader/nn4;->d(ILcom/shabakaty/downloader/nn4$b;Lcom/shabakaty/downloader/nn4$c;IZ)I

    move-result v0

    if-ne v0, v12, :cond_0

    return-object v16

    .line 8
    :cond_0
    iget-object v1, v9, Lcom/shabakaty/downloader/op2;->a:Lcom/shabakaty/downloader/nn4$b;

    const/4 v2, 0x1

    .line 9
    invoke-virtual {v8, v0, v1, v2}, Lcom/shabakaty/downloader/nn4;->g(ILcom/shabakaty/downloader/nn4$b;Z)Lcom/shabakaty/downloader/nn4$b;

    move-result-object v1

    iget v3, v1, Lcom/shabakaty/downloader/nn4$b;->c:I

    .line 10
    iget-object v1, v9, Lcom/shabakaty/downloader/op2;->a:Lcom/shabakaty/downloader/nn4$b;

    iget-object v1, v1, Lcom/shabakaty/downloader/nn4$b;->b:Ljava/lang/Object;

    .line 11
    iget-object v2, v11, Lcom/shabakaty/downloader/np2;->a:Lcom/shabakaty/downloader/uq2$a;

    iget-wide v4, v2, Lcom/shabakaty/downloader/mp2;->d:J

    .line 12
    iget-object v2, v9, Lcom/shabakaty/downloader/op2;->b:Lcom/shabakaty/downloader/nn4$c;

    invoke-virtual {v8, v3, v2}, Lcom/shabakaty/downloader/nn4;->n(ILcom/shabakaty/downloader/nn4$c;)Lcom/shabakaty/downloader/nn4$c;

    move-result-object v2

    iget v2, v2, Lcom/shabakaty/downloader/nn4$c;->o:I

    if-ne v2, v0, :cond_3

    .line 13
    iget-object v1, v9, Lcom/shabakaty/downloader/op2;->b:Lcom/shabakaty/downloader/nn4$c;

    iget-object v2, v9, Lcom/shabakaty/downloader/op2;->a:Lcom/shabakaty/downloader/nn4$b;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 14
    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    move-object/from16 v0, p1

    .line 15
    invoke-virtual/range {v0 .. v7}, Lcom/shabakaty/downloader/nn4;->k(Lcom/shabakaty/downloader/nn4$c;Lcom/shabakaty/downloader/nn4$b;IJJ)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v16

    .line 16
    :cond_1
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 17
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 18
    iget-object v0, v10, Lcom/shabakaty/downloader/lp2;->l:Lcom/shabakaty/downloader/lp2;

    if-eqz v0, :cond_2

    .line 19
    iget-object v4, v0, Lcom/shabakaty/downloader/lp2;->b:Ljava/lang/Object;

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 20
    iget-object v0, v0, Lcom/shabakaty/downloader/lp2;->f:Lcom/shabakaty/downloader/np2;

    iget-object v0, v0, Lcom/shabakaty/downloader/np2;->a:Lcom/shabakaty/downloader/uq2$a;

    iget-wide v4, v0, Lcom/shabakaty/downloader/mp2;->d:J

    goto :goto_0

    .line 21
    :cond_2
    iget-wide v4, v9, Lcom/shabakaty/downloader/op2;->e:J

    const-wide/16 v6, 0x1

    add-long/2addr v6, v4

    iput-wide v6, v9, Lcom/shabakaty/downloader/op2;->e:J

    :goto_0
    move-wide v10, v2

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_1

    :cond_3
    move-wide v10, v14

    .line 22
    :goto_1
    iget-object v6, v9, Lcom/shabakaty/downloader/op2;->a:Lcom/shabakaty/downloader/nn4$b;

    move-object/from16 v0, p1

    move-wide v2, v10

    .line 23
    invoke-static/range {v0 .. v6}, Lcom/shabakaty/downloader/op2;->p(Lcom/shabakaty/downloader/nn4;Ljava/lang/Object;JJLcom/shabakaty/downloader/nn4$b;)Lcom/shabakaty/downloader/uq2$a;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v3, v14

    move-wide v5, v10

    .line 24
    invoke-virtual/range {v0 .. v6}, Lcom/shabakaty/downloader/op2;->d(Lcom/shabakaty/downloader/nn4;Lcom/shabakaty/downloader/uq2$a;JJ)Lcom/shabakaty/downloader/np2;

    move-result-object v0

    return-object v0

    :cond_4
    const/4 v12, -0x1

    .line 25
    iget-object v10, v11, Lcom/shabakaty/downloader/np2;->a:Lcom/shabakaty/downloader/uq2$a;

    .line 26
    iget-object v0, v10, Lcom/shabakaty/downloader/mp2;->a:Ljava/lang/Object;

    iget-object v1, v9, Lcom/shabakaty/downloader/op2;->a:Lcom/shabakaty/downloader/nn4$b;

    invoke-virtual {v8, v0, v1}, Lcom/shabakaty/downloader/nn4;->h(Ljava/lang/Object;Lcom/shabakaty/downloader/nn4$b;)Lcom/shabakaty/downloader/nn4$b;

    .line 27
    invoke-virtual {v10}, Lcom/shabakaty/downloader/mp2;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 28
    iget v3, v10, Lcom/shabakaty/downloader/mp2;->b:I

    .line 29
    iget-object v0, v9, Lcom/shabakaty/downloader/op2;->a:Lcom/shabakaty/downloader/nn4$b;

    .line 30
    iget-object v0, v0, Lcom/shabakaty/downloader/nn4$b;->g:Lcom/shabakaty/downloader/k4;

    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/k4;->a(I)Lcom/shabakaty/downloader/k4$a;

    move-result-object v0

    iget v0, v0, Lcom/shabakaty/downloader/k4$a;->b:I

    if-ne v0, v12, :cond_5

    return-object v16

    .line 31
    :cond_5
    iget-object v1, v9, Lcom/shabakaty/downloader/op2;->a:Lcom/shabakaty/downloader/nn4$b;

    iget v2, v10, Lcom/shabakaty/downloader/mp2;->c:I

    .line 32
    iget-object v1, v1, Lcom/shabakaty/downloader/nn4$b;->g:Lcom/shabakaty/downloader/k4;

    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/k4;->a(I)Lcom/shabakaty/downloader/k4$a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/k4$a;->a(I)I

    move-result v4

    if-ge v4, v0, :cond_6

    .line 33
    iget-object v2, v10, Lcom/shabakaty/downloader/mp2;->a:Ljava/lang/Object;

    iget-wide v5, v11, Lcom/shabakaty/downloader/np2;->c:J

    iget-wide v10, v10, Lcom/shabakaty/downloader/mp2;->d:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v7, v10

    invoke-virtual/range {v0 .. v8}, Lcom/shabakaty/downloader/op2;->e(Lcom/shabakaty/downloader/nn4;Ljava/lang/Object;IIJJ)Lcom/shabakaty/downloader/np2;

    move-result-object v0

    return-object v0

    .line 34
    :cond_6
    iget-wide v0, v11, Lcom/shabakaty/downloader/np2;->c:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_8

    .line 35
    iget-object v1, v9, Lcom/shabakaty/downloader/op2;->b:Lcom/shabakaty/downloader/nn4$c;

    iget-object v2, v9, Lcom/shabakaty/downloader/op2;->a:Lcom/shabakaty/downloader/nn4$b;

    iget v3, v2, Lcom/shabakaty/downloader/nn4$b;->c:I

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 36
    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    move-object/from16 v0, p1

    .line 37
    invoke-virtual/range {v0 .. v7}, Lcom/shabakaty/downloader/nn4;->k(Lcom/shabakaty/downloader/nn4$c;Lcom/shabakaty/downloader/nn4$b;IJJ)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_7

    return-object v16

    .line 38
    :cond_7
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 39
    :cond_8
    iget-object v2, v10, Lcom/shabakaty/downloader/mp2;->a:Ljava/lang/Object;

    iget v3, v10, Lcom/shabakaty/downloader/mp2;->b:I

    .line 40
    invoke-virtual {v9, v8, v2, v3}, Lcom/shabakaty/downloader/op2;->g(Lcom/shabakaty/downloader/nn4;Ljava/lang/Object;I)J

    move-result-wide v2

    .line 41
    iget-object v4, v10, Lcom/shabakaty/downloader/mp2;->a:Ljava/lang/Object;

    .line 42
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iget-wide v11, v11, Lcom/shabakaty/downloader/np2;->c:J

    iget-wide v13, v10, Lcom/shabakaty/downloader/mp2;->d:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v4

    move-wide v3, v5

    move-wide v5, v11

    move-wide v7, v13

    .line 43
    invoke-virtual/range {v0 .. v8}, Lcom/shabakaty/downloader/op2;->f(Lcom/shabakaty/downloader/nn4;Ljava/lang/Object;JJJ)Lcom/shabakaty/downloader/np2;

    move-result-object v0

    return-object v0

    .line 44
    :cond_9
    iget-object v0, v9, Lcom/shabakaty/downloader/op2;->a:Lcom/shabakaty/downloader/nn4$b;

    iget v1, v10, Lcom/shabakaty/downloader/mp2;->e:I

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/nn4$b;->d(I)I

    move-result v4

    .line 45
    iget-object v0, v9, Lcom/shabakaty/downloader/op2;->a:Lcom/shabakaty/downloader/nn4$b;

    iget v1, v10, Lcom/shabakaty/downloader/mp2;->e:I

    .line 46
    iget-object v0, v0, Lcom/shabakaty/downloader/nn4$b;->g:Lcom/shabakaty/downloader/k4;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/k4;->a(I)Lcom/shabakaty/downloader/k4$a;

    move-result-object v0

    iget v0, v0, Lcom/shabakaty/downloader/k4$a;->b:I

    if-ne v4, v0, :cond_a

    .line 47
    iget-object v0, v10, Lcom/shabakaty/downloader/mp2;->a:Ljava/lang/Object;

    iget v1, v10, Lcom/shabakaty/downloader/mp2;->e:I

    .line 48
    invoke-virtual {v9, v8, v0, v1}, Lcom/shabakaty/downloader/op2;->g(Lcom/shabakaty/downloader/nn4;Ljava/lang/Object;I)J

    move-result-wide v3

    .line 49
    iget-object v2, v10, Lcom/shabakaty/downloader/mp2;->a:Ljava/lang/Object;

    iget-wide v5, v11, Lcom/shabakaty/downloader/np2;->e:J

    iget-wide v10, v10, Lcom/shabakaty/downloader/mp2;->d:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v7, v10

    invoke-virtual/range {v0 .. v8}, Lcom/shabakaty/downloader/op2;->f(Lcom/shabakaty/downloader/nn4;Ljava/lang/Object;JJJ)Lcom/shabakaty/downloader/np2;

    move-result-object v0

    return-object v0

    .line 50
    :cond_a
    iget-object v2, v10, Lcom/shabakaty/downloader/mp2;->a:Ljava/lang/Object;

    iget v3, v10, Lcom/shabakaty/downloader/mp2;->e:I

    iget-wide v5, v11, Lcom/shabakaty/downloader/np2;->e:J

    iget-wide v10, v10, Lcom/shabakaty/downloader/mp2;->d:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v7, v10

    invoke-virtual/range {v0 .. v8}, Lcom/shabakaty/downloader/op2;->e(Lcom/shabakaty/downloader/nn4;Ljava/lang/Object;IIJJ)Lcom/shabakaty/downloader/np2;

    move-result-object v0

    return-object v0
.end method

.method public final d(Lcom/shabakaty/downloader/nn4;Lcom/shabakaty/downloader/uq2$a;JJ)Lcom/shabakaty/downloader/np2;
    .locals 12

    move-object v0, p2

    .line 1
    iget-object v1, v0, Lcom/shabakaty/downloader/mp2;->a:Ljava/lang/Object;

    move-object v11, p0

    iget-object v2, v11, Lcom/shabakaty/downloader/op2;->a:Lcom/shabakaty/downloader/nn4$b;

    move-object v3, p1

    invoke-virtual {p1, v1, v2}, Lcom/shabakaty/downloader/nn4;->h(Ljava/lang/Object;Lcom/shabakaty/downloader/nn4$b;)Lcom/shabakaty/downloader/nn4$b;

    .line 2
    invoke-virtual {p2}, Lcom/shabakaty/downloader/mp2;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v4, v0, Lcom/shabakaty/downloader/mp2;->a:Ljava/lang/Object;

    iget v5, v0, Lcom/shabakaty/downloader/mp2;->b:I

    iget v6, v0, Lcom/shabakaty/downloader/mp2;->c:I

    iget-wide v9, v0, Lcom/shabakaty/downloader/mp2;->d:J

    move-object v2, p0

    move-object v3, p1

    move-wide v7, p3

    invoke-virtual/range {v2 .. v10}, Lcom/shabakaty/downloader/op2;->e(Lcom/shabakaty/downloader/nn4;Ljava/lang/Object;IIJJ)Lcom/shabakaty/downloader/np2;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    iget-object v4, v0, Lcom/shabakaty/downloader/mp2;->a:Ljava/lang/Object;

    iget-wide v9, v0, Lcom/shabakaty/downloader/mp2;->d:J

    move-object v2, p0

    move-object v3, p1

    move-wide/from16 v5, p5

    move-wide v7, p3

    invoke-virtual/range {v2 .. v10}, Lcom/shabakaty/downloader/op2;->f(Lcom/shabakaty/downloader/nn4;Ljava/lang/Object;JJJ)Lcom/shabakaty/downloader/np2;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/shabakaty/downloader/nn4;Ljava/lang/Object;IIJJ)Lcom/shabakaty/downloader/np2;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v7, p3

    move/from16 v8, p4

    .line 1
    new-instance v9, Lcom/shabakaty/downloader/uq2$a;

    move-object v1, v9

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p7

    invoke-direct/range {v1 .. v6}, Lcom/shabakaty/downloader/uq2$a;-><init>(Ljava/lang/Object;IIJ)V

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/op2;->a:Lcom/shabakaty/downloader/nn4$b;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 3
    invoke-virtual {v2, v3, v1}, Lcom/shabakaty/downloader/nn4;->h(Ljava/lang/Object;Lcom/shabakaty/downloader/nn4$b;)Lcom/shabakaty/downloader/nn4$b;

    move-result-object v1

    .line 4
    invoke-virtual {v1, v7, v8}, Lcom/shabakaty/downloader/nn4$b;->a(II)J

    move-result-wide v10

    .line 5
    iget-object v1, v0, Lcom/shabakaty/downloader/op2;->a:Lcom/shabakaty/downloader/nn4$b;

    .line 6
    iget-object v1, v1, Lcom/shabakaty/downloader/nn4$b;->g:Lcom/shabakaty/downloader/k4;

    invoke-virtual {v1, v7}, Lcom/shabakaty/downloader/k4;->a(I)Lcom/shabakaty/downloader/k4$a;

    move-result-object v1

    const/4 v2, -0x1

    .line 7
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/k4$a;->a(I)I

    move-result v1

    const-wide/16 v2, 0x0

    if-ne v8, v1, :cond_0

    .line 8
    iget-object v1, v0, Lcom/shabakaty/downloader/op2;->a:Lcom/shabakaty/downloader/nn4$b;

    .line 9
    iget-object v1, v1, Lcom/shabakaty/downloader/nn4$b;->g:Lcom/shabakaty/downloader/k4;

    iget-wide v4, v1, Lcom/shabakaty/downloader/k4;->c:J

    goto :goto_0

    :cond_0
    move-wide v4, v2

    .line 10
    :goto_0
    iget-object v1, v0, Lcom/shabakaty/downloader/op2;->a:Lcom/shabakaty/downloader/nn4$b;

    .line 11
    iget-object v1, v1, Lcom/shabakaty/downloader/nn4$b;->g:Lcom/shabakaty/downloader/k4;

    invoke-virtual {v1, v7}, Lcom/shabakaty/downloader/k4;->a(I)Lcom/shabakaty/downloader/k4$a;

    move-result-object v1

    iget-boolean v12, v1, Lcom/shabakaty/downloader/k4$a;->g:Z

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v10, v6

    if-eqz v1, :cond_1

    cmp-long v1, v4, v10

    if-ltz v1, :cond_1

    const-wide/16 v4, 0x1

    sub-long v4, v10, v4

    .line 12
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    move-wide v3, v1

    goto :goto_1

    :cond_1
    move-wide v3, v4

    .line 13
    :goto_1
    new-instance v15, Lcom/shabakaty/downloader/np2;

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object v1, v15

    move-object v2, v9

    move-wide/from16 v5, p5

    move-wide v9, v10

    move v11, v12

    move v12, v13

    move v13, v14

    move/from16 v14, v16

    invoke-direct/range {v1 .. v14}, Lcom/shabakaty/downloader/np2;-><init>(Lcom/shabakaty/downloader/uq2$a;JJJJZZZZ)V

    return-object v15
.end method

.method public final f(Lcom/shabakaty/downloader/nn4;Ljava/lang/Object;JJJ)Lcom/shabakaty/downloader/np2;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    .line 1
    iget-object v5, v0, Lcom/shabakaty/downloader/op2;->a:Lcom/shabakaty/downloader/nn4$b;

    invoke-virtual {v1, v2, v5}, Lcom/shabakaty/downloader/nn4;->h(Ljava/lang/Object;Lcom/shabakaty/downloader/nn4$b;)Lcom/shabakaty/downloader/nn4$b;

    .line 2
    iget-object v5, v0, Lcom/shabakaty/downloader/op2;->a:Lcom/shabakaty/downloader/nn4$b;

    invoke-virtual {v5, v3, v4}, Lcom/shabakaty/downloader/nn4$b;->b(J)I

    move-result v5

    .line 3
    new-instance v7, Lcom/shabakaty/downloader/uq2$a;

    move-wide/from16 v8, p7

    invoke-direct {v7, v2, v8, v9, v5}, Lcom/shabakaty/downloader/uq2$a;-><init>(Ljava/lang/Object;JI)V

    .line 4
    invoke-virtual {v0, v7}, Lcom/shabakaty/downloader/op2;->i(Lcom/shabakaty/downloader/uq2$a;)Z

    move-result v2

    .line 5
    invoke-virtual {v0, v1, v7}, Lcom/shabakaty/downloader/op2;->k(Lcom/shabakaty/downloader/nn4;Lcom/shabakaty/downloader/uq2$a;)Z

    move-result v18

    .line 6
    invoke-virtual {v0, v1, v7, v2}, Lcom/shabakaty/downloader/op2;->j(Lcom/shabakaty/downloader/nn4;Lcom/shabakaty/downloader/uq2$a;Z)Z

    move-result v19

    const/4 v1, -0x1

    if-eq v5, v1, :cond_0

    .line 7
    iget-object v6, v0, Lcom/shabakaty/downloader/op2;->a:Lcom/shabakaty/downloader/nn4$b;

    .line 8
    invoke-virtual {v6, v5}, Lcom/shabakaty/downloader/nn4$b;->e(I)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    const/16 v16, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    const/16 v16, 0x0

    :goto_0
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v5, v1, :cond_1

    .line 9
    iget-object v1, v0, Lcom/shabakaty/downloader/op2;->a:Lcom/shabakaty/downloader/nn4$b;

    invoke-virtual {v1, v5}, Lcom/shabakaty/downloader/nn4$b;->c(I)J

    move-result-wide v5

    move-wide v12, v5

    goto :goto_1

    :cond_1
    move-wide v12, v8

    :goto_1
    cmp-long v1, v12, v8

    if-eqz v1, :cond_3

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v1, v12, v5

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    move-wide v14, v12

    goto :goto_3

    .line 10
    :cond_3
    :goto_2
    iget-object v1, v0, Lcom/shabakaty/downloader/op2;->a:Lcom/shabakaty/downloader/nn4$b;

    iget-wide v5, v1, Lcom/shabakaty/downloader/nn4$b;->d:J

    move-wide v14, v5

    :goto_3
    cmp-long v1, v14, v8

    if-eqz v1, :cond_4

    cmp-long v1, v3, v14

    if-ltz v1, :cond_4

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x1

    sub-long v5, v14, v5

    .line 11
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    :cond_4
    move-wide v8, v3

    .line 12
    new-instance v1, Lcom/shabakaty/downloader/np2;

    move-object v6, v1

    move-wide/from16 v10, p5

    move/from16 v17, v2

    invoke-direct/range {v6 .. v19}, Lcom/shabakaty/downloader/np2;-><init>(Lcom/shabakaty/downloader/uq2$a;JJJJZZZZ)V

    return-object v1
.end method

.method public final g(Lcom/shabakaty/downloader/nn4;Ljava/lang/Object;I)J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/op2;->a:Lcom/shabakaty/downloader/nn4$b;

    invoke-virtual {p1, p2, v0}, Lcom/shabakaty/downloader/nn4;->h(Ljava/lang/Object;Lcom/shabakaty/downloader/nn4$b;)Lcom/shabakaty/downloader/nn4$b;

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/op2;->a:Lcom/shabakaty/downloader/nn4$b;

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/nn4$b;->g:Lcom/shabakaty/downloader/k4;

    invoke-virtual {p1, p3}, Lcom/shabakaty/downloader/k4;->a(I)Lcom/shabakaty/downloader/k4$a;

    move-result-object p1

    iget-wide p1, p1, Lcom/shabakaty/downloader/k4$a;->a:J

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/op2;->a:Lcom/shabakaty/downloader/nn4$b;

    iget-wide p1, p1, Lcom/shabakaty/downloader/nn4$b;->d:J

    return-wide p1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/op2;->a:Lcom/shabakaty/downloader/nn4$b;

    .line 6
    iget-object v0, v0, Lcom/shabakaty/downloader/nn4$b;->g:Lcom/shabakaty/downloader/k4;

    invoke-virtual {v0, p3}, Lcom/shabakaty/downloader/k4;->a(I)Lcom/shabakaty/downloader/k4$a;

    move-result-object p3

    iget-wide v0, p3, Lcom/shabakaty/downloader/k4$a;->f:J

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public h(Lcom/shabakaty/downloader/nn4;Lcom/shabakaty/downloader/np2;)Lcom/shabakaty/downloader/np2;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget-object v3, v2, Lcom/shabakaty/downloader/np2;->a:Lcom/shabakaty/downloader/uq2$a;

    .line 2
    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/op2;->i(Lcom/shabakaty/downloader/uq2$a;)Z

    move-result v12

    .line 3
    invoke-virtual {v0, v1, v3}, Lcom/shabakaty/downloader/op2;->k(Lcom/shabakaty/downloader/nn4;Lcom/shabakaty/downloader/uq2$a;)Z

    move-result v13

    .line 4
    invoke-virtual {v0, v1, v3, v12}, Lcom/shabakaty/downloader/op2;->j(Lcom/shabakaty/downloader/nn4;Lcom/shabakaty/downloader/uq2$a;Z)Z

    move-result v14

    .line 5
    iget-object v4, v2, Lcom/shabakaty/downloader/np2;->a:Lcom/shabakaty/downloader/uq2$a;

    iget-object v4, v4, Lcom/shabakaty/downloader/mp2;->a:Ljava/lang/Object;

    iget-object v5, v0, Lcom/shabakaty/downloader/op2;->a:Lcom/shabakaty/downloader/nn4$b;

    invoke-virtual {v1, v4, v5}, Lcom/shabakaty/downloader/nn4;->h(Ljava/lang/Object;Lcom/shabakaty/downloader/nn4$b;)Lcom/shabakaty/downloader/nn4$b;

    .line 6
    invoke-virtual {v3}, Lcom/shabakaty/downloader/mp2;->a()Z

    move-result v1

    const/4 v4, -0x1

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v1, :cond_1

    iget v1, v3, Lcom/shabakaty/downloader/mp2;->e:I

    if-ne v1, v4, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v7, v0, Lcom/shabakaty/downloader/op2;->a:Lcom/shabakaty/downloader/nn4$b;

    invoke-virtual {v7, v1}, Lcom/shabakaty/downloader/nn4$b;->c(I)J

    move-result-wide v7

    goto :goto_1

    :cond_1
    :goto_0
    move-wide v7, v5

    .line 8
    :goto_1
    invoke-virtual {v3}, Lcom/shabakaty/downloader/mp2;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    iget-object v1, v0, Lcom/shabakaty/downloader/op2;->a:Lcom/shabakaty/downloader/nn4$b;

    iget v5, v3, Lcom/shabakaty/downloader/mp2;->b:I

    iget v6, v3, Lcom/shabakaty/downloader/mp2;->c:I

    invoke-virtual {v1, v5, v6}, Lcom/shabakaty/downloader/nn4$b;->a(II)J

    move-result-wide v5

    :goto_2
    move-wide v9, v5

    goto :goto_4

    :cond_2
    cmp-long v1, v7, v5

    if-eqz v1, :cond_4

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v1, v7, v5

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    move-wide v9, v7

    goto :goto_4

    .line 10
    :cond_4
    :goto_3
    iget-object v1, v0, Lcom/shabakaty/downloader/op2;->a:Lcom/shabakaty/downloader/nn4$b;

    .line 11
    iget-wide v5, v1, Lcom/shabakaty/downloader/nn4$b;->d:J

    goto :goto_2

    .line 12
    :goto_4
    invoke-virtual {v3}, Lcom/shabakaty/downloader/mp2;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 13
    iget-object v1, v0, Lcom/shabakaty/downloader/op2;->a:Lcom/shabakaty/downloader/nn4$b;

    iget v4, v3, Lcom/shabakaty/downloader/mp2;->b:I

    invoke-virtual {v1, v4}, Lcom/shabakaty/downloader/nn4$b;->e(I)Z

    move-result v1

    move v11, v1

    goto :goto_5

    .line 14
    :cond_5
    iget v1, v3, Lcom/shabakaty/downloader/mp2;->e:I

    if-eq v1, v4, :cond_6

    iget-object v4, v0, Lcom/shabakaty/downloader/op2;->a:Lcom/shabakaty/downloader/nn4$b;

    .line 15
    invoke-virtual {v4, v1}, Lcom/shabakaty/downloader/nn4$b;->e(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    const/4 v11, 0x1

    goto :goto_5

    :cond_6
    const/4 v1, 0x0

    const/4 v11, 0x0

    .line 16
    :goto_5
    new-instance v15, Lcom/shabakaty/downloader/np2;

    iget-wide v4, v2, Lcom/shabakaty/downloader/np2;->b:J

    iget-wide v1, v2, Lcom/shabakaty/downloader/np2;->c:J

    move-wide/from16 v16, v1

    move-object v1, v15

    move-object v2, v3

    move-wide v3, v4

    move-wide/from16 v5, v16

    invoke-direct/range {v1 .. v14}, Lcom/shabakaty/downloader/np2;-><init>(Lcom/shabakaty/downloader/uq2$a;JJJJZZZZ)V

    return-object v15
.end method

.method public final i(Lcom/shabakaty/downloader/uq2$a;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/mp2;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget p1, p1, Lcom/shabakaty/downloader/mp2;->e:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final j(Lcom/shabakaty/downloader/nn4;Lcom/shabakaty/downloader/uq2$a;Z)Z
    .locals 8

    .line 1
    iget-object p2, p2, Lcom/shabakaty/downloader/mp2;->a:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/nn4;->b(Ljava/lang/Object;)I

    move-result v1

    .line 2
    iget-object p2, p0, Lcom/shabakaty/downloader/op2;->a:Lcom/shabakaty/downloader/nn4$b;

    invoke-virtual {p1, v1, p2}, Lcom/shabakaty/downloader/nn4;->f(ILcom/shabakaty/downloader/nn4$b;)Lcom/shabakaty/downloader/nn4$b;

    move-result-object p2

    iget p2, p2, Lcom/shabakaty/downloader/nn4$b;->c:I

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/op2;->b:Lcom/shabakaty/downloader/nn4$c;

    invoke-virtual {p1, p2, v0}, Lcom/shabakaty/downloader/nn4;->n(ILcom/shabakaty/downloader/nn4$c;)Lcom/shabakaty/downloader/nn4$c;

    move-result-object p2

    iget-boolean p2, p2, Lcom/shabakaty/downloader/nn4$c;->i:Z

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez p2, :cond_1

    iget-object v2, p0, Lcom/shabakaty/downloader/op2;->a:Lcom/shabakaty/downloader/nn4$b;

    iget-object v3, p0, Lcom/shabakaty/downloader/op2;->b:Lcom/shabakaty/downloader/nn4$c;

    iget v4, p0, Lcom/shabakaty/downloader/op2;->f:I

    iget-boolean v5, p0, Lcom/shabakaty/downloader/op2;->g:Z

    move-object v0, p1

    .line 4
    invoke-virtual/range {v0 .. v5}, Lcom/shabakaty/downloader/nn4;->d(ILcom/shabakaty/downloader/nn4$b;Lcom/shabakaty/downloader/nn4$c;IZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    const/4 v6, 0x1

    :cond_1
    return v6
.end method

.method public final k(Lcom/shabakaty/downloader/nn4;Lcom/shabakaty/downloader/uq2$a;)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/op2;->i(Lcom/shabakaty/downloader/uq2$a;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p2, Lcom/shabakaty/downloader/mp2;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/shabakaty/downloader/op2;->a:Lcom/shabakaty/downloader/nn4$b;

    invoke-virtual {p1, v0, v2}, Lcom/shabakaty/downloader/nn4;->h(Ljava/lang/Object;Lcom/shabakaty/downloader/nn4$b;)Lcom/shabakaty/downloader/nn4$b;

    move-result-object v0

    iget v0, v0, Lcom/shabakaty/downloader/nn4$b;->c:I

    .line 3
    iget-object p2, p2, Lcom/shabakaty/downloader/mp2;->a:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/nn4;->b(Ljava/lang/Object;)I

    move-result p2

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/op2;->b:Lcom/shabakaty/downloader/nn4$c;

    invoke-virtual {p1, v0, v2}, Lcom/shabakaty/downloader/nn4;->n(ILcom/shabakaty/downloader/nn4$c;)Lcom/shabakaty/downloader/nn4$c;

    move-result-object p1

    iget p1, p1, Lcom/shabakaty/downloader/nn4$c;->p:I

    if-ne p1, p2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final l()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/op2;->c:Lcom/shabakaty/downloader/k6;

    if-eqz v0, :cond_2

    .line 2
    sget-object v0, Lcom/google/common/collect/p;->s:Lcom/shabakaty/downloader/c0;

    .line 3
    new-instance v0, Lcom/google/common/collect/p$a;

    invoke-direct {v0}, Lcom/google/common/collect/p$a;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/op2;->h:Lcom/shabakaty/downloader/lp2;

    :goto_0
    if-eqz v1, :cond_0

    .line 5
    iget-object v2, v1, Lcom/shabakaty/downloader/lp2;->f:Lcom/shabakaty/downloader/np2;

    iget-object v2, v2, Lcom/shabakaty/downloader/np2;->a:Lcom/shabakaty/downloader/uq2$a;

    invoke-virtual {v0, v2}, Lcom/google/common/collect/p$a;->b(Ljava/lang/Object;)Lcom/google/common/collect/p$a;

    .line 6
    iget-object v1, v1, Lcom/shabakaty/downloader/lp2;->l:Lcom/shabakaty/downloader/lp2;

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/op2;->i:Lcom/shabakaty/downloader/lp2;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, v1, Lcom/shabakaty/downloader/lp2;->f:Lcom/shabakaty/downloader/np2;

    iget-object v1, v1, Lcom/shabakaty/downloader/np2;->a:Lcom/shabakaty/downloader/uq2$a;

    .line 8
    :goto_1
    iget-object v2, p0, Lcom/shabakaty/downloader/op2;->d:Landroid/os/Handler;

    new-instance v3, Lcom/shabakaty/downloader/pr;

    invoke-direct {v3, p0, v0, v1}, Lcom/shabakaty/downloader/pr;-><init>(Lcom/shabakaty/downloader/op2;Lcom/google/common/collect/p$a;Lcom/shabakaty/downloader/uq2$a;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public m(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/op2;->j:Lcom/shabakaty/downloader/lp2;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/lp2;->g()Z

    move-result v1

    invoke-static {v1}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 3
    iget-boolean v1, v0, Lcom/shabakaty/downloader/lp2;->d:Z

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, v0, Lcom/shabakaty/downloader/lp2;->a:Lcom/shabakaty/downloader/kp2;

    .line 5
    iget-wide v2, v0, Lcom/shabakaty/downloader/lp2;->o:J

    sub-long/2addr p1, v2

    .line 6
    invoke-interface {v1, p1, p2}, Lcom/shabakaty/downloader/kp2;->t(J)V

    :cond_0
    return-void
.end method

.method public n(Lcom/shabakaty/downloader/lp2;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1
    :goto_0
    invoke-static {v2}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 2
    iget-object v2, p0, Lcom/shabakaty/downloader/op2;->j:Lcom/shabakaty/downloader/lp2;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    .line 3
    :cond_1
    iput-object p1, p0, Lcom/shabakaty/downloader/op2;->j:Lcom/shabakaty/downloader/lp2;

    .line 4
    :goto_1
    iget-object p1, p1, Lcom/shabakaty/downloader/lp2;->l:Lcom/shabakaty/downloader/lp2;

    if-eqz p1, :cond_3

    .line 5
    iget-object v2, p0, Lcom/shabakaty/downloader/op2;->i:Lcom/shabakaty/downloader/lp2;

    if-ne p1, v2, :cond_2

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/op2;->h:Lcom/shabakaty/downloader/lp2;

    iput-object v0, p0, Lcom/shabakaty/downloader/op2;->i:Lcom/shabakaty/downloader/lp2;

    const/4 v0, 0x1

    .line 7
    :cond_2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/lp2;->h()V

    .line 8
    iget v2, p0, Lcom/shabakaty/downloader/op2;->k:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/shabakaty/downloader/op2;->k:I

    goto :goto_1

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/shabakaty/downloader/op2;->j:Lcom/shabakaty/downloader/lp2;

    const/4 v1, 0x0

    .line 10
    iget-object v2, p1, Lcom/shabakaty/downloader/lp2;->l:Lcom/shabakaty/downloader/lp2;

    if-nez v2, :cond_4

    goto :goto_2

    .line 11
    :cond_4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/lp2;->b()V

    .line 12
    iput-object v1, p1, Lcom/shabakaty/downloader/lp2;->l:Lcom/shabakaty/downloader/lp2;

    .line 13
    invoke-virtual {p1}, Lcom/shabakaty/downloader/lp2;->c()V

    .line 14
    :goto_2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/op2;->l()V

    return v0
.end method

.method public o(Lcom/shabakaty/downloader/nn4;Ljava/lang/Object;J)Lcom/shabakaty/downloader/uq2$a;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/op2;->a:Lcom/shabakaty/downloader/nn4$b;

    invoke-virtual {p1, p2, v0}, Lcom/shabakaty/downloader/nn4;->h(Ljava/lang/Object;Lcom/shabakaty/downloader/nn4$b;)Lcom/shabakaty/downloader/nn4$b;

    move-result-object v0

    iget v0, v0, Lcom/shabakaty/downloader/nn4$b;->c:I

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/op2;->l:Ljava/lang/Object;

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/nn4;->b(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 4
    iget-object v3, p0, Lcom/shabakaty/downloader/op2;->a:Lcom/shabakaty/downloader/nn4$b;

    invoke-virtual {p1, v1, v3}, Lcom/shabakaty/downloader/nn4;->f(ILcom/shabakaty/downloader/nn4$b;)Lcom/shabakaty/downloader/nn4$b;

    move-result-object v1

    iget v1, v1, Lcom/shabakaty/downloader/nn4$b;->c:I

    if-ne v1, v0, :cond_1

    .line 5
    iget-wide v0, p0, Lcom/shabakaty/downloader/op2;->m:J

    :cond_0
    :goto_0
    move-wide v7, v0

    goto :goto_3

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/op2;->h:Lcom/shabakaty/downloader/lp2;

    :goto_1
    if-eqz v1, :cond_3

    .line 7
    iget-object v3, v1, Lcom/shabakaty/downloader/lp2;->b:Ljava/lang/Object;

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 8
    iget-object v0, v1, Lcom/shabakaty/downloader/lp2;->f:Lcom/shabakaty/downloader/np2;

    iget-object v0, v0, Lcom/shabakaty/downloader/np2;->a:Lcom/shabakaty/downloader/uq2$a;

    iget-wide v0, v0, Lcom/shabakaty/downloader/mp2;->d:J

    goto :goto_0

    .line 9
    :cond_2
    iget-object v1, v1, Lcom/shabakaty/downloader/lp2;->l:Lcom/shabakaty/downloader/lp2;

    goto :goto_1

    .line 10
    :cond_3
    iget-object v1, p0, Lcom/shabakaty/downloader/op2;->h:Lcom/shabakaty/downloader/lp2;

    :goto_2
    if-eqz v1, :cond_5

    .line 11
    iget-object v3, v1, Lcom/shabakaty/downloader/lp2;->b:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Lcom/shabakaty/downloader/nn4;->b(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v2, :cond_4

    .line 12
    iget-object v4, p0, Lcom/shabakaty/downloader/op2;->a:Lcom/shabakaty/downloader/nn4$b;

    invoke-virtual {p1, v3, v4}, Lcom/shabakaty/downloader/nn4;->f(ILcom/shabakaty/downloader/nn4$b;)Lcom/shabakaty/downloader/nn4$b;

    move-result-object v3

    iget v3, v3, Lcom/shabakaty/downloader/nn4$b;->c:I

    if-ne v3, v0, :cond_4

    .line 13
    iget-object v0, v1, Lcom/shabakaty/downloader/lp2;->f:Lcom/shabakaty/downloader/np2;

    iget-object v0, v0, Lcom/shabakaty/downloader/np2;->a:Lcom/shabakaty/downloader/uq2$a;

    iget-wide v0, v0, Lcom/shabakaty/downloader/mp2;->d:J

    goto :goto_0

    .line 14
    :cond_4
    iget-object v1, v1, Lcom/shabakaty/downloader/lp2;->l:Lcom/shabakaty/downloader/lp2;

    goto :goto_2

    .line 15
    :cond_5
    iget-wide v0, p0, Lcom/shabakaty/downloader/op2;->e:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/shabakaty/downloader/op2;->e:J

    .line 16
    iget-object v2, p0, Lcom/shabakaty/downloader/op2;->h:Lcom/shabakaty/downloader/lp2;

    if-nez v2, :cond_0

    .line 17
    iput-object p2, p0, Lcom/shabakaty/downloader/op2;->l:Ljava/lang/Object;

    .line 18
    iput-wide v0, p0, Lcom/shabakaty/downloader/op2;->m:J

    goto :goto_0

    .line 19
    :goto_3
    iget-object v9, p0, Lcom/shabakaty/downloader/op2;->a:Lcom/shabakaty/downloader/nn4$b;

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-static/range {v3 .. v9}, Lcom/shabakaty/downloader/op2;->p(Lcom/shabakaty/downloader/nn4;Ljava/lang/Object;JJLcom/shabakaty/downloader/nn4$b;)Lcom/shabakaty/downloader/uq2$a;

    move-result-object p1

    return-object p1
.end method

.method public final q(Lcom/shabakaty/downloader/nn4;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/op2;->h:Lcom/shabakaty/downloader/lp2;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v2, v0, Lcom/shabakaty/downloader/lp2;->b:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/nn4;->b(Ljava/lang/Object;)I

    move-result v2

    move v3, v2

    .line 3
    :goto_0
    iget-object v4, p0, Lcom/shabakaty/downloader/op2;->a:Lcom/shabakaty/downloader/nn4$b;

    iget-object v5, p0, Lcom/shabakaty/downloader/op2;->b:Lcom/shabakaty/downloader/nn4$c;

    iget v6, p0, Lcom/shabakaty/downloader/op2;->f:I

    iget-boolean v7, p0, Lcom/shabakaty/downloader/op2;->g:Z

    move-object v2, p1

    .line 4
    invoke-virtual/range {v2 .. v7}, Lcom/shabakaty/downloader/nn4;->d(ILcom/shabakaty/downloader/nn4$b;Lcom/shabakaty/downloader/nn4$c;IZ)I

    move-result v3

    .line 5
    :goto_1
    iget-object v2, v0, Lcom/shabakaty/downloader/lp2;->l:Lcom/shabakaty/downloader/lp2;

    if-eqz v2, :cond_1

    .line 6
    iget-object v4, v0, Lcom/shabakaty/downloader/lp2;->f:Lcom/shabakaty/downloader/np2;

    iget-boolean v4, v4, Lcom/shabakaty/downloader/np2;->g:Z

    if-nez v4, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    if-nez v2, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    iget-object v4, v2, Lcom/shabakaty/downloader/lp2;->b:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Lcom/shabakaty/downloader/nn4;->b(Ljava/lang/Object;)I

    move-result v4

    if-eq v4, v3, :cond_3

    goto :goto_2

    :cond_3
    move-object v0, v2

    goto :goto_0

    .line 8
    :cond_4
    :goto_2
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/op2;->n(Lcom/shabakaty/downloader/lp2;)Z

    move-result v2

    .line 9
    iget-object v3, v0, Lcom/shabakaty/downloader/lp2;->f:Lcom/shabakaty/downloader/np2;

    invoke-virtual {p0, p1, v3}, Lcom/shabakaty/downloader/op2;->h(Lcom/shabakaty/downloader/nn4;Lcom/shabakaty/downloader/np2;)Lcom/shabakaty/downloader/np2;

    move-result-object p1

    iput-object p1, v0, Lcom/shabakaty/downloader/lp2;->f:Lcom/shabakaty/downloader/np2;

    xor-int/lit8 p1, v2, 0x1

    return p1
.end method

.method public r(Lcom/shabakaty/downloader/nn4;JJ)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/shabakaty/downloader/op2;->h:Lcom/shabakaty/downloader/lp2;

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-eqz v2, :cond_b

    .line 2
    iget-object v5, v2, Lcom/shabakaty/downloader/lp2;->f:Lcom/shabakaty/downloader/np2;

    const/4 v6, 0x0

    if-nez v3, :cond_0

    .line 3
    invoke-virtual {v0, v1, v5}, Lcom/shabakaty/downloader/op2;->h(Lcom/shabakaty/downloader/nn4;Lcom/shabakaty/downloader/np2;)Lcom/shabakaty/downloader/np2;

    move-result-object v3

    move-wide/from16 v7, p2

    goto :goto_3

    :cond_0
    move-wide/from16 v7, p2

    .line 4
    invoke-virtual {v0, v1, v3, v7, v8}, Lcom/shabakaty/downloader/op2;->c(Lcom/shabakaty/downloader/nn4;Lcom/shabakaty/downloader/lp2;J)Lcom/shabakaty/downloader/np2;

    move-result-object v9

    if-nez v9, :cond_1

    .line 5
    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/op2;->n(Lcom/shabakaty/downloader/lp2;)Z

    move-result v1

    :goto_1
    xor-int/2addr v1, v4

    return v1

    .line 6
    :cond_1
    iget-wide v10, v5, Lcom/shabakaty/downloader/np2;->b:J

    iget-wide v12, v9, Lcom/shabakaty/downloader/np2;->b:J

    cmp-long v14, v10, v12

    if-nez v14, :cond_2

    iget-object v10, v5, Lcom/shabakaty/downloader/np2;->a:Lcom/shabakaty/downloader/uq2$a;

    iget-object v11, v9, Lcom/shabakaty/downloader/np2;->a:Lcom/shabakaty/downloader/uq2$a;

    invoke-virtual {v10, v11}, Lcom/shabakaty/downloader/mp2;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v10, 0x1

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    :goto_2
    if-nez v10, :cond_3

    .line 7
    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/op2;->n(Lcom/shabakaty/downloader/lp2;)Z

    move-result v1

    goto :goto_1

    :cond_3
    move-object v3, v9

    .line 8
    :goto_3
    iget-wide v9, v5, Lcom/shabakaty/downloader/np2;->c:J

    .line 9
    invoke-virtual {v3, v9, v10}, Lcom/shabakaty/downloader/np2;->a(J)Lcom/shabakaty/downloader/np2;

    move-result-object v9

    iput-object v9, v2, Lcom/shabakaty/downloader/lp2;->f:Lcom/shabakaty/downloader/np2;

    .line 10
    iget-wide v9, v5, Lcom/shabakaty/downloader/np2;->e:J

    iget-wide v11, v3, Lcom/shabakaty/downloader/np2;->e:J

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v9, v13

    if-eqz v5, :cond_5

    cmp-long v5, v9, v11

    if-nez v5, :cond_4

    goto :goto_4

    :cond_4
    const/4 v5, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v5, 0x1

    :goto_5
    if-nez v5, :cond_a

    .line 11
    invoke-virtual {v2}, Lcom/shabakaty/downloader/lp2;->j()V

    .line 12
    iget-wide v7, v3, Lcom/shabakaty/downloader/np2;->e:J

    cmp-long v1, v7, v13

    if-nez v1, :cond_6

    const-wide v7, 0x7fffffffffffffffL

    goto :goto_6

    .line 13
    :cond_6
    iget-wide v9, v2, Lcom/shabakaty/downloader/lp2;->o:J

    add-long/2addr v7, v9

    .line 14
    :goto_6
    iget-object v1, v0, Lcom/shabakaty/downloader/op2;->i:Lcom/shabakaty/downloader/lp2;

    if-ne v2, v1, :cond_8

    iget-object v1, v2, Lcom/shabakaty/downloader/lp2;->f:Lcom/shabakaty/downloader/np2;

    iget-boolean v1, v1, Lcom/shabakaty/downloader/np2;->f:Z

    if-nez v1, :cond_8

    const-wide/high16 v9, -0x8000000000000000L

    cmp-long v1, p4, v9

    if-eqz v1, :cond_7

    cmp-long v1, p4, v7

    if-ltz v1, :cond_8

    :cond_7
    const/4 v1, 0x1

    goto :goto_7

    :cond_8
    const/4 v1, 0x0

    .line 15
    :goto_7
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/op2;->n(Lcom/shabakaty/downloader/lp2;)Z

    move-result v2

    if-nez v2, :cond_9

    if-nez v1, :cond_9

    goto :goto_8

    :cond_9
    const/4 v4, 0x0

    :goto_8
    return v4

    .line 16
    :cond_a
    iget-object v3, v2, Lcom/shabakaty/downloader/lp2;->l:Lcom/shabakaty/downloader/lp2;

    move-object v15, v3

    move-object v3, v2

    move-object v2, v15

    goto/16 :goto_0

    :cond_b
    return v4
.end method
