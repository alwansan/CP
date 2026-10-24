.class public Lcom/connectsdk/service/sessions/WebOSWebAppSession;
.super Lcom/connectsdk/service/sessions/WebAppSession;
.source "WebOSWebAppSession.java"


# static fields
.field private static final ENABLED_SUBTITLE_ID:Ljava/lang/String; = "1"

.field private static final namespaceKey:Ljava/lang/String; = "connectsdk."


# instance fields
.field private UID:I

.field public appToAppSubscription:Lcom/connectsdk/service/command/URLServiceSubscription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/connectsdk/service/command/URLServiceSubscription<",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private connected:Z

.field private final mActiveCommands:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/connectsdk/service/command/ServiceCommand<",
            "*>;>;"
        }
    .end annotation
.end field

.field public mConnectionListener:Lcom/connectsdk/service/capability/listeners/ResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Lcom/connectsdk/service/command/ServiceCommand<",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public mFullAppId:Ljava/lang/String;

.field private mMessageSubscription:Lcom/connectsdk/service/command/ServiceSubscription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/connectsdk/service/command/ServiceSubscription<",
            "Lcom/connectsdk/service/sessions/WebAppSession$MessageListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayStateSubscription:Lcom/connectsdk/service/command/ServiceSubscription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/connectsdk/service/command/ServiceSubscription<",
            "Lcom/connectsdk/service/capability/MediaControl$PlayStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSocketListener:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$WebOSTVServiceSocketClientListener;

.field private mWebAppPinnedSubscription:Lcom/connectsdk/service/command/ServiceSubscription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/connectsdk/service/command/ServiceSubscription<",
            "Lcom/connectsdk/service/sessions/WebAppSession$WebAppPinStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field public service:Lcom/connectsdk/service/WebOSTVService;

.field public socket:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/sessions/LaunchSession;Lcom/connectsdk/service/DeviceService;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/connectsdk/service/sessions/WebAppSession;-><init>(Lcom/connectsdk/service/sessions/LaunchSession;Lcom/connectsdk/service/DeviceService;)V

    .line 2
    new-instance p1, Lcom/connectsdk/service/sessions/WebOSWebAppSession$1;

    invoke-direct {p1, p0}, Lcom/connectsdk/service/sessions/WebOSWebAppSession$1;-><init>(Lcom/connectsdk/service/sessions/WebOSWebAppSession;)V

    iput-object p1, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->mSocketListener:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$WebOSTVServiceSocketClientListener;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->UID:I

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    const/16 v2, 0xa

    invoke-direct {v0, p1, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->mActiveCommands:Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    iput-boolean p1, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->connected:Z

    .line 6
    check-cast p2, Lcom/connectsdk/service/WebOSTVService;

    iput-object p2, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->service:Lcom/connectsdk/service/WebOSTVService;

    return-void
.end method

.method public static synthetic access$002(Lcom/connectsdk/service/sessions/WebOSWebAppSession;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->connected:Z

    return p1
.end method

.method public static synthetic access$100(Lcom/connectsdk/service/sessions/WebOSWebAppSession;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->sendP2PMessage(Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method

.method private connect(Ljava/lang/Boolean;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->socket:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->getState()Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$State;

    move-result-object v0

    sget-object v2, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$State;->CONNECTING:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$State;

    if-ne v0, v2, :cond_1

    if-eqz p2, :cond_0

    .line 4
    new-instance p1, Lcom/connectsdk/service/command/ServiceCommandError;

    const/4 v0, 0x0

    const-string v2, "You have a connection request pending,  please wait until it has finished"

    invoke-direct {p1, v0, v2, v1}, Lcom/connectsdk/service/command/ServiceCommandError;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p2, p1}, Lcom/connectsdk/service/capability/listeners/ErrorListener;->onError(Lcom/connectsdk/service/command/ServiceCommandError;)V

    :cond_0
    return-void

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->isConnected()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    .line 6
    invoke-interface {p2, v1}, Lcom/connectsdk/service/capability/listeners/ResponseListener;->onSuccess(Ljava/lang/Object;)V

    :cond_2
    return-void

    .line 7
    :cond_3
    new-instance v0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$3;

    invoke-direct {v0, p0, p2, p1}, Lcom/connectsdk/service/sessions/WebOSWebAppSession$3;-><init>(Lcom/connectsdk/service/sessions/WebOSWebAppSession;Lcom/connectsdk/service/capability/listeners/ResponseListener;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->mConnectionListener:Lcom/connectsdk/service/capability/listeners/ResponseListener;

    .line 8
    iget-object p1, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->socket:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;

    if-eqz p1, :cond_5

    .line 9
    invoke-virtual {p1}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 10
    iget-object p1, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->mConnectionListener:Lcom/connectsdk/service/capability/listeners/ResponseListener;

    invoke-interface {p1, v1}, Lcom/connectsdk/service/capability/listeners/ResponseListener;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_4
    iget-object p1, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->socket:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;

    invoke-virtual {p1}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->connect()V

    goto :goto_0

    .line 12
    :cond_5
    new-instance p1, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;

    iget-object p2, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->service:Lcom/connectsdk/service/WebOSTVService;

    .line 13
    invoke-static {p2}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->getURI(Lcom/connectsdk/service/WebOSTVService;)Ljava/net/URI;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;-><init>(Lcom/connectsdk/service/WebOSTVService;Ljava/net/URI;)V

    iput-object p1, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->socket:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;

    .line 14
    iget-object p2, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->mSocketListener:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$WebOSTVServiceSocketClientListener;

    invoke-virtual {p1, p2}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->setListener(Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$WebOSTVServiceSocketClientListener;)V

    .line 15
    iget-object p1, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->socket:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;

    invoke-virtual {p1}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->connect()V

    :goto_0
    return-void
.end method

.method private createPlayMediaJsonRequest(Lcom/connectsdk/core/MediaInfo;ZLjava/lang/String;Ljava/lang/String;Lcom/connectsdk/core/SubtitleInfo;)Lorg/json/JSONObject;
    .locals 8

    .line 1
    new-instance v7, Lcom/connectsdk/service/sessions/WebOSWebAppSession$21;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move v4, p2

    move-object v5, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/connectsdk/service/sessions/WebOSWebAppSession$21;-><init>(Lcom/connectsdk/service/sessions/WebOSWebAppSession;Lcom/connectsdk/core/MediaInfo;Ljava/lang/String;ZLjava/lang/String;Lcom/connectsdk/core/SubtitleInfo;)V

    return-object v7
.end method

.method private getNextId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->UID:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->UID:I

    return v0
.end method

.method private sendP2PMessage(Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "type"

    const-string v2, "p2p"

    .line 2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "to"

    .line 3
    invoke-virtual {p0}, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->getFullAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "payload"

    .line 4
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->isConnected()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->socket:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->sendMessage(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 7
    invoke-static {p2, v1}, Lcom/connectsdk/core/Util;->postSuccess(Lcom/connectsdk/service/capability/listeners/ResponseListener;Ljava/lang/Object;)V

    goto :goto_1

    .line 8
    :cond_0
    new-instance v0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$4;

    invoke-direct {v0, p0, p2, p1}, Lcom/connectsdk/service/sessions/WebOSWebAppSession$4;-><init>(Lcom/connectsdk/service/sessions/WebOSWebAppSession;Lcom/connectsdk/service/capability/listeners/ResponseListener;Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p0, v0}, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->connect(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public close(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->mActiveCommands:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 2
    iget-object v0, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->mPlayStateSubscription:Lcom/connectsdk/service/command/ServiceSubscription;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/connectsdk/service/command/ServiceSubscription;->unsubscribe()V

    .line 4
    iput-object v1, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->mPlayStateSubscription:Lcom/connectsdk/service/command/ServiceSubscription;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->mMessageSubscription:Lcom/connectsdk/service/command/ServiceSubscription;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Lcom/connectsdk/service/command/ServiceSubscription;->unsubscribe()V

    .line 7
    iput-object v1, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->mMessageSubscription:Lcom/connectsdk/service/command/ServiceSubscription;

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->mWebAppPinnedSubscription:Lcom/connectsdk/service/command/ServiceSubscription;

    if-eqz v0, :cond_2

    .line 9
    invoke-interface {v0}, Lcom/connectsdk/service/command/ServiceSubscription;->unsubscribe()V

    .line 10
    iput-object v1, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->mWebAppPinnedSubscription:Lcom/connectsdk/service/command/ServiceSubscription;

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->service:Lcom/connectsdk/service/WebOSTVService;

    invoke-virtual {v0}, Lcom/connectsdk/service/WebOSTVService;->getWebAppLauncher()Lcom/connectsdk/service/capability/WebAppLauncher;

    move-result-object v0

    iget-object v1, p0, Lcom/connectsdk/service/sessions/WebAppSession;->launchSession:Lcom/connectsdk/service/sessions/LaunchSession;

    invoke-interface {v0, v1, p1}, Lcom/connectsdk/service/capability/WebAppLauncher;->closeWebApp(Lcom/connectsdk/service/sessions/LaunchSession;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method

.method public connect(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
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
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v0, p1}, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->connect(Ljava/lang/Boolean;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method

.method public disconnectFromWebApp()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->connected:Z

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->mConnectionListener:Lcom/connectsdk/service/capability/listeners/ResponseListener;

    .line 3
    iget-object v1, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->appToAppSubscription:Lcom/connectsdk/service/command/URLServiceSubscription;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/connectsdk/service/command/URLServiceSubscription;->removeListeners()V

    .line 5
    iput-object v0, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->appToAppSubscription:Lcom/connectsdk/service/command/URLServiceSubscription;

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->socket:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1, v0}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->setListener(Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$WebOSTVServiceSocketClientListener;)V

    .line 8
    iget-object v1, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->socket:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;

    invoke-virtual {v1}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->clearRequests()V

    .line 9
    iget-object v1, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->socket:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;

    invoke-virtual {v1}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->disconnect()V

    .line 10
    iput-object v0, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->socket:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;

    :cond_1
    return-void
.end method

.method public displayImage(Lcom/connectsdk/core/MediaInfo;Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V
    .locals 12

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/connectsdk/core/MediaInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {p1}, Lcom/connectsdk/core/MediaInfo;->getMimeType()Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-virtual {p1}, Lcom/connectsdk/core/MediaInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-virtual {p1}, Lcom/connectsdk/core/MediaInfo;->getDescription()Ljava/lang/String;

    move-result-object v4

    .line 13
    invoke-virtual {p1}, Lcom/connectsdk/core/MediaInfo;->getImages()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lcom/connectsdk/core/MediaInfo;->getImages()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 14
    invoke-virtual {p1}, Lcom/connectsdk/core/MediaInfo;->getImages()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/connectsdk/core/ImageInfo;

    .line 15
    invoke-virtual {p1}, Lcom/connectsdk/core/ImageInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    :cond_0
    move-object v10, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    goto :goto_0

    :cond_1
    move-object v6, v0

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    :goto_0
    move-object v5, p0

    move-object v11, p2

    .line 16
    invoke-virtual/range {v5 .. v11}, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->displayImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V

    return-void
.end method

.method public displayImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V
    .locals 14

    move-object v8, p0

    move-object/from16 v9, p6

    .line 1
    invoke-direct {p0}, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->getNextId()I

    move-result v0

    .line 2
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v10, 0x0

    aput-object v0, v2, v10

    const-string v0, "req%d"

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    .line 3
    :try_start_0
    new-instance v13, Lcom/connectsdk/service/sessions/WebOSWebAppSession$16;

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p5

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p2

    move-object v7, v11

    invoke-direct/range {v0 .. v7}, Lcom/connectsdk/service/sessions/WebOSWebAppSession$16;-><init>(Lcom/connectsdk/service/sessions/WebOSWebAppSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    new-instance v0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$17;

    invoke-direct {v0, p0, v9}, Lcom/connectsdk/service/sessions/WebOSWebAppSession$17;-><init>(Lcom/connectsdk/service/sessions/WebOSWebAppSession;Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V

    .line 5
    new-instance v1, Lcom/connectsdk/service/command/ServiceCommand;

    iget-object v2, v8, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->socket:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;

    invoke-direct {v1, v2, v12, v12, v0}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 6
    iget-object v0, v8, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->mActiveCommands:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v11, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$18;

    invoke-direct {v0, p0, v9}, Lcom/connectsdk/service/sessions/WebOSWebAppSession$18;-><init>(Lcom/connectsdk/service/sessions/WebOSWebAppSession;Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V

    invoke-direct {p0, v13, v0}, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->sendP2PMessage(Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void

    .line 8
    :catch_0
    new-instance v0, Lcom/connectsdk/service/command/ServiceCommandError;

    const-string v1, "JSON Parse error"

    invoke-direct {v0, v10, v1, v12}, Lcom/connectsdk/service/command/ServiceCommandError;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    invoke-static {v9, v0}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    return-void
.end method

.method public getDuration(Lcom/connectsdk/service/capability/MediaControl$DurationListener;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->getNextId()I

    move-result v0

    .line 2
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "req%d"

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    new-instance v2, Lcom/connectsdk/service/sessions/WebOSWebAppSession$9;

    invoke-direct {v2, p0, v0}, Lcom/connectsdk/service/sessions/WebOSWebAppSession$9;-><init>(Lcom/connectsdk/service/sessions/WebOSWebAppSession;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    new-instance v2, Lcom/connectsdk/service/command/ServiceCommandError;

    const-string v4, "JSON Parse error"

    invoke-direct {v2, v3, v4, v1}, Lcom/connectsdk/service/command/ServiceCommandError;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1, v2}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    move-object v2, v1

    .line 5
    :goto_0
    new-instance v3, Lcom/connectsdk/service/command/ServiceCommand;

    new-instance v4, Lcom/connectsdk/service/sessions/WebOSWebAppSession$10;

    invoke-direct {v4, p0, p1}, Lcom/connectsdk/service/sessions/WebOSWebAppSession$10;-><init>(Lcom/connectsdk/service/sessions/WebOSWebAppSession;Lcom/connectsdk/service/capability/MediaControl$DurationListener;)V

    invoke-direct {v3, v1, v1, v1, v4}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 6
    iget-object v1, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->mActiveCommands:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$11;

    invoke-direct {v0, p0, p1}, Lcom/connectsdk/service/sessions/WebOSWebAppSession$11;-><init>(Lcom/connectsdk/service/sessions/WebOSWebAppSession;Lcom/connectsdk/service/capability/MediaControl$DurationListener;)V

    invoke-virtual {p0, v2, v0}, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->sendMessage(Lorg/json/JSONObject;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method

.method public getFullAppId()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->mFullAppId:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/connectsdk/service/sessions/WebAppSession;->launchSession:Lcom/connectsdk/service/sessions/LaunchSession;

    invoke-virtual {v0}, Lcom/connectsdk/service/sessions/LaunchSession;->getSessionType()Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;

    move-result-object v0

    sget-object v1, Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;->WebApp:Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/connectsdk/service/sessions/WebAppSession;->launchSession:Lcom/connectsdk/service/sessions/LaunchSession;

    invoke-virtual {v0}, Lcom/connectsdk/service/sessions/LaunchSession;->getAppId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->mFullAppId:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->service:Lcom/connectsdk/service/WebOSTVService;

    invoke-virtual {v0}, Lcom/connectsdk/service/WebOSTVService;->getWebAppIdMappings()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 5
    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 7
    iget-object v2, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->service:Lcom/connectsdk/service/WebOSTVService;

    invoke-virtual {v2}, Lcom/connectsdk/service/WebOSTVService;->getWebAppIdMappings()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 8
    iget-object v2, p0, Lcom/connectsdk/service/sessions/WebAppSession;->launchSession:Lcom/connectsdk/service/sessions/LaunchSession;

    invoke-virtual {v2}, Lcom/connectsdk/service/sessions/LaunchSession;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    iput-object v1, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->mFullAppId:Ljava/lang/String;

    .line 10
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->mFullAppId:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/connectsdk/service/sessions/WebAppSession;->launchSession:Lcom/connectsdk/service/sessions/LaunchSession;

    invoke-virtual {v0}, Lcom/connectsdk/service/sessions/LaunchSession;->getAppId()Ljava/lang/String;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method public getMediaControl()Lcom/connectsdk/service/capability/MediaControl;
    .locals 0

    return-object p0
.end method

.method public getMediaControlCapabilityLevel()Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;
    .locals 1

    .line 1
    sget-object v0, Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;->HIGH:Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

    return-object v0
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

.method public getPlayState(Lcom/connectsdk/service/capability/MediaControl$PlayStateListener;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->getNextId()I

    move-result v0

    .line 2
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "req%d"

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    new-instance v2, Lcom/connectsdk/service/sessions/WebOSWebAppSession$12;

    invoke-direct {v2, p0, v0}, Lcom/connectsdk/service/sessions/WebOSWebAppSession$12;-><init>(Lcom/connectsdk/service/sessions/WebOSWebAppSession;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    new-instance v2, Lcom/connectsdk/service/command/ServiceCommandError;

    const-string v4, "JSON Parse error"

    invoke-direct {v2, v3, v4, v1}, Lcom/connectsdk/service/command/ServiceCommandError;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1, v2}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    move-object v2, v1

    .line 5
    :goto_0
    new-instance v3, Lcom/connectsdk/service/command/ServiceCommand;

    new-instance v4, Lcom/connectsdk/service/sessions/WebOSWebAppSession$13;

    invoke-direct {v4, p0, p1}, Lcom/connectsdk/service/sessions/WebOSWebAppSession$13;-><init>(Lcom/connectsdk/service/sessions/WebOSWebAppSession;Lcom/connectsdk/service/capability/MediaControl$PlayStateListener;)V

    invoke-direct {v3, v1, v1, v1, v4}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 6
    iget-object v1, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->mActiveCommands:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$14;

    invoke-direct {v0, p0, p1}, Lcom/connectsdk/service/sessions/WebOSWebAppSession$14;-><init>(Lcom/connectsdk/service/sessions/WebOSWebAppSession;Lcom/connectsdk/service/capability/MediaControl$PlayStateListener;)V

    invoke-virtual {p0, v2, v0}, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->sendMessage(Lorg/json/JSONObject;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method

.method public getPlaylistControl()Lcom/connectsdk/service/capability/PlaylistControl;
    .locals 0

    return-object p0
.end method

.method public getPlaylistControlCapabilityLevel()Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;
    .locals 1

    .line 1
    sget-object v0, Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;->HIGH:Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

    return-object v0
.end method

.method public getPosition(Lcom/connectsdk/service/capability/MediaControl$PositionListener;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->getNextId()I

    move-result v0

    .line 2
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "req%d"

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    new-instance v2, Lcom/connectsdk/service/sessions/WebOSWebAppSession$6;

    invoke-direct {v2, p0, v0}, Lcom/connectsdk/service/sessions/WebOSWebAppSession$6;-><init>(Lcom/connectsdk/service/sessions/WebOSWebAppSession;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    new-instance v2, Lcom/connectsdk/service/command/ServiceCommandError;

    const-string v4, "JSON Parse error"

    invoke-direct {v2, v3, v4, v1}, Lcom/connectsdk/service/command/ServiceCommandError;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1, v2}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    move-object v2, v1

    .line 5
    :goto_0
    new-instance v3, Lcom/connectsdk/service/command/ServiceCommand;

    new-instance v4, Lcom/connectsdk/service/sessions/WebOSWebAppSession$7;

    invoke-direct {v4, p0, p1}, Lcom/connectsdk/service/sessions/WebOSWebAppSession$7;-><init>(Lcom/connectsdk/service/sessions/WebOSWebAppSession;Lcom/connectsdk/service/capability/MediaControl$PositionListener;)V

    invoke-direct {v3, v1, v1, v1, v4}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 6
    iget-object v1, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->mActiveCommands:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$8;

    invoke-direct {v0, p0, p1}, Lcom/connectsdk/service/sessions/WebOSWebAppSession$8;-><init>(Lcom/connectsdk/service/sessions/WebOSWebAppSession;Lcom/connectsdk/service/capability/MediaControl$PositionListener;)V

    invoke-virtual {p0, v2, v0}, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->sendMessage(Lorg/json/JSONObject;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method

.method public handleMediaCommandResponse(Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "requestId"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->mActiveCommands:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/connectsdk/service/command/ServiceCommand;

    if-nez v1, :cond_1

    return-void

    :cond_1
    const-string v2, "error"

    .line 5
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    .line 7
    invoke-virtual {v1}, Lcom/connectsdk/service/command/ServiceCommand;->getResponseListener()Lcom/connectsdk/service/capability/listeners/ResponseListener;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p1}, Lcom/shabakaty/downloader/ww;->a(ILjava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {v1}, Lcom/connectsdk/service/command/ServiceCommand;->getResponseListener()Lcom/connectsdk/service/capability/listeners/ResponseListener;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/connectsdk/core/Util;->postSuccess(Lcom/connectsdk/service/capability/listeners/ResponseListener;Ljava/lang/Object;)V

    .line 9
    :goto_0
    iget-object p1, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->mActiveCommands:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public handleMediaEvent(Lorg/json/JSONObject;)V
    .locals 5

    const-string v0, "type"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "error"

    .line 3
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 5
    :cond_0
    sget-object v2, Lcom/connectsdk/core/Util;->T:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Play State Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v2, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->mPlayStateSubscription:Lcom/connectsdk/service/command/ServiceSubscription;

    if-eqz v2, :cond_1

    .line 7
    invoke-interface {v2}, Lcom/connectsdk/service/command/ServiceSubscription;->getListeners()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/connectsdk/service/capability/MediaControl$PlayStateListener;

    .line 8
    new-instance v4, Lcom/connectsdk/service/command/ServiceCommandError;

    invoke-direct {v4, v1}, Lcom/connectsdk/service/command/ServiceCommandError;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    goto :goto_0

    :cond_1
    const-string v1, "playState"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 10
    iget-object v1, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->mPlayStateSubscription:Lcom/connectsdk/service/command/ServiceSubscription;

    if-nez v1, :cond_2

    return-void

    .line 11
    :cond_2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 13
    :cond_3
    invoke-virtual {p0, p1}, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->parsePlayState(Ljava/lang/String;)Lcom/connectsdk/service/capability/MediaControl$PlayStateStatus;

    move-result-object p1

    .line 14
    iget-object v0, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->mPlayStateSubscription:Lcom/connectsdk/service/command/ServiceSubscription;

    invoke-interface {v0}, Lcom/connectsdk/service/command/ServiceSubscription;->getListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/connectsdk/service/capability/MediaControl$PlayStateListener;

    .line 15
    invoke-static {v1, p1}, Lcom/connectsdk/core/Util;->postSuccess(Lcom/connectsdk/service/capability/listeners/ResponseListener;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public handleMessage(Ljava/lang/Object;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$2;

    invoke-direct {v0, p0, p1}, Lcom/connectsdk/service/sessions/WebOSWebAppSession$2;-><init>(Lcom/connectsdk/service/sessions/WebOSWebAppSession;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/connectsdk/core/Util;->runOnUI(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isConnected()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->connected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->socket:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isWebAppPinned(Ljava/lang/String;Lcom/connectsdk/service/sessions/WebAppSession$WebAppPinStatusListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->service:Lcom/connectsdk/service/WebOSTVService;

    invoke-virtual {v0}, Lcom/connectsdk/service/WebOSTVService;->getWebAppLauncher()Lcom/connectsdk/service/capability/WebAppLauncher;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/connectsdk/service/capability/WebAppLauncher;->isWebAppPinned(Ljava/lang/String;Lcom/connectsdk/service/sessions/WebAppSession$WebAppPinStatusListener;)V

    return-void
.end method

.method public join(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
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
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, v0, p1}, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->connect(Ljava/lang/Boolean;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method

.method public jumpToTrack(JLcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->getNextId()I

    move-result v0

    .line 2
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "req%d"

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    new-instance v2, Lcom/connectsdk/service/sessions/WebOSWebAppSession$22;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/connectsdk/service/sessions/WebOSWebAppSession$22;-><init>(Lcom/connectsdk/service/sessions/WebOSWebAppSession;Ljava/lang/String;J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    new-instance p1, Lcom/connectsdk/service/command/ServiceCommand;

    invoke-direct {p1, v1, v1, v1, p3}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 5
    iget-object p2, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->mActiveCommands:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p0, v2, p3}, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->sendMessage(Lorg/json/JSONObject;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void

    :catch_0
    const-string p1, "JSON Parse error"

    .line 7
    invoke-static {v3, p1, v1, p3}, Lcom/shabakaty/downloader/ww;->a(ILjava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method

.method public next(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->getNextId()I

    move-result v0

    .line 2
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "req%d"

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    new-instance v2, Lcom/connectsdk/service/sessions/WebOSWebAppSession$24;

    invoke-direct {v2, p0, v0}, Lcom/connectsdk/service/sessions/WebOSWebAppSession$24;-><init>(Lcom/connectsdk/service/sessions/WebOSWebAppSession;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    new-instance v3, Lcom/connectsdk/service/command/ServiceCommand;

    invoke-direct {v3, v1, v1, v1, p1}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 5
    iget-object v1, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->mActiveCommands:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p0, v2, p1}, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->sendMessage(Lorg/json/JSONObject;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void

    :catch_0
    const-string v0, "JSON Parse error"

    .line 7
    invoke-static {v3, v0, v1, p1}, Lcom/shabakaty/downloader/ww;->a(ILjava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method

.method public parsePlayState(Ljava/lang/String;)Lcom/connectsdk/service/capability/MediaControl$PlayStateStatus;
    .locals 1

    const-string v0, "playing"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lcom/connectsdk/service/capability/MediaControl$PlayStateStatus;->Playing:Lcom/connectsdk/service/capability/MediaControl$PlayStateStatus;

    return-object p1

    :cond_0
    const-string v0, "paused"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object p1, Lcom/connectsdk/service/capability/MediaControl$PlayStateStatus;->Paused:Lcom/connectsdk/service/capability/MediaControl$PlayStateStatus;

    return-object p1

    :cond_1
    const-string v0, "idle"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    sget-object p1, Lcom/connectsdk/service/capability/MediaControl$PlayStateStatus;->Idle:Lcom/connectsdk/service/capability/MediaControl$PlayStateStatus;

    return-object p1

    :cond_2
    const-string v0, "buffering"

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    sget-object p1, Lcom/connectsdk/service/capability/MediaControl$PlayStateStatus;->Buffering:Lcom/connectsdk/service/capability/MediaControl$PlayStateStatus;

    return-object p1

    :cond_3
    const-string v0, "finished"

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 10
    sget-object p1, Lcom/connectsdk/service/capability/MediaControl$PlayStateStatus;->Finished:Lcom/connectsdk/service/capability/MediaControl$PlayStateStatus;

    return-object p1

    .line 11
    :cond_4
    sget-object p1, Lcom/connectsdk/service/capability/MediaControl$PlayStateStatus;->Unknown:Lcom/connectsdk/service/capability/MediaControl$PlayStateStatus;

    return-object p1
.end method

.method public pinWebApp(Ljava/lang/String;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->service:Lcom/connectsdk/service/WebOSTVService;

    invoke-virtual {v0}, Lcom/connectsdk/service/WebOSTVService;->getWebAppLauncher()Lcom/connectsdk/service/capability/WebAppLauncher;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/connectsdk/service/capability/WebAppLauncher;->pinWebApp(Ljava/lang/String;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method

.method public playMedia(Lcom/connectsdk/core/MediaInfo;ZLcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V
    .locals 10

    .line 7
    invoke-direct {p0}, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->getNextId()I

    move-result v0

    .line 8
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "req%d"

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-virtual {p1}, Lcom/connectsdk/core/MediaInfo;->getImages()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 10
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 11
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/connectsdk/core/ImageInfo;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_1

    move-object v8, v2

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {v1}, Lcom/connectsdk/core/ImageInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    .line 13
    :goto_1
    invoke-virtual {p1}, Lcom/connectsdk/core/MediaInfo;->getSubtitleInfo()Lcom/connectsdk/core/SubtitleInfo;

    move-result-object v9

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-object v7, v0

    .line 14
    :try_start_0
    invoke-direct/range {v4 .. v9}, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->createPlayMediaJsonRequest(Lcom/connectsdk/core/MediaInfo;ZLjava/lang/String;Ljava/lang/String;Lcom/connectsdk/core/SubtitleInfo;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    new-instance p2, Lcom/connectsdk/service/sessions/WebOSWebAppSession$19;

    invoke-direct {p2, p0, p3}, Lcom/connectsdk/service/sessions/WebOSWebAppSession$19;-><init>(Lcom/connectsdk/service/sessions/WebOSWebAppSession;Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V

    .line 16
    new-instance v1, Lcom/connectsdk/service/command/ServiceCommand;

    invoke-direct {v1, v2, v2, v2, p2}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 17
    iget-object p2, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->mActiveCommands:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    new-instance p2, Lcom/connectsdk/service/sessions/WebOSWebAppSession$20;

    invoke-direct {p2, p0, p3}, Lcom/connectsdk/service/sessions/WebOSWebAppSession$20;-><init>(Lcom/connectsdk/service/sessions/WebOSWebAppSession;Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V

    invoke-virtual {p0, p1, p2}, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->sendMessage(Lorg/json/JSONObject;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void

    .line 19
    :catch_0
    new-instance p1, Lcom/connectsdk/service/command/ServiceCommandError;

    const-string p2, "JSON Parse error"

    invoke-direct {p1, v3, p2, v2}, Lcom/connectsdk/service/command/ServiceCommandError;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    invoke-static {p3, p1}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    return-void
.end method

.method public playMedia(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/connectsdk/core/MediaInfo$Builder;

    invoke-direct {v0, p1, p2}, Lcom/connectsdk/core/MediaInfo$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p3}, Lcom/connectsdk/core/MediaInfo$Builder;->setTitle(Ljava/lang/String;)Lcom/connectsdk/core/MediaInfo$Builder;

    move-result-object p1

    .line 3
    invoke-virtual {p1, p4}, Lcom/connectsdk/core/MediaInfo$Builder;->setDescription(Ljava/lang/String;)Lcom/connectsdk/core/MediaInfo$Builder;

    move-result-object p1

    .line 4
    invoke-virtual {p1, p5}, Lcom/connectsdk/core/MediaInfo$Builder;->setIcon(Ljava/lang/String;)Lcom/connectsdk/core/MediaInfo$Builder;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/connectsdk/core/MediaInfo$Builder;->build()Lcom/connectsdk/core/MediaInfo;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1, p6, p7}, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->playMedia(Lcom/connectsdk/core/MediaInfo;ZLcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V

    return-void
.end method

.method public previous(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->getNextId()I

    move-result v0

    .line 2
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "req%d"

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    new-instance v2, Lcom/connectsdk/service/sessions/WebOSWebAppSession$23;

    invoke-direct {v2, p0, v0}, Lcom/connectsdk/service/sessions/WebOSWebAppSession$23;-><init>(Lcom/connectsdk/service/sessions/WebOSWebAppSession;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    new-instance v3, Lcom/connectsdk/service/command/ServiceCommand;

    invoke-direct {v3, v1, v1, v1, p1}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 5
    iget-object v1, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->mActiveCommands:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p0, v2, p1}, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->sendMessage(Lorg/json/JSONObject;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void

    :catch_0
    const-string v0, "JSON Parse error"

    .line 7
    invoke-static {v3, v0, v1, p1}, Lcom/shabakaty/downloader/ww;->a(ILjava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method

.method public seek(JLcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-gez v4, :cond_0

    const-string p1, "Must pass a valid positive value"

    .line 1
    invoke-static {v0, p1, v1, p3}, Lcom/shabakaty/downloader/ww;->a(ILjava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->getNextId()I

    move-result v2

    .line 3
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v0

    const-string v2, "req%d"

    invoke-static {v3, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 4
    :try_start_0
    new-instance v3, Lcom/connectsdk/service/sessions/WebOSWebAppSession$5;

    invoke-direct {v3, p0, p1, p2, v2}, Lcom/connectsdk/service/sessions/WebOSWebAppSession$5;-><init>(Lcom/connectsdk/service/sessions/WebOSWebAppSession;JLjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "JSON Parse error"

    .line 5
    invoke-static {v0, p1, v1, p3}, Lcom/shabakaty/downloader/ww;->a(ILjava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    move-object v3, v1

    .line 6
    :goto_0
    new-instance p1, Lcom/connectsdk/service/command/ServiceCommand;

    invoke-direct {p1, v1, v1, v1, p3}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 7
    iget-object p2, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->mActiveCommands:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {p0, v3, p3}, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->sendMessage(Lorg/json/JSONObject;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method

.method public sendMessage(Ljava/lang/String;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->sendP2PMessage(Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    const/4 v0, 0x0

    const-string v1, "Cannot ic_send an Empty Message"

    .line 3
    invoke-static {p1, v1, v0, p2}, Lcom/shabakaty/downloader/ww;->a(ILjava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method

.method public sendMessage(Lorg/json/JSONObject;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->sendP2PMessage(Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    const/4 v0, 0x0

    const-string v1, "Cannot ic_send an Empty Message"

    .line 6
    invoke-static {p1, v1, v0, p2}, Lcom/shabakaty/downloader/ww;->a(ILjava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method

.method public setConnected(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->connected:Z

    return-void
.end method

.method public setFullAppId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->mFullAppId:Ljava/lang/String;

    return-void
.end method

.method public subscribeIsWebAppPinned(Ljava/lang/String;Lcom/connectsdk/service/sessions/WebAppSession$WebAppPinStatusListener;)Lcom/connectsdk/service/command/ServiceSubscription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/connectsdk/service/sessions/WebAppSession$WebAppPinStatusListener;",
            ")",
            "Lcom/connectsdk/service/command/ServiceSubscription<",
            "Lcom/connectsdk/service/sessions/WebAppSession$WebAppPinStatusListener;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->service:Lcom/connectsdk/service/WebOSTVService;

    invoke-virtual {v0}, Lcom/connectsdk/service/WebOSTVService;->getWebAppLauncher()Lcom/connectsdk/service/capability/WebAppLauncher;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/connectsdk/service/capability/WebAppLauncher;->subscribeIsWebAppPinned(Ljava/lang/String;Lcom/connectsdk/service/sessions/WebAppSession$WebAppPinStatusListener;)Lcom/connectsdk/service/command/ServiceSubscription;

    move-result-object p1

    iput-object p1, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->mWebAppPinnedSubscription:Lcom/connectsdk/service/command/ServiceSubscription;

    return-object p1
.end method

.method public subscribePlayState(Lcom/connectsdk/service/capability/MediaControl$PlayStateListener;)Lcom/connectsdk/service/command/ServiceSubscription;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/MediaControl$PlayStateListener;",
            ")",
            "Lcom/connectsdk/service/command/ServiceSubscription<",
            "Lcom/connectsdk/service/capability/MediaControl$PlayStateListener;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->mPlayStateSubscription:Lcom/connectsdk/service/command/ServiceSubscription;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/connectsdk/service/command/URLServiceSubscription;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/connectsdk/service/command/URLServiceSubscription;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Lorg/json/JSONObject;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    iput-object v0, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->mPlayStateSubscription:Lcom/connectsdk/service/command/ServiceSubscription;

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->connected:Z

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$15;

    invoke-direct {v0, p0, p1}, Lcom/connectsdk/service/sessions/WebOSWebAppSession$15;-><init>(Lcom/connectsdk/service/sessions/WebOSWebAppSession;Lcom/connectsdk/service/capability/MediaControl$PlayStateListener;)V

    invoke-virtual {p0, v0}, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->connect(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->mPlayStateSubscription:Lcom/connectsdk/service/command/ServiceSubscription;

    invoke-interface {v0}, Lcom/connectsdk/service/command/ServiceSubscription;->getListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->mPlayStateSubscription:Lcom/connectsdk/service/command/ServiceSubscription;

    invoke-interface {v0, p1}, Lcom/connectsdk/service/command/ServiceSubscription;->addListener(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->mPlayStateSubscription:Lcom/connectsdk/service/command/ServiceSubscription;

    return-object p1
.end method

.method public unPinWebApp(Ljava/lang/String;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->service:Lcom/connectsdk/service/WebOSTVService;

    invoke-virtual {v0}, Lcom/connectsdk/service/WebOSTVService;->getWebAppLauncher()Lcom/connectsdk/service/capability/WebAppLauncher;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/connectsdk/service/capability/WebAppLauncher;->unPinWebApp(Ljava/lang/String;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method
