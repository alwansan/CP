.class public Lcom/liulishuo/filedownloader/services/FileDownloadService;
.super Landroid/app/Service;
.source "FileDownloadService.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Registered"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/services/FileDownloadService$SeparateProcessService;,
        Lcom/liulishuo/filedownloader/services/FileDownloadService$SharedMainProcessService;
    }
.end annotation


# instance fields
.field private handler:Lcom/liulishuo/filedownloader/services/IFileDownloadServiceHandler;

.field private pauseAllMarker:Lcom/liulishuo/filedownloader/PauseAllMarker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private inspectRunServiceForeground(Landroid/content/Intent;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "is_foreground"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2
    invoke-static {}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->getImpl()Lcom/liulishuo/filedownloader/download/CustomComponentHolder;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->getForegroundConfigInstance()Lcom/liulishuo/filedownloader/services/ForegroundServiceConfig;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/services/ForegroundServiceConfig;->isNeedRecreateChannelId()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_2

    .line 5
    new-instance v0, Landroid/app/NotificationChannel;

    .line 6
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/services/ForegroundServiceConfig;->getNotificationChannelId()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/services/ForegroundServiceConfig;->getNotificationChannelName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v0, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string v2, "notification"

    .line 8
    invoke-virtual {p0, v2}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    if-nez v2, :cond_1

    return-void

    .line 9
    :cond_1
    invoke-virtual {v2, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 10
    :cond_2
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/services/ForegroundServiceConfig;->getNotificationId()I

    move-result v0

    invoke-virtual {p1, p0}, Lcom/liulishuo/filedownloader/services/ForegroundServiceConfig;->getNotification(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 11
    sget-boolean v0, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "run service foreground with config: %s"

    .line 12
    invoke-static {p0, p1, v0}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FileDownloadService;->handler:Lcom/liulishuo/filedownloader/services/IFileDownloadServiceHandler;

    invoke-interface {v0, p1}, Lcom/liulishuo/filedownloader/services/IFileDownloadServiceHandler;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    invoke-static {p0}, Lcom/liulishuo/filedownloader/util/FileDownloadHelper;->holdContext(Landroid/content/Context;)V

    .line 3
    :try_start_0
    invoke-static {}, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->getImpl()Lcom/liulishuo/filedownloader/util/FileDownloadProperties;

    move-result-object v0

    iget v0, v0, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->downloadMinProgressStep:I

    .line 4
    invoke-static {v0}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->setMinProgressStep(I)V

    .line 5
    invoke-static {}, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->getImpl()Lcom/liulishuo/filedownloader/util/FileDownloadProperties;

    move-result-object v0

    iget-wide v0, v0, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->downloadMinProgressTime:J

    .line 6
    invoke-static {v0, v1}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->setMinProgressTime(J)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 8
    :goto_0
    new-instance v0, Lcom/liulishuo/filedownloader/services/FileDownloadManager;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/services/FileDownloadManager;-><init>()V

    .line 9
    invoke-static {}, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->getImpl()Lcom/liulishuo/filedownloader/util/FileDownloadProperties;

    move-result-object v1

    iget-boolean v1, v1, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->processNonSeparate:Z

    if-eqz v1, :cond_0

    .line 10
    new-instance v1, Lcom/liulishuo/filedownloader/services/FDServiceSharedHandler;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v2, v0}, Lcom/liulishuo/filedownloader/services/FDServiceSharedHandler;-><init>(Ljava/lang/ref/WeakReference;Lcom/liulishuo/filedownloader/services/FileDownloadManager;)V

    iput-object v1, p0, Lcom/liulishuo/filedownloader/services/FileDownloadService;->handler:Lcom/liulishuo/filedownloader/services/IFileDownloadServiceHandler;

    goto :goto_1

    .line 11
    :cond_0
    new-instance v1, Lcom/liulishuo/filedownloader/services/FDServiceSeparateHandler;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v2, v0}, Lcom/liulishuo/filedownloader/services/FDServiceSeparateHandler;-><init>(Ljava/lang/ref/WeakReference;Lcom/liulishuo/filedownloader/services/FileDownloadManager;)V

    iput-object v1, p0, Lcom/liulishuo/filedownloader/services/FileDownloadService;->handler:Lcom/liulishuo/filedownloader/services/IFileDownloadServiceHandler;

    .line 12
    :goto_1
    invoke-static {}, Lcom/liulishuo/filedownloader/PauseAllMarker;->clearMarker()V

    .line 13
    new-instance v0, Lcom/liulishuo/filedownloader/PauseAllMarker;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/FileDownloadService;->handler:Lcom/liulishuo/filedownloader/services/IFileDownloadServiceHandler;

    check-cast v1, Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService;

    invoke-direct {v0, v1}, Lcom/liulishuo/filedownloader/PauseAllMarker;-><init>(Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService;)V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/services/FileDownloadService;->pauseAllMarker:Lcom/liulishuo/filedownloader/PauseAllMarker;

    .line 14
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/PauseAllMarker;->startPauseAllLooperCheck()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FileDownloadService;->pauseAllMarker:Lcom/liulishuo/filedownloader/PauseAllMarker;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/PauseAllMarker;->stopPauseAllLooperCheck()V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    .line 3
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FileDownloadService;->handler:Lcom/liulishuo/filedownloader/services/IFileDownloadServiceHandler;

    invoke-interface {v0, p1, p2, p3}, Lcom/liulishuo/filedownloader/services/IFileDownloadServiceHandler;->onStartCommand(Landroid/content/Intent;II)V

    .line 2
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/services/FileDownloadService;->inspectRunServiceForeground(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method
