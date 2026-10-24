.class public final Lcom/shabakaty/downloader/wh2;
.super Lcom/shabakaty/downloader/s61;
.source "Dispatcher.kt"

# interfaces
.implements Lcom/shabakaty/downloader/al4;
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final synthetic x:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile synthetic inFlightTasks:I

.field public final s:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public final t:Lcom/shabakaty/downloader/l81;

.field public final u:I

.field public final v:Ljava/lang/String;

.field public final w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/shabakaty/downloader/wh2;

    const-string v1, "inFlightTasks"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/wh2;->x:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/l81;ILjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/s61;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/wh2;->t:Lcom/shabakaty/downloader/l81;

    iput p2, p0, Lcom/shabakaty/downloader/wh2;->u:I

    iput-object p3, p0, Lcom/shabakaty/downloader/wh2;->v:Ljava/lang/String;

    iput p4, p0, Lcom/shabakaty/downloader/wh2;->w:I

    .line 2
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/wh2;->s:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/shabakaty/downloader/wh2;->inFlightTasks:I

    return-void
.end method


# virtual methods
.method public final O(Ljava/lang/Runnable;Z)V
    .locals 3

    .line 1
    :goto_0
    sget-object v0, Lcom/shabakaty/downloader/wh2;->x:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    move-result v1

    .line 2
    iget v2, p0, Lcom/shabakaty/downloader/wh2;->u:I

    if-gt v1, v2, :cond_0

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/wh2;->t:Lcom/shabakaty/downloader/l81;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :try_start_0
    iget-object v1, v0, Lcom/shabakaty/downloader/l81;->s:Lcom/shabakaty/downloader/re0;

    invoke-virtual {v1, p1, p0, p2}, Lcom/shabakaty/downloader/re0;->d(Ljava/lang/Runnable;Lcom/shabakaty/downloader/al4;Z)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 5
    :catch_0
    sget-object p2, Lcom/shabakaty/downloader/yn0;->y:Lcom/shabakaty/downloader/yn0;

    iget-object v0, v0, Lcom/shabakaty/downloader/l81;->s:Lcom/shabakaty/downloader/re0;

    invoke-virtual {v0, p1, p0}, Lcom/shabakaty/downloader/re0;->b(Ljava/lang/Runnable;Lcom/shabakaty/downloader/al4;)Lcom/shabakaty/downloader/vk4;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/r51;->d0(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/wh2;->s:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    move-result p1

    iget v0, p0, Lcom/shabakaty/downloader/wh2;->u:I

    if-lt p1, v0, :cond_1

    return-void

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/shabakaty/downloader/wh2;->s:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    return-void
.end method

.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wh2;->s:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v2, p0, Lcom/shabakaty/downloader/wh2;->t:Lcom/shabakaty/downloader/l81;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :try_start_0
    iget-object v3, v2, Lcom/shabakaty/downloader/l81;->s:Lcom/shabakaty/downloader/re0;

    invoke-virtual {v3, v0, p0, v1}, Lcom/shabakaty/downloader/re0;->d(Ljava/lang/Runnable;Lcom/shabakaty/downloader/al4;Z)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    sget-object v1, Lcom/shabakaty/downloader/yn0;->y:Lcom/shabakaty/downloader/yn0;

    iget-object v2, v2, Lcom/shabakaty/downloader/l81;->s:Lcom/shabakaty/downloader/re0;

    invoke-virtual {v2, v0, p0}, Lcom/shabakaty/downloader/re0;->b(Ljava/lang/Runnable;Lcom/shabakaty/downloader/al4;)Lcom/shabakaty/downloader/vk4;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/r51;->d0(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    .line 5
    :cond_0
    sget-object v0, Lcom/shabakaty/downloader/wh2;->x:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/wh2;->s:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/downloader/wh2;->O(Ljava/lang/Runnable;Z)V

    :cond_1
    return-void
.end method

.method public close()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Close cannot be invoked on LimitingBlockingDispatcher"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/wh2;->w:I

    return v0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/wh2;->O(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public g(Lcom/shabakaty/downloader/me0;Ljava/lang/Runnable;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p2, p1}, Lcom/shabakaty/downloader/wh2;->O(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wh2;->v:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/shabakaty/downloader/pe0;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[dispatcher = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/wh2;->t:Lcom/shabakaty/downloader/l81;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
