.class public Lcom/connectsdk/service/sessions/CastWebAppSession;
.super Lcom/connectsdk/service/sessions/WebAppSession;
.source "CastWebAppSession.java"


# instance fields
.field private castServiceChannel:Lcom/connectsdk/service/google_cast/CastServiceChannel;

.field private metadata:Lcom/shabakaty/downloader/nc;

.field private final service:Lcom/connectsdk/service/CastService;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/sessions/LaunchSession;Lcom/connectsdk/service/DeviceService;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/connectsdk/service/sessions/WebAppSession;-><init>(Lcom/connectsdk/service/sessions/LaunchSession;Lcom/connectsdk/service/DeviceService;)V

    .line 2
    check-cast p2, Lcom/connectsdk/service/CastService;

    iput-object p2, p0, Lcom/connectsdk/service/sessions/CastWebAppSession;->service:Lcom/connectsdk/service/CastService;

    return-void
.end method


# virtual methods
.method public close(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/sessions/WebAppSession;->launchSession:Lcom/connectsdk/service/sessions/LaunchSession;

    invoke-virtual {v0, p1}, Lcom/connectsdk/service/sessions/LaunchSession;->close(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method

.method public closeMedia(Lcom/connectsdk/service/sessions/LaunchSession;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/sessions/LaunchSession;",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lcom/connectsdk/service/sessions/CastWebAppSession;->close(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method

.method public connect(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/sessions/CastWebAppSession;->castServiceChannel:Lcom/connectsdk/service/google_cast/CastServiceChannel;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/connectsdk/service/sessions/CastWebAppSession;->disconnectFromWebApp()V

    .line 3
    :cond_0
    new-instance v0, Lcom/connectsdk/service/google_cast/CastServiceChannel;

    iget-object v1, p0, Lcom/connectsdk/service/sessions/WebAppSession;->launchSession:Lcom/connectsdk/service/sessions/LaunchSession;

    invoke-virtual {v1}, Lcom/connectsdk/service/sessions/LaunchSession;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/connectsdk/service/google_cast/CastServiceChannel;-><init>(Ljava/lang/String;Lcom/connectsdk/service/sessions/CastWebAppSession;)V

    iput-object v0, p0, Lcom/connectsdk/service/sessions/CastWebAppSession;->castServiceChannel:Lcom/connectsdk/service/google_cast/CastServiceChannel;

    const/4 v0, 0x0

    .line 4
    :try_start_0
    sget-object v1, Lcom/shabakaty/downloader/nw;->b:Lcom/shabakaty/downloader/nw$b;

    iget-object v2, p0, Lcom/connectsdk/service/sessions/CastWebAppSession;->service:Lcom/connectsdk/service/CastService;

    invoke-virtual {v2}, Lcom/connectsdk/service/CastService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    iget-object v3, p0, Lcom/connectsdk/service/sessions/CastWebAppSession;->castServiceChannel:Lcom/connectsdk/service/google_cast/CastServiceChannel;

    .line 5
    invoke-virtual {v3}, Lcom/connectsdk/service/google_cast/CastServiceChannel;->getNamespace()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/connectsdk/service/sessions/CastWebAppSession;->castServiceChannel:Lcom/connectsdk/service/google_cast/CastServiceChannel;

    .line 6
    check-cast v1, Lcom/shabakaty/downloader/nw$b$a;

    invoke-virtual {v1, v2, v3, v4}, Lcom/shabakaty/downloader/nw$b$a;->b(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/shabakaty/downloader/nw$e;)V

    .line 7
    invoke-static {p1, v0}, Lcom/connectsdk/core/Util;->postSuccess(Lcom/connectsdk/service/capability/listeners/ResponseListener;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8
    :catch_0
    iput-object v0, p0, Lcom/connectsdk/service/sessions/CastWebAppSession;->castServiceChannel:Lcom/connectsdk/service/google_cast/CastServiceChannel;

    const/4 v1, 0x0

    const-string v2, "Failed to create channel"

    .line 9
    invoke-static {v1, v2, v0, p1}, Lcom/shabakaty/downloader/ww;->a(ILjava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    :goto_0
    return-void
.end method

.method public disconnectFromWebApp()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/sessions/CastWebAppSession;->castServiceChannel:Lcom/connectsdk/service/google_cast/CastServiceChannel;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    sget-object v0, Lcom/shabakaty/downloader/nw;->b:Lcom/shabakaty/downloader/nw$b;

    iget-object v1, p0, Lcom/connectsdk/service/sessions/CastWebAppSession;->service:Lcom/connectsdk/service/CastService;

    invoke-virtual {v1}, Lcom/connectsdk/service/CastService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    iget-object v2, p0, Lcom/connectsdk/service/sessions/CastWebAppSession;->castServiceChannel:Lcom/connectsdk/service/google_cast/CastServiceChannel;

    invoke-virtual {v2}, Lcom/connectsdk/service/google_cast/CastServiceChannel;->getNamespace()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Lcom/shabakaty/downloader/nw$b$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3
    :try_start_1
    sget-object v0, Lcom/shabakaty/downloader/yg5;->a:Lcom/google/android/gms/common/api/a$g;

    .line 4
    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->d(Lcom/google/android/gms/common/api/a$c;)Lcom/google/android/gms/common/api/a$f;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/s57;

    .line 5
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/s57;->L(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v0, 0x0

    .line 6
    :try_start_2
    iput-object v0, p0, Lcom/connectsdk/service/sessions/CastWebAppSession;->castServiceChannel:Lcom/connectsdk/service/google_cast/CastServiceChannel;

    goto :goto_0

    .line 7
    :catch_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "service error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    .line 8
    sget-object v1, Lcom/connectsdk/core/Util;->T:Ljava/lang/String;

    const-string v2, "Exception while removing application"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9
    :goto_0
    sget-object v0, Lcom/shabakaty/downloader/nw;->b:Lcom/shabakaty/downloader/nw$b;

    iget-object v1, p0, Lcom/connectsdk/service/sessions/CastWebAppSession;->service:Lcom/connectsdk/service/CastService;

    invoke-virtual {v1}, Lcom/connectsdk/service/CastService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    check-cast v0, Lcom/shabakaty/downloader/nw$b$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v0, Lcom/shabakaty/downloader/cv6;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/cv6;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->c(Lcom/google/android/gms/common/api/internal/b;)Lcom/google/android/gms/common/api/internal/b;

    return-void
.end method

.method public getMediaPlayer()Lcom/connectsdk/service/capability/MediaPlayer;
    .locals 0

    return-object p0
.end method

.method public getMediaPlayerCapabilityLevel()Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;
    .locals 1

    .line 1
    sget-object v0, Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;->HIGH:Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

    return-object v0
.end method

.method public getMetadata()Lcom/shabakaty/downloader/nc;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/sessions/CastWebAppSession;->metadata:Lcom/shabakaty/downloader/nc;

    return-object v0
.end method

.method public handleAppClose()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/sessions/CastWebAppSession;->service:Lcom/connectsdk/service/CastService;

    invoke-virtual {v0}, Lcom/connectsdk/service/CastService;->getSubscriptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/connectsdk/service/command/URLServiceSubscription;

    .line 2
    invoke-virtual {v1}, Lcom/connectsdk/service/command/ServiceCommand;->getTarget()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PlayState"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-virtual {v1}, Lcom/connectsdk/service/command/URLServiceSubscription;->getListeners()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/connectsdk/service/command/URLServiceSubscription;->getListeners()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/connectsdk/service/capability/listeners/ResponseListener;

    .line 5
    sget-object v4, Lcom/connectsdk/service/capability/MediaControl$PlayStateStatus;->Idle:Lcom/connectsdk/service/capability/MediaControl$PlayStateStatus;

    invoke-static {v3, v4}, Lcom/connectsdk/core/Util;->postSuccess(Lcom/connectsdk/service/capability/listeners/ResponseListener;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/connectsdk/service/sessions/WebAppSession;->getWebAppSessionListener()Lcom/connectsdk/service/sessions/WebAppSessionListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/connectsdk/service/sessions/WebAppSession;->getWebAppSessionListener()Lcom/connectsdk/service/sessions/WebAppSessionListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/connectsdk/service/sessions/WebAppSessionListener;->onWebAppSessionDisconnect(Lcom/connectsdk/service/sessions/WebAppSession;)V

    :cond_2
    return-void
.end method

.method public join(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/connectsdk/service/sessions/CastWebAppSession;->connect(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method

.method public playMedia(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/sessions/CastWebAppSession;->service:Lcom/connectsdk/service/CastService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/connectsdk/service/CastService;->playMedia(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V

    return-void
.end method

.method public sendMessage(Ljava/lang/String;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string p1, "Cannot ic_send null message"

    .line 1
    invoke-static {v1, p1, v0, p2}, Lcom/shabakaty/downloader/ww;->a(ILjava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void

    .line 2
    :cond_0
    iget-object v2, p0, Lcom/connectsdk/service/sessions/CastWebAppSession;->castServiceChannel:Lcom/connectsdk/service/google_cast/CastServiceChannel;

    if-nez v2, :cond_1

    const-string p1, "Cannot ic_send a message to the web app without first connecting"

    .line 3
    invoke-static {v1, p1, v0, p2}, Lcom/shabakaty/downloader/ww;->a(ILjava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void

    .line 4
    :cond_1
    sget-object v0, Lcom/shabakaty/downloader/nw;->b:Lcom/shabakaty/downloader/nw$b;

    iget-object v1, p0, Lcom/connectsdk/service/sessions/CastWebAppSession;->service:Lcom/connectsdk/service/CastService;

    invoke-virtual {v1}, Lcom/connectsdk/service/CastService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    iget-object v2, p0, Lcom/connectsdk/service/sessions/CastWebAppSession;->castServiceChannel:Lcom/connectsdk/service/google_cast/CastServiceChannel;

    invoke-virtual {v2}, Lcom/connectsdk/service/google_cast/CastServiceChannel;->getNamespace()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Lcom/shabakaty/downloader/nw$b$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/kg6;

    invoke-direct {v0, v1, v2, p1}, Lcom/shabakaty/downloader/kg6;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->c(Lcom/google/android/gms/common/api/internal/b;)Lcom/google/android/gms/common/api/internal/b;

    move-result-object p1

    .line 6
    new-instance v0, Lcom/connectsdk/service/sessions/CastWebAppSession$1;

    invoke-direct {v0, p0, p2}, Lcom/connectsdk/service/sessions/CastWebAppSession$1;-><init>(Lcom/connectsdk/service/sessions/CastWebAppSession;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->c(Lcom/shabakaty/downloader/gt3;)V

    return-void
.end method

.method public sendMessage(Lorg/json/JSONObject;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 7
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/connectsdk/service/sessions/CastWebAppSession;->sendMessage(Ljava/lang/String;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method

.method public setMetadata(Lcom/shabakaty/downloader/nc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/sessions/CastWebAppSession;->metadata:Lcom/shabakaty/downloader/nc;

    return-void
.end method
