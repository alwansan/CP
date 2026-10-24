.class public abstract Lcom/shabakaty/downloader/tb;
.super Ljava/lang/Object;
.source "AppStateUpdateHandler.java"

# interfaces
.implements Lcom/shabakaty/downloader/sb$b;


# instance fields
.field private final appStateCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/shabakaty/downloader/sb$b;",
            ">;"
        }
    .end annotation
.end field

.field private final appStateMonitor:Lcom/shabakaty/downloader/sb;

.field private currentAppState:Lcom/shabakaty/downloader/oc;

.field private isRegisteredForAppState:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/sb;->a()Lcom/shabakaty/downloader/sb;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/tb;-><init>(Lcom/shabakaty/downloader/sb;)V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/sb;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/shabakaty/downloader/tb;->isRegisteredForAppState:Z

    .line 4
    sget-object v0, Lcom/shabakaty/downloader/oc;->s:Lcom/shabakaty/downloader/oc;

    iput-object v0, p0, Lcom/shabakaty/downloader/tb;->currentAppState:Lcom/shabakaty/downloader/oc;

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/tb;->appStateMonitor:Lcom/shabakaty/downloader/sb;

    .line 6
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/tb;->appStateCallback:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public getAppState()Lcom/shabakaty/downloader/oc;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/tb;->currentAppState:Lcom/shabakaty/downloader/oc;

    return-object v0
.end method

.method public incrementTsnsCount(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/tb;->appStateMonitor:Lcom/shabakaty/downloader/sb;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/sb;->w:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    return-void
.end method

.method public onUpdateAppState(Lcom/shabakaty/downloader/oc;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/tb;->currentAppState:Lcom/shabakaty/downloader/oc;

    sget-object v1, Lcom/shabakaty/downloader/oc;->s:Lcom/shabakaty/downloader/oc;

    if-ne v0, v1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/tb;->currentAppState:Lcom/shabakaty/downloader/oc;

    goto :goto_0

    :cond_0
    if-eq v0, p1, :cond_1

    if-eq p1, v1, :cond_1

    .line 3
    sget-object p1, Lcom/shabakaty/downloader/oc;->v:Lcom/shabakaty/downloader/oc;

    iput-object p1, p0, Lcom/shabakaty/downloader/tb;->currentAppState:Lcom/shabakaty/downloader/oc;

    :cond_1
    :goto_0
    return-void
.end method

.method public registerForAppState()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/tb;->isRegisteredForAppState:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/tb;->appStateMonitor:Lcom/shabakaty/downloader/sb;

    .line 3
    iget-object v1, v0, Lcom/shabakaty/downloader/sb;->D:Lcom/shabakaty/downloader/oc;

    .line 4
    iput-object v1, p0, Lcom/shabakaty/downloader/tb;->currentAppState:Lcom/shabakaty/downloader/oc;

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/tb;->appStateCallback:Ljava/lang/ref/WeakReference;

    .line 6
    iget-object v2, v0, Lcom/shabakaty/downloader/sb;->u:Ljava/util/Set;

    monitor-enter v2

    .line 7
    :try_start_0
    iget-object v0, v0, Lcom/shabakaty/downloader/sb;->u:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/shabakaty/downloader/tb;->isRegisteredForAppState:Z

    return-void

    :catchall_0
    move-exception v0

    .line 10
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public unregisterForAppState()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/tb;->isRegisteredForAppState:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/tb;->appStateMonitor:Lcom/shabakaty/downloader/sb;

    iget-object v1, p0, Lcom/shabakaty/downloader/tb;->appStateCallback:Ljava/lang/ref/WeakReference;

    .line 3
    iget-object v2, v0, Lcom/shabakaty/downloader/sb;->u:Ljava/util/Set;

    monitor-enter v2

    .line 4
    :try_start_0
    iget-object v0, v0, Lcom/shabakaty/downloader/sb;->u:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/shabakaty/downloader/tb;->isRegisteredForAppState:Z

    return-void

    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
