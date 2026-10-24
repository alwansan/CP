.class public Lcom/shabakaty/downloader/xk4;
.super Ljava/lang/Object;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final h:Ljava/util/concurrent/ExecutorService;

.field public static final i:Ljava/util/concurrent/Executor;

.field public static final j:Ljava/util/concurrent/Executor;

.field public static k:Lcom/shabakaty/downloader/xk4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xk4<",
            "*>;"
        }
    .end annotation
.end field

.field public static l:Lcom/shabakaty/downloader/xk4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xk4<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static m:Lcom/shabakaty/downloader/xk4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xk4<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Z

.field public c:Z

.field public d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTResult;"
        }
    .end annotation
.end field

.field public e:Ljava/lang/Exception;

.field public f:Z

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/wd0<",
            "TTResult;",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/um;->c:Lcom/shabakaty/downloader/um;

    iget-object v1, v0, Lcom/shabakaty/downloader/um;->a:Ljava/util/concurrent/ExecutorService;

    .line 2
    sput-object v1, Lcom/shabakaty/downloader/xk4;->h:Ljava/util/concurrent/ExecutorService;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/um;->b:Ljava/util/concurrent/Executor;

    .line 4
    sput-object v0, Lcom/shabakaty/downloader/xk4;->i:Ljava/util/concurrent/Executor;

    .line 5
    sget-object v0, Lcom/shabakaty/downloader/a7;->b:Lcom/shabakaty/downloader/a7;

    iget-object v0, v0, Lcom/shabakaty/downloader/a7;->a:Ljava/util/concurrent/Executor;

    .line 6
    sput-object v0, Lcom/shabakaty/downloader/xk4;->j:Ljava/util/concurrent/Executor;

    .line 7
    new-instance v0, Lcom/shabakaty/downloader/xk4;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/xk4;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/shabakaty/downloader/xk4;->k:Lcom/shabakaty/downloader/xk4;

    .line 8
    new-instance v0, Lcom/shabakaty/downloader/xk4;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/xk4;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/shabakaty/downloader/xk4;->l:Lcom/shabakaty/downloader/xk4;

    .line 9
    new-instance v0, Lcom/shabakaty/downloader/xk4;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/xk4;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/shabakaty/downloader/xk4;->m:Lcom/shabakaty/downloader/xk4;

    .line 10
    new-instance v0, Lcom/shabakaty/downloader/xk4;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/xk4;-><init>(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/xk4;->a:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/xk4;->g:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/xk4;->a:Ljava/lang/Object;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/xk4;->g:Ljava/util/List;

    .line 7
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/xk4;->g(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/xk4;->a:Ljava/lang/Object;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/xk4;->g:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xk4;->f()Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/xk4;->g(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public static a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/shabakaty/downloader/xk4;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/shabakaty/downloader/xk4<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/fq1;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/fq1;-><init>(I)V

    .line 2
    :try_start_0
    new-instance v1, Lcom/shabakaty/downloader/tk4;

    invoke-direct {v1, v0, p0}, Lcom/shabakaty/downloader/tk4;-><init>(Lcom/shabakaty/downloader/fq1;Ljava/util/concurrent/Callable;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/v61;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/v61;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/fq1;->g1(Ljava/lang/Exception;)V

    .line 4
    :goto_0
    iget-object p0, v0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    check-cast p0, Lcom/shabakaty/downloader/xk4;

    return-object p0
.end method


# virtual methods
.method public b(Lcom/shabakaty/downloader/wd0;)Lcom/shabakaty/downloader/xk4;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/wd0<",
            "TTResult;TTContinuationResult;>;)",
            "Lcom/shabakaty/downloader/xk4<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/xk4;->i:Ljava/util/concurrent/Executor;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/fq1;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/fq1;-><init>(I)V

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/xk4;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 4
    :try_start_0
    iget-object v3, p0, Lcom/shabakaty/downloader/xk4;->a:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    iget-boolean v4, p0, Lcom/shabakaty/downloader/xk4;->b:Z

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_0

    .line 6
    :try_start_2
    iget-object v3, p0, Lcom/shabakaty/downloader/xk4;->g:Ljava/util/List;

    new-instance v5, Lcom/shabakaty/downloader/rk4;

    invoke-direct {v5, p0, v1, p1, v0}, Lcom/shabakaty/downloader/rk4;-><init>(Lcom/shabakaty/downloader/xk4;Lcom/shabakaty/downloader/fq1;Lcom/shabakaty/downloader/wd0;Ljava/util/concurrent/Executor;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v4, :cond_1

    .line 8
    :try_start_3
    new-instance v2, Lcom/shabakaty/downloader/sk4;

    invoke-direct {v2, v1, p1, p0}, Lcom/shabakaty/downloader/sk4;-><init>(Lcom/shabakaty/downloader/fq1;Lcom/shabakaty/downloader/wd0;Lcom/shabakaty/downloader/xk4;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    new-instance v0, Lcom/shabakaty/downloader/v61;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/v61;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/fq1;->g1(Ljava/lang/Exception;)V

    .line 10
    :cond_1
    :goto_0
    iget-object p1, v1, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/xk4;

    return-object p1

    :catchall_0
    move-exception p1

    .line 11
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1

    :catchall_1
    move-exception p1

    .line 12
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1
.end method

.method public c()Ljava/lang/Exception;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xk4;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/xk4;->e:Ljava/lang/Exception;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 3
    iput-boolean v2, p0, Lcom/shabakaty/downloader/xk4;->f:Z

    .line 4
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xk4;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xk4;->c()Ljava/lang/Exception;

    move-result-object v1

    if-eqz v1, :cond_0

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

.method public final e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xk4;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/xk4;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/wd0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :try_start_1
    invoke-interface {v2, p0}, Lcom/shabakaty/downloader/wd0;->a(Lcom/shabakaty/downloader/xk4;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    .line 5
    throw v1

    :cond_0
    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lcom/shabakaty/downloader/xk4;->g:Ljava/util/List;

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public f()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xk4;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/shabakaty/downloader/xk4;->b:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 3
    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/shabakaty/downloader/xk4;->b:Z

    .line 5
    iput-boolean v1, p0, Lcom/shabakaty/downloader/xk4;->c:Z

    .line 6
    iget-object v2, p0, Lcom/shabakaty/downloader/xk4;->a:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xk4;->e()V

    .line 8
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public g(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xk4;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/shabakaty/downloader/xk4;->b:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 3
    monitor-exit v0

    return p1

    :cond_0
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/shabakaty/downloader/xk4;->b:Z

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/xk4;->d:Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Lcom/shabakaty/downloader/xk4;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xk4;->e()V

    .line 8
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
