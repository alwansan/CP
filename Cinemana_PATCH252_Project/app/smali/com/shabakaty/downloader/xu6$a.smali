.class public final Lcom/shabakaty/downloader/xu6$a;
.super Ljava/util/concurrent/ThreadPoolExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/xu6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/xu6;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/xu6;)V
    .locals 7

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/xu6$a;->r:Lcom/shabakaty/downloader/xu6;

    .line 2
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-wide/16 v3, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/xu6$b;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/xu6$b;-><init>(Lcom/shabakaty/downloader/e07;)V

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->setThreadFactory(Ljava/util/concurrent/ThreadFactory;)V

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    return-void
.end method


# virtual methods
.method public final newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/RunnableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/v27;

    invoke-direct {v0, p0, p1, p2}, Lcom/shabakaty/downloader/v27;-><init>(Lcom/shabakaty/downloader/xu6$a;Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method
