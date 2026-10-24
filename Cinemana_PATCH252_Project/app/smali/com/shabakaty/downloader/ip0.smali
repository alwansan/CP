.class public final synthetic Lcom/shabakaty/downloader/ip0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/ar$c;


# instance fields
.field public final synthetic r:Ljava/util/List;

.field public final synthetic s:Ljava/util/concurrent/ScheduledExecutorService;

.field public final synthetic t:Ljava/util/concurrent/Executor;

.field public final synthetic u:J

.field public final synthetic v:Z


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ip0;->r:Ljava/util/List;

    iput-object p2, p0, Lcom/shabakaty/downloader/ip0;->s:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p3, p0, Lcom/shabakaty/downloader/ip0;->t:Ljava/util/concurrent/Executor;

    iput-wide p4, p0, Lcom/shabakaty/downloader/ip0;->u:J

    iput-boolean p6, p0, Lcom/shabakaty/downloader/ip0;->v:Z

    return-void
.end method


# virtual methods
.method public final f(Lcom/shabakaty/downloader/ar$a;)Ljava/lang/Object;
    .locals 13

    iget-object v0, p0, Lcom/shabakaty/downloader/ip0;->r:Ljava/util/List;

    iget-object v1, p0, Lcom/shabakaty/downloader/ip0;->s:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v8, p0, Lcom/shabakaty/downloader/ip0;->t:Ljava/util/concurrent/Executor;

    iget-wide v9, p0, Lcom/shabakaty/downloader/ip0;->u:J

    iget-boolean v11, p0, Lcom/shabakaty/downloader/ip0;->v:Z

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/ko1;->g(Ljava/util/Collection;)Lcom/shabakaty/downloader/pi2;

    move-result-object v0

    .line 2
    new-instance v12, Lcom/shabakaty/downloader/pu;

    move-object v2, v12

    move-object v3, v8

    move-object v4, v0

    move-object v5, p1

    move-wide v6, v9

    invoke-direct/range {v2 .. v7}, Lcom/shabakaty/downloader/pu;-><init>(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/pi2;Lcom/shabakaty/downloader/ar$a;J)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v12, v9, v10, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    .line 3
    new-instance v2, Lcom/shabakaty/downloader/rr;

    invoke-direct {v2, v0}, Lcom/shabakaty/downloader/rr;-><init>(Lcom/shabakaty/downloader/pi2;)V

    .line 4
    iget-object v3, p1, Lcom/shabakaty/downloader/ar$a;->c:Lcom/shabakaty/downloader/ns3;

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v3, v2, v8}, Lcom/shabakaty/downloader/w0;->f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 6
    :cond_0
    new-instance v2, Lcom/shabakaty/downloader/lp0;

    invoke-direct {v2, v11, p1, v1}, Lcom/shabakaty/downloader/lp0;-><init>(ZLcom/shabakaty/downloader/ar$a;Ljava/util/concurrent/ScheduledFuture;)V

    .line 7
    new-instance p1, Lcom/shabakaty/downloader/ko1$d;

    invoke-direct {p1, v0, v2}, Lcom/shabakaty/downloader/ko1$d;-><init>(Ljava/util/concurrent/Future;Lcom/shabakaty/downloader/ho1;)V

    check-cast v0, Lcom/shabakaty/downloader/ii2;

    invoke-virtual {v0, p1, v8}, Lcom/shabakaty/downloader/ii2;->f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    const-string p1, "surfaceList"

    return-object p1
.end method
