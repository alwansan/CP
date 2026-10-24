.class public final Lcom/shabakaty/downloader/ye7;
.super Lcom/shabakaty/downloader/uk4;
.source "com.google.android.gms:play-services-tasks@@17.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/uk4<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lcom/shabakaty/downloader/ic7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ic7<",
            "TTResult;>;"
        }
    .end annotation
.end field

.field public c:Z

.field public volatile d:Z

.field public e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTResult;"
        }
    .end annotation
.end field

.field public f:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/uk4;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/ye7;->a:Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/ic7;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ic7;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/ye7;->b:Lcom/shabakaty/downloader/ic7;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/g63;)Lcom/shabakaty/downloader/uk4;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/shabakaty/downloader/g63;",
            ")",
            "Lcom/shabakaty/downloader/uk4<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ye7;->b:Lcom/shabakaty/downloader/ic7;

    new-instance v1, Lcom/shabakaty/downloader/rk6;

    .line 2
    sget v2, Lcom/shabakaty/downloader/if7;->a:I

    invoke-direct {v1, p1, p2}, Lcom/shabakaty/downloader/rk6;-><init>(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/g63;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ic7;->c(Lcom/shabakaty/downloader/jd7;)V

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ye7;->u()V

    return-object p0
.end method

.method public final b(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/p63;)Lcom/shabakaty/downloader/uk4;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/shabakaty/downloader/p63;",
            ")",
            "Lcom/shabakaty/downloader/uk4<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ye7;->b:Lcom/shabakaty/downloader/ic7;

    new-instance v1, Lcom/shabakaty/downloader/rk6;

    .line 2
    sget v2, Lcom/shabakaty/downloader/if7;->a:I

    invoke-direct {v1, p1, p2}, Lcom/shabakaty/downloader/rk6;-><init>(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/p63;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ic7;->c(Lcom/shabakaty/downloader/jd7;)V

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ye7;->u()V

    return-object p0
.end method

.method public final c(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/a73;)Lcom/shabakaty/downloader/uk4;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/shabakaty/downloader/a73<",
            "-TTResult;>;)",
            "Lcom/shabakaty/downloader/uk4<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ye7;->b:Lcom/shabakaty/downloader/ic7;

    new-instance v1, Lcom/shabakaty/downloader/rk6;

    .line 2
    sget v2, Lcom/shabakaty/downloader/if7;->a:I

    invoke-direct {v1, p1, p2}, Lcom/shabakaty/downloader/rk6;-><init>(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/a73;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ic7;->c(Lcom/shabakaty/downloader/jd7;)V

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ye7;->u()V

    return-object p0
.end method

.method public final d(Lcom/shabakaty/downloader/td0;)Lcom/shabakaty/downloader/uk4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/td0<",
            "TTResult;TTContinuationResult;>;)",
            "Lcom/shabakaty/downloader/uk4<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/dl4;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/shabakaty/downloader/ye7;->e(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/td0;)Lcom/shabakaty/downloader/uk4;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/td0;)Lcom/shabakaty/downloader/uk4;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/shabakaty/downloader/td0<",
            "TTResult;TTContinuationResult;>;)",
            "Lcom/shabakaty/downloader/uk4<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ye7;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ye7;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/ye7;->b:Lcom/shabakaty/downloader/ic7;

    new-instance v2, Lcom/shabakaty/downloader/lt5;

    .line 3
    sget v3, Lcom/shabakaty/downloader/if7;->a:I

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, v0, v3}, Lcom/shabakaty/downloader/lt5;-><init>(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/td0;Lcom/shabakaty/downloader/ye7;I)V

    .line 4
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/ic7;->c(Lcom/shabakaty/downloader/jd7;)V

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ye7;->u()V

    return-object v0
.end method

.method public final f(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/td0;)Lcom/shabakaty/downloader/uk4;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/shabakaty/downloader/td0<",
            "TTResult;",
            "Lcom/shabakaty/downloader/uk4<",
            "TTContinuationResult;>;>;)",
            "Lcom/shabakaty/downloader/uk4<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ye7;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ye7;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/ye7;->b:Lcom/shabakaty/downloader/ic7;

    new-instance v2, Lcom/shabakaty/downloader/lt5;

    .line 3
    sget v3, Lcom/shabakaty/downloader/if7;->a:I

    const/4 v3, 0x1

    invoke-direct {v2, p1, p2, v0, v3}, Lcom/shabakaty/downloader/lt5;-><init>(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/td0;Lcom/shabakaty/downloader/ye7;I)V

    .line 4
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/ic7;->c(Lcom/shabakaty/downloader/jd7;)V

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ye7;->u()V

    return-object v0
.end method

.method public final g()Ljava/lang/Exception;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ye7;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/ye7;->f:Ljava/lang/Exception;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final h()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ye7;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/shabakaty/downloader/ye7;->c:Z

    const-string v2, "Task is not yet complete"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/a;->l(ZLjava/lang/Object;)V

    .line 3
    iget-boolean v1, p0, Lcom/shabakaty/downloader/ye7;->d:Z

    if-nez v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/ye7;->f:Ljava/lang/Exception;

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/ye7;->e:Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    .line 6
    :cond_0
    new-instance v1, Lcom/shabakaty/downloader/lv3;

    iget-object v2, p0, Lcom/shabakaty/downloader/ye7;->f:Ljava/lang/Exception;

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/lv3;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 7
    :cond_1
    new-instance v1, Ljava/util/concurrent/CancellationException;

    const-string v2, "Task is already canceled."

    invoke-direct {v1, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final i(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TX;>;)TTResult;^TX;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ye7;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/shabakaty/downloader/ye7;->c:Z

    const-string v2, "Task is not yet complete"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/a;->l(ZLjava/lang/Object;)V

    .line 3
    iget-boolean v1, p0, Lcom/shabakaty/downloader/ye7;->d:Z

    if-nez v1, :cond_2

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/ye7;->f:Ljava/lang/Exception;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/ye7;->f:Ljava/lang/Exception;

    if-nez p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/shabakaty/downloader/ye7;->e:Ljava/lang/Object;

    monitor-exit v0

    return-object p1

    .line 7
    :cond_0
    new-instance p1, Lcom/shabakaty/downloader/lv3;

    iget-object v1, p0, Lcom/shabakaty/downloader/ye7;->f:Ljava/lang/Exception;

    invoke-direct {p1, v1}, Lcom/shabakaty/downloader/lv3;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/ye7;->f:Ljava/lang/Exception;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 9
    :cond_2
    new-instance p1, Ljava/util/concurrent/CancellationException;

    const-string v1, "Task is already canceled."

    invoke-direct {p1, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/ye7;->d:Z

    return v0
.end method

.method public final k()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ye7;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/shabakaty/downloader/ye7;->c:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final l()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ye7;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/shabakaty/downloader/ye7;->c:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/shabakaty/downloader/ye7;->d:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/shabakaty/downloader/ye7;->f:Ljava/lang/Exception;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final m(Lcom/shabakaty/downloader/kh4;)Lcom/shabakaty/downloader/uk4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/kh4<",
            "TTResult;TTContinuationResult;>;)",
            "Lcom/shabakaty/downloader/uk4<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/dl4;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/shabakaty/downloader/ye7;->n(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/kh4;)Lcom/shabakaty/downloader/uk4;

    move-result-object p1

    return-object p1
.end method

.method public final n(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/kh4;)Lcom/shabakaty/downloader/uk4;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/shabakaty/downloader/kh4<",
            "TTResult;TTContinuationResult;>;)",
            "Lcom/shabakaty/downloader/uk4<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ye7;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ye7;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/ye7;->b:Lcom/shabakaty/downloader/ic7;

    new-instance v2, Lcom/shabakaty/downloader/rk6;

    .line 3
    sget v3, Lcom/shabakaty/downloader/if7;->a:I

    invoke-direct {v2, p1, p2, v0}, Lcom/shabakaty/downloader/rk6;-><init>(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/kh4;Lcom/shabakaty/downloader/ye7;)V

    .line 4
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/ic7;->c(Lcom/shabakaty/downloader/jd7;)V

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ye7;->u()V

    return-object v0
.end method

.method public final o(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/k63;)Lcom/shabakaty/downloader/uk4;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/shabakaty/downloader/k63<",
            "TTResult;>;)",
            "Lcom/shabakaty/downloader/uk4<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ye7;->b:Lcom/shabakaty/downloader/ic7;

    new-instance v1, Lcom/shabakaty/downloader/rk6;

    .line 2
    sget v2, Lcom/shabakaty/downloader/if7;->a:I

    invoke-direct {v1, p1, p2}, Lcom/shabakaty/downloader/rk6;-><init>(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/k63;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ic7;->c(Lcom/shabakaty/downloader/jd7;)V

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ye7;->u()V

    return-object p0
.end method

.method public final p(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "Exception must not be null"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/a;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ye7;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ye7;->t()V

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/shabakaty/downloader/ye7;->c:Z

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/ye7;->f:Ljava/lang/Exception;

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object p1, p0, Lcom/shabakaty/downloader/ye7;->b:Lcom/shabakaty/downloader/ic7;

    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/ic7;->b(Lcom/shabakaty/downloader/uk4;)V

    return-void

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final q(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ye7;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ye7;->t()V

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/shabakaty/downloader/ye7;->c:Z

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/ye7;->e:Ljava/lang/Object;

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object p1, p0, Lcom/shabakaty/downloader/ye7;->b:Lcom/shabakaty/downloader/ic7;

    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/ic7;->b(Lcom/shabakaty/downloader/uk4;)V

    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final r()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ye7;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/shabakaty/downloader/ye7;->c:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 3
    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/shabakaty/downloader/ye7;->c:Z

    .line 5
    iput-boolean v1, p0, Lcom/shabakaty/downloader/ye7;->d:Z

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/ye7;->b:Lcom/shabakaty/downloader/ic7;

    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/ic7;->b(Lcom/shabakaty/downloader/uk4;)V

    return v1

    :catchall_0
    move-exception v1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final s(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ye7;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/shabakaty/downloader/ye7;->c:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 3
    monitor-exit v0

    return p1

    :cond_0
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/shabakaty/downloader/ye7;->c:Z

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/ye7;->e:Ljava/lang/Object;

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object p1, p0, Lcom/shabakaty/downloader/ye7;->b:Lcom/shabakaty/downloader/ic7;

    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/ic7;->b(Lcom/shabakaty/downloader/uk4;)V

    return v1

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final t()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/ye7;->c:Z

    if-eqz v0, :cond_5

    .line 2
    sget v0, Lcom/shabakaty/downloader/p11;->r:I

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ye7;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ye7;->g()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "failure"

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ye7;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ye7;->h()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x7

    const-string v3, "result "

    invoke-static {v2, v3, v1}, Lcom/shabakaty/downloader/re;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ye7;->j()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "cancellation"

    goto :goto_0

    :cond_2
    const-string v1, "unknown issue"

    .line 8
    :goto_0
    new-instance v2, Lcom/shabakaty/downloader/p11;

    const-string v3, "Complete with: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {v2, v1, v0}, Lcom/shabakaty/downloader/p11;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 9
    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v0, "DuplicateTaskCompletionException can only be created from completed Task."

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 10
    :goto_2
    throw v2

    :cond_5
    return-void
.end method

.method public final u()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ye7;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/shabakaty/downloader/ye7;->c:Z

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/ye7;->b:Lcom/shabakaty/downloader/ic7;

    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/ic7;->b(Lcom/shabakaty/downloader/uk4;)V

    return-void

    :catchall_0
    move-exception v1

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
