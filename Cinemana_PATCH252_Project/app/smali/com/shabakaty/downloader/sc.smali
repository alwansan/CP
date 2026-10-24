.class public Lcom/shabakaty/downloader/sc;
.super Lcom/shabakaty/downloader/cl4;
.source "ArchTaskExecutor.java"


# static fields
.field public static volatile t:Lcom/shabakaty/downloader/sc;

.field public static final u:Ljava/util/concurrent/Executor;


# instance fields
.field public s:Lcom/shabakaty/downloader/cl4;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/sc$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/sc$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/sc;->u:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/cl4;-><init>(I)V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/cp0;

    invoke-direct {v0}, Lcom/shabakaty/downloader/cp0;-><init>()V

    .line 3
    iput-object v0, p0, Lcom/shabakaty/downloader/sc;->s:Lcom/shabakaty/downloader/cl4;

    return-void
.end method

.method public static m()Lcom/shabakaty/downloader/sc;
    .locals 2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/sc;->t:Lcom/shabakaty/downloader/sc;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/sc;->t:Lcom/shabakaty/downloader/sc;

    return-object v0

    .line 3
    :cond_0
    const-class v0, Lcom/shabakaty/downloader/sc;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/shabakaty/downloader/sc;->t:Lcom/shabakaty/downloader/sc;

    if-nez v1, :cond_1

    .line 5
    new-instance v1, Lcom/shabakaty/downloader/sc;

    invoke-direct {v1}, Lcom/shabakaty/downloader/sc;-><init>()V

    sput-object v1, Lcom/shabakaty/downloader/sc;->t:Lcom/shabakaty/downloader/sc;

    .line 6
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    sget-object v0, Lcom/shabakaty/downloader/sc;->t:Lcom/shabakaty/downloader/sc;

    return-object v0

    :catchall_0
    move-exception v1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public d(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/sc;->s:Lcom/shabakaty/downloader/cl4;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/cl4;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/sc;->s:Lcom/shabakaty/downloader/cl4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/cl4;->h()Z

    move-result v0

    return v0
.end method

.method public i(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/sc;->s:Lcom/shabakaty/downloader/cl4;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/cl4;->i(Ljava/lang/Runnable;)V

    return-void
.end method
