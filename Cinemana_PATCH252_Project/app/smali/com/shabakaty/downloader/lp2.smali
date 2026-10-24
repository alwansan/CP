.class public final Lcom/shabakaty/downloader/lp2;
.super Ljava/lang/Object;
.source "MediaPeriodHolder.java"


# instance fields
.field public final a:Lcom/shabakaty/downloader/kp2;

.field public final b:Ljava/lang/Object;

.field public final c:[Lcom/shabakaty/downloader/dx3;

.field public d:Z

.field public e:Z

.field public f:Lcom/shabakaty/downloader/np2;

.field public g:Z

.field public final h:[Z

.field public final i:[Lcom/shabakaty/downloader/mr3;

.field public final j:Lcom/shabakaty/downloader/lp4;

.field public final k:Lcom/shabakaty/downloader/cr2;

.field public l:Lcom/shabakaty/downloader/lp2;

.field public m:Lcom/shabakaty/downloader/cp4;

.field public n:Lcom/shabakaty/downloader/mp4;

.field public o:J


# direct methods
.method public constructor <init>([Lcom/shabakaty/downloader/mr3;JLcom/shabakaty/downloader/lp4;Lcom/shabakaty/downloader/fn0;Lcom/shabakaty/downloader/cr2;Lcom/shabakaty/downloader/np2;Lcom/shabakaty/downloader/mp4;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/lp2;->i:[Lcom/shabakaty/downloader/mr3;

    .line 3
    iput-wide p2, p0, Lcom/shabakaty/downloader/lp2;->o:J

    .line 4
    iput-object p4, p0, Lcom/shabakaty/downloader/lp2;->j:Lcom/shabakaty/downloader/lp4;

    .line 5
    iput-object p6, p0, Lcom/shabakaty/downloader/lp2;->k:Lcom/shabakaty/downloader/cr2;

    .line 6
    iget-object p2, p7, Lcom/shabakaty/downloader/np2;->a:Lcom/shabakaty/downloader/uq2$a;

    iget-object p3, p2, Lcom/shabakaty/downloader/mp2;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/shabakaty/downloader/lp2;->b:Ljava/lang/Object;

    .line 7
    iput-object p7, p0, Lcom/shabakaty/downloader/lp2;->f:Lcom/shabakaty/downloader/np2;

    .line 8
    sget-object p3, Lcom/shabakaty/downloader/cp4;->u:Lcom/shabakaty/downloader/cp4;

    iput-object p3, p0, Lcom/shabakaty/downloader/lp2;->m:Lcom/shabakaty/downloader/cp4;

    .line 9
    iput-object p8, p0, Lcom/shabakaty/downloader/lp2;->n:Lcom/shabakaty/downloader/mp4;

    .line 10
    array-length p3, p1

    new-array p3, p3, [Lcom/shabakaty/downloader/dx3;

    iput-object p3, p0, Lcom/shabakaty/downloader/lp2;->c:[Lcom/shabakaty/downloader/dx3;

    .line 11
    array-length p1, p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/shabakaty/downloader/lp2;->h:[Z

    .line 12
    iget-wide p3, p7, Lcom/shabakaty/downloader/np2;->b:J

    iget-wide v5, p7, Lcom/shabakaty/downloader/np2;->d:J

    .line 13
    invoke-static {p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object p1, p2, Lcom/shabakaty/downloader/mp2;->a:Ljava/lang/Object;

    .line 15
    check-cast p1, Landroid/util/Pair;

    iget-object p7, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 16
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 17
    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/uq2$a;->b(Ljava/lang/Object;)Lcom/shabakaty/downloader/uq2$a;

    move-result-object p1

    .line 18
    iget-object p2, p6, Lcom/shabakaty/downloader/cr2;->c:Ljava/util/Map;

    invoke-interface {p2, p7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/cr2$c;

    .line 19
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object p7, p6, Lcom/shabakaty/downloader/cr2;->h:Ljava/util/Set;

    invoke-interface {p7, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object p7, p6, Lcom/shabakaty/downloader/cr2;->g:Ljava/util/HashMap;

    invoke-virtual {p7, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Lcom/shabakaty/downloader/cr2$b;

    if-eqz p7, :cond_0

    .line 22
    iget-object p8, p7, Lcom/shabakaty/downloader/cr2$b;->a:Lcom/shabakaty/downloader/uq2;

    iget-object p7, p7, Lcom/shabakaty/downloader/cr2$b;->b:Lcom/shabakaty/downloader/uq2$b;

    invoke-interface {p8, p7}, Lcom/shabakaty/downloader/uq2;->j(Lcom/shabakaty/downloader/uq2$b;)V

    .line 23
    :cond_0
    iget-object p7, p2, Lcom/shabakaty/downloader/cr2$c;->c:Ljava/util/List;

    invoke-interface {p7, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object p7, p2, Lcom/shabakaty/downloader/cr2$c;->a:Lcom/shabakaty/downloader/zm2;

    .line 25
    invoke-virtual {p7, p1, p5, p3, p4}, Lcom/shabakaty/downloader/zm2;->B(Lcom/shabakaty/downloader/uq2$a;Lcom/shabakaty/downloader/fn0;J)Lcom/shabakaty/downloader/ym2;

    move-result-object v1

    .line 26
    iget-object p1, p6, Lcom/shabakaty/downloader/cr2;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {p1, v1, p2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-virtual {p6}, Lcom/shabakaty/downloader/cr2;->d()V

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, v5, p1

    if-eqz p3, :cond_1

    .line 28
    new-instance p1, Lcom/shabakaty/downloader/u30;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/shabakaty/downloader/u30;-><init>(Lcom/shabakaty/downloader/kp2;ZJJ)V

    move-object v1, p1

    .line 29
    :cond_1
    iput-object v1, p0, Lcom/shabakaty/downloader/lp2;->a:Lcom/shabakaty/downloader/kp2;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/mp4;JZ[Z)J
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1
    :goto_0
    iget v4, v1, Lcom/shabakaty/downloader/mp4;->a:I

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    .line 2
    iget-object v4, v0, Lcom/shabakaty/downloader/lp2;->h:[Z

    if-nez p4, :cond_0

    iget-object v6, v0, Lcom/shabakaty/downloader/lp2;->n:Lcom/shabakaty/downloader/mp4;

    .line 3
    invoke-virtual {v1, v6, v3}, Lcom/shabakaty/downloader/mp4;->a(Lcom/shabakaty/downloader/mp4;I)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    aput-boolean v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v3, v0, Lcom/shabakaty/downloader/lp2;->c:[Lcom/shabakaty/downloader/dx3;

    const/4 v4, 0x0

    .line 5
    :goto_2
    iget-object v6, v0, Lcom/shabakaty/downloader/lp2;->i:[Lcom/shabakaty/downloader/mr3;

    array-length v7, v6

    const/4 v8, 0x7

    if-ge v4, v7, :cond_3

    .line 6
    aget-object v6, v6, v4

    check-cast v6, Lcom/shabakaty/downloader/bk;

    .line 7
    iget v6, v6, Lcom/shabakaty/downloader/bk;->r:I

    if-ne v6, v8, :cond_2

    const/4 v6, 0x0

    .line 8
    aput-object v6, v3, v4

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 9
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/lp2;->b()V

    .line 10
    iput-object v1, v0, Lcom/shabakaty/downloader/lp2;->n:Lcom/shabakaty/downloader/mp4;

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/lp2;->c()V

    .line 12
    iget-object v9, v0, Lcom/shabakaty/downloader/lp2;->a:Lcom/shabakaty/downloader/kp2;

    iget-object v10, v1, Lcom/shabakaty/downloader/mp4;->c:[Lcom/shabakaty/downloader/f81;

    iget-object v11, v0, Lcom/shabakaty/downloader/lp2;->h:[Z

    iget-object v12, v0, Lcom/shabakaty/downloader/lp2;->c:[Lcom/shabakaty/downloader/dx3;

    move-object/from16 v13, p5

    move-wide/from16 v14, p2

    .line 13
    invoke-interface/range {v9 .. v15}, Lcom/shabakaty/downloader/kp2;->C0([Lcom/shabakaty/downloader/f81;[Z[Lcom/shabakaty/downloader/dx3;[ZJ)J

    move-result-wide v3

    .line 14
    iget-object v6, v0, Lcom/shabakaty/downloader/lp2;->c:[Lcom/shabakaty/downloader/dx3;

    const/4 v7, 0x0

    .line 15
    :goto_3
    iget-object v9, v0, Lcom/shabakaty/downloader/lp2;->i:[Lcom/shabakaty/downloader/mr3;

    array-length v10, v9

    if-ge v7, v10, :cond_5

    .line 16
    aget-object v9, v9, v7

    check-cast v9, Lcom/shabakaty/downloader/bk;

    .line 17
    iget v9, v9, Lcom/shabakaty/downloader/bk;->r:I

    if-ne v9, v8, :cond_4

    .line 18
    iget-object v9, v0, Lcom/shabakaty/downloader/lp2;->n:Lcom/shabakaty/downloader/mp4;

    .line 19
    invoke-virtual {v9, v7}, Lcom/shabakaty/downloader/mp4;->b(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 20
    new-instance v9, Lcom/shabakaty/downloader/a31;

    invoke-direct {v9}, Lcom/shabakaty/downloader/a31;-><init>()V

    aput-object v9, v6, v7

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 21
    :cond_5
    iput-boolean v2, v0, Lcom/shabakaty/downloader/lp2;->e:Z

    const/4 v6, 0x0

    .line 22
    :goto_4
    iget-object v7, v0, Lcom/shabakaty/downloader/lp2;->c:[Lcom/shabakaty/downloader/dx3;

    array-length v9, v7

    if-ge v6, v9, :cond_9

    .line 23
    aget-object v7, v7, v6

    if-eqz v7, :cond_6

    .line 24
    invoke-virtual {v1, v6}, Lcom/shabakaty/downloader/mp4;->b(I)Z

    move-result v7

    invoke-static {v7}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 25
    iget-object v7, v0, Lcom/shabakaty/downloader/lp2;->i:[Lcom/shabakaty/downloader/mr3;

    aget-object v7, v7, v6

    check-cast v7, Lcom/shabakaty/downloader/bk;

    .line 26
    iget v7, v7, Lcom/shabakaty/downloader/bk;->r:I

    if-eq v7, v8, :cond_8

    .line 27
    iput-boolean v5, v0, Lcom/shabakaty/downloader/lp2;->e:Z

    goto :goto_6

    .line 28
    :cond_6
    iget-object v7, v1, Lcom/shabakaty/downloader/mp4;->c:[Lcom/shabakaty/downloader/f81;

    aget-object v7, v7, v6

    if-nez v7, :cond_7

    const/4 v7, 0x1

    goto :goto_5

    :cond_7
    const/4 v7, 0x0

    :goto_5
    invoke-static {v7}, Lcom/shabakaty/downloader/md;->e(Z)V

    :cond_8
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_9
    return-wide v3
.end method

.method public final b()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/lp2;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/shabakaty/downloader/lp2;->n:Lcom/shabakaty/downloader/mp4;

    iget v2, v1, Lcom/shabakaty/downloader/mp4;->a:I

    if-ge v0, v2, :cond_2

    .line 3
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/mp4;->b(I)Z

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/lp2;->n:Lcom/shabakaty/downloader/mp4;

    iget-object v2, v2, Lcom/shabakaty/downloader/mp4;->c:[Lcom/shabakaty/downloader/f81;

    aget-object v2, v2, v0

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 5
    invoke-interface {v2}, Lcom/shabakaty/downloader/f81;->g()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/lp2;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/shabakaty/downloader/lp2;->n:Lcom/shabakaty/downloader/mp4;

    iget v2, v1, Lcom/shabakaty/downloader/mp4;->a:I

    if-ge v0, v2, :cond_2

    .line 3
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/mp4;->b(I)Z

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/lp2;->n:Lcom/shabakaty/downloader/mp4;

    iget-object v2, v2, Lcom/shabakaty/downloader/mp4;->c:[Lcom/shabakaty/downloader/f81;

    aget-object v2, v2, v0

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 5
    invoke-interface {v2}, Lcom/shabakaty/downloader/f81;->m()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public d()J
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/lp2;->d:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/lp2;->f:Lcom/shabakaty/downloader/np2;

    iget-wide v0, v0, Lcom/shabakaty/downloader/np2;->b:J

    return-wide v0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/shabakaty/downloader/lp2;->e:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/shabakaty/downloader/lp2;->a:Lcom/shabakaty/downloader/kp2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/kp2;->o()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    move-wide v3, v1

    :goto_0
    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/lp2;->f:Lcom/shabakaty/downloader/np2;

    iget-wide v3, v0, Lcom/shabakaty/downloader/np2;->e:J

    :cond_2
    return-wide v3
.end method

.method public e()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/lp2;->f:Lcom/shabakaty/downloader/np2;

    iget-wide v0, v0, Lcom/shabakaty/downloader/np2;->b:J

    iget-wide v2, p0, Lcom/shabakaty/downloader/lp2;->o:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public f()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/lp2;->d:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/shabakaty/downloader/lp2;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/lp2;->a:Lcom/shabakaty/downloader/kp2;

    .line 2
    invoke-interface {v0}, Lcom/shabakaty/downloader/kp2;->o()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/lp2;->l:Lcom/shabakaty/downloader/lp2;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/lp2;->b()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/lp2;->k:Lcom/shabakaty/downloader/cr2;

    iget-object v1, p0, Lcom/shabakaty/downloader/lp2;->a:Lcom/shabakaty/downloader/kp2;

    .line 3
    :try_start_0
    instance-of v2, v1, Lcom/shabakaty/downloader/u30;

    if-eqz v2, :cond_0

    .line 4
    check-cast v1, Lcom/shabakaty/downloader/u30;

    iget-object v1, v1, Lcom/shabakaty/downloader/u30;->r:Lcom/shabakaty/downloader/kp2;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/cr2;->h(Lcom/shabakaty/downloader/kp2;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/cr2;->h(Lcom/shabakaty/downloader/kp2;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MediaPeriodHolder"

    const-string v2, "Period release failed."

    .line 6
    invoke-static {v1, v2, v0}, Lcom/shabakaty/downloader/fk2;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public i(FLcom/shabakaty/downloader/nn4;)Lcom/shabakaty/downloader/mp4;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/lp2;->j:Lcom/shabakaty/downloader/lp4;

    iget-object v1, p0, Lcom/shabakaty/downloader/lp2;->i:[Lcom/shabakaty/downloader/mr3;

    .line 2
    iget-object v2, p0, Lcom/shabakaty/downloader/lp2;->m:Lcom/shabakaty/downloader/cp4;

    .line 3
    iget-object v3, p0, Lcom/shabakaty/downloader/lp2;->f:Lcom/shabakaty/downloader/np2;

    iget-object v3, v3, Lcom/shabakaty/downloader/np2;->a:Lcom/shabakaty/downloader/uq2$a;

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/shabakaty/downloader/lp4;->b([Lcom/shabakaty/downloader/mr3;Lcom/shabakaty/downloader/cp4;Lcom/shabakaty/downloader/uq2$a;Lcom/shabakaty/downloader/nn4;)Lcom/shabakaty/downloader/mp4;

    move-result-object p2

    .line 4
    iget-object v0, p2, Lcom/shabakaty/downloader/mp4;->c:[Lcom/shabakaty/downloader/f81;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 5
    invoke-interface {v3, p1}, Lcom/shabakaty/downloader/f81;->r(F)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public j()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/lp2;->a:Lcom/shabakaty/downloader/kp2;

    instance-of v1, v0, Lcom/shabakaty/downloader/u30;

    if-eqz v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/lp2;->f:Lcom/shabakaty/downloader/np2;

    iget-wide v1, v1, Lcom/shabakaty/downloader/np2;->d:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const-wide/high16 v1, -0x8000000000000000L

    .line 3
    :cond_0
    check-cast v0, Lcom/shabakaty/downloader/u30;

    const-wide/16 v3, 0x0

    .line 4
    iput-wide v3, v0, Lcom/shabakaty/downloader/u30;->v:J

    .line 5
    iput-wide v1, v0, Lcom/shabakaty/downloader/u30;->w:J

    :cond_1
    return-void
.end method
