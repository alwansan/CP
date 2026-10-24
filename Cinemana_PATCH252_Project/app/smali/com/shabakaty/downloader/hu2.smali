.class public abstract Lcom/shabakaty/downloader/hu2;
.super Ljava/lang/Object;
.source "ModernAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/hu2$d;,
        Lcom/shabakaty/downloader/hu2$f;,
        Lcom/shabakaty/downloader/hu2$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final w:Ljava/util/concurrent/Executor;

.field public static x:Lcom/shabakaty/downloader/hu2$e;


# instance fields
.field public final r:Lcom/shabakaty/downloader/hu2$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/hu2$f<",
            "TParams;TResult;>;"
        }
    .end annotation
.end field

.field public final s:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "TResult;>;"
        }
    .end annotation
.end field

.field public volatile t:I

.field public final u:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final v:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v7, Lcom/shabakaty/downloader/hu2$a;

    invoke-direct {v7}, Lcom/shabakaty/downloader/hu2$a;-><init>()V

    .line 2
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v0, 0xa

    invoke-direct {v6, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 3
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v1, 0x5

    const/16 v2, 0x80

    const-wide/16 v3, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v8, Lcom/shabakaty/downloader/hu2;->w:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/shabakaty/downloader/hu2;->t:I

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/hu2;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/hu2;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/hu2$b;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/hu2$b;-><init>(Lcom/shabakaty/downloader/hu2;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/hu2;->r:Lcom/shabakaty/downloader/hu2$f;

    .line 6
    new-instance v1, Lcom/shabakaty/downloader/hu2$c;

    invoke-direct {v1, p0, v0}, Lcom/shabakaty/downloader/hu2$c;-><init>(Lcom/shabakaty/downloader/hu2;Ljava/util/concurrent/Callable;)V

    iput-object v1, p0, Lcom/shabakaty/downloader/hu2;->s:Ljava/util/concurrent/FutureTask;

    return-void
.end method


# virtual methods
.method public varargs abstract a([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    return-void
.end method

.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/shabakaty/downloader/hu2;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/shabakaty/downloader/hu2;->x:Lcom/shabakaty/downloader/hu2$e;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/hu2$e;

    invoke-direct {v1}, Lcom/shabakaty/downloader/hu2$e;-><init>()V

    sput-object v1, Lcom/shabakaty/downloader/hu2;->x:Lcom/shabakaty/downloader/hu2$e;

    .line 4
    :cond_0
    sget-object v1, Lcom/shabakaty/downloader/hu2;->x:Lcom/shabakaty/downloader/hu2$e;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/hu2$d;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v0, p0, v3}, Lcom/shabakaty/downloader/hu2$d;-><init>(Lcom/shabakaty/downloader/hu2;[Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
