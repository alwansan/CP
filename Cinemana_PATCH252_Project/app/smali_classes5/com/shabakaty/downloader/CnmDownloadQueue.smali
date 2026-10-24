.class public final Lcom/shabakaty/downloader/CnmDownloadQueue;
.super Ljava/lang/Object;
.source "CnmDownloadQueue.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CnmDownloadQueue"

.field private static context:Landroid/content/Context;

.field private static maxParallel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    sput v0, Lcom/shabakaty/downloader/CnmDownloadQueue;->maxParallel:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized adoptRunning(Lcom/liulishuo/filedownloader/BaseDownloadTask;)V
    .locals 0

    return-void
.end method

.method public static declared-synchronized enqueue(Lcom/liulishuo/filedownloader/BaseDownloadTask;)Z
    .locals 5

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Queue110;->submitted(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-interface {p0}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "NATIVE_QUEUE_ALREADY_RUNNING taskId="

    invoke-interface {p0}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/CnmDownloadQueue;->intMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/CnmDownloadQueue;->trace(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_2
    :try_start_0
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadList;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/FileDownloadList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloader;->getImpl()Lcom/liulishuo/filedownloader/FileDownloader;

    move-result-object v0

    sget v1, Lcom/shabakaty/downloader/CnmDownloadQueue;->maxParallel:I

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/FileDownloader;->setMaxNetworkThreadCount(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_3
    :goto_0
    :try_start_1
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->registerTask(Lcom/liulishuo/filedownloader/BaseDownloadTask;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    invoke-interface {p0}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getId()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NATIVE_QUEUE_SUBMIT taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/shabakaty/downloader/CnmDownloadQueue;->trace(Ljava/lang/String;)V

    :try_start_2
    invoke-interface {p0}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->start()I

    move-result v0

    const-string v2, "NATIVE_QUEUE_START_RETURN="

    invoke-static {v2, v0}, Lcom/shabakaty/downloader/CnmDownloadQueue;->intMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/shabakaty/downloader/CnmDownloadQueue;->trace(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    move-exception v0

    const-string v2, "NATIVE_QUEUE_START_THROW taskId="

    invoke-static {v2, v1}, Lcom/shabakaty/downloader/CnmDownloadQueue;->intMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/shabakaty/downloader/CnmDownloadQueue;->trace(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public static declared-synchronized getActiveCount()I
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadList;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/FileDownloadList;->size()I

    move-result v0

    return v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    return v0
.end method

.method public static declared-synchronized getMaxParallel()I
    .locals 1

    sget v0, Lcom/shabakaty/downloader/CnmDownloadQueue;->maxParallel:I

    return v0
.end method

.method public static declared-synchronized getQueuedCount()I
    .locals 3

    invoke-static {}, Lcom/shabakaty/downloader/CnmDownloadQueue;->getActiveCount()I

    move-result v0

    sget v1, Lcom/shabakaty/downloader/CnmDownloadQueue;->maxParallel:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    return v0

    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p0, v0

    :cond_0
    sput-object p0, Lcom/shabakaty/downloader/CnmDownloadQueue;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Ui7;->init(Landroid/content/Context;)V

    :try_start_0
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->init(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/shabakaty/cinemana/features/MkvReconciler;->start(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    :goto_0
    return-void
.end method

.method private static intMessage(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized release(Lcom/liulishuo/filedownloader/BaseDownloadTask;Ljava/lang/String;)V
    .locals 3

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Queue110;->terminal(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NATIVE_QUEUE_TERMINAL reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/CnmDownloadQueue;->trace(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static remove(Lcom/liulishuo/filedownloader/BaseDownloadTask;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/CnmDownloadQueue;->release(Lcom/liulishuo/filedownloader/BaseDownloadTask;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized setMaxParallel(I)V
    .locals 4

    if-lez p0, :cond_0

    const/16 v0, 0x8

    if-le p0, v0, :cond_1

    move p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :cond_1
    :goto_0
    sput p0, Lcom/shabakaty/downloader/CnmDownloadQueue;->maxParallel:I

    :try_start_0
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloader;->getImpl()Lcom/liulishuo/filedownloader/FileDownloader;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/liulishuo/filedownloader/FileDownloader;->setMaxNetworkThreadCount(I)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NATIVE_MAX_PARALLEL desired="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " applied="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/shabakaty/downloader/CnmDownloadQueue;->trace(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "NATIVE_MAX_PARALLEL deferred"

    invoke-static {v1}, Lcom/shabakaty/downloader/CnmDownloadQueue;->trace(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private static trace(Ljava/lang/String;)V
    .locals 2

    const-string v0, "CnmDownloadQueue"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/shabakaty/downloader/CnmDownloadQueue;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {v0, p0}, Lcom/shabakaty/cinemana/features/DownloadTrace;->log(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
