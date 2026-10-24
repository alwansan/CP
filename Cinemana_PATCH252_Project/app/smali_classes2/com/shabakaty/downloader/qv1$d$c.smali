.class public final Lcom/shabakaty/downloader/qv1$d$c;
.super Lcom/shabakaty/downloader/wk4;
.source "TaskQueue.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/qv1$d;->c(ZLcom/shabakaty/downloader/q24;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/shabakaty/downloader/qv1$d;

.field public final synthetic f:Z

.field public final synthetic g:Lcom/shabakaty/downloader/q24;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;ZLcom/shabakaty/downloader/qv1$d;ZLcom/shabakaty/downloader/q24;)V
    .locals 0

    iput-object p5, p0, Lcom/shabakaty/downloader/qv1$d$c;->e:Lcom/shabakaty/downloader/qv1$d;

    iput-boolean p6, p0, Lcom/shabakaty/downloader/qv1$d$c;->f:Z

    iput-object p7, p0, Lcom/shabakaty/downloader/qv1$d$c;->g:Lcom/shabakaty/downloader/q24;

    .line 1
    invoke-direct {p0, p3, p4}, Lcom/shabakaty/downloader/wk4;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 21

    move-object/from16 v1, p0

    .line 1
    iget-object v13, v1, Lcom/shabakaty/downloader/qv1$d$c;->e:Lcom/shabakaty/downloader/qv1$d;

    iget-boolean v9, v1, Lcom/shabakaty/downloader/qv1$d$c;->f:Z

    iget-object v10, v1, Lcom/shabakaty/downloader/qv1$d$c;->g:Lcom/shabakaty/downloader/q24;

    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "settings"

    .line 2
    invoke-static {v10, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v14, Lcom/shabakaty/downloader/ko3;

    invoke-direct {v14}, Lcom/shabakaty/downloader/ko3;-><init>()V

    .line 4
    new-instance v15, Lcom/shabakaty/downloader/lo3;

    invoke-direct {v15}, Lcom/shabakaty/downloader/lo3;-><init>()V

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/lo3;

    invoke-direct {v0}, Lcom/shabakaty/downloader/lo3;-><init>()V

    .line 6
    iget-object v2, v13, Lcom/shabakaty/downloader/qv1$d;->s:Lcom/shabakaty/downloader/qv1;

    .line 7
    iget-object v12, v2, Lcom/shabakaty/downloader/qv1;->Q:Lcom/shabakaty/downloader/aw1;

    .line 8
    monitor-enter v12

    .line 9
    :try_start_0
    iget-object v11, v13, Lcom/shabakaty/downloader/qv1$d;->s:Lcom/shabakaty/downloader/qv1;

    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 10
    :try_start_1
    iget-object v2, v13, Lcom/shabakaty/downloader/qv1$d;->s:Lcom/shabakaty/downloader/qv1;

    .line 11
    iget-object v2, v2, Lcom/shabakaty/downloader/qv1;->K:Lcom/shabakaty/downloader/q24;

    if-eqz v9, :cond_0

    move-object v3, v10

    goto :goto_0

    .line 12
    :cond_0
    new-instance v3, Lcom/shabakaty/downloader/q24;

    invoke-direct {v3}, Lcom/shabakaty/downloader/q24;-><init>()V

    .line 13
    invoke-virtual {v3, v2}, Lcom/shabakaty/downloader/q24;->b(Lcom/shabakaty/downloader/q24;)V

    .line 14
    invoke-virtual {v3, v10}, Lcom/shabakaty/downloader/q24;->b(Lcom/shabakaty/downloader/q24;)V

    .line 15
    :goto_0
    iput-object v3, v0, Lcom/shabakaty/downloader/lo3;->r:Ljava/lang/Object;

    .line 16
    invoke-virtual {v3}, Lcom/shabakaty/downloader/q24;->a()I

    move-result v3

    int-to-long v3, v3

    .line 17
    invoke-virtual {v2}, Lcom/shabakaty/downloader/q24;->a()I

    move-result v2

    int-to-long v5, v2

    sub-long/2addr v3, v5

    iput-wide v3, v14, Lcom/shabakaty/downloader/ko3;->r:J

    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    cmp-long v2, v3, v7

    if-eqz v2, :cond_3

    .line 18
    iget-object v2, v13, Lcom/shabakaty/downloader/qv1$d;->s:Lcom/shabakaty/downloader/qv1;

    .line 19
    iget-object v2, v2, Lcom/shabakaty/downloader/qv1;->t:Ljava/util/Map;

    .line 20
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 21
    :cond_1
    iget-object v2, v13, Lcom/shabakaty/downloader/qv1$d;->s:Lcom/shabakaty/downloader/qv1;

    .line 22
    iget-object v2, v2, Lcom/shabakaty/downloader/qv1;->t:Ljava/util/Map;

    .line 23
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    new-array v3, v6, [Lcom/shabakaty/downloader/zv1;

    .line 24
    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    check-cast v2, [Lcom/shabakaty/downloader/zv1;

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    const/4 v2, 0x0

    .line 25
    :goto_2
    iput-object v2, v15, Lcom/shabakaty/downloader/lo3;->r:Ljava/lang/Object;

    .line 26
    iget-object v2, v13, Lcom/shabakaty/downloader/qv1$d;->s:Lcom/shabakaty/downloader/qv1;

    iget-object v3, v0, Lcom/shabakaty/downloader/lo3;->r:Ljava/lang/Object;

    check-cast v3, Lcom/shabakaty/downloader/q24;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "<set-?>"

    .line 27
    invoke-static {v3, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iput-object v3, v2, Lcom/shabakaty/downloader/qv1;->K:Lcom/shabakaty/downloader/q24;

    .line 29
    iget-object v2, v13, Lcom/shabakaty/downloader/qv1$d;->s:Lcom/shabakaty/downloader/qv1;

    .line 30
    iget-object v5, v2, Lcom/shabakaty/downloader/qv1;->B:Lcom/shabakaty/downloader/gl4;

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v13, Lcom/shabakaty/downloader/qv1$d;->s:Lcom/shabakaty/downloader/qv1;

    .line 32
    iget-object v3, v3, Lcom/shabakaty/downloader/qv1;->u:Ljava/lang/String;

    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " onSettings"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    .line 34
    new-instance v4, Lcom/shabakaty/downloader/rv1;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v2, v4

    move-object/from16 v3, v16

    move-object/from16 v18, v4

    move/from16 v4, v17

    move-object/from16 v19, v5

    move-object/from16 v5, v16

    const/16 v16, 0x0

    move/from16 v6, v17

    move-object v7, v13

    move-object v8, v0

    move-object/from16 v17, v11

    move-object v11, v14

    move-object/from16 v20, v12

    move-object v12, v15

    :try_start_2
    invoke-direct/range {v2 .. v12}, Lcom/shabakaty/downloader/rv1;-><init>(Ljava/lang/String;ZLjava/lang/String;ZLcom/shabakaty/downloader/qv1$d;Lcom/shabakaty/downloader/lo3;ZLcom/shabakaty/downloader/q24;Lcom/shabakaty/downloader/ko3;Lcom/shabakaty/downloader/lo3;)V

    move-object/from16 v3, v18

    move-object/from16 v2, v19

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/shabakaty/downloader/gl4;->c(Lcom/shabakaty/downloader/wk4;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 35
    :try_start_3
    monitor-exit v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 36
    :try_start_4
    iget-object v2, v13, Lcom/shabakaty/downloader/qv1$d;->s:Lcom/shabakaty/downloader/qv1;

    .line 37
    iget-object v2, v2, Lcom/shabakaty/downloader/qv1;->Q:Lcom/shabakaty/downloader/aw1;

    .line 38
    iget-object v0, v0, Lcom/shabakaty/downloader/lo3;->r:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/q24;

    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/aw1;->a(Lcom/shabakaty/downloader/q24;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_3

    :catch_0
    move-exception v0

    .line 39
    :try_start_5
    iget-object v2, v13, Lcom/shabakaty/downloader/qv1$d;->s:Lcom/shabakaty/downloader/qv1;

    .line 40
    sget-object v3, Lcom/shabakaty/downloader/s41;->t:Lcom/shabakaty/downloader/s41;

    invoke-virtual {v2, v3, v3, v0}, Lcom/shabakaty/downloader/qv1;->a(Lcom/shabakaty/downloader/s41;Lcom/shabakaty/downloader/s41;Ljava/io/IOException;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 41
    :goto_3
    monitor-exit v20

    .line 42
    iget-object v0, v15, Lcom/shabakaty/downloader/lo3;->r:Ljava/lang/Object;

    check-cast v0, [Lcom/shabakaty/downloader/zv1;

    if-eqz v0, :cond_5

    .line 43
    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    array-length v2, v0

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v2, :cond_5

    aget-object v3, v0, v6

    .line 44
    monitor-enter v3

    .line 45
    :try_start_6
    iget-wide v7, v14, Lcom/shabakaty/downloader/ko3;->r:J

    .line 46
    iget-wide v9, v3, Lcom/shabakaty/downloader/zv1;->d:J

    add-long/2addr v9, v7

    iput-wide v9, v3, Lcom/shabakaty/downloader/zv1;->d:J

    cmp-long v9, v7, v4

    if-lez v9, :cond_4

    .line 47
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 48
    :cond_4
    monitor-exit v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_5
    const-wide/16 v2, -0x1

    return-wide v2

    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object/from16 v17, v11

    move-object/from16 v20, v12

    .line 49
    :goto_5
    :try_start_7
    monitor-exit v17

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object/from16 v20, v12

    .line 50
    :goto_6
    monitor-exit v20

    throw v0
.end method
