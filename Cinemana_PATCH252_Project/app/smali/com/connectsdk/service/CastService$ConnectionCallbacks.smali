.class Lcom/connectsdk/service/CastService$ConnectionCallbacks;
.super Ljava/lang/Object;
.source "CastService.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/connectsdk/service/CastService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConnectionCallbacks"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/connectsdk/service/CastService;


# direct methods
.method private constructor <init>(Lcom/connectsdk/service/CastService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/CastService$ConnectionCallbacks;->this$0:Lcom/connectsdk/service/CastService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/connectsdk/service/CastService;Lcom/connectsdk/service/CastService$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/connectsdk/service/CastService$ConnectionCallbacks;-><init>(Lcom/connectsdk/service/CastService;)V

    return-void
.end method

.method public static synthetic access$700(Lcom/connectsdk/service/CastService$ConnectionCallbacks;Lcom/shabakaty/downloader/nw$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/connectsdk/service/CastService$ConnectionCallbacks;->onJoinApplicationResult(Lcom/shabakaty/downloader/nw$a;)V

    return-void
.end method

.method public static synthetic access$800(Lcom/connectsdk/service/CastService$ConnectionCallbacks;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/connectsdk/service/CastService$ConnectionCallbacks;->joinFinished()V

    return-void
.end method

.method private joinFinished()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/CastService$ConnectionCallbacks;->this$0:Lcom/connectsdk/service/CastService;

    iget-boolean v1, v0, Lcom/connectsdk/service/CastService;->mWaitingForReconnect:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lcom/connectsdk/service/CastService;->mWaitingForReconnect:Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lcom/connectsdk/service/DeviceService;->connected:Z

    .line 4
    invoke-virtual {v0, v1}, Lcom/connectsdk/service/DeviceService;->reportConnected(Z)V

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/connectsdk/service/CastService$ConnectionCallbacks;->this$0:Lcom/connectsdk/service/CastService;

    iget-object v0, v0, Lcom/connectsdk/service/CastService;->commandQueue:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/connectsdk/service/CastService$ConnectionCallbacks;->this$0:Lcom/connectsdk/service/CastService;

    iget-object v0, v0, Lcom/connectsdk/service/CastService;->commandQueue:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/connectsdk/service/CastService$ConnectionListener;

    .line 7
    invoke-interface {v1}, Lcom/connectsdk/service/CastService$ConnectionListener;->onConnected()V

    .line 8
    iget-object v2, p0, Lcom/connectsdk/service/CastService$ConnectionCallbacks;->this$0:Lcom/connectsdk/service/CastService;

    iget-object v2, v2, Lcom/connectsdk/service/CastService;->commandQueue:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-void
.end method

.method private onJoinApplicationResult(Lcom/shabakaty/downloader/nw$a;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lcom/shabakaty/downloader/ft3;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->W0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {p1}, Lcom/shabakaty/downloader/nw$a;->l0()Lcom/shabakaty/downloader/nc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/shabakaty/downloader/nw$a;->l0()Lcom/shabakaty/downloader/nc;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/nc;->s:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {p1}, Lcom/shabakaty/downloader/nw$a;->l0()Lcom/shabakaty/downloader/nc;

    move-result-object p1

    .line 6
    iget-object p1, p1, Lcom/shabakaty/downloader/nc;->s:Ljava/lang/String;

    const-string v0, "Backdrop"

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/connectsdk/service/CastService$ConnectionCallbacks;->this$0:Lcom/connectsdk/service/CastService;

    iget-object v0, p1, Lcom/connectsdk/service/CastService;->mMediaPlayer:Lcom/shabakaty/downloader/cr3;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/connectsdk/service/CastService;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/cr3;->c(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/shabakaty/downloader/nb3;

    move-result-object p1

    new-instance v0, Lcom/connectsdk/service/CastService$ConnectionCallbacks$2;

    invoke-direct {v0, p0}, Lcom/connectsdk/service/CastService$ConnectionCallbacks$2;-><init>(Lcom/connectsdk/service/CastService$ConnectionCallbacks;)V

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/nb3;->c(Lcom/shabakaty/downloader/gt3;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/connectsdk/service/CastService$ConnectionCallbacks;->joinFinished()V

    goto :goto_0

    .line 10
    :cond_1
    invoke-direct {p0}, Lcom/connectsdk/service/CastService$ConnectionCallbacks;->joinFinished()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    sget-object p1, Lcom/connectsdk/core/Util;->T:Ljava/lang/String;

    const-string v0, "ConnectionCallbacks.onConnected, wasWaitingForReconnect: "

    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/connectsdk/service/CastService$ConnectionCallbacks;->this$0:Lcom/connectsdk/service/CastService;

    iget-boolean v1, v1, Lcom/connectsdk/service/CastService;->mWaitingForReconnect:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/connectsdk/service/CastService$ConnectionCallbacks;->this$0:Lcom/connectsdk/service/CastService;

    invoke-static {p1}, Lcom/connectsdk/service/CastService;->access$600(Lcom/connectsdk/service/CastService;)V

    .line 3
    iget-object p1, p0, Lcom/connectsdk/service/CastService$ConnectionCallbacks;->this$0:Lcom/connectsdk/service/CastService;

    iget-object p1, p1, Lcom/connectsdk/service/CastService;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    :try_start_0
    iget-object p1, p0, Lcom/connectsdk/service/CastService$ConnectionCallbacks;->this$0:Lcom/connectsdk/service/CastService;

    iget-object v0, p1, Lcom/connectsdk/service/CastService;->mCastClient:Lcom/connectsdk/service/CastService$CastClient;

    iget-object p1, p1, Lcom/connectsdk/service/CastService;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0, p1}, Lcom/connectsdk/service/CastService$CastClient;->joinApplication(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/shabakaty/downloader/nb3;

    move-result-object p1

    new-instance v0, Lcom/connectsdk/service/CastService$ConnectionCallbacks$1;

    invoke-direct {v0, p0}, Lcom/connectsdk/service/CastService$ConnectionCallbacks$1;-><init>(Lcom/connectsdk/service/CastService$ConnectionCallbacks;)V

    .line 5
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/nb3;->c(Lcom/shabakaty/downloader/gt3;)V
    :try_end_0
    .catch Lcom/connectsdk/service/CastService$CastClientException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    sget-object v0, Lcom/connectsdk/core/Util;->T:Ljava/lang/String;

    const-string v1, "join application error"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 1

    .line 1
    sget-object p1, Lcom/connectsdk/core/Util;->T:Ljava/lang/String;

    const-string v0, "ConnectionCallbacks.onConnectionSuspended"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/connectsdk/service/CastService$ConnectionCallbacks;->this$0:Lcom/connectsdk/service/CastService;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/connectsdk/service/CastService;->mWaitingForReconnect:Z

    .line 3
    invoke-static {p1}, Lcom/connectsdk/service/CastService;->access$500(Lcom/connectsdk/service/CastService;)V

    return-void
.end method
