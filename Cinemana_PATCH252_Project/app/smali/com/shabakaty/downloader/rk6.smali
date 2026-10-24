.class public final Lcom/shabakaty/downloader/rk6;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tasks@@17.2.0"

# interfaces
.implements Lcom/shabakaty/downloader/jd7;
.implements Lcom/shabakaty/downloader/g63;
.implements Lcom/shabakaty/downloader/p63;
.implements Lcom/shabakaty/downloader/a73;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/jd7<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:I

.field public final s:Ljava/util/concurrent/Executor;

.field public final t:Ljava/lang/Object;

.field public u:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/a73;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/shabakaty/downloader/rk6;->r:I

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/rk6;->t:Ljava/lang/Object;

    .line 15
    iput-object p1, p0, Lcom/shabakaty/downloader/rk6;->s:Ljava/util/concurrent/Executor;

    .line 16
    iput-object p2, p0, Lcom/shabakaty/downloader/rk6;->u:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/g63;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/rk6;->r:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/rk6;->t:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/rk6;->s:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p2, p0, Lcom/shabakaty/downloader/rk6;->u:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/k63;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/rk6;->r:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/rk6;->t:Ljava/lang/Object;

    .line 7
    iput-object p1, p0, Lcom/shabakaty/downloader/rk6;->s:Ljava/util/concurrent/Executor;

    .line 8
    iput-object p2, p0, Lcom/shabakaty/downloader/rk6;->u:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/kh4;Lcom/shabakaty/downloader/ye7;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/shabakaty/downloader/rk6;->r:I

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/shabakaty/downloader/rk6;->s:Ljava/util/concurrent/Executor;

    .line 19
    iput-object p2, p0, Lcom/shabakaty/downloader/rk6;->t:Ljava/lang/Object;

    .line 20
    iput-object p3, p0, Lcom/shabakaty/downloader/rk6;->u:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/p63;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/shabakaty/downloader/rk6;->r:I

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/rk6;->t:Ljava/lang/Object;

    .line 11
    iput-object p1, p0, Lcom/shabakaty/downloader/rk6;->s:Ljava/util/concurrent/Executor;

    .line 12
    iput-object p2, p0, Lcom/shabakaty/downloader/rk6;->u:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/rk6;->u:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/ye7;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ye7;->r()Z

    return-void
.end method

.method public final b(Lcom/shabakaty/downloader/uk4;)V
    .locals 3

    iget v0, p0, Lcom/shabakaty/downloader/rk6;->r:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 1
    :pswitch_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/uk4;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/rk6;->t:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/shabakaty/downloader/rk6;->u:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/a73;

    if-nez v2, :cond_0

    .line 4
    monitor-exit v0

    goto :goto_0

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/rk6;->s:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/shabakaty/downloader/md7;

    invoke-direct {v2, p0, p1, v1}, Lcom/shabakaty/downloader/md7;-><init>(Lcom/shabakaty/downloader/rk6;Lcom/shabakaty/downloader/uk4;Lcom/shabakaty/downloader/jo2;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void

    .line 8
    :pswitch_1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/uk4;->l()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/shabakaty/downloader/uk4;->j()Z

    move-result v0

    if-nez v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/shabakaty/downloader/rk6;->t:Ljava/lang/Object;

    monitor-enter v0

    .line 10
    :try_start_2
    iget-object v2, p0, Lcom/shabakaty/downloader/rk6;->u:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/p63;

    if-nez v2, :cond_2

    .line 11
    monitor-exit v0

    goto :goto_1

    .line 12
    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 13
    iget-object v0, p0, Lcom/shabakaty/downloader/rk6;->s:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/shabakaty/downloader/md7;

    invoke-direct {v2, p0, p1, v1}, Lcom/shabakaty/downloader/md7;-><init>(Lcom/shabakaty/downloader/rk6;Lcom/shabakaty/downloader/uk4;Lcom/shabakaty/downloader/io2;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 14
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_3
    :goto_1
    return-void

    .line 15
    :pswitch_2
    iget-object v0, p0, Lcom/shabakaty/downloader/rk6;->t:Ljava/lang/Object;

    monitor-enter v0

    .line 16
    :try_start_4
    iget-object v1, p0, Lcom/shabakaty/downloader/rk6;->u:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/k63;

    if-nez v1, :cond_4

    .line 17
    monitor-exit v0

    goto :goto_2

    .line 18
    :cond_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 19
    iget-object v0, p0, Lcom/shabakaty/downloader/rk6;->s:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/shabakaty/downloader/md7;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/downloader/md7;-><init>(Lcom/shabakaty/downloader/rk6;Lcom/shabakaty/downloader/uk4;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_2
    return-void

    :catchall_2
    move-exception p1

    .line 20
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1

    .line 21
    :pswitch_3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/uk4;->j()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 22
    iget-object p1, p0, Lcom/shabakaty/downloader/rk6;->t:Ljava/lang/Object;

    monitor-enter p1

    .line 23
    :try_start_6
    iget-object v0, p0, Lcom/shabakaty/downloader/rk6;->u:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/g63;

    if-nez v0, :cond_5

    .line 24
    monitor-exit p1

    goto :goto_3

    .line 25
    :cond_5
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 26
    iget-object p1, p0, Lcom/shabakaty/downloader/rk6;->s:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/shabakaty/downloader/zz6;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/zz6;-><init>(Lcom/shabakaty/downloader/rk6;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_3

    :catchall_3
    move-exception v0

    .line 27
    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    :cond_6
    :goto_3
    return-void

    .line 28
    :goto_4
    iget-object v0, p0, Lcom/shabakaty/downloader/rk6;->s:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/shabakaty/downloader/md7;

    invoke-direct {v2, p0, p1, v1}, Lcom/shabakaty/downloader/md7;-><init>(Lcom/shabakaty/downloader/rk6;Lcom/shabakaty/downloader/uk4;Lcom/shabakaty/downloader/ko2;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public e(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/rk6;->u:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/ye7;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ye7;->p(Ljava/lang/Exception;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTContinuationResult;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/rk6;->u:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/ye7;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ye7;->q(Ljava/lang/Object;)V

    return-void
.end method
