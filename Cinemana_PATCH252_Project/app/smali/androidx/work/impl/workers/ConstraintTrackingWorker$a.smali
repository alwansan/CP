.class public Landroidx/work/impl/workers/ConstraintTrackingWorker$a;
.super Ljava/lang/Object;
.source "ConstraintTrackingWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/workers/ConstraintTrackingWorker;->d()Lcom/shabakaty/downloader/pi2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Landroidx/work/impl/workers/ConstraintTrackingWorker;


# direct methods
.method public constructor <init>(Landroidx/work/impl/workers/ConstraintTrackingWorker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker$a;->r:Landroidx/work/impl/workers/ConstraintTrackingWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker$a;->r:Landroidx/work/impl/workers/ConstraintTrackingWorker;

    .line 2
    iget-object v1, v0, Landroidx/work/ListenableWorker;->s:Landroidx/work/WorkerParameters;

    .line 3
    iget-object v1, v1, Landroidx/work/WorkerParameters;->b:Landroidx/work/b;

    const-string v2, "androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME"

    .line 4
    invoke-virtual {v1, v2}, Landroidx/work/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 6
    invoke-static {}, Lcom/shabakaty/downloader/ok2;->c()Lcom/shabakaty/downloader/ok2;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/workers/ConstraintTrackingWorker;->A:Ljava/lang/String;

    const-string v4, "No worker to delegate to."

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v4, v3}, Lcom/shabakaty/downloader/ok2;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 7
    invoke-virtual {v0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->g()V

    goto/16 :goto_1

    .line 8
    :cond_0
    iget-object v2, v0, Landroidx/work/ListenableWorker;->s:Landroidx/work/WorkerParameters;

    .line 9
    iget-object v2, v2, Landroidx/work/WorkerParameters;->e:Lcom/shabakaty/downloader/m85;

    .line 10
    iget-object v4, v0, Landroidx/work/ListenableWorker;->r:Landroid/content/Context;

    .line 11
    iget-object v5, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->v:Landroidx/work/WorkerParameters;

    .line 12
    invoke-virtual {v2, v4, v1, v5}, Lcom/shabakaty/downloader/m85;->a(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Landroidx/work/ListenableWorker;

    move-result-object v2

    iput-object v2, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->z:Landroidx/work/ListenableWorker;

    if-nez v2, :cond_1

    .line 13
    invoke-static {}, Lcom/shabakaty/downloader/ok2;->c()Lcom/shabakaty/downloader/ok2;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/workers/ConstraintTrackingWorker;->A:Ljava/lang/String;

    const-string v4, "No worker to delegate to."

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v4, v3}, Lcom/shabakaty/downloader/ok2;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 14
    invoke-virtual {v0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->g()V

    goto/16 :goto_1

    .line 15
    :cond_1
    iget-object v2, v0, Landroidx/work/ListenableWorker;->r:Landroid/content/Context;

    .line 16
    invoke-static {v2}, Lcom/shabakaty/downloader/r75;->b(Landroid/content/Context;)Lcom/shabakaty/downloader/r75;

    move-result-object v2

    .line 17
    iget-object v2, v2, Lcom/shabakaty/downloader/r75;->c:Landroidx/work/impl/WorkDatabase;

    .line 18
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->u()Lcom/shabakaty/downloader/e85;

    move-result-object v2

    .line 19
    iget-object v4, v0, Landroidx/work/ListenableWorker;->s:Landroidx/work/WorkerParameters;

    .line 20
    iget-object v4, v4, Landroidx/work/WorkerParameters;->a:Ljava/util/UUID;

    .line 21
    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v2, Lcom/shabakaty/downloader/f85;

    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/f85;->i(Ljava/lang/String;)Lcom/shabakaty/downloader/d85;

    move-result-object v2

    if-nez v2, :cond_2

    .line 22
    invoke-virtual {v0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->g()V

    goto/16 :goto_1

    .line 23
    :cond_2
    new-instance v4, Lcom/shabakaty/downloader/k75;

    .line 24
    iget-object v5, v0, Landroidx/work/ListenableWorker;->r:Landroid/content/Context;

    .line 25
    invoke-static {v5}, Lcom/shabakaty/downloader/r75;->b(Landroid/content/Context;)Lcom/shabakaty/downloader/r75;

    move-result-object v6

    .line 26
    iget-object v6, v6, Lcom/shabakaty/downloader/r75;->d:Lcom/shabakaty/downloader/bl4;

    .line 27
    invoke-direct {v4, v5, v6, v0}, Lcom/shabakaty/downloader/k75;-><init>(Landroid/content/Context;Lcom/shabakaty/downloader/bl4;Lcom/shabakaty/downloader/j75;)V

    .line 28
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/shabakaty/downloader/k75;->b(Ljava/lang/Iterable;)V

    .line 29
    iget-object v2, v0, Landroidx/work/ListenableWorker;->s:Landroidx/work/WorkerParameters;

    .line 30
    iget-object v2, v2, Landroidx/work/WorkerParameters;->a:Ljava/util/UUID;

    .line 31
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/shabakaty/downloader/k75;->a(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    .line 32
    invoke-static {}, Lcom/shabakaty/downloader/ok2;->c()Lcom/shabakaty/downloader/ok2;

    move-result-object v2

    sget-object v5, Landroidx/work/impl/workers/ConstraintTrackingWorker;->A:Ljava/lang/String;

    const-string v6, "Constraints met for delegate %s"

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v1, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Throwable;

    invoke-virtual {v2, v5, v6, v7}, Lcom/shabakaty/downloader/ok2;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 33
    :try_start_0
    iget-object v2, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->z:Landroidx/work/ListenableWorker;

    invoke-virtual {v2}, Landroidx/work/ListenableWorker;->d()Lcom/shabakaty/downloader/pi2;

    move-result-object v2

    .line 34
    new-instance v5, Lcom/shabakaty/downloader/dc0;

    invoke-direct {v5, v0, v2}, Lcom/shabakaty/downloader/dc0;-><init>(Landroidx/work/impl/workers/ConstraintTrackingWorker;Lcom/shabakaty/downloader/pi2;)V

    .line 35
    iget-object v6, v0, Landroidx/work/ListenableWorker;->s:Landroidx/work/WorkerParameters;

    .line 36
    iget-object v6, v6, Landroidx/work/WorkerParameters;->c:Ljava/util/concurrent/Executor;

    .line 37
    invoke-interface {v2, v5, v6}, Lcom/shabakaty/downloader/pi2;->f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 38
    invoke-static {}, Lcom/shabakaty/downloader/ok2;->c()Lcom/shabakaty/downloader/ok2;

    move-result-object v5

    sget-object v6, Landroidx/work/impl/workers/ConstraintTrackingWorker;->A:Ljava/lang/String;

    const-string v7, "Delegated worker %s threw exception in startWork."

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v1, v8, v3

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v4, v4, [Ljava/lang/Throwable;

    aput-object v2, v4, v3

    invoke-virtual {v5, v6, v1, v4}, Lcom/shabakaty/downloader/ok2;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 39
    iget-object v2, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->w:Ljava/lang/Object;

    monitor-enter v2

    .line 40
    :try_start_1
    iget-boolean v1, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->x:Z

    if-eqz v1, :cond_3

    .line 41
    invoke-static {}, Lcom/shabakaty/downloader/ok2;->c()Lcom/shabakaty/downloader/ok2;

    move-result-object v1

    const-string v4, "Constraints were unmet, Retrying."

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v1, v6, v4, v3}, Lcom/shabakaty/downloader/ok2;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 42
    invoke-virtual {v0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->h()V

    goto :goto_0

    .line 43
    :cond_3
    invoke-virtual {v0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->g()V

    .line 44
    :goto_0
    monitor-exit v2

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 45
    :cond_4
    invoke-static {}, Lcom/shabakaty/downloader/ok2;->c()Lcom/shabakaty/downloader/ok2;

    move-result-object v2

    sget-object v5, Landroidx/work/impl/workers/ConstraintTrackingWorker;->A:Ljava/lang/String;

    const-string v6, "Constraints not met for delegate %s. Requesting retry."

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v3

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v2, v5, v1, v3}, Lcom/shabakaty/downloader/ok2;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 46
    invoke-virtual {v0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->h()V

    :goto_1
    return-void
.end method
