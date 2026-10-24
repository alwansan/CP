.class public final Lcom/shabakaty/downloader/z32;
.super Lcom/shabakaty/downloader/wx3;
.source "IoScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/z32$c;,
        Lcom/shabakaty/downloader/z32$b;,
        Lcom/shabakaty/downloader/z32$a;
    }
.end annotation


# static fields
.field public static final d:Lcom/shabakaty/downloader/cw3;

.field public static final e:Lcom/shabakaty/downloader/cw3;

.field public static final f:J

.field public static final g:Ljava/util/concurrent/TimeUnit;

.field public static final h:Lcom/shabakaty/downloader/z32$c;

.field public static final i:Lcom/shabakaty/downloader/z32$a;


# instance fields
.field public final b:Ljava/util/concurrent/ThreadFactory;

.field public final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/shabakaty/downloader/z32$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lcom/shabakaty/downloader/z32;->g:Ljava/util/concurrent/TimeUnit;

    const-string v0, "rx2.io-keep-alive-time"

    const-wide/16 v1, 0x3c

    .line 2
    invoke-static {v0, v1, v2}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lcom/shabakaty/downloader/z32;->f:J

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/z32$c;

    new-instance v1, Lcom/shabakaty/downloader/cw3;

    const-string v2, "RxCachedThreadSchedulerShutdown"

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/cw3;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/z32$c;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/shabakaty/downloader/z32;->h:Lcom/shabakaty/downloader/z32$c;

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/hz2;->h()V

    const-string v0, "rx2.io-priority"

    const/4 v1, 0x5

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    .line 6
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7
    new-instance v2, Lcom/shabakaty/downloader/cw3;

    const-string v3, "RxCachedThreadScheduler"

    invoke-direct {v2, v3, v0}, Lcom/shabakaty/downloader/cw3;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/shabakaty/downloader/z32;->d:Lcom/shabakaty/downloader/cw3;

    .line 8
    new-instance v3, Lcom/shabakaty/downloader/cw3;

    const-string v4, "RxCachedWorkerPoolEvictor"

    invoke-direct {v3, v4, v0}, Lcom/shabakaty/downloader/cw3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/shabakaty/downloader/z32;->e:Lcom/shabakaty/downloader/cw3;

    .line 9
    new-instance v0, Lcom/shabakaty/downloader/z32$a;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-direct {v0, v3, v4, v5, v2}, Lcom/shabakaty/downloader/z32$a;-><init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/shabakaty/downloader/z32;->i:Lcom/shabakaty/downloader/z32$a;

    .line 10
    iget-object v2, v0, Lcom/shabakaty/downloader/z32$a;->t:Lcom/shabakaty/downloader/c90;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/c90;->h()V

    .line 11
    iget-object v2, v0, Lcom/shabakaty/downloader/z32$a;->v:Ljava/util/concurrent/Future;

    if-eqz v2, :cond_0

    .line 12
    invoke-interface {v2, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 13
    :cond_0
    iget-object v0, v0, Lcom/shabakaty/downloader/z32$a;->u:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    .line 14
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/z32;->d:Lcom/shabakaty/downloader/cw3;

    .line 2
    invoke-direct {p0}, Lcom/shabakaty/downloader/wx3;-><init>()V

    .line 3
    iput-object v0, p0, Lcom/shabakaty/downloader/z32;->b:Ljava/util/concurrent/ThreadFactory;

    .line 4
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/shabakaty/downloader/z32;->i:Lcom/shabakaty/downloader/z32$a;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/shabakaty/downloader/z32;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    new-instance v3, Lcom/shabakaty/downloader/z32$a;

    sget-wide v4, Lcom/shabakaty/downloader/z32;->f:J

    sget-object v6, Lcom/shabakaty/downloader/z32;->g:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/shabakaty/downloader/z32$a;-><init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V

    .line 6
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    iget-object v0, v3, Lcom/shabakaty/downloader/z32$a;->t:Lcom/shabakaty/downloader/c90;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/c90;->h()V

    .line 8
    iget-object v0, v3, Lcom/shabakaty/downloader/z32$a;->v:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 9
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 10
    :cond_0
    iget-object v0, v3, Lcom/shabakaty/downloader/z32$a;->u:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    .line 11
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    :cond_1
    return-void
.end method


# virtual methods
.method public a()Lcom/shabakaty/downloader/wx3$c;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/z32$b;

    iget-object v1, p0, Lcom/shabakaty/downloader/z32;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/z32$a;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/z32$b;-><init>(Lcom/shabakaty/downloader/z32$a;)V

    return-object v0
.end method
