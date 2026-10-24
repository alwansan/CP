.class public final Lcom/shabakaty/downloader/sp;
.super Ljava/lang/Object;
.source "CacheDataSource.java"

# interfaces
.implements Lcom/shabakaty/downloader/vl0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/sp$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/np;

.field public final b:Lcom/shabakaty/downloader/vl0;

.field public final c:Lcom/shabakaty/downloader/vl0;

.field public final d:Lcom/shabakaty/downloader/vl0;

.field public final e:Lcom/shabakaty/downloader/cq;

.field public final f:Lcom/shabakaty/downloader/sp$a;

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field public j:Landroid/net/Uri;

.field public k:Lcom/shabakaty/downloader/yl0;

.field public l:Lcom/shabakaty/downloader/yl0;

.field public m:Lcom/shabakaty/downloader/vl0;

.field public n:J

.field public o:J

.field public p:J

.field public q:Lcom/shabakaty/downloader/eq;

.field public r:Z

.field public s:Z

.field public t:J

.field public u:J


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/np;Lcom/shabakaty/downloader/vl0;Lcom/shabakaty/downloader/vl0;Lcom/shabakaty/downloader/tl0;ILcom/shabakaty/downloader/sp$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/sp;->a:Lcom/shabakaty/downloader/np;

    .line 3
    iput-object p3, p0, Lcom/shabakaty/downloader/sp;->b:Lcom/shabakaty/downloader/vl0;

    .line 4
    sget-object p1, Lcom/shabakaty/downloader/cq;->c:Lcom/shabakaty/downloader/cq;

    iput-object p1, p0, Lcom/shabakaty/downloader/sp;->e:Lcom/shabakaty/downloader/cq;

    and-int/lit8 p1, p5, 0x1

    const/4 p3, 0x0

    const/4 p6, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    :goto_0
    iput-boolean p1, p0, Lcom/shabakaty/downloader/sp;->g:Z

    and-int/lit8 p1, p5, 0x2

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 6
    :goto_1
    iput-boolean p1, p0, Lcom/shabakaty/downloader/sp;->h:Z

    and-int/lit8 p1, p5, 0x4

    if-eqz p1, :cond_2

    const/4 p3, 0x1

    .line 7
    :cond_2
    iput-boolean p3, p0, Lcom/shabakaty/downloader/sp;->i:Z

    .line 8
    iput-object p2, p0, Lcom/shabakaty/downloader/sp;->d:Lcom/shabakaty/downloader/vl0;

    .line 9
    new-instance p1, Lcom/shabakaty/downloader/ml4;

    invoke-direct {p1, p2, p4}, Lcom/shabakaty/downloader/ml4;-><init>(Lcom/shabakaty/downloader/vl0;Lcom/shabakaty/downloader/tl0;)V

    .line 10
    iput-object p1, p0, Lcom/shabakaty/downloader/sp;->c:Lcom/shabakaty/downloader/vl0;

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/shabakaty/downloader/sp;->f:Lcom/shabakaty/downloader/sp$a;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/yl0;)J
    .locals 12

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/sp;->e:Lcom/shabakaty/downloader/cq;

    check-cast v0, Lcom/shabakaty/downloader/hw3;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/hw3;->d(Lcom/shabakaty/downloader/yl0;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/yl0;->a()Lcom/shabakaty/downloader/yl0$b;

    move-result-object v1

    .line 3
    iput-object v0, v1, Lcom/shabakaty/downloader/yl0$b;->h:Ljava/lang/String;

    .line 4
    invoke-virtual {v1}, Lcom/shabakaty/downloader/yl0$b;->a()Lcom/shabakaty/downloader/yl0;

    move-result-object v1

    .line 5
    iput-object v1, p0, Lcom/shabakaty/downloader/sp;->k:Lcom/shabakaty/downloader/yl0;

    .line 6
    iget-object v2, p0, Lcom/shabakaty/downloader/sp;->a:Lcom/shabakaty/downloader/np;

    iget-object v3, v1, Lcom/shabakaty/downloader/yl0;->a:Landroid/net/Uri;

    .line 7
    invoke-interface {v2, v0}, Lcom/shabakaty/downloader/np;->b(Ljava/lang/String;)Lcom/shabakaty/downloader/fd0;

    move-result-object v2

    .line 8
    check-cast v2, Lcom/shabakaty/downloader/on0;

    .line 9
    iget-object v2, v2, Lcom/shabakaty/downloader/on0;->b:Ljava/util/Map;

    const-string v4, "exo_redir"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 10
    new-instance v5, Ljava/lang/String;

    sget-object v6, Lcom/shabakaty/downloader/iz;->c:Ljava/nio/charset/Charset;

    invoke-direct {v5, v2, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0

    :cond_0
    move-object v5, v4

    :goto_0
    if-nez v5, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_2

    move-object v3, v4

    .line 12
    :cond_2
    iput-object v3, p0, Lcom/shabakaty/downloader/sp;->j:Landroid/net/Uri;

    .line 13
    iget-wide v2, p1, Lcom/shabakaty/downloader/yl0;->f:J

    iput-wide v2, p0, Lcom/shabakaty/downloader/sp;->o:J

    .line 14
    iget-boolean v2, p0, Lcom/shabakaty/downloader/sp;->h:Z

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/shabakaty/downloader/sp;->r:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    goto :goto_2

    .line 15
    :cond_3
    iget-boolean v2, p0, Lcom/shabakaty/downloader/sp;->i:Z

    if-eqz v2, :cond_4

    iget-wide v8, p1, Lcom/shabakaty/downloader/yl0;->g:J

    cmp-long v2, v8, v6

    if-nez v2, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, -0x1

    :goto_2
    if-eq v2, v4, :cond_5

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    .line 16
    :goto_3
    iput-boolean v3, p0, Lcom/shabakaty/downloader/sp;->s:Z

    if-eqz v3, :cond_6

    .line 17
    iget-object v3, p0, Lcom/shabakaty/downloader/sp;->f:Lcom/shabakaty/downloader/sp$a;

    if-eqz v3, :cond_6

    .line 18
    invoke-interface {v3, v2}, Lcom/shabakaty/downloader/sp$a;->a(I)V

    .line 19
    :cond_6
    iget-boolean v2, p0, Lcom/shabakaty/downloader/sp;->s:Z

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_7

    .line 20
    iput-wide v6, p0, Lcom/shabakaty/downloader/sp;->p:J

    goto :goto_4

    .line 21
    :cond_7
    iget-object v2, p0, Lcom/shabakaty/downloader/sp;->a:Lcom/shabakaty/downloader/np;

    invoke-interface {v2, v0}, Lcom/shabakaty/downloader/np;->b(Ljava/lang/String;)Lcom/shabakaty/downloader/fd0;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/ed0;->a(Lcom/shabakaty/downloader/fd0;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/shabakaty/downloader/sp;->p:J

    cmp-long v0, v8, v6

    if-eqz v0, :cond_9

    .line 22
    iget-wide v10, p1, Lcom/shabakaty/downloader/yl0;->f:J

    sub-long/2addr v8, v10

    iput-wide v8, p0, Lcom/shabakaty/downloader/sp;->p:J

    cmp-long v0, v8, v3

    if-ltz v0, :cond_8

    goto :goto_4

    .line 23
    :cond_8
    new-instance p1, Lcom/shabakaty/downloader/wl0;

    const/16 v0, 0x7d8

    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/wl0;-><init>(I)V

    throw p1

    .line 24
    :cond_9
    :goto_4
    iget-wide v8, p1, Lcom/shabakaty/downloader/yl0;->g:J

    cmp-long v0, v8, v6

    if-eqz v0, :cond_b

    .line 25
    iget-wide v10, p0, Lcom/shabakaty/downloader/sp;->p:J

    cmp-long v0, v10, v6

    if-nez v0, :cond_a

    goto :goto_5

    .line 26
    :cond_a
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    :goto_5
    iput-wide v8, p0, Lcom/shabakaty/downloader/sp;->p:J

    .line 27
    :cond_b
    iget-wide v8, p0, Lcom/shabakaty/downloader/sp;->p:J

    cmp-long v0, v8, v3

    if-gtz v0, :cond_c

    cmp-long v0, v8, v6

    if-nez v0, :cond_d

    .line 28
    :cond_c
    invoke-virtual {p0, v1, v5}, Lcom/shabakaty/downloader/sp;->w(Lcom/shabakaty/downloader/yl0;Z)V

    .line 29
    :cond_d
    iget-wide v0, p1, Lcom/shabakaty/downloader/yl0;->g:J

    cmp-long p1, v0, v6

    if-eqz p1, :cond_e

    goto :goto_6

    :cond_e
    iget-wide v0, p0, Lcom/shabakaty/downloader/sp;->p:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_6
    return-wide v0

    :catchall_0
    move-exception p1

    .line 30
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/sp;->t(Ljava/lang/Throwable;)V

    .line 31
    throw p1
.end method

.method public close()V
    .locals 7

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/shabakaty/downloader/sp;->k:Lcom/shabakaty/downloader/yl0;

    .line 2
    iput-object v0, p0, Lcom/shabakaty/downloader/sp;->j:Landroid/net/Uri;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/shabakaty/downloader/sp;->o:J

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/sp;->f:Lcom/shabakaty/downloader/sp$a;

    if-eqz v2, :cond_0

    iget-wide v3, p0, Lcom/shabakaty/downloader/sp;->t:J

    cmp-long v5, v3, v0

    if-lez v5, :cond_0

    .line 5
    iget-object v3, p0, Lcom/shabakaty/downloader/sp;->a:Lcom/shabakaty/downloader/np;

    invoke-interface {v3}, Lcom/shabakaty/downloader/np;->i()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/shabakaty/downloader/sp;->t:J

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/shabakaty/downloader/sp$a;->b(JJ)V

    .line 6
    iput-wide v0, p0, Lcom/shabakaty/downloader/sp;->t:J

    .line 7
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/sp;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 8
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/sp;->t(Ljava/lang/Throwable;)V

    .line 9
    throw v0
.end method

.method public e(Lcom/shabakaty/downloader/sp4;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/sp;->b:Lcom/shabakaty/downloader/vl0;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/vl0;->e(Lcom/shabakaty/downloader/sp4;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/sp;->d:Lcom/shabakaty/downloader/vl0;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/vl0;->e(Lcom/shabakaty/downloader/sp4;)V

    return-void
.end method

.method public final h()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/sp;->m:Lcom/shabakaty/downloader/vl0;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-interface {v0}, Lcom/shabakaty/downloader/vl0;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iput-object v1, p0, Lcom/shabakaty/downloader/sp;->l:Lcom/shabakaty/downloader/yl0;

    .line 4
    iput-object v1, p0, Lcom/shabakaty/downloader/sp;->m:Lcom/shabakaty/downloader/vl0;

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/sp;->q:Lcom/shabakaty/downloader/eq;

    if-eqz v0, :cond_1

    .line 6
    iget-object v2, p0, Lcom/shabakaty/downloader/sp;->a:Lcom/shabakaty/downloader/np;

    invoke-interface {v2, v0}, Lcom/shabakaty/downloader/np;->g(Lcom/shabakaty/downloader/eq;)V

    .line 7
    iput-object v1, p0, Lcom/shabakaty/downloader/sp;->q:Lcom/shabakaty/downloader/eq;

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 8
    iput-object v1, p0, Lcom/shabakaty/downloader/sp;->l:Lcom/shabakaty/downloader/yl0;

    .line 9
    iput-object v1, p0, Lcom/shabakaty/downloader/sp;->m:Lcom/shabakaty/downloader/vl0;

    .line 10
    iget-object v2, p0, Lcom/shabakaty/downloader/sp;->q:Lcom/shabakaty/downloader/eq;

    if-eqz v2, :cond_2

    .line 11
    iget-object v3, p0, Lcom/shabakaty/downloader/sp;->a:Lcom/shabakaty/downloader/np;

    invoke-interface {v3, v2}, Lcom/shabakaty/downloader/np;->g(Lcom/shabakaty/downloader/eq;)V

    .line 12
    iput-object v1, p0, Lcom/shabakaty/downloader/sp;->q:Lcom/shabakaty/downloader/eq;

    .line 13
    :cond_2
    throw v0
.end method

.method public o()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/sp;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/sp;->d:Lcom/shabakaty/downloader/vl0;

    invoke-interface {v0}, Lcom/shabakaty/downloader/vl0;->o()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public r()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/sp;->j:Landroid/net/Uri;

    return-object v0
.end method

.method public read([BII)I
    .locals 15

    move-object v1, p0

    move/from16 v0, p3

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    .line 1
    :cond_0
    iget-wide v3, v1, Lcom/shabakaty/downloader/sp;->p:J

    const/4 v5, -0x1

    const-wide/16 v6, 0x0

    cmp-long v8, v3, v6

    if-nez v8, :cond_1

    return v5

    .line 2
    :cond_1
    iget-object v3, v1, Lcom/shabakaty/downloader/sp;->k:Lcom/shabakaty/downloader/yl0;

    .line 3
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v4, v1, Lcom/shabakaty/downloader/sp;->l:Lcom/shabakaty/downloader/yl0;

    .line 5
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :try_start_0
    iget-wide v8, v1, Lcom/shabakaty/downloader/sp;->o:J

    iget-wide v10, v1, Lcom/shabakaty/downloader/sp;->u:J

    const/4 v12, 0x1

    cmp-long v13, v8, v10

    if-ltz v13, :cond_2

    .line 7
    invoke-virtual {p0, v3, v12}, Lcom/shabakaty/downloader/sp;->w(Lcom/shabakaty/downloader/yl0;Z)V

    .line 8
    :cond_2
    iget-object v8, v1, Lcom/shabakaty/downloader/sp;->m:Lcom/shabakaty/downloader/vl0;

    .line 9
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v9, p1

    move/from16 v10, p2

    .line 10
    invoke-interface {v8, v9, v10, v0}, Lcom/shabakaty/downloader/rl0;->read([BII)I

    move-result v8

    const-wide/16 v13, -0x1

    if-eq v8, v5, :cond_4

    .line 11
    invoke-virtual {p0}, Lcom/shabakaty/downloader/sp;->u()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    iget-wide v2, v1, Lcom/shabakaty/downloader/sp;->t:J

    int-to-long v4, v8

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/shabakaty/downloader/sp;->t:J

    .line 13
    :cond_3
    iget-wide v2, v1, Lcom/shabakaty/downloader/sp;->o:J

    int-to-long v4, v8

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/shabakaty/downloader/sp;->o:J

    .line 14
    iget-wide v2, v1, Lcom/shabakaty/downloader/sp;->n:J

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/shabakaty/downloader/sp;->n:J

    .line 15
    iget-wide v2, v1, Lcom/shabakaty/downloader/sp;->p:J

    cmp-long v0, v2, v13

    if-eqz v0, :cond_8

    sub-long/2addr v2, v4

    .line 16
    iput-wide v2, v1, Lcom/shabakaty/downloader/sp;->p:J

    goto :goto_0

    .line 17
    :cond_4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/sp;->v()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-wide v4, v4, Lcom/shabakaty/downloader/yl0;->g:J

    cmp-long v11, v4, v13

    if-eqz v11, :cond_5

    iget-wide v12, v1, Lcom/shabakaty/downloader/sp;->n:J

    cmp-long v14, v12, v4

    if-gez v14, :cond_7

    .line 18
    :cond_5
    iget-object v0, v3, Lcom/shabakaty/downloader/yl0;->h:Ljava/lang/String;

    sget v3, Lcom/shabakaty/downloader/sy4;->a:I

    .line 19
    iput-wide v6, v1, Lcom/shabakaty/downloader/sp;->p:J

    .line 20
    iget-object v3, v1, Lcom/shabakaty/downloader/sp;->m:Lcom/shabakaty/downloader/vl0;

    iget-object v4, v1, Lcom/shabakaty/downloader/sp;->c:Lcom/shabakaty/downloader/vl0;

    if-ne v3, v4, :cond_6

    const/4 v2, 0x1

    :cond_6
    if-eqz v2, :cond_8

    .line 21
    new-instance v2, Lcom/shabakaty/downloader/gd0;

    invoke-direct {v2}, Lcom/shabakaty/downloader/gd0;-><init>()V

    .line 22
    iget-wide v3, v1, Lcom/shabakaty/downloader/sp;->o:J

    invoke-static {v2, v3, v4}, Lcom/shabakaty/downloader/gd0;->a(Lcom/shabakaty/downloader/gd0;J)Lcom/shabakaty/downloader/gd0;

    .line 23
    iget-object v3, v1, Lcom/shabakaty/downloader/sp;->a:Lcom/shabakaty/downloader/np;

    invoke-interface {v3, v0, v2}, Lcom/shabakaty/downloader/np;->f(Ljava/lang/String;Lcom/shabakaty/downloader/gd0;)V

    goto :goto_0

    .line 24
    :cond_7
    iget-wide v4, v1, Lcom/shabakaty/downloader/sp;->p:J

    cmp-long v11, v4, v6

    if-gtz v11, :cond_9

    const-wide/16 v6, -0x1

    cmp-long v11, v4, v6

    if-nez v11, :cond_8

    goto :goto_1

    :cond_8
    :goto_0
    return v8

    .line 25
    :cond_9
    :goto_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/sp;->h()V

    .line 26
    invoke-virtual {p0, v3, v2}, Lcom/shabakaty/downloader/sp;->w(Lcom/shabakaty/downloader/yl0;Z)V

    .line 27
    invoke-virtual/range {p0 .. p3}, Lcom/shabakaty/downloader/sp;->read([BII)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    .line 28
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/sp;->t(Ljava/lang/Throwable;)V

    .line 29
    throw v0
.end method

.method public final t(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/sp;->u()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of p1, p1, Lcom/shabakaty/downloader/np$a;

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/shabakaty/downloader/sp;->r:Z

    :cond_1
    return-void
.end method

.method public final u()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/sp;->m:Lcom/shabakaty/downloader/vl0;

    iget-object v1, p0, Lcom/shabakaty/downloader/sp;->b:Lcom/shabakaty/downloader/vl0;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final v()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/sp;->u()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final w(Lcom/shabakaty/downloader/yl0;Z)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    iget-object v8, v0, Lcom/shabakaty/downloader/yl0;->h:Ljava/lang/String;

    sget v2, Lcom/shabakaty/downloader/sy4;->a:I

    .line 2
    iget-boolean v2, v1, Lcom/shabakaty/downloader/sp;->s:Z

    const/4 v9, 0x0

    if-eqz v2, :cond_0

    move-object v2, v9

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v2, v1, Lcom/shabakaty/downloader/sp;->g:Z

    if-eqz v2, :cond_1

    .line 4
    :try_start_0
    iget-object v2, v1, Lcom/shabakaty/downloader/sp;->a:Lcom/shabakaty/downloader/np;

    iget-wide v4, v1, Lcom/shabakaty/downloader/sp;->o:J

    iget-wide v6, v1, Lcom/shabakaty/downloader/sp;->p:J

    move-object v3, v8

    invoke-interface/range {v2 .. v7}, Lcom/shabakaty/downloader/np;->e(Ljava/lang/String;JJ)Lcom/shabakaty/downloader/eq;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 6
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    .line 7
    :cond_1
    iget-object v2, v1, Lcom/shabakaty/downloader/sp;->a:Lcom/shabakaty/downloader/np;

    iget-wide v4, v1, Lcom/shabakaty/downloader/sp;->o:J

    iget-wide v6, v1, Lcom/shabakaty/downloader/sp;->p:J

    move-object v3, v8

    invoke-interface/range {v2 .. v7}, Lcom/shabakaty/downloader/np;->d(Ljava/lang/String;JJ)Lcom/shabakaty/downloader/eq;

    move-result-object v2

    :goto_0
    const-wide/16 v3, -0x1

    if-nez v2, :cond_2

    .line 8
    iget-object v7, v1, Lcom/shabakaty/downloader/sp;->d:Lcom/shabakaty/downloader/vl0;

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/yl0;->a()Lcom/shabakaty/downloader/yl0$b;

    move-result-object v10

    iget-wide v11, v1, Lcom/shabakaty/downloader/sp;->o:J

    .line 10
    iput-wide v11, v10, Lcom/shabakaty/downloader/yl0$b;->f:J

    .line 11
    iget-wide v11, v1, Lcom/shabakaty/downloader/sp;->p:J

    .line 12
    iput-wide v11, v10, Lcom/shabakaty/downloader/yl0$b;->g:J

    .line 13
    invoke-virtual {v10}, Lcom/shabakaty/downloader/yl0$b;->a()Lcom/shabakaty/downloader/yl0;

    move-result-object v10

    goto :goto_3

    .line 14
    :cond_2
    iget-boolean v7, v2, Lcom/shabakaty/downloader/eq;->u:Z

    if-eqz v7, :cond_4

    .line 15
    iget-object v7, v2, Lcom/shabakaty/downloader/eq;->v:Ljava/io/File;

    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    .line 16
    iget-wide v10, v2, Lcom/shabakaty/downloader/eq;->s:J

    .line 17
    iget-wide v12, v1, Lcom/shabakaty/downloader/sp;->o:J

    sub-long/2addr v12, v10

    .line 18
    iget-wide v14, v2, Lcom/shabakaty/downloader/eq;->t:J

    sub-long/2addr v14, v12

    .line 19
    iget-wide v5, v1, Lcom/shabakaty/downloader/sp;->p:J

    cmp-long v16, v5, v3

    if-eqz v16, :cond_3

    .line 20
    invoke-static {v14, v15, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    .line 21
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/yl0;->a()Lcom/shabakaty/downloader/yl0$b;

    move-result-object v5

    .line 22
    iput-object v7, v5, Lcom/shabakaty/downloader/yl0$b;->a:Landroid/net/Uri;

    .line 23
    iput-wide v10, v5, Lcom/shabakaty/downloader/yl0$b;->b:J

    .line 24
    iput-wide v12, v5, Lcom/shabakaty/downloader/yl0$b;->f:J

    .line 25
    iput-wide v14, v5, Lcom/shabakaty/downloader/yl0$b;->g:J

    .line 26
    invoke-virtual {v5}, Lcom/shabakaty/downloader/yl0$b;->a()Lcom/shabakaty/downloader/yl0;

    move-result-object v10

    .line 27
    iget-object v7, v1, Lcom/shabakaty/downloader/sp;->b:Lcom/shabakaty/downloader/vl0;

    goto :goto_3

    .line 28
    :cond_4
    iget-wide v5, v2, Lcom/shabakaty/downloader/eq;->t:J

    cmp-long v7, v5, v3

    if-nez v7, :cond_5

    const/4 v7, 0x1

    goto :goto_1

    :cond_5
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_6

    .line 29
    iget-wide v5, v1, Lcom/shabakaty/downloader/sp;->p:J

    goto :goto_2

    .line 30
    :cond_6
    iget-wide v10, v1, Lcom/shabakaty/downloader/sp;->p:J

    cmp-long v7, v10, v3

    if-eqz v7, :cond_7

    .line 31
    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 32
    :cond_7
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/yl0;->a()Lcom/shabakaty/downloader/yl0$b;

    move-result-object v7

    iget-wide v10, v1, Lcom/shabakaty/downloader/sp;->o:J

    .line 33
    iput-wide v10, v7, Lcom/shabakaty/downloader/yl0$b;->f:J

    .line 34
    iput-wide v5, v7, Lcom/shabakaty/downloader/yl0$b;->g:J

    .line 35
    invoke-virtual {v7}, Lcom/shabakaty/downloader/yl0$b;->a()Lcom/shabakaty/downloader/yl0;

    move-result-object v10

    .line 36
    iget-object v7, v1, Lcom/shabakaty/downloader/sp;->c:Lcom/shabakaty/downloader/vl0;

    if-eqz v7, :cond_8

    goto :goto_3

    .line 37
    :cond_8
    iget-object v7, v1, Lcom/shabakaty/downloader/sp;->d:Lcom/shabakaty/downloader/vl0;

    .line 38
    iget-object v5, v1, Lcom/shabakaty/downloader/sp;->a:Lcom/shabakaty/downloader/np;

    invoke-interface {v5, v2}, Lcom/shabakaty/downloader/np;->g(Lcom/shabakaty/downloader/eq;)V

    move-object v2, v9

    .line 39
    :goto_3
    iget-boolean v5, v1, Lcom/shabakaty/downloader/sp;->s:Z

    if-nez v5, :cond_9

    iget-object v5, v1, Lcom/shabakaty/downloader/sp;->d:Lcom/shabakaty/downloader/vl0;

    if-ne v7, v5, :cond_9

    .line 40
    iget-wide v5, v1, Lcom/shabakaty/downloader/sp;->o:J

    const-wide/32 v11, 0x19000

    add-long/2addr v5, v11

    goto :goto_4

    :cond_9
    const-wide v5, 0x7fffffffffffffffL

    .line 41
    :goto_4
    iput-wide v5, v1, Lcom/shabakaty/downloader/sp;->u:J

    if-eqz p2, :cond_d

    .line 42
    iget-object v5, v1, Lcom/shabakaty/downloader/sp;->m:Lcom/shabakaty/downloader/vl0;

    iget-object v6, v1, Lcom/shabakaty/downloader/sp;->d:Lcom/shabakaty/downloader/vl0;

    if-ne v5, v6, :cond_a

    const/4 v5, 0x1

    goto :goto_5

    :cond_a
    const/4 v5, 0x0

    .line 43
    :goto_5
    invoke-static {v5}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 44
    iget-object v5, v1, Lcom/shabakaty/downloader/sp;->d:Lcom/shabakaty/downloader/vl0;

    if-ne v7, v5, :cond_b

    return-void

    .line 45
    :cond_b
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/sp;->h()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v3, v0

    .line 46
    iget-boolean v0, v2, Lcom/shabakaty/downloader/eq;->u:Z

    const/4 v5, 0x1

    xor-int/2addr v0, v5

    if-eqz v0, :cond_c

    .line 47
    iget-object v0, v1, Lcom/shabakaty/downloader/sp;->a:Lcom/shabakaty/downloader/np;

    invoke-interface {v0, v2}, Lcom/shabakaty/downloader/np;->g(Lcom/shabakaty/downloader/eq;)V

    .line 48
    :cond_c
    throw v3

    :cond_d
    :goto_6
    const/4 v5, 0x1

    if-eqz v2, :cond_e

    .line 49
    iget-boolean v6, v2, Lcom/shabakaty/downloader/eq;->u:Z

    xor-int/2addr v6, v5

    if-eqz v6, :cond_e

    .line 50
    iput-object v2, v1, Lcom/shabakaty/downloader/sp;->q:Lcom/shabakaty/downloader/eq;

    .line 51
    :cond_e
    iput-object v7, v1, Lcom/shabakaty/downloader/sp;->m:Lcom/shabakaty/downloader/vl0;

    .line 52
    iput-object v10, v1, Lcom/shabakaty/downloader/sp;->l:Lcom/shabakaty/downloader/yl0;

    const-wide/16 v5, 0x0

    .line 53
    iput-wide v5, v1, Lcom/shabakaty/downloader/sp;->n:J

    .line 54
    invoke-interface {v7, v10}, Lcom/shabakaty/downloader/vl0;->a(Lcom/shabakaty/downloader/yl0;)J

    move-result-wide v5

    .line 55
    new-instance v2, Lcom/shabakaty/downloader/gd0;

    invoke-direct {v2}, Lcom/shabakaty/downloader/gd0;-><init>()V

    .line 56
    iget-wide v10, v10, Lcom/shabakaty/downloader/yl0;->g:J

    cmp-long v12, v10, v3

    if-nez v12, :cond_f

    cmp-long v10, v5, v3

    if-eqz v10, :cond_f

    .line 57
    iput-wide v5, v1, Lcom/shabakaty/downloader/sp;->p:J

    .line 58
    iget-wide v3, v1, Lcom/shabakaty/downloader/sp;->o:J

    add-long/2addr v3, v5

    invoke-static {v2, v3, v4}, Lcom/shabakaty/downloader/gd0;->a(Lcom/shabakaty/downloader/gd0;J)Lcom/shabakaty/downloader/gd0;

    .line 59
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/sp;->v()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 60
    invoke-interface {v7}, Lcom/shabakaty/downloader/vl0;->r()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v1, Lcom/shabakaty/downloader/sp;->j:Landroid/net/Uri;

    .line 61
    iget-object v0, v0, Lcom/shabakaty/downloader/yl0;->a:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    xor-int/2addr v0, v3

    if-eqz v0, :cond_10

    .line 62
    iget-object v9, v1, Lcom/shabakaty/downloader/sp;->j:Landroid/net/Uri;

    :cond_10
    const-string v0, "exo_redir"

    if-nez v9, :cond_11

    .line 63
    iget-object v4, v2, Lcom/shabakaty/downloader/gd0;->b:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v4, v2, Lcom/shabakaty/downloader/gd0;->a:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 65
    :cond_11
    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 66
    iget-object v5, v2, Lcom/shabakaty/downloader/gd0;->a:Ljava/util/Map;

    .line 67
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v4, v2, Lcom/shabakaty/downloader/gd0;->b:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_12
    const/4 v3, 0x1

    .line 70
    :goto_7
    iget-object v0, v1, Lcom/shabakaty/downloader/sp;->m:Lcom/shabakaty/downloader/vl0;

    iget-object v4, v1, Lcom/shabakaty/downloader/sp;->c:Lcom/shabakaty/downloader/vl0;

    if-ne v0, v4, :cond_13

    const/4 v5, 0x1

    goto :goto_8

    :cond_13
    const/4 v5, 0x0

    :goto_8
    if-eqz v5, :cond_14

    .line 71
    iget-object v0, v1, Lcom/shabakaty/downloader/sp;->a:Lcom/shabakaty/downloader/np;

    invoke-interface {v0, v8, v2}, Lcom/shabakaty/downloader/np;->f(Ljava/lang/String;Lcom/shabakaty/downloader/gd0;)V

    :cond_14
    return-void
.end method
