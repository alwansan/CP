.class public Lcom/liulishuo/filedownloader/services/ForegroundServiceConfig;
.super Ljava/lang/Object;
.source "ForegroundServiceConfig.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/services/ForegroundServiceConfig$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "filedownloader_channel"

.field private static final DEFAULT_NOTIFICATION_CHANNEL_NAME:Ljava/lang/String; = "Filedownloader"

.field private static final DEFAULT_NOTIFICATION_ID:I = 0x1080002


# instance fields
.field private needRecreateChannelId:Z

.field private notification:Landroid/app/Notification;

.field private notificationChannelId:Ljava/lang/String;

.field private notificationChannelName:Ljava/lang/String;

.field private notificationId:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/liulishuo/filedownloader/services/ForegroundServiceConfig$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/ForegroundServiceConfig;-><init>()V

    return-void
.end method

.method private buildDefaultNotification(Landroid/content/Context;)Landroid/app/Notification;
    .locals 4

    .line 1
    sget v0, Lcom/liulishuo/filedownloader/R$string;->default_filedownloader_notification_title:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    sget v1, Lcom/liulishuo/filedownloader/R$string;->default_filedownloader_notification_content:I

    .line 3
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/liulishuo/filedownloader/services/ForegroundServiceConfig;->notificationChannelId:Ljava/lang/String;

    invoke-direct {v2, p1, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    const v0, 0x1080002

    .line 6
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 7
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getNotification(Landroid/content/Context;)Landroid/app/Notification;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/ForegroundServiceConfig;->notification:Landroid/app/Notification;

    if-nez v0, :cond_1

    .line 2
    sget-boolean v0, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "build default notification"

    .line 3
    invoke-static {p0, v1, v0}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/services/ForegroundServiceConfig;->buildDefaultNotification(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object p1

    iput-object p1, p0, Lcom/liulishuo/filedownloader/services/ForegroundServiceConfig;->notification:Landroid/app/Notification;

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/liulishuo/filedownloader/services/ForegroundServiceConfig;->notification:Landroid/app/Notification;

    return-object p1
.end method

.method public getNotificationChannelId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/ForegroundServiceConfig;->notificationChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationChannelName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/ForegroundServiceConfig;->notificationChannelName:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/liulishuo/filedownloader/services/ForegroundServiceConfig;->notificationId:I

    return v0
.end method

.method public isNeedRecreateChannelId()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/services/ForegroundServiceConfig;->needRecreateChannelId:Z

    return v0
.end method

.method public setNeedRecreateChannelId(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/liulishuo/filedownloader/services/ForegroundServiceConfig;->needRecreateChannelId:Z

    return-void
.end method

.method public setNotification(Landroid/app/Notification;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/liulishuo/filedownloader/services/ForegroundServiceConfig;->notification:Landroid/app/Notification;

    return-void
.end method

.method public setNotificationChannelId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/liulishuo/filedownloader/services/ForegroundServiceConfig;->notificationChannelId:Ljava/lang/String;

    return-void
.end method

.method public setNotificationChannelName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/liulishuo/filedownloader/services/ForegroundServiceConfig;->notificationChannelName:Ljava/lang/String;

    return-void
.end method

.method public setNotificationId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/liulishuo/filedownloader/services/ForegroundServiceConfig;->notificationId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "ForegroundServiceConfig{notificationId="

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/liulishuo/filedownloader/services/ForegroundServiceConfig;->notificationId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", notificationChannelId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/ForegroundServiceConfig;->notificationChannelId:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", notificationChannelName=\'"

    invoke-static {v0, v1, v2, v3}, Lcom/shabakaty/downloader/gk4;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/ForegroundServiceConfig;->notificationChannelName:Ljava/lang/String;

    const-string v3, ", notification="

    invoke-static {v0, v1, v2, v3}, Lcom/shabakaty/downloader/gk4;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/ForegroundServiceConfig;->notification:Landroid/app/Notification;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", needRecreateChannelId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/liulishuo/filedownloader/services/ForegroundServiceConfig;->needRecreateChannelId:Z

    const/16 v2, 0x7d

    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/xh2;->a(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
