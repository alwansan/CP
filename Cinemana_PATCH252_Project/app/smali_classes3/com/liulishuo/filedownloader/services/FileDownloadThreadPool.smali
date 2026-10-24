.class Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;
.super Ljava/lang/Object;
.source "FileDownloadThreadPool.java"


# instance fields
.field private mIgnoreCheckTimes:I

.field private mMaxThreadCount:I

.field private mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

.field private runnablePool:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;",
            ">;"
        }
    .end annotation
.end field

.field private final threadPrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Ui7;->engineLimit()I

    move-result p1

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->runnablePool:Landroid/util/SparseArray;

    const-string v0, "Network"

    .line 3
    iput-object v0, p0, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->threadPrefix:Ljava/lang/String;

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->mIgnoreCheckTimes:I

    .line 5
    invoke-static {p1, v0}, Lcom/shabakaty/cinemana/ca1/Network120;->create(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 6
    iput p1, p0, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->mMaxThreadCount:I

    return-void
.end method

.method private declared-synchronized filterOutNoExist()V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->runnablePool:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 3
    iget-object v3, p0, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->runnablePool:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 4
    iget-object v4, p0, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->runnablePool:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;

    if-eqz v4, :cond_0

    .line 5
    invoke-virtual {v4}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_1
    iput-object v0, p0, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->runnablePool:Landroid/util/SparseArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public cancel(I)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->filterOutNoExist()V

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->runnablePool:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->pause()V

    .line 5
    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    move-result v0

    .line 6
    sget-boolean v1, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v1, :cond_0

    const-string v1, "successful cancel %d %B"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {p0, v1, v2}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->runnablePool:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized exactSize()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->filterOutNoExist()V

    .line 2
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->runnablePool:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public execute(Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->pending()V

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->runnablePool:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 6
    iget p1, p0, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->mIgnoreCheckTimes:I

    const/16 v0, 0x258

    if-lt p1, v0, :cond_0

    .line 7
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->filterOutNoExist()V

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->mIgnoreCheckTimes:I

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 9
    iput p1, p0, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->mIgnoreCheckTimes:I

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized findRunningTaskIdBySameTempPath(Ljava/lang/String;I)I
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    monitor-exit p0

    return v0

    .line 2
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->runnablePool:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 3
    iget-object v3, p0, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->runnablePool:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;

    if-nez v3, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->getId()I

    move-result v4

    if-eq v4, p2, :cond_2

    .line 5
    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->getTempFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6
    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->getId()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_3
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getAllExactRunningDownloadIds()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->filterOutNoExist()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->runnablePool:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->runnablePool:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isInThreadPool(I)Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->runnablePool:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->isAlive()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMaxNetworkThreadCount(I)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Ui7;->resize(Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method
