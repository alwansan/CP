.class public final Lcom/shabakaty/downloader/qv1$d;
.super Ljava/lang/Object;
.source "Http2Connection.kt"

# interfaces
.implements Lcom/shabakaty/downloader/yv1$b;
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/qv1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/yv1$b;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/yv1;

.field public final synthetic s:Lcom/shabakaty/downloader/qv1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/qv1;Lcom/shabakaty/downloader/yv1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/yv1;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/qv1$d;->s:Lcom/shabakaty/downloader/qv1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/shabakaty/downloader/qv1$d;->r:Lcom/shabakaty/downloader/yv1;

    return-void
.end method


# virtual methods
.method public a(ILcom/shabakaty/downloader/s41;Lcom/shabakaty/downloader/fp;)V
    .locals 3

    const-string p2, "debugData"

    invoke-static {p3, p2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p3}, Lcom/shabakaty/downloader/fp;->j()I

    .line 2
    iget-object p2, p0, Lcom/shabakaty/downloader/qv1$d;->s:Lcom/shabakaty/downloader/qv1;

    monitor-enter p2

    .line 3
    :try_start_0
    iget-object p3, p0, Lcom/shabakaty/downloader/qv1$d;->s:Lcom/shabakaty/downloader/qv1;

    .line 4
    iget-object p3, p3, Lcom/shabakaty/downloader/qv1;->t:Ljava/util/Map;

    .line 5
    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/shabakaty/downloader/zv1;

    .line 6
    invoke-interface {p3, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_2

    check-cast p3, [Lcom/shabakaty/downloader/zv1;

    .line 7
    iget-object v1, p0, Lcom/shabakaty/downloader/qv1$d;->s:Lcom/shabakaty/downloader/qv1;

    const/4 v2, 0x1

    .line 8
    iput-boolean v2, v1, Lcom/shabakaty/downloader/qv1;->x:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p2

    .line 10
    array-length p2, p3

    :goto_0
    if-ge v0, p2, :cond_1

    aget-object v1, p3, v0

    .line 11
    iget v2, v1, Lcom/shabakaty/downloader/zv1;->m:I

    if-le v2, p1, :cond_0

    .line 12
    invoke-virtual {v1}, Lcom/shabakaty/downloader/zv1;->h()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 13
    sget-object v2, Lcom/shabakaty/downloader/s41;->w:Lcom/shabakaty/downloader/s41;

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/zv1;->k(Lcom/shabakaty/downloader/s41;)V

    .line 14
    iget-object v2, p0, Lcom/shabakaty/downloader/qv1$d;->s:Lcom/shabakaty/downloader/qv1;

    .line 15
    iget v1, v1, Lcom/shabakaty/downloader/zv1;->m:I

    .line 16
    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/qv1;->d(I)Lcom/shabakaty/downloader/zv1;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 17
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p3, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, p3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 18
    monitor-exit p2

    throw p1
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c(ZLcom/shabakaty/downloader/q24;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qv1$d;->s:Lcom/shabakaty/downloader/qv1;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/qv1;->z:Lcom/shabakaty/downloader/gl4;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/shabakaty/downloader/qv1$d;->s:Lcom/shabakaty/downloader/qv1;

    .line 4
    iget-object v2, v2, Lcom/shabakaty/downloader/qv1;->u:Ljava/lang/String;

    const-string v3, " applyAndAckSettings"

    .line 5
    invoke-static {v1, v2, v3}, Lcom/shabakaty/downloader/ni4;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-wide/16 v1, 0x0

    const/4 v8, 0x1

    .line 6
    new-instance v3, Lcom/shabakaty/downloader/qv1$d$c;

    move-object v4, v3

    move-object v5, v7

    move v6, v8

    move-object v9, p0

    move v10, p1

    move-object v11, p2

    invoke-direct/range {v4 .. v11}, Lcom/shabakaty/downloader/qv1$d$c;-><init>(Ljava/lang/String;ZLjava/lang/String;ZLcom/shabakaty/downloader/qv1$d;ZLcom/shabakaty/downloader/q24;)V

    invoke-virtual {v0, v3, v1, v2}, Lcom/shabakaty/downloader/gl4;->c(Lcom/shabakaty/downloader/wk4;J)V

    return-void
.end method

.method public e(ZIILjava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ps1;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v12, p0

    move/from16 v0, p2

    .line 1
    iget-object v1, v12, Lcom/shabakaty/downloader/qv1$d;->s:Lcom/shabakaty/downloader/qv1;

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/qv1;->c(I)Z

    move-result v1

    const/16 v7, 0x5b

    const-wide/16 v13, 0x0

    if-eqz v1, :cond_0

    .line 2
    iget-object v6, v12, Lcom/shabakaty/downloader/qv1$d;->s:Lcom/shabakaty/downloader/qv1;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v10, v6, Lcom/shabakaty/downloader/qv1;->A:Lcom/shabakaty/downloader/gl4;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v6, Lcom/shabakaty/downloader/qv1;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] onHeaders"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4
    new-instance v11, Lcom/shabakaty/downloader/tv1;

    const/4 v5, 0x1

    move-object v1, v11

    move-object v2, v4

    move v3, v5

    move/from16 v7, p2

    move-object/from16 v8, p4

    move/from16 v9, p1

    invoke-direct/range {v1 .. v9}, Lcom/shabakaty/downloader/tv1;-><init>(Ljava/lang/String;ZLjava/lang/String;ZLcom/shabakaty/downloader/qv1;ILjava/util/List;Z)V

    invoke-virtual {v10, v11, v13, v14}, Lcom/shabakaty/downloader/gl4;->c(Lcom/shabakaty/downloader/wk4;J)V

    return-void

    .line 5
    :cond_0
    iget-object v15, v12, Lcom/shabakaty/downloader/qv1$d;->s:Lcom/shabakaty/downloader/qv1;

    monitor-enter v15

    .line 6
    :try_start_0
    iget-object v1, v12, Lcom/shabakaty/downloader/qv1$d;->s:Lcom/shabakaty/downloader/qv1;

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/qv1;->b(I)Lcom/shabakaty/downloader/zv1;

    move-result-object v8

    if-nez v8, :cond_4

    .line 7
    iget-object v1, v12, Lcom/shabakaty/downloader/qv1$d;->s:Lcom/shabakaty/downloader/qv1;

    .line 8
    iget-boolean v2, v1, Lcom/shabakaty/downloader/qv1;->x:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 9
    monitor-exit v15

    return-void

    .line 10
    :cond_1
    :try_start_1
    iget v2, v1, Lcom/shabakaty/downloader/qv1;->v:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt v0, v2, :cond_2

    .line 11
    monitor-exit v15

    return-void

    .line 12
    :cond_2
    :try_start_2
    rem-int/lit8 v2, v0, 0x2

    .line 13
    iget v1, v1, Lcom/shabakaty/downloader/qv1;->w:I

    .line 14
    rem-int/lit8 v1, v1, 0x2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v2, v1, :cond_3

    monitor-exit v15

    return-void

    .line 15
    :cond_3
    :try_start_3
    invoke-static/range {p4 .. p4}, Lcom/shabakaty/downloader/ry4;->v(Ljava/util/List;)Lcom/shabakaty/downloader/ts1;

    move-result-object v6

    .line 16
    new-instance v9, Lcom/shabakaty/downloader/zv1;

    iget-object v3, v12, Lcom/shabakaty/downloader/qv1$d;->s:Lcom/shabakaty/downloader/qv1;

    const/4 v4, 0x0

    move-object v1, v9

    move/from16 v2, p2

    move/from16 v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/shabakaty/downloader/zv1;-><init>(ILcom/shabakaty/downloader/qv1;ZZLcom/shabakaty/downloader/ts1;)V

    .line 17
    iget-object v1, v12, Lcom/shabakaty/downloader/qv1$d;->s:Lcom/shabakaty/downloader/qv1;

    .line 18
    iput v0, v1, Lcom/shabakaty/downloader/qv1;->v:I

    .line 19
    iget-object v1, v1, Lcom/shabakaty/downloader/qv1;->t:Ljava/util/Map;

    .line 20
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v1, v12, Lcom/shabakaty/downloader/qv1$d;->s:Lcom/shabakaty/downloader/qv1;

    .line 22
    iget-object v1, v1, Lcom/shabakaty/downloader/qv1;->y:Lcom/shabakaty/downloader/il4;

    .line 23
    invoke-virtual {v1}, Lcom/shabakaty/downloader/il4;->f()Lcom/shabakaty/downloader/gl4;

    move-result-object v11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v12, Lcom/shabakaty/downloader/qv1$d;->s:Lcom/shabakaty/downloader/qv1;

    .line 24
    iget-object v2, v2, Lcom/shabakaty/downloader/qv1;->u:Ljava/lang/String;

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] onStream"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    .line 26
    new-instance v10, Lcom/shabakaty/downloader/qv1$d$a;

    move-object v1, v10

    move-object v2, v4

    move v3, v5

    move-object v6, v9

    move-object/from16 v7, p0

    move/from16 v9, p2

    move-object v0, v10

    move-object/from16 v10, p4

    move-object v13, v11

    move/from16 v11, p1

    invoke-direct/range {v1 .. v11}, Lcom/shabakaty/downloader/qv1$d$a;-><init>(Ljava/lang/String;ZLjava/lang/String;ZLcom/shabakaty/downloader/zv1;Lcom/shabakaty/downloader/qv1$d;Lcom/shabakaty/downloader/zv1;ILjava/util/List;Z)V

    const-wide/16 v1, 0x0

    invoke-virtual {v13, v0, v1, v2}, Lcom/shabakaty/downloader/gl4;->c(Lcom/shabakaty/downloader/wk4;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 27
    monitor-exit v15

    return-void

    .line 28
    :cond_4
    monitor-exit v15

    .line 29
    invoke-static/range {p4 .. p4}, Lcom/shabakaty/downloader/ry4;->v(Ljava/util/List;)Lcom/shabakaty/downloader/ts1;

    move-result-object v0

    move/from16 v1, p1

    invoke-virtual {v8, v0, v1}, Lcom/shabakaty/downloader/zv1;->j(Lcom/shabakaty/downloader/ts1;Z)V

    return-void

    :catchall_0
    move-exception v0

    .line 30
    monitor-exit v15

    throw v0
.end method

.method public f(IJ)V
    .locals 3

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/qv1$d;->s:Lcom/shabakaty/downloader/qv1;

    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/qv1$d;->s:Lcom/shabakaty/downloader/qv1;

    .line 3
    iget-wide v1, v0, Lcom/shabakaty/downloader/qv1;->O:J

    add-long/2addr v1, p2

    .line 4
    iput-wide v1, v0, Lcom/shabakaty/downloader/qv1;->O:J

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/qv1$d;->s:Lcom/shabakaty/downloader/qv1;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/qv1;->b(I)Lcom/shabakaty/downloader/zv1;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 8
    monitor-enter p1

    .line 9
    :try_start_1
    iget-wide v0, p1, Lcom/shabakaty/downloader/zv1;->d:J

    add-long/2addr v0, p2

    iput-wide v0, p1, Lcom/shabakaty/downloader/zv1;->d:J

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 11
    :cond_1
    monitor-exit p1

    goto :goto_0

    :catchall_1
    move-exception p2

    monitor-exit p1

    throw p2

    :cond_2
    :goto_0
    return-void
.end method

.method public g(ZILcom/shabakaty/downloader/eo;I)V
    .locals 17

    move-object/from16 v1, p0

    move/from16 v0, p2

    move-object/from16 v2, p3

    move/from16 v10, p4

    const-string v3, "source"

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v3, v1, Lcom/shabakaty/downloader/qv1$d;->s:Lcom/shabakaty/downloader/qv1;

    invoke-virtual {v3, v0}, Lcom/shabakaty/downloader/qv1;->c(I)Z

    move-result v3

    const-wide/16 v12, 0x0

    if-eqz v3, :cond_0

    .line 2
    iget-object v7, v1, Lcom/shabakaty/downloader/qv1$d;->s:Lcom/shabakaty/downloader/qv1;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "source"

    .line 3
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v9, Lcom/shabakaty/downloader/zn;

    invoke-direct {v9}, Lcom/shabakaty/downloader/zn;-><init>()V

    int-to-long v3, v10

    .line 5
    invoke-interface {v2, v3, v4}, Lcom/shabakaty/downloader/eo;->s1(J)V

    .line 6
    invoke-interface {v2, v9, v3, v4}, Lcom/shabakaty/downloader/r94;->C1(Lcom/shabakaty/downloader/zn;J)J

    .line 7
    iget-object v14, v7, Lcom/shabakaty/downloader/qv1;->A:Lcom/shabakaty/downloader/gl4;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v7, Lcom/shabakaty/downloader/qv1;->u:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] onData"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 8
    new-instance v15, Lcom/shabakaty/downloader/sv1;

    const/4 v6, 0x1

    move-object v2, v15

    move-object v3, v5

    move v4, v6

    move/from16 v8, p2

    move/from16 v10, p4

    move/from16 v11, p1

    invoke-direct/range {v2 .. v11}, Lcom/shabakaty/downloader/sv1;-><init>(Ljava/lang/String;ZLjava/lang/String;ZLcom/shabakaty/downloader/qv1;ILcom/shabakaty/downloader/zn;IZ)V

    invoke-virtual {v14, v15, v12, v13}, Lcom/shabakaty/downloader/gl4;->c(Lcom/shabakaty/downloader/wk4;J)V

    return-void

    .line 9
    :cond_0
    iget-object v3, v1, Lcom/shabakaty/downloader/qv1$d;->s:Lcom/shabakaty/downloader/qv1;

    invoke-virtual {v3, v0}, Lcom/shabakaty/downloader/qv1;->b(I)Lcom/shabakaty/downloader/zv1;

    move-result-object v3

    if-nez v3, :cond_1

    .line 10
    iget-object v3, v1, Lcom/shabakaty/downloader/qv1$d;->s:Lcom/shabakaty/downloader/qv1;

    sget-object v4, Lcom/shabakaty/downloader/s41;->t:Lcom/shabakaty/downloader/s41;

    invoke-virtual {v3, v0, v4}, Lcom/shabakaty/downloader/qv1;->k(ILcom/shabakaty/downloader/s41;)V

    .line 11
    iget-object v0, v1, Lcom/shabakaty/downloader/qv1$d;->s:Lcom/shabakaty/downloader/qv1;

    int-to-long v3, v10

    invoke-virtual {v0, v3, v4}, Lcom/shabakaty/downloader/qv1;->f(J)V

    .line 12
    invoke-interface {v2, v3, v4}, Lcom/shabakaty/downloader/eo;->skip(J)V

    return-void

    :cond_1
    const-string v0, "source"

    .line 13
    invoke-static {v2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    sget-object v0, Lcom/shabakaty/downloader/ry4;->a:[B

    .line 15
    iget-object v0, v3, Lcom/shabakaty/downloader/zv1;->g:Lcom/shabakaty/downloader/zv1$b;

    int-to-long v4, v10

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "source"

    .line 16
    invoke-static {v2, v6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    :goto_0
    const/4 v6, 0x1

    cmp-long v7, v4, v12

    if-lez v7, :cond_b

    .line 17
    iget-object v7, v0, Lcom/shabakaty/downloader/zv1$b;->w:Lcom/shabakaty/downloader/zv1;

    monitor-enter v7

    .line 18
    :try_start_0
    iget-boolean v8, v0, Lcom/shabakaty/downloader/zv1$b;->v:Z

    .line 19
    iget-object v9, v0, Lcom/shabakaty/downloader/zv1$b;->s:Lcom/shabakaty/downloader/zn;

    .line 20
    iget-wide v9, v9, Lcom/shabakaty/downloader/zn;->s:J

    add-long/2addr v9, v4

    .line 21
    iget-wide v14, v0, Lcom/shabakaty/downloader/zv1$b;->u:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v11, 0x0

    cmp-long v16, v9, v14

    if-lez v16, :cond_3

    const/4 v9, 0x1

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    .line 22
    :goto_1
    monitor-exit v7

    if-eqz v9, :cond_4

    .line 23
    invoke-interface {v2, v4, v5}, Lcom/shabakaty/downloader/eo;->skip(J)V

    .line 24
    iget-object v0, v0, Lcom/shabakaty/downloader/zv1$b;->w:Lcom/shabakaty/downloader/zv1;

    sget-object v2, Lcom/shabakaty/downloader/s41;->v:Lcom/shabakaty/downloader/s41;

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/zv1;->e(Lcom/shabakaty/downloader/s41;)V

    goto :goto_5

    :cond_4
    if-eqz v8, :cond_5

    .line 25
    invoke-interface {v2, v4, v5}, Lcom/shabakaty/downloader/eo;->skip(J)V

    goto :goto_5

    .line 26
    :cond_5
    iget-object v7, v0, Lcom/shabakaty/downloader/zv1$b;->r:Lcom/shabakaty/downloader/zn;

    invoke-interface {v2, v7, v4, v5}, Lcom/shabakaty/downloader/r94;->C1(Lcom/shabakaty/downloader/zn;J)J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v14, v7, v9

    if-eqz v14, :cond_a

    sub-long/2addr v4, v7

    .line 27
    iget-object v7, v0, Lcom/shabakaty/downloader/zv1$b;->w:Lcom/shabakaty/downloader/zv1;

    monitor-enter v7

    .line 28
    :try_start_1
    iget-boolean v8, v0, Lcom/shabakaty/downloader/zv1$b;->t:Z

    if-eqz v8, :cond_6

    .line 29
    iget-object v6, v0, Lcom/shabakaty/downloader/zv1$b;->r:Lcom/shabakaty/downloader/zn;

    .line 30
    iget-wide v8, v6, Lcom/shabakaty/downloader/zn;->s:J

    .line 31
    invoke-virtual {v6, v8, v9}, Lcom/shabakaty/downloader/zn;->skip(J)V

    goto :goto_4

    .line 32
    :cond_6
    iget-object v8, v0, Lcom/shabakaty/downloader/zv1$b;->s:Lcom/shabakaty/downloader/zn;

    .line 33
    iget-wide v9, v8, Lcom/shabakaty/downloader/zn;->s:J

    cmp-long v14, v9, v12

    if-nez v14, :cond_7

    goto :goto_2

    :cond_7
    const/4 v6, 0x0

    .line 34
    :goto_2
    iget-object v9, v0, Lcom/shabakaty/downloader/zv1$b;->r:Lcom/shabakaty/downloader/zn;

    invoke-virtual {v8, v9}, Lcom/shabakaty/downloader/zn;->s0(Lcom/shabakaty/downloader/r94;)J

    if-eqz v6, :cond_9

    .line 35
    iget-object v6, v0, Lcom/shabakaty/downloader/zv1$b;->w:Lcom/shabakaty/downloader/zv1;

    if-eqz v6, :cond_8

    .line 36
    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    goto :goto_3

    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type java.lang.Object"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_9
    :goto_3
    move-wide v8, v12

    .line 37
    :goto_4
    monitor-exit v7

    cmp-long v6, v8, v12

    if-lez v6, :cond_2

    .line 38
    invoke-virtual {v0, v8, v9}, Lcom/shabakaty/downloader/zv1$b;->a(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 39
    monitor-exit v7

    throw v0

    .line 40
    :cond_a
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :catchall_1
    move-exception v0

    .line 41
    monitor-exit v7

    throw v0

    :cond_b
    :goto_5
    if-eqz p1, :cond_c

    .line 42
    sget-object v0, Lcom/shabakaty/downloader/ry4;->b:Lcom/shabakaty/downloader/ts1;

    invoke-virtual {v3, v0, v6}, Lcom/shabakaty/downloader/zv1;->j(Lcom/shabakaty/downloader/ts1;Z)V

    :cond_c
    return-void
.end method

.method public h(ZII)V
    .locals 11

    if-eqz p1, :cond_3

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/qv1$d;->s:Lcom/shabakaty/downloader/qv1;

    monitor-enter p1

    const/4 p3, 0x1

    const-wide/16 v0, 0x1

    if-eq p2, p3, :cond_2

    const/4 p3, 0x2

    if-eq p2, p3, :cond_1

    const/4 p3, 0x3

    if-eq p2, p3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/shabakaty/downloader/qv1$d;->s:Lcom/shabakaty/downloader/qv1;

    .line 3
    iget-wide v2, p2, Lcom/shabakaty/downloader/qv1;->H:J

    add-long/2addr v2, v0

    .line 4
    iput-wide v2, p2, Lcom/shabakaty/downloader/qv1;->H:J

    .line 5
    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p2, p0, Lcom/shabakaty/downloader/qv1$d;->s:Lcom/shabakaty/downloader/qv1;

    .line 7
    iget-wide v2, p2, Lcom/shabakaty/downloader/qv1;->G:J

    add-long/2addr v2, v0

    .line 8
    iput-wide v2, p2, Lcom/shabakaty/downloader/qv1;->G:J

    goto :goto_0

    .line 9
    :cond_2
    iget-object p2, p0, Lcom/shabakaty/downloader/qv1$d;->s:Lcom/shabakaty/downloader/qv1;

    .line 10
    iget-wide v2, p2, Lcom/shabakaty/downloader/qv1;->E:J

    add-long/2addr v2, v0

    .line 11
    iput-wide v2, p2, Lcom/shabakaty/downloader/qv1;->E:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :goto_0
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/shabakaty/downloader/qv1$d;->s:Lcom/shabakaty/downloader/qv1;

    .line 14
    iget-object p1, p1, Lcom/shabakaty/downloader/qv1;->z:Lcom/shabakaty/downloader/gl4;

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/shabakaty/downloader/qv1$d;->s:Lcom/shabakaty/downloader/qv1;

    .line 16
    iget-object v1, v1, Lcom/shabakaty/downloader/qv1;->u:Ljava/lang/String;

    const-string v2, " ping"

    .line 17
    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/ni4;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-wide/16 v0, 0x0

    const/4 v7, 0x1

    .line 18
    new-instance v2, Lcom/shabakaty/downloader/qv1$d$b;

    move-object v3, v2

    move-object v4, v6

    move v5, v7

    move-object v8, p0

    move v9, p2

    move v10, p3

    invoke-direct/range {v3 .. v10}, Lcom/shabakaty/downloader/qv1$d$b;-><init>(Ljava/lang/String;ZLjava/lang/String;ZLcom/shabakaty/downloader/qv1$d;II)V

    invoke-virtual {p1, v2, v0, v1}, Lcom/shabakaty/downloader/gl4;->c(Lcom/shabakaty/downloader/wk4;J)V

    :goto_1
    return-void
.end method

.method public i(IIIZ)V
    .locals 0

    return-void
.end method

.method public invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/s41;->u:Lcom/shabakaty/downloader/s41;

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/shabakaty/downloader/qv1$d;->r:Lcom/shabakaty/downloader/yv1;

    invoke-virtual {v2, p0}, Lcom/shabakaty/downloader/yv1;->c(Lcom/shabakaty/downloader/yv1$b;)V

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/shabakaty/downloader/qv1$d;->r:Lcom/shabakaty/downloader/yv1;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p0}, Lcom/shabakaty/downloader/yv1;->b(ZLcom/shabakaty/downloader/yv1$b;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget-object v2, Lcom/shabakaty/downloader/s41;->s:Lcom/shabakaty/downloader/s41;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    sget-object v0, Lcom/shabakaty/downloader/s41;->x:Lcom/shabakaty/downloader/s41;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6
    iget-object v3, p0, Lcom/shabakaty/downloader/qv1$d;->s:Lcom/shabakaty/downloader/qv1;

    invoke-virtual {v3, v2, v0, v1}, Lcom/shabakaty/downloader/qv1;->a(Lcom/shabakaty/downloader/s41;Lcom/shabakaty/downloader/s41;Ljava/io/IOException;)V

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception v2

    move-object v3, v2

    move-object v2, v0

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v2, v0

    .line 7
    :goto_1
    :try_start_2
    sget-object v0, Lcom/shabakaty/downloader/s41;->t:Lcom/shabakaty/downloader/s41;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 8
    iget-object v2, p0, Lcom/shabakaty/downloader/qv1$d;->s:Lcom/shabakaty/downloader/qv1;

    invoke-virtual {v2, v0, v0, v1}, Lcom/shabakaty/downloader/qv1;->a(Lcom/shabakaty/downloader/s41;Lcom/shabakaty/downloader/s41;Ljava/io/IOException;)V

    .line 9
    :goto_2
    iget-object v0, p0, Lcom/shabakaty/downloader/qv1$d;->r:Lcom/shabakaty/downloader/yv1;

    invoke-static {v0}, Lcom/shabakaty/downloader/ry4;->d(Ljava/io/Closeable;)V

    .line 10
    sget-object v0, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object v0

    :catchall_1
    move-exception v3

    .line 11
    :goto_3
    iget-object v4, p0, Lcom/shabakaty/downloader/qv1$d;->s:Lcom/shabakaty/downloader/qv1;

    invoke-virtual {v4, v2, v0, v1}, Lcom/shabakaty/downloader/qv1;->a(Lcom/shabakaty/downloader/s41;Lcom/shabakaty/downloader/s41;Ljava/io/IOException;)V

    .line 12
    iget-object v0, p0, Lcom/shabakaty/downloader/qv1$d;->r:Lcom/shabakaty/downloader/yv1;

    invoke-static {v0}, Lcom/shabakaty/downloader/ry4;->d(Ljava/io/Closeable;)V

    throw v3
.end method

.method public j(IILjava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ps1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v5, p0, Lcom/shabakaty/downloader/qv1$d;->s:Lcom/shabakaty/downloader/qv1;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    monitor-enter v5

    .line 3
    :try_start_0
    iget-object p1, v5, Lcom/shabakaty/downloader/qv1;->S:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    sget-object p1, Lcom/shabakaty/downloader/s41;->t:Lcom/shabakaty/downloader/s41;

    invoke-virtual {v5, p2, p1}, Lcom/shabakaty/downloader/qv1;->k(ILcom/shabakaty/downloader/s41;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit v5

    goto :goto_0

    .line 6
    :cond_0
    :try_start_1
    iget-object p1, v5, Lcom/shabakaty/downloader/qv1;->S:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    monitor-exit v5

    .line 8
    iget-object p1, v5, Lcom/shabakaty/downloader/qv1;->A:Lcom/shabakaty/downloader/gl4;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v5, Lcom/shabakaty/downloader/qv1;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] onRequest"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v8, 0x0

    const/4 v4, 0x1

    .line 9
    new-instance v10, Lcom/shabakaty/downloader/uv1;

    move-object v0, v10

    move-object v1, v3

    move v2, v4

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/shabakaty/downloader/uv1;-><init>(Ljava/lang/String;ZLjava/lang/String;ZLcom/shabakaty/downloader/qv1;ILjava/util/List;)V

    invoke-virtual {p1, v10, v8, v9}, Lcom/shabakaty/downloader/gl4;->c(Lcom/shabakaty/downloader/wk4;J)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 10
    monitor-exit v5

    throw p1
.end method

.method public l(ILcom/shabakaty/downloader/s41;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qv1$d;->s:Lcom/shabakaty/downloader/qv1;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/qv1;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v6, p0, Lcom/shabakaty/downloader/qv1$d;->s:Lcom/shabakaty/downloader/qv1;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, v6, Lcom/shabakaty/downloader/qv1;->A:Lcom/shabakaty/downloader/gl4;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v6, Lcom/shabakaty/downloader/qv1;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] onReset"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4
    new-instance v9, Lcom/shabakaty/downloader/vv1;

    const/4 v5, 0x1

    move-object v1, v9

    move-object v2, v4

    move v3, v5

    move v7, p1

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/shabakaty/downloader/vv1;-><init>(Ljava/lang/String;ZLjava/lang/String;ZLcom/shabakaty/downloader/qv1;ILcom/shabakaty/downloader/s41;)V

    const-wide/16 p1, 0x0

    invoke-virtual {v0, v9, p1, p2}, Lcom/shabakaty/downloader/gl4;->c(Lcom/shabakaty/downloader/wk4;J)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/qv1$d;->s:Lcom/shabakaty/downloader/qv1;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/qv1;->d(I)Lcom/shabakaty/downloader/zv1;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/zv1;->k(Lcom/shabakaty/downloader/s41;)V

    :cond_1
    return-void
.end method
