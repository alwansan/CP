.class public final Lcom/shabakaty/cinemana/features/DownloadTrace301;
.super Ljava/lang/Object;
.source "DownloadTrace301.java"

# Capped, ordered best-effort diagnostic queue: never enqueue download tasks.
.field private static final writer:Ljava/util/concurrent/ExecutorService;
.field private static final pending:Ljava/util/concurrent/atomic/AtomicInteger;

.method static constructor <clinit>()V
    .locals 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;
    move-result-object v0
    sput-object v0, Lcom/shabakaty/cinemana/features/DownloadTrace301;->writer:Ljava/util/concurrent/ExecutorService;
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V
    sput-object v0, Lcom/shabakaty/cinemana/features/DownloadTrace301;->pending:Ljava/util/concurrent/atomic/AtomicInteger;
    return-void
.end method

.method public static schedule(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    if-eqz p0, :done
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
    move-result-object v0
    if-eqz v0, :done
    sget-object v1, Lcom/shabakaty/cinemana/features/DownloadTrace301;->pending:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    move-result v2
    const/16 v3, 0x100
    if-le v2, v3, :enqueue
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I
    return-void
    :enqueue
    new-instance v2, Lcom/shabakaty/cinemana/features/DownloadTrace301$Log;
    invoke-direct {v2, v0, p1}, Lcom/shabakaty/cinemana/features/DownloadTrace301$Log;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    sget-object v0, Lcom/shabakaty/cinemana/features/DownloadTrace301;->writer:Ljava/util/concurrent/ExecutorService;
    :try_start_0
    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :queue_rejected
    return-void
    :queue_rejected
    move-exception v0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I
    :done
    return-void
.end method

.method public static finished()V
    .locals 1
    sget-object v0, Lcom/shabakaty/cinemana/features/DownloadTrace301;->pending:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I
    return-void
.end method
