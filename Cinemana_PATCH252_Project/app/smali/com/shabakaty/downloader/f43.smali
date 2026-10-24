.class public Lcom/shabakaty/downloader/f43;
.super Ljava/lang/Object;
.source "OSTaskController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/f43$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/concurrent/atomic/AtomicLong;

.field public c:Ljava/util/concurrent/ExecutorService;

.field public final d:Lcom/shabakaty/downloader/b33;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/b33;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/f43;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/f43;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/f43;->d:Lcom/shabakaty/downloader/b33;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 5

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/f43$b;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/f43$b;-><init>(Lcom/shabakaty/downloader/f43;Ljava/lang/Runnable;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/f43;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v1

    .line 3
    iput-wide v1, v0, Lcom/shabakaty/downloader/f43$b;->t:J

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/f43;->c:Ljava/util/concurrent/ExecutorService;

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/f43;->d:Lcom/shabakaty/downloader/b33;

    const-string v1, "Adding a task to the pending queue with ID: "

    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 6
    iget-wide v2, v0, Lcom/shabakaty/downloader/f43$b;->t:J

    .line 7
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast p1, Lcom/shabakaty/downloader/a33;

    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/a33;->a(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/shabakaty/downloader/f43;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_0
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result p1

    if-nez p1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/shabakaty/downloader/f43;->d:Lcom/shabakaty/downloader/b33;

    const-string v1, "Executor is still running, add to the executor with ID: "

    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 11
    iget-wide v2, v0, Lcom/shabakaty/downloader/f43$b;->t:J

    .line 12
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast p1, Lcom/shabakaty/downloader/a33;

    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/a33;->a(Ljava/lang/String;)V

    .line 13
    :try_start_0
    iget-object p1, p0, Lcom/shabakaty/downloader/f43;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    iget-object v1, p0, Lcom/shabakaty/downloader/f43;->d:Lcom/shabakaty/downloader/b33;

    const-string v2, "Executor is shutdown, running task manually with ID: "

    invoke-static {v2}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 15
    iget-wide v3, v0, Lcom/shabakaty/downloader/f43$b;->t:J

    .line 16
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v1, Lcom/shabakaty/downloader/a33;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x5

    const/4 v3, 0x0

    .line 17
    invoke-static {v1, v2, v3}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    invoke-virtual {v0}, Lcom/shabakaty/downloader/f43$b;->run()V

    .line 19
    invoke-virtual {p1}, Ljava/util/concurrent/RejectedExecutionException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public b()Z
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OS_PENDING_EXECUTOR_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    sget-boolean v0, Lcom/onesignal/q0;->o:Z

    if-eqz v0, :cond_1

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/f43;->c:Ljava/util/concurrent/ExecutorService;

    if-nez v2, :cond_1

    return v1

    :cond_1
    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/f43;->c:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_2

    return v1

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/f43;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method

.method public c()V
    .locals 3

    const-string v0, "startPendingTasks with task queue quantity: "

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/f43;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    .line 2
    invoke-static {v1, v0, v2}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/f43;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/f43$a;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/f43$a;-><init>(Lcom/shabakaty/downloader/f43;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/f43;->c:Ljava/util/concurrent/ExecutorService;

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/f43;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/f43;->c:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/shabakaty/downloader/f43;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    :cond_0
    return-void
.end method
