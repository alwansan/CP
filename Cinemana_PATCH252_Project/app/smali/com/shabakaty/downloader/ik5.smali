.class public abstract Lcom/shabakaty/downloader/ik5;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.1.1"

# interfaces
.implements Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1

    move-object v0, p0

    check-cast v0, Lcom/shabakaty/downloader/bu2;

    .line 1
    iget-object v0, v0, Lcom/shabakaty/downloader/bu2;->r:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1
.end method

.method public final invokeAll(Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;)",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "TT;>;>;"
        }
    .end annotation

    move-object v0, p0

    check-cast v0, Lcom/shabakaty/downloader/bu2;

    .line 1
    iget-object v0, v0, Lcom/shabakaty/downloader/bu2;->r:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "TT;>;>;"
        }
    .end annotation

    move-object v0, p0

    check-cast v0, Lcom/shabakaty/downloader/bu2;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/bu2;->r:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 4
    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final invokeAny(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;)TT;"
        }
    .end annotation

    move-object v0, p0

    check-cast v0, Lcom/shabakaty/downloader/bu2;

    .line 1
    iget-object v0, v0, Lcom/shabakaty/downloader/bu2;->r:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->invokeAny(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    move-object v0, p0

    check-cast v0, Lcom/shabakaty/downloader/bu2;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/bu2;->r:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 4
    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/concurrent/ExecutorService;->invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final isShutdown()Z
    .locals 1

    move-object v0, p0

    check-cast v0, Lcom/shabakaty/downloader/bu2;

    .line 1
    iget-object v0, v0, Lcom/shabakaty/downloader/bu2;->r:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    return v0
.end method

.method public final isTerminated()Z
    .locals 1

    move-object v0, p0

    check-cast v0, Lcom/shabakaty/downloader/bu2;

    .line 1
    iget-object v0, v0, Lcom/shabakaty/downloader/bu2;->r:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    return v0
.end method

.method public final shutdown()V
    .locals 1

    move-object v0, p0

    check-cast v0, Lcom/shabakaty/downloader/bu2;

    .line 1
    iget-object v0, v0, Lcom/shabakaty/downloader/bu2;->r:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public final shutdownNow()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    check-cast v0, Lcom/shabakaty/downloader/bu2;

    .line 1
    iget-object v0, v0, Lcom/shabakaty/downloader/bu2;->r:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    move-object v0, p0

    check-cast v0, Lcom/shabakaty/downloader/bu2;

    .line 1
    iget-object v0, v0, Lcom/shabakaty/downloader/bu2;->r:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public final submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    move-object v0, p0

    check-cast v0, Lcom/shabakaty/downloader/bu2;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/bu2;->r:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 4
    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public final submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    move-object v0, p0

    check-cast v0, Lcom/shabakaty/downloader/bu2;

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/bu2;->r:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 6
    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    move-object v0, p0

    check-cast v0, Lcom/shabakaty/downloader/bu2;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/bu2;->r:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
