.class public interface abstract Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService;
.super Ljava/lang/Object;
.source "IFileDownloadIPCService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService$Stub;
    }
.end annotation


# virtual methods
.method public abstract checkDownloading(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract clearAllTaskData()V
.end method

.method public abstract clearTaskData(I)Z
.end method

.method public abstract getSofar(I)J
.end method

.method public abstract getStatus(I)B
.end method

.method public abstract getTotal(I)J
.end method

.method public abstract isIdle()Z
.end method

.method public abstract pause(I)Z
.end method

.method public abstract pauseAllTasks()V
.end method

.method public abstract registerCallback(Lcom/liulishuo/filedownloader/i/IFileDownloadIPCCallback;)V
.end method

.method public abstract setMaxNetworkThreadCount(I)Z
.end method

.method public abstract start(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/liulishuo/filedownloader/model/FileDownloadHeader;Z)V
.end method

.method public abstract startForeground(ILandroid/app/Notification;)V
.end method

.method public abstract stopForeground(Z)V
.end method

.method public abstract unregisterCallback(Lcom/liulishuo/filedownloader/i/IFileDownloadIPCCallback;)V
.end method
