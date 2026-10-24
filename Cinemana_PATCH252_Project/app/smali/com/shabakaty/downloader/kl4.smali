.class public final Lcom/shabakaty/downloader/kl4;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tasks@@17.2.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/kl4$c;,
        Lcom/shabakaty/downloader/kl4$b;,
        Lcom/shabakaty/downloader/kl4$a;
    }
.end annotation


# direct methods
.method public static a(Lcom/shabakaty/downloader/uk4;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/uk4<",
            "TTResult;>;)TTResult;"
        }
    .end annotation

    const-string v0, "Must not be called on the main application thread"

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->h(Ljava/lang/String;)V

    const-string v0, "Task must not be null"

    .line 2
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/a;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uk4;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p0}, Lcom/shabakaty/downloader/kl4;->h(Lcom/shabakaty/downloader/uk4;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/kl4$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/kl4$b;-><init>(Lcom/shabakaty/downloader/md7;)V

    .line 6
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/kl4;->i(Lcom/shabakaty/downloader/uk4;Lcom/shabakaty/downloader/kl4$a;)V

    .line 7
    iget-object v0, v0, Lcom/shabakaty/downloader/kl4$b;->r:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 8
    invoke-static {p0}, Lcom/shabakaty/downloader/kl4;->h(Lcom/shabakaty/downloader/uk4;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/shabakaty/downloader/uk4;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/uk4<",
            "TTResult;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TTResult;"
        }
    .end annotation

    const-string v0, "Must not be called on the main application thread"

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->h(Ljava/lang/String;)V

    const-string v0, "Task must not be null"

    .line 2
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/a;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "TimeUnit must not be null"

    .line 3
    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/a;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uk4;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {p0}, Lcom/shabakaty/downloader/kl4;->h(Lcom/shabakaty/downloader/uk4;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/kl4$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/kl4$b;-><init>(Lcom/shabakaty/downloader/md7;)V

    .line 7
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/kl4;->i(Lcom/shabakaty/downloader/uk4;Lcom/shabakaty/downloader/kl4$a;)V

    .line 8
    iget-object v0, v0, Lcom/shabakaty/downloader/kl4$b;->r:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    invoke-static {p0}, Lcom/shabakaty/downloader/kl4;->h(Lcom/shabakaty/downloader/uk4;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 10
    :cond_1
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    const-string p1, "Timed out waiting for Task"

    invoke-direct {p0, p1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/shabakaty/downloader/uk4;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Callable<",
            "TTResult;>;)",
            "Lcom/shabakaty/downloader/uk4<",
            "TTResult;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "Executor must not be null"

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/a;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/ye7;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ye7;-><init>()V

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/md7;

    invoke-direct {v1, v0, p1}, Lcom/shabakaty/downloader/md7;-><init>(Lcom/shabakaty/downloader/ye7;Ljava/util/concurrent/Callable;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static d(Ljava/lang/Exception;)Lcom/shabakaty/downloader/uk4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Exception;",
            ")",
            "Lcom/shabakaty/downloader/uk4<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ye7;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ye7;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/ye7;->p(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static e(Ljava/lang/Object;)Lcom/shabakaty/downloader/uk4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(TTResult;)",
            "Lcom/shabakaty/downloader/uk4<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ye7;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ye7;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/ye7;->q(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static f(Ljava/util/Collection;)Lcom/shabakaty/downloader/uk4;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/shabakaty/downloader/uk4<",
            "*>;>;)",
            "Lcom/shabakaty/downloader/uk4<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/uk4;

    const-string v2, "null tasks are not accepted"

    .line 3
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Lcom/shabakaty/downloader/ye7;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ye7;-><init>()V

    .line 5
    new-instance v1, Lcom/shabakaty/downloader/kl4$c;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2, v0}, Lcom/shabakaty/downloader/kl4$c;-><init>(ILcom/shabakaty/downloader/ye7;)V

    .line 6
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/uk4;

    .line 7
    invoke-static {v2, v1}, Lcom/shabakaty/downloader/kl4;->i(Lcom/shabakaty/downloader/uk4;Lcom/shabakaty/downloader/kl4$a;)V

    goto :goto_1

    :cond_2
    return-object v0

    :cond_3
    :goto_2
    const/4 p0, 0x0

    .line 8
    invoke-static {p0}, Lcom/shabakaty/downloader/kl4;->e(Ljava/lang/Object;)Lcom/shabakaty/downloader/uk4;

    move-result-object p0

    return-object p0
.end method

.method public static varargs g([Lcom/shabakaty/downloader/uk4;)Lcom/shabakaty/downloader/uk4;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/gms/tasks/Task<",
            "*>;)",
            "Lcom/shabakaty/downloader/uk4<",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/uk4<",
            "*>;>;>;"
        }
    .end annotation

    .line 1
    array-length v0, p0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/downloader/kl4;->e(Ljava/lang/Object;)Lcom/shabakaty/downloader/uk4;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 4
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {p0}, Lcom/shabakaty/downloader/kl4;->f(Ljava/util/Collection;)Lcom/shabakaty/downloader/uk4;

    move-result-object v0

    new-instance v1, Lcom/shabakaty/downloader/rd5;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/rd5;-><init>(Ljava/util/Collection;)V

    .line 6
    check-cast v0, Lcom/shabakaty/downloader/ye7;

    .line 7
    sget-object p0, Lcom/shabakaty/downloader/dl4;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p0, v1}, Lcom/shabakaty/downloader/ye7;->f(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/td0;)Lcom/shabakaty/downloader/uk4;

    move-result-object p0

    goto :goto_1

    .line 8
    :cond_2
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/downloader/kl4;->e(Ljava/lang/Object;)Lcom/shabakaty/downloader/uk4;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static h(Lcom/shabakaty/downloader/uk4;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/uk4<",
            "TTResult;>;)TTResult;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uk4;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uk4;->h()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uk4;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    new-instance p0, Ljava/util/concurrent/CancellationException;

    const-string v0, "Task is already canceled"

    invoke-direct {p0, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/uk4;->g()Ljava/lang/Exception;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static i(Lcom/shabakaty/downloader/uk4;Lcom/shabakaty/downloader/kl4$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/uk4<",
            "TT;>;",
            "Lcom/shabakaty/downloader/kl4$a<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/dl4;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/shabakaty/downloader/uk4;->c(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/a73;)Lcom/shabakaty/downloader/uk4;

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/shabakaty/downloader/uk4;->b(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/p63;)Lcom/shabakaty/downloader/uk4;

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/shabakaty/downloader/uk4;->a(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/g63;)Lcom/shabakaty/downloader/uk4;

    return-void
.end method
