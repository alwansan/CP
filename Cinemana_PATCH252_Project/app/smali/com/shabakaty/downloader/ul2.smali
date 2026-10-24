.class public Lcom/shabakaty/downloader/ul2;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.1.1"


# static fields
.field public static final b:Ljava/lang/Object;

.field public static c:Lcom/shabakaty/downloader/ul2;


# instance fields
.field public a:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/ul2;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/shabakaty/downloader/od5;

    .line 1
    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/od5;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/ul2;->a:Landroid/os/Handler;

    return-void
.end method

.method public static a()Lcom/shabakaty/downloader/ul2;
    .locals 4
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    sget-object v0, Lcom/shabakaty/downloader/ul2;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/shabakaty/downloader/ul2;->c:Lcom/shabakaty/downloader/ul2;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "MLHandler"

    const/16 v3, 0x9

    .line 1
    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 2
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 3
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/shabakaty/downloader/ul2;

    .line 4
    invoke-direct {v2, v1}, Lcom/shabakaty/downloader/ul2;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/shabakaty/downloader/ul2;->c:Lcom/shabakaty/downloader/ul2;

    :cond_0
    sget-object v1, Lcom/shabakaty/downloader/ul2;->c:Lcom/shabakaty/downloader/ul2;

    .line 5
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public b(Ljava/util/concurrent/Callable;)Lcom/shabakaty/downloader/uk4;
    .locals 2
    .param p1    # Ljava/util/concurrent/Callable;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TResultT;>;)",
            "Lcom/shabakaty/downloader/uk4<",
            "TResultT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/zk4;

    invoke-direct {v0}, Lcom/shabakaty/downloader/zk4;-><init>()V

    new-instance v1, Lcom/shabakaty/downloader/na6;

    .line 2
    invoke-direct {v1, p1, v0}, Lcom/shabakaty/downloader/na6;-><init>(Ljava/util/concurrent/Callable;Lcom/shabakaty/downloader/zk4;)V

    .line 3
    sget-object p1, Lcom/shabakaty/downloader/tk6;->r:Lcom/shabakaty/downloader/tk6;

    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/tk6;->execute(Ljava/lang/Runnable;)V

    .line 4
    iget-object p1, v0, Lcom/shabakaty/downloader/zk4;->a:Lcom/shabakaty/downloader/ye7;

    return-object p1
.end method
