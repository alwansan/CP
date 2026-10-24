.class public abstract Lcom/shabakaty/downloader/pd;
.super Lcom/shabakaty/downloader/jj2;
.source "AsyncTaskLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/pd$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/jj2<",
        "TD;>;"
    }
.end annotation


# instance fields
.field public final g:Ljava/util/concurrent/Executor;

.field public volatile h:Lcom/shabakaty/downloader/pd$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/pd<",
            "TD;>.a;"
        }
    .end annotation
.end field

.field public volatile i:Lcom/shabakaty/downloader/pd$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/pd<",
            "TD;>.a;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/hu2;->w:Ljava/util/concurrent/Executor;

    .line 2
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/jj2;-><init>(Landroid/content/Context;)V

    .line 3
    iput-object v0, p0, Lcom/shabakaty/downloader/pd;->g:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public c(Lcom/shabakaty/downloader/pd$a;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/pd<",
            "TD;>.a;TD;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/pd;->h:Lcom/shabakaty/downloader/pd$a;

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    .line 2
    iget-object p2, p0, Lcom/shabakaty/downloader/pd;->i:Lcom/shabakaty/downloader/pd$a;

    if-ne p2, p1, :cond_3

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 4
    iput-object v1, p0, Lcom/shabakaty/downloader/pd;->i:Lcom/shabakaty/downloader/pd$a;

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/pd;->d()V

    goto :goto_0

    .line 6
    :cond_0
    iget-boolean p1, p0, Lcom/shabakaty/downloader/jj2;->d:Z

    if-eqz p1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 8
    iput-object v1, p0, Lcom/shabakaty/downloader/pd;->h:Lcom/shabakaty/downloader/pd$a;

    .line 9
    iget-object p1, p0, Lcom/shabakaty/downloader/jj2;->b:Lcom/shabakaty/downloader/jj2$a;

    if-eqz p1, :cond_3

    .line 10
    check-cast p1, Lcom/shabakaty/downloader/mj2$a;

    .line 11
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 12
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/mj2$a;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/xv2;->postValue(Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public d()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/pd;->i:Lcom/shabakaty/downloader/pd$a;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/shabakaty/downloader/pd;->h:Lcom/shabakaty/downloader/pd$a;

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/pd;->h:Lcom/shabakaty/downloader/pd$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/pd;->h:Lcom/shabakaty/downloader/pd$a;

    iget-object v2, p0, Lcom/shabakaty/downloader/pd;->g:Ljava/util/concurrent/Executor;

    .line 4
    iget v3, v1, Lcom/shabakaty/downloader/hu2;->t:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v3, v5, :cond_2

    .line 5
    iget v0, v1, Lcom/shabakaty/downloader/hu2;->t:I

    invoke-static {v0}, Lcom/shabakaty/downloader/su;->k(I)I

    move-result v0

    if-eq v0, v5, :cond_1

    if-eq v0, v4, :cond_0

    .line 6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "We should never reach this state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_2
    iput v4, v1, Lcom/shabakaty/downloader/hu2;->t:I

    .line 10
    iget-object v3, v1, Lcom/shabakaty/downloader/hu2;->r:Lcom/shabakaty/downloader/hu2$f;

    iput-object v0, v3, Lcom/shabakaty/downloader/hu2$f;->r:[Ljava/lang/Object;

    .line 11
    iget-object v0, v1, Lcom/shabakaty/downloader/hu2;->s:Ljava/util/concurrent/FutureTask;

    invoke-interface {v2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method public e()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .line 1
    move-object v0, p0

    check-cast v0, Lcom/shabakaty/downloader/b06;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/b06;->k:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 3
    invoke-virtual {v3, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->h(Lcom/shabakaty/downloader/w54;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_1
    :try_start_0
    iget-object v0, v0, Lcom/shabakaty/downloader/b06;->j:Ljava/util/concurrent/Semaphore;

    const-wide/16 v3, 0x5

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4, v1}, Ljava/util/concurrent/Semaphore;->tryAcquire(IJLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "GACSignInLoader"

    const-string v2, "Unexpected InterruptedException"

    .line 5
    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method
