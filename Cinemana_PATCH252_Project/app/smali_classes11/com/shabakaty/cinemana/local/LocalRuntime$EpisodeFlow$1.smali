.class Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow$1;
.super Ljava/lang/Object;
.source "LocalRuntime.java"

# interfaces
.implements Lcom/shabakaty/downloader/wg1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow;->i(Lcom/shabakaty/downloader/ef4;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field volatile deadline:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field final started:J

.field volatile subscription:Lcom/shabakaty/downloader/lf4;

.field final terminal:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow;

.field final synthetic val$downstream:Lcom/shabakaty/downloader/ef4;


# direct methods
.method constructor <init>(Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow;Lcom/shabakaty/downloader/ef4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow$1;->this$0:Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow;

    iput-object p2, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow$1;->val$downstream:Lcom/shabakaty/downloader/ef4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow$1;->terminal:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow$1;->started:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow$1;->terminal:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow$1;->deadline:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow$1;->deadline:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_13
    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow$1;->val$downstream:Lcom/shabakaty/downloader/ef4;

    invoke-interface {v0}, Lcom/shabakaty/downloader/ef4;->a()V

    :cond_18
    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow$1;->terminal:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow$1;->deadline:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow$1;->deadline:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "season_failed id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow$1;->this$0:Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow;

    iget-object v1, v1, Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow;->id:Ljava/lang/String;

    invoke-static {v1}, Lcom/shabakaty/cinemana/local/LocalRuntime;->safeId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/shabakaty/cinemana/local/LocalRuntime;->causeTypes(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow$1;->val$downstream:Lcom/shabakaty/downloader/ef4;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/ef4;->b(Ljava/lang/Throwable;)V

    :cond_3d
    return-void
.end method

.method public d(Lcom/shabakaty/downloader/lf4;)V
    .locals 5

    iput-object p1, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow$1;->subscription:Lcom/shabakaty/downloader/lf4;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "season_begin id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow$1;->this$0:Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow;

    iget-object v1, v1, Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow;->id:Ljava/lang/String;

    invoke-static {v1}, Lcom/shabakaty/cinemana/local/LocalRuntime;->safeId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->IO:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow$1;->val$downstream:Lcom/shabakaty/downloader/ef4;

    new-instance v2, Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, v1}, Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow$1$$ExternalSyntheticLambda0;-><init>(Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow$1;Lcom/shabakaty/downloader/lf4;Lcom/shabakaty/downloader/ef4;)V

    const-wide/16 v3, 0x23

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v4, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow$1;->deadline:Ljava/util/concurrent/ScheduledFuture;

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow$1;->val$downstream:Lcom/shabakaty/downloader/ef4;

    new-instance v1, Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow$1$1;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow$1$1;-><init>(Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow$1;Lcom/shabakaty/downloader/lf4;)V

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/ef4;->d(Lcom/shabakaty/downloader/lf4;)V

    return-void
.end method

.method public e(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow$1;->terminal:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow$1;->deadline:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow$1;->deadline:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_13
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_1f

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    goto :goto_20

    :cond_1f
    const/4 v0, -0x1

    :goto_20
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "season_result id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow$1;->this$0:Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow;

    iget-object v2, v2, Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow;->id:Ljava/lang/String;

    invoke-static {v2}, Lcom/shabakaty/cinemana/local/LocalRuntime;->safeId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " elapsed_ms="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow$1;->started:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow$1;->this$0:Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow;

    iget-object v0, v0, Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow;->id:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/shabakaty/cinemana/local/LocalRuntime;->observeEpisodes(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow$1;->val$downstream:Lcom/shabakaty/downloader/ef4;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/ef4;->e(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$d$0$com-shabakaty-cinemana-local-LocalRuntime$EpisodeFlow$1(Lcom/shabakaty/downloader/lf4;Lcom/shabakaty/downloader/ef4;)V
    .locals 3

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow$1;->terminal:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {p1}, Lcom/shabakaty/downloader/lf4;->cancel()V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "season_timeout id="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow$1;->this$0:Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow;

    iget-object v0, v0, Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow;->id:Ljava/lang/String;

    invoke-static {v0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->safeId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/cinemana/local/LocalRuntime;->log(Ljava/lang/String;)V

    new-instance p1, Ljava/net/SocketTimeoutException;

    const-string v0, "episode catalogue timeout"

    invoke-direct {p1, v0}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/shabakaty/downloader/ef4;->b(Ljava/lang/Throwable;)V

    :cond_30
    return-void
.end method
