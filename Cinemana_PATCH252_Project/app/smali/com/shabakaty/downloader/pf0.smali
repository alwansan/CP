.class public Lcom/shabakaty/downloader/pf0;
.super Ljava/lang/Object;
.source "CrashlyticsController.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/shabakaty/downloader/uk4<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:J

.field public final synthetic s:Ljava/lang/Throwable;

.field public final synthetic t:Ljava/lang/Thread;

.field public final synthetic u:Lcom/shabakaty/downloader/x24;

.field public final synthetic v:Lcom/shabakaty/downloader/tf0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/tf0;JLjava/lang/Throwable;Ljava/lang/Thread;Lcom/shabakaty/downloader/x24;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/pf0;->v:Lcom/shabakaty/downloader/tf0;

    iput-wide p2, p0, Lcom/shabakaty/downloader/pf0;->r:J

    iput-object p4, p0, Lcom/shabakaty/downloader/pf0;->s:Ljava/lang/Throwable;

    iput-object p5, p0, Lcom/shabakaty/downloader/pf0;->t:Ljava/lang/Thread;

    iput-object p6, p0, Lcom/shabakaty/downloader/pf0;->u:Lcom/shabakaty/downloader/x24;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 12

    .line 1
    iget-wide v0, p0, Lcom/shabakaty/downloader/pf0;->r:J

    const-wide/16 v2, 0x3e8

    .line 2
    div-long v9, v0, v2

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/pf0;->v:Lcom/shabakaty/downloader/tf0;

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/tf0;->f()Ljava/lang/String;

    move-result-object v7

    const-string v0, "FirebaseCrashlytics"

    const/4 v1, 0x0

    if-nez v7, :cond_0

    const-string v2, "Tried to write a fatal exception while no session was open."

    .line 5
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    invoke-static {v1}, Lcom/shabakaty/downloader/kl4;->e(Ljava/lang/Object;)Lcom/shabakaty/downloader/uk4;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v2, p0, Lcom/shabakaty/downloader/pf0;->v:Lcom/shabakaty/downloader/tf0;

    .line 8
    iget-object v2, v2, Lcom/shabakaty/downloader/tf0;->c:Lcom/shabakaty/downloader/yh1;

    .line 9
    invoke-virtual {v2}, Lcom/shabakaty/downloader/yh1;->d()Z

    .line 10
    iget-object v2, p0, Lcom/shabakaty/downloader/pf0;->v:Lcom/shabakaty/downloader/tf0;

    .line 11
    iget-object v4, v2, Lcom/shabakaty/downloader/tf0;->m:Lcom/shabakaty/downloader/b24;

    .line 12
    iget-object v5, p0, Lcom/shabakaty/downloader/pf0;->s:Ljava/lang/Throwable;

    iget-object v6, p0, Lcom/shabakaty/downloader/pf0;->t:Ljava/lang/Thread;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Persisting fatal event for session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    .line 14
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 15
    invoke-static {v0, v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v11, 0x1

    const-string v8, "crash"

    .line 16
    invoke-virtual/range {v4 .. v11}, Lcom/shabakaty/downloader/b24;->h(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 17
    iget-object v0, p0, Lcom/shabakaty/downloader/pf0;->v:Lcom/shabakaty/downloader/tf0;

    iget-wide v2, p0, Lcom/shabakaty/downloader/pf0;->r:J

    .line 18
    invoke-virtual {v0, v2, v3}, Lcom/shabakaty/downloader/tf0;->d(J)V

    .line 19
    iget-object v0, p0, Lcom/shabakaty/downloader/pf0;->v:Lcom/shabakaty/downloader/tf0;

    iget-object v2, p0, Lcom/shabakaty/downloader/pf0;->u:Lcom/shabakaty/downloader/x24;

    const/4 v3, 0x0

    .line 20
    invoke-virtual {v0, v3, v2}, Lcom/shabakaty/downloader/tf0;->c(ZLcom/shabakaty/downloader/x24;)V

    .line 21
    iget-object v0, p0, Lcom/shabakaty/downloader/pf0;->v:Lcom/shabakaty/downloader/tf0;

    invoke-static {v0}, Lcom/shabakaty/downloader/tf0;->a(Lcom/shabakaty/downloader/tf0;)V

    .line 22
    iget-object v0, p0, Lcom/shabakaty/downloader/pf0;->v:Lcom/shabakaty/downloader/tf0;

    .line 23
    iget-object v0, v0, Lcom/shabakaty/downloader/tf0;->b:Lcom/shabakaty/downloader/jl0;

    .line 24
    invoke-virtual {v0}, Lcom/shabakaty/downloader/jl0;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 25
    invoke-static {v1}, Lcom/shabakaty/downloader/kl4;->e(Ljava/lang/Object;)Lcom/shabakaty/downloader/uk4;

    move-result-object v0

    goto :goto_0

    .line 26
    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/pf0;->v:Lcom/shabakaty/downloader/tf0;

    .line 27
    iget-object v0, v0, Lcom/shabakaty/downloader/tf0;->d:Lcom/shabakaty/downloader/hf0;

    .line 28
    iget-object v0, v0, Lcom/shabakaty/downloader/hf0;->a:Ljava/util/concurrent/Executor;

    .line 29
    iget-object v1, p0, Lcom/shabakaty/downloader/pf0;->u:Lcom/shabakaty/downloader/x24;

    .line 30
    check-cast v1, Lcom/shabakaty/downloader/t24;

    .line 31
    iget-object v1, v1, Lcom/shabakaty/downloader/t24;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/zk4;

    .line 32
    iget-object v1, v1, Lcom/shabakaty/downloader/zk4;->a:Lcom/shabakaty/downloader/ye7;

    .line 33
    new-instance v2, Lcom/shabakaty/downloader/of0;

    invoke-direct {v2, p0, v0}, Lcom/shabakaty/downloader/of0;-><init>(Lcom/shabakaty/downloader/pf0;Ljava/util/concurrent/Executor;)V

    .line 34
    invoke-virtual {v1, v0, v2}, Lcom/shabakaty/downloader/ye7;->n(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/kh4;)Lcom/shabakaty/downloader/uk4;

    move-result-object v0

    :goto_0
    return-object v0
.end method
