.class public Lcom/connectsdk/service/RokuService;
.super Lcom/connectsdk/service/DeviceService;
.source "RokuService.java"

# interfaces
.implements Lcom/connectsdk/service/capability/Launcher;
.implements Lcom/connectsdk/service/capability/MediaPlayer;
.implements Lcom/connectsdk/service/capability/MediaControl;
.implements Lcom/connectsdk/service/capability/KeyControl;
.implements Lcom/connectsdk/service/capability/TextInputControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/connectsdk/service/RokuService$RokuLaunchSession;
    }
.end annotation


# static fields
.field public static final ID:Ljava/lang/String; = "Roku"

.field private static final registeredApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public dialService:Lcom/connectsdk/service/DIALService;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/connectsdk/service/RokuService;->registeredApps:Ljava/util/List;

    const-string v1, "YouTube"

    .line 2
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "Netflix"

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "Amazon"

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lcom/connectsdk/service/config/ServiceDescription;Lcom/connectsdk/service/config/ServiceConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/connectsdk/service/DeviceService;-><init>(Lcom/connectsdk/service/config/ServiceDescription;Lcom/connectsdk/service/config/ServiceConfig;)V

    return-void
.end method

.method public static synthetic access$000()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcom/connectsdk/service/RokuService;->registeredApps:Ljava/util/List;

    return-object v0
.end method

.method public static discoveryFilter()Lcom/connectsdk/discovery/DiscoveryFilter;
    .locals 3

    .line 1
    new-instance v0, Lcom/connectsdk/discovery/DiscoveryFilter;

    const-string v1, "Roku"

    const-string v2, "roku:ecp"

    invoke-direct {v0, v1, v2}, Lcom/connectsdk/discovery/DiscoveryFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private displayMedia(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V
    .locals 6

    .line 1
    new-instance v0, Lcom/connectsdk/service/RokuService$6;

    invoke-direct {v0, p0, p6}, Lcom/connectsdk/service/RokuService$6;-><init>(Lcom/connectsdk/service/RokuService;Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V

    const-string p6, "/"

    .line 2
    invoke-virtual {p2, p6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p2, p6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p6

    add-int/2addr p6, v2

    .line 4
    invoke-virtual {p2, p6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p6

    goto :goto_0

    :cond_0
    move-object p6, p2

    :goto_0
    const-string v1, "image"

    .line 5
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    new-array p2, v2, [Ljava/lang/Object;

    .line 6
    invoke-static {p1}, Lcom/connectsdk/etc/helper/HttpMessage;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v3

    const-string p1, "15985?t=p&u=%s&tr=crossfade"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_5

    :cond_1
    const-string v1, "video"

    .line 7
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v1, 0x2

    const/4 v4, 0x3

    const-string v5, "(null)"

    if-eqz p2, :cond_3

    new-array p2, v4, [Ljava/lang/Object;

    .line 8
    invoke-static {p1}, Lcom/connectsdk/etc/helper/HttpMessage;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v3

    .line 9
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p3}, Lcom/connectsdk/etc/helper/HttpMessage;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_1
    aput-object v5, p2, v2

    .line 10
    invoke-static {p6}, Lcom/connectsdk/etc/helper/HttpMessage;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    const-string p1, "15985?t=v&u=%s&k=(null)&videoName=%s&videoFormat=%s"

    .line 11
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_3
    const/4 p2, 0x5

    new-array p2, p2, [Ljava/lang/Object;

    .line 12
    invoke-static {p1}, Lcom/connectsdk/etc/helper/HttpMessage;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v3

    .line 13
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    move-object p1, v5

    goto :goto_2

    :cond_4
    invoke-static {p3}, Lcom/connectsdk/etc/helper/HttpMessage;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    aput-object p1, p2, v2

    .line 14
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    move-object p1, v5

    goto :goto_3

    :cond_5
    invoke-static {p4}, Lcom/connectsdk/etc/helper/HttpMessage;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_3
    aput-object p1, p2, v1

    .line 15
    invoke-static {p6}, Lcom/connectsdk/etc/helper/HttpMessage;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v4

    const/4 p1, 0x4

    .line 16
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_6

    goto :goto_4

    :cond_6
    invoke-static {p5}, Lcom/connectsdk/etc/helper/HttpMessage;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_4
    aput-object v5, p2, p1

    const-string p1, "15985?t=a&u=%s&k=(null)&songname=%s&artistname=%s&songformat=%s&albumarturl=%s"

    .line 17
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_5
    const-string p2, "input"

    .line 18
    invoke-direct {p0, p2, p1}, Lcom/connectsdk/service/RokuService;->requestURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 19
    new-instance p2, Lcom/connectsdk/service/command/ServiceCommand;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p1, p3, v0}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 20
    invoke-virtual {p2}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-void
.end method

.method private probeForAppSupport()V
    .locals 1

    .line 1
    new-instance v0, Lcom/connectsdk/service/RokuService$11;

    invoke-direct {v0, p0}, Lcom/connectsdk/service/RokuService$11;-><init>(Lcom/connectsdk/service/RokuService;)V

    invoke-virtual {p0, v0}, Lcom/connectsdk/service/RokuService;->getAppList(Lcom/connectsdk/service/capability/Launcher$AppListListener;)V

    return-void
.end method

.method public static registerApp(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/connectsdk/service/RokuService;->registeredApps:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private requestURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "http://"

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/connectsdk/service/DeviceService;->serviceDescription:Lcom/connectsdk/service/config/ServiceDescription;

    invoke-virtual {v1}, Lcom/connectsdk/service/config/ServiceDescription;->getIpAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Lcom/connectsdk/service/DeviceService;->serviceDescription:Lcom/connectsdk/service/config/ServiceDescription;

    invoke-virtual {v1}, Lcom/connectsdk/service/config/ServiceDescription;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public back(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "keypress"

    const-string v1, "Back"

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/connectsdk/service/RokuService;->requestURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/connectsdk/service/command/ServiceCommand;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2, p1}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 3
    invoke-virtual {v1}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-void
.end method

.method public closeApp(Lcom/connectsdk/service/sessions/LaunchSession;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
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
    invoke-virtual {p0, p2}, Lcom/connectsdk/service/RokuService;->home(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

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
    invoke-virtual {p0, p2}, Lcom/connectsdk/service/RokuService;->home(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method

.method public connect()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/connectsdk/service/DeviceService;->connected:Z

    .line 2
    invoke-virtual {p0, v0}, Lcom/connectsdk/service/DeviceService;->reportConnected(Z)V

    return-void
.end method

.method public disconnect()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/connectsdk/service/DeviceService;->connected:Z

    .line 2
    iget-object v0, p0, Lcom/connectsdk/service/DeviceService;->mServiceReachability:Lcom/connectsdk/etc/helper/DeviceServiceReachability;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/connectsdk/etc/helper/DeviceServiceReachability;->stop()V

    .line 4
    :cond_0
    new-instance v0, Lcom/connectsdk/service/RokuService$12;

    invoke-direct {v0, p0}, Lcom/connectsdk/service/RokuService$12;-><init>(Lcom/connectsdk/service/RokuService;)V

    invoke-static {v0}, Lcom/connectsdk/core/Util;->runOnUI(Ljava/lang/Runnable;)V

    return-void
.end method

.method public displayImage(Lcom/connectsdk/core/MediaInfo;Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V
    .locals 12

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/connectsdk/core/MediaInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/connectsdk/core/MediaInfo;->getMimeType()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {p1}, Lcom/connectsdk/core/MediaInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {p1}, Lcom/connectsdk/core/MediaInfo;->getDescription()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-virtual {p1}, Lcom/connectsdk/core/MediaInfo;->getImages()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lcom/connectsdk/core/MediaInfo;->getImages()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/connectsdk/core/MediaInfo;->getImages()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/connectsdk/core/ImageInfo;

    .line 8
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

    .line 9
    invoke-virtual/range {v5 .. v11}, Lcom/connectsdk/service/RokuService;->displayImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V

    return-void
.end method

.method public displayImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/connectsdk/service/RokuService;->displayMedia(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V

    return-void
.end method

.method public down(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "keypress"

    const-string v1, "Down"

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/connectsdk/service/RokuService;->requestURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/connectsdk/service/command/ServiceCommand;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2, p1}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 3
    invoke-virtual {v1}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-void
.end method

.method public fastForward(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "keypress"

    const-string v1, "Fwd"

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/connectsdk/service/RokuService;->requestURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/connectsdk/service/command/ServiceCommand;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2, p1}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 3
    invoke-virtual {v1}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-void
.end method

.method public getAppList(Lcom/connectsdk/service/capability/Launcher$AppListListener;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/connectsdk/service/RokuService$2;

    invoke-direct {v0, p0, p1}, Lcom/connectsdk/service/RokuService$2;-><init>(Lcom/connectsdk/service/RokuService;Lcom/connectsdk/service/capability/Launcher$AppListListener;)V

    const-string p1, "query"

    const-string v1, "apps"

    .line 2
    invoke-direct {p0, p1, v1}, Lcom/connectsdk/service/RokuService;->requestURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v1, Lcom/connectsdk/service/command/ServiceCommand;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2, v0}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    const-string p1, "GET"

    .line 4
    invoke-virtual {v1, p1}, Lcom/connectsdk/service/command/ServiceCommand;->setHttpMethod(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-void
.end method

.method public getAppState(Lcom/connectsdk/service/sessions/LaunchSession;Lcom/connectsdk/service/capability/Launcher$AppStateListener;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/connectsdk/service/command/ServiceCommandError;->notSupported()Lcom/connectsdk/service/command/ServiceCommandError;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    return-void
.end method

.method public getDIALService()Lcom/connectsdk/service/DIALService;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/RokuService;->dialService:Lcom/connectsdk/service/DIALService;

    if-nez v0, :cond_2

    .line 2
    invoke-static {}, Lcom/connectsdk/discovery/DiscoveryManager;->getInstance()Lcom/connectsdk/discovery/DiscoveryManager;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/connectsdk/discovery/DiscoveryManager;->getAllDevices()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/connectsdk/service/DeviceService;->serviceDescription:Lcom/connectsdk/service/config/ServiceDescription;

    .line 4
    invoke-virtual {v1}, Lcom/connectsdk/service/config/ServiceDescription;->getIpAddress()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/connectsdk/device/ConnectableDevice;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0}, Lcom/connectsdk/device/ConnectableDevice;->getServices()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/connectsdk/service/DeviceService;

    .line 7
    const-class v3, Lcom/connectsdk/service/DIALService;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8
    move-object v1, v2

    check-cast v1, Lcom/connectsdk/service/DIALService;

    .line 9
    :cond_1
    iput-object v1, p0, Lcom/connectsdk/service/RokuService;->dialService:Lcom/connectsdk/service/DIALService;

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/connectsdk/service/RokuService;->dialService:Lcom/connectsdk/service/DIALService;

    return-object v0
.end method

.method public getDuration(Lcom/connectsdk/service/capability/MediaControl$DurationListener;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/connectsdk/service/command/ServiceCommandError;->notSupported()Lcom/connectsdk/service/command/ServiceCommandError;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    return-void
.end method

.method public getKeyControl()Lcom/connectsdk/service/capability/KeyControl;
    .locals 0

    return-object p0
.end method

.method public getKeyControlCapabilityLevel()Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;
    .locals 1

    .line 1
    sget-object v0, Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;->HIGH:Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

    return-object v0
.end method

.method public getLauncher()Lcom/connectsdk/service/capability/Launcher;
    .locals 0

    return-object p0
.end method

.method public getLauncherCapabilityLevel()Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;
    .locals 1

    .line 1
    sget-object v0, Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;->HIGH:Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

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

.method public getMediaInfo(Lcom/connectsdk/service/capability/MediaPlayer$MediaInfoListener;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/connectsdk/service/command/ServiceCommandError;->notSupported()Lcom/connectsdk/service/command/ServiceCommandError;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

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

.method public getPlayState(Lcom/connectsdk/service/capability/MediaControl$PlayStateListener;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/connectsdk/service/command/ServiceCommandError;->notSupported()Lcom/connectsdk/service/command/ServiceCommandError;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    return-void
.end method

.method public getPosition(Lcom/connectsdk/service/capability/MediaControl$PositionListener;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/connectsdk/service/command/ServiceCommandError;->notSupported()Lcom/connectsdk/service/command/ServiceCommandError;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    return-void
.end method

.method public getPriorityLevel(Ljava/lang/Class;)Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/connectsdk/service/capability/CapabilityMethods;",
            ">;)",
            "Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/connectsdk/service/capability/MediaPlayer;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/connectsdk/service/RokuService;->getMediaPlayerCapabilityLevel()Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    const-class v0, Lcom/connectsdk/service/capability/MediaControl;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/connectsdk/service/RokuService;->getMediaControlCapabilityLevel()Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    const-class v0, Lcom/connectsdk/service/capability/Launcher;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/connectsdk/service/RokuService;->getLauncherCapabilityLevel()Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    const-class v0, Lcom/connectsdk/service/capability/TextInputControl;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p0}, Lcom/connectsdk/service/RokuService;->getTextInputControlCapabilityLevel()Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

    move-result-object p1

    return-object p1

    .line 9
    :cond_3
    const-class v0, Lcom/connectsdk/service/capability/KeyControl;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 10
    invoke-virtual {p0}, Lcom/connectsdk/service/RokuService;->getKeyControlCapabilityLevel()Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

    move-result-object p1

    return-object p1

    .line 11
    :cond_4
    sget-object p1, Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;->NOT_SUPPORTED:Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

    return-object p1
.end method

.method public getRunningApp(Lcom/connectsdk/service/capability/Launcher$AppInfoListener;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/connectsdk/service/command/ServiceCommandError;->notSupported()Lcom/connectsdk/service/command/ServiceCommandError;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    return-void
.end method

.method public getTextInputControl()Lcom/connectsdk/service/capability/TextInputControl;
    .locals 0

    return-object p0
.end method

.method public getTextInputControlCapabilityLevel()Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;
    .locals 1

    .line 1
    sget-object v0, Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;->HIGH:Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

    return-object v0
.end method

.method public home(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "keypress"

    const-string v1, "Home"

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/connectsdk/service/RokuService;->requestURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/connectsdk/service/command/ServiceCommand;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2, p1}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 3
    invoke-virtual {v1}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-void
.end method

.method public isConnectable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/connectsdk/service/DeviceService;->connected:Z

    return v0
.end method

.method public launchApp(Ljava/lang/String;Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;)V
    .locals 3

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lcom/connectsdk/service/command/ServiceCommandError;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "Must supply a valid app id"

    invoke-direct {p1, v0, v2, v1}, Lcom/connectsdk/service/command/ServiceCommandError;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    invoke-static {p2, p1}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/connectsdk/core/AppInfo;

    invoke-direct {v0}, Lcom/connectsdk/core/AppInfo;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Lcom/connectsdk/core/AppInfo;->setId(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, v0, p2}, Lcom/connectsdk/service/RokuService;->launchAppWithInfo(Lcom/connectsdk/core/AppInfo;Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;)V

    return-void
.end method

.method public launchAppStore(Ljava/lang/String;Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/connectsdk/core/AppInfo;

    const-string v1, "11"

    invoke-direct {v0, v1}, Lcom/connectsdk/core/AppInfo;-><init>(Ljava/lang/String;)V

    const-string v1, "Channel Store"

    .line 2
    invoke-virtual {v0, v1}, Lcom/connectsdk/core/AppInfo;->setName(Ljava/lang/String;)V

    .line 3
    :try_start_0
    new-instance v1, Lcom/connectsdk/service/RokuService$5;

    invoke-direct {v1, p0, p1}, Lcom/connectsdk/service/RokuService$5;-><init>(Lcom/connectsdk/service/RokuService;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-virtual {p0, v0, v1, p2}, Lcom/connectsdk/service/RokuService;->launchAppWithInfo(Lcom/connectsdk/core/AppInfo;Ljava/lang/Object;Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;)V

    return-void
.end method

.method public launchAppWithInfo(Lcom/connectsdk/core/AppInfo;Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Lcom/connectsdk/service/RokuService;->launchAppWithInfo(Lcom/connectsdk/core/AppInfo;Ljava/lang/Object;Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;)V

    return-void
.end method

.method public launchAppWithInfo(Lcom/connectsdk/core/AppInfo;Ljava/lang/Object;Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;)V
    .locals 10

    const-string v0, "UTF-8"

    if-eqz p1, :cond_7

    .line 2
    invoke-virtual {p1}, Lcom/connectsdk/core/AppInfo;->getId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/connectsdk/core/AppInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "launch"

    invoke-direct {p0, v2, v1}, Lcom/connectsdk/service/RokuService;->requestURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x0

    if-eqz p2, :cond_5

    .line 4
    instance-of v4, p2, Lorg/json/JSONObject;

    if-eqz v4, :cond_5

    .line 5
    check-cast p2, Lorg/json/JSONObject;

    const/4 v4, 0x0

    .line 6
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 7
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 8
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 9
    :try_start_0
    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object v7, v3

    :goto_1
    if-nez v7, :cond_2

    goto :goto_0

    :cond_2
    if-nez v4, :cond_3

    const-string v8, "?"

    goto :goto_2

    :cond_3
    const-string v8, "&"

    .line 10
    :goto_2
    :try_start_1
    invoke-static {v6, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 11
    :try_start_2
    invoke-static {v7, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_1
    move-object v6, v3

    :catch_2
    move-object v7, v3

    :goto_3
    if-eqz v6, :cond_1

    if-nez v7, :cond_4

    goto :goto_0

    .line 12
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "="

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 13
    invoke-static {v2, v6}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 14
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_6

    .line 15
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 16
    :cond_6
    new-instance p2, Lcom/connectsdk/service/RokuService$1;

    invoke-direct {p2, p0, p1, p3}, Lcom/connectsdk/service/RokuService$1;-><init>(Lcom/connectsdk/service/RokuService;Lcom/connectsdk/core/AppInfo;Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;)V

    .line 17
    new-instance p1, Lcom/connectsdk/service/command/ServiceCommand;

    invoke-direct {p1, p0, v1, v3, p2}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 18
    invoke-virtual {p1}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-void

    .line 19
    :cond_7
    :goto_4
    new-instance p2, Lcom/connectsdk/service/command/ServiceCommandError;

    const/4 v0, -0x1

    const-string v1, "Cannot launch app without valid AppInfo object"

    invoke-direct {p2, v0, v1, p1}, Lcom/connectsdk/service/command/ServiceCommandError;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    invoke-static {p3, p2}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    return-void
.end method

.method public launchBrowser(Ljava/lang/String;Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/connectsdk/service/command/ServiceCommandError;->notSupported()Lcom/connectsdk/service/command/ServiceCommandError;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    return-void
.end method

.method public launchHulu(Ljava/lang/String;Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/connectsdk/service/RokuService$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/connectsdk/service/RokuService$4;-><init>(Lcom/connectsdk/service/RokuService;Ljava/lang/String;Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;)V

    invoke-virtual {p0, v0}, Lcom/connectsdk/service/RokuService;->getAppList(Lcom/connectsdk/service/capability/Launcher$AppListListener;)V

    return-void
.end method

.method public launchNetflix(Ljava/lang/String;Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/connectsdk/service/RokuService$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/connectsdk/service/RokuService$3;-><init>(Lcom/connectsdk/service/RokuService;Ljava/lang/String;Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;)V

    invoke-virtual {p0, v0}, Lcom/connectsdk/service/RokuService;->getAppList(Lcom/connectsdk/service/capability/Launcher$AppListListener;)V

    return-void
.end method

.method public launchYouTube(Ljava/lang/String;FLcom/connectsdk/service/capability/Launcher$AppLaunchListener;)V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/connectsdk/service/RokuService;->getDIALService()Lcom/connectsdk/service/DIALService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/connectsdk/service/RokuService;->getDIALService()Lcom/connectsdk/service/DIALService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/connectsdk/service/DIALService;->getLauncher()Lcom/connectsdk/service/capability/Launcher;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/connectsdk/service/capability/Launcher;->launchYouTube(Ljava/lang/String;FLcom/connectsdk/service/capability/Launcher$AppLaunchListener;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lcom/connectsdk/service/command/ServiceCommandError;

    const/4 p2, 0x0

    const/4 v0, 0x0

    const-string v1, "Cannot reach DIAL service for launching with provided start time"

    invoke-direct {p1, p2, v1, v0}, Lcom/connectsdk/service/command/ServiceCommandError;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    invoke-static {p3, p1}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    :goto_0
    return-void
.end method

.method public launchYouTube(Ljava/lang/String;Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Lcom/connectsdk/service/RokuService;->launchYouTube(Ljava/lang/String;FLcom/connectsdk/service/capability/Launcher$AppLaunchListener;)V

    return-void
.end method

.method public left(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "keypress"

    const-string v1, "Left"

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/connectsdk/service/RokuService;->requestURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/connectsdk/service/command/ServiceCommand;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2, p1}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 3
    invoke-virtual {v1}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-void
.end method

.method public next(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
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
    invoke-static {}, Lcom/connectsdk/service/command/ServiceCommandError;->notSupported()Lcom/connectsdk/service/command/ServiceCommandError;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    return-void
.end method

.method public ok(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "keypress"

    const-string v1, "Select"

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/connectsdk/service/RokuService;->requestURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/connectsdk/service/command/ServiceCommand;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2, p1}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 3
    invoke-virtual {v1}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-void
.end method

.method public onLoseReachability(Lcom/connectsdk/etc/helper/DeviceServiceReachability;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/connectsdk/service/DeviceService;->connected:Z

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/connectsdk/service/RokuService;->disconnect()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/connectsdk/service/DeviceService;->mServiceReachability:Lcom/connectsdk/etc/helper/DeviceServiceReachability;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/connectsdk/etc/helper/DeviceServiceReachability;->stop()V

    :cond_1
    :goto_0
    return-void
.end method

.method public pause(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "keypress"

    const-string v1, "Play"

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/connectsdk/service/RokuService;->requestURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/connectsdk/service/command/ServiceCommand;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2, p1}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 3
    invoke-virtual {v1}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-void
.end method

.method public play(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "keypress"

    const-string v1, "Play"

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/connectsdk/service/RokuService;->requestURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/connectsdk/service/command/ServiceCommand;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2, p1}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 3
    invoke-virtual {v1}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-void
.end method

.method public playMedia(Lcom/connectsdk/core/MediaInfo;ZLcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V
    .locals 13

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/connectsdk/core/MediaInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/connectsdk/core/MediaInfo;->getMimeType()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {p1}, Lcom/connectsdk/core/MediaInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {p1}, Lcom/connectsdk/core/MediaInfo;->getDescription()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-virtual {p1}, Lcom/connectsdk/core/MediaInfo;->getImages()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lcom/connectsdk/core/MediaInfo;->getImages()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/connectsdk/core/MediaInfo;->getImages()Ljava/util/List;

    move-result-object v0

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/connectsdk/core/ImageInfo;

    .line 8
    invoke-virtual {v0}, Lcom/connectsdk/core/ImageInfo;->getUrl()Ljava/lang/String;

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

    move v11, p2

    move-object/from16 v12, p3

    .line 9
    invoke-virtual/range {v5 .. v12}, Lcom/connectsdk/service/RokuService;->playMedia(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V

    return-void
.end method

.method public playMedia(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p7

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/connectsdk/service/RokuService;->displayMedia(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V

    return-void
.end method

.method public previous(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
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
    invoke-static {}, Lcom/connectsdk/service/command/ServiceCommandError;->notSupported()Lcom/connectsdk/service/command/ServiceCommandError;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    return-void
.end method

.method public rewind(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "keypress"

    const-string v1, "Rev"

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/connectsdk/service/RokuService;->requestURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/connectsdk/service/command/ServiceCommand;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2, p1}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 3
    invoke-virtual {v1}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-void
.end method

.method public right(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "keypress"

    const-string v1, "Right"

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/connectsdk/service/RokuService;->requestURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/connectsdk/service/command/ServiceCommand;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2, p1}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 3
    invoke-virtual {v1}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-void
.end method

.method public seek(JLcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/connectsdk/service/command/ServiceCommandError;->notSupported()Lcom/connectsdk/service/command/ServiceCommandError;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    return-void
.end method

.method public sendCommand(Lcom/connectsdk/service/command/ServiceCommand;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/command/ServiceCommand<",
            "*>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/connectsdk/service/RokuService$10;

    invoke-direct {v0, p0, p1}, Lcom/connectsdk/service/RokuService$10;-><init>(Lcom/connectsdk/service/RokuService;Lcom/connectsdk/service/command/ServiceCommand;)V

    invoke-static {v0}, Lcom/connectsdk/core/Util;->runInBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendDelete()V
    .locals 4

    .line 1
    new-instance v0, Lcom/connectsdk/service/RokuService$9;

    invoke-direct {v0, p0}, Lcom/connectsdk/service/RokuService$9;-><init>(Lcom/connectsdk/service/RokuService;)V

    const-string v1, "keypress"

    const-string v2, "Backspace"

    .line 2
    invoke-direct {p0, v1, v2}, Lcom/connectsdk/service/RokuService;->requestURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Lcom/connectsdk/service/command/ServiceCommand;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v1, v3, v0}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 4
    invoke-virtual {v2}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-void
.end method

.method public sendEnter()V
    .locals 4

    .line 1
    new-instance v0, Lcom/connectsdk/service/RokuService$8;

    invoke-direct {v0, p0}, Lcom/connectsdk/service/RokuService$8;-><init>(Lcom/connectsdk/service/RokuService;)V

    const-string v1, "keypress"

    const-string v2, "Enter"

    .line 2
    invoke-direct {p0, v1, v2}, Lcom/connectsdk/service/RokuService;->requestURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Lcom/connectsdk/service/command/ServiceCommand;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v1, v3, v0}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 4
    invoke-virtual {v2}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-void
.end method

.method public sendKeyCode(Lcom/connectsdk/service/capability/KeyControl$KeyCode;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/KeyControl$KeyCode;",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/connectsdk/service/command/ServiceCommandError;->notSupported()Lcom/connectsdk/service/command/ServiceCommandError;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    return-void
.end method

.method public sendText(Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    new-instance v0, Lcom/connectsdk/service/RokuService$7;

    invoke-direct {v0, p0}, Lcom/connectsdk/service/RokuService$7;-><init>(Lcom/connectsdk/service/RokuService;)V

    const/4 v1, 0x0

    .line 3
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lit_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "UTF-8"

    invoke-static {p1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object p1, v1

    :goto_0
    const-string v2, "keypress"

    .line 5
    invoke-direct {p0, v2, p1}, Lcom/connectsdk/service/RokuService;->requestURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    sget-object v2, Lcom/connectsdk/core/Util;->T:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RokuService::ic_send() | uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    new-instance v2, Lcom/connectsdk/service/command/ServiceCommand;

    invoke-direct {v2, p0, p1, v1, v0}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 8
    invoke-virtual {v2}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    :cond_1
    :goto_1
    return-void
.end method

.method public setServiceDescription(Lcom/connectsdk/service/config/ServiceDescription;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/connectsdk/service/DeviceService;->setServiceDescription(Lcom/connectsdk/service/config/ServiceDescription;)V

    .line 2
    iget-object p1, p0, Lcom/connectsdk/service/DeviceService;->serviceDescription:Lcom/connectsdk/service/config/ServiceDescription;

    if-eqz p1, :cond_0

    const/16 v0, 0x1f7c

    .line 3
    invoke-virtual {p1, v0}, Lcom/connectsdk/service/config/ServiceDescription;->setPort(I)V

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/connectsdk/service/RokuService;->probeForAppSupport()V

    return-void
.end method

.method public stop(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "input?a=sto"

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/connectsdk/service/RokuService;->requestURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    new-instance v2, Lcom/connectsdk/service/command/ServiceCommand;

    invoke-direct {v2, p0, v1, v0, p1}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 3
    invoke-virtual {v2}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-void
.end method

.method public subscribeAppState(Lcom/connectsdk/service/sessions/LaunchSession;Lcom/connectsdk/service/capability/Launcher$AppStateListener;)Lcom/connectsdk/service/command/ServiceSubscription;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/sessions/LaunchSession;",
            "Lcom/connectsdk/service/capability/Launcher$AppStateListener;",
            ")",
            "Lcom/connectsdk/service/command/ServiceSubscription<",
            "Lcom/connectsdk/service/capability/Launcher$AppStateListener;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/connectsdk/service/command/ServiceCommandError;->notSupported()Lcom/connectsdk/service/command/ServiceCommandError;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public subscribeMediaInfo(Lcom/connectsdk/service/capability/MediaPlayer$MediaInfoListener;)Lcom/connectsdk/service/command/ServiceSubscription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/MediaPlayer$MediaInfoListener;",
            ")",
            "Lcom/connectsdk/service/command/ServiceSubscription<",
            "Lcom/connectsdk/service/capability/MediaPlayer$MediaInfoListener;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/connectsdk/service/command/ServiceCommandError;->notSupported()Lcom/connectsdk/service/command/ServiceCommandError;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/connectsdk/service/capability/listeners/ErrorListener;->onError(Lcom/connectsdk/service/command/ServiceCommandError;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public subscribePlayState(Lcom/connectsdk/service/capability/MediaControl$PlayStateListener;)Lcom/connectsdk/service/command/ServiceSubscription;
    .locals 1
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
    invoke-static {}, Lcom/connectsdk/service/command/ServiceCommandError;->notSupported()Lcom/connectsdk/service/command/ServiceCommandError;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public subscribeRunningApp(Lcom/connectsdk/service/capability/Launcher$AppInfoListener;)Lcom/connectsdk/service/command/ServiceSubscription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/Launcher$AppInfoListener;",
            ")",
            "Lcom/connectsdk/service/command/ServiceSubscription<",
            "Lcom/connectsdk/service/capability/Launcher$AppInfoListener;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/connectsdk/service/command/ServiceCommandError;->notSupported()Lcom/connectsdk/service/command/ServiceCommandError;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    .line 2
    new-instance p1, Lcom/connectsdk/service/command/NotSupportedServiceSubscription;

    invoke-direct {p1}, Lcom/connectsdk/service/command/NotSupportedServiceSubscription;-><init>()V

    return-object p1
.end method

.method public subscribeTextInputStatus(Lcom/connectsdk/service/capability/TextInputControl$TextInputStatusListener;)Lcom/connectsdk/service/command/ServiceSubscription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/TextInputControl$TextInputStatusListener;",
            ")",
            "Lcom/connectsdk/service/command/ServiceSubscription<",
            "Lcom/connectsdk/service/capability/TextInputControl$TextInputStatusListener;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/connectsdk/service/command/ServiceCommandError;->notSupported()Lcom/connectsdk/service/command/ServiceCommandError;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    .line 2
    new-instance p1, Lcom/connectsdk/service/command/NotSupportedServiceSubscription;

    invoke-direct {p1}, Lcom/connectsdk/service/command/NotSupportedServiceSubscription;-><init>()V

    return-object p1
.end method

.method public unsubscribe(Lcom/connectsdk/service/command/URLServiceSubscription;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/command/URLServiceSubscription<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public up(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "keypress"

    const-string v1, "Up"

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/connectsdk/service/RokuService;->requestURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/connectsdk/service/command/ServiceCommand;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2, p1}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 3
    invoke-virtual {v1}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-void
.end method

.method public updateCapabilities()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "KeyControl.Up"

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "KeyControl.Down"

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "KeyControl.Left"

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "KeyControl.Right"

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "KeyControl.OK"

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "KeyControl.Back"

    const-string v2, "KeyControl.Home"

    const-string v3, "KeyControl.SendKey"

    const-string v4, "Launcher.App"

    .line 7
    invoke-static {v0, v1, v2, v3, v4}, Lcom/shabakaty/downloader/a5;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Launcher.App.Params"

    const-string v2, "Launcher.App.List"

    const-string v3, "Launcher.AppStore"

    const-string v4, "Launcher.AppStore.Params"

    .line 8
    invoke-static {v0, v1, v2, v3, v4}, Lcom/shabakaty/downloader/a5;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Launcher.App.Close"

    const-string v2, "MediaPlayer.Display.Image"

    const-string v3, "MediaPlayer.Play.Video"

    const-string v4, "MediaPlayer.Play.Audio"

    .line 9
    invoke-static {v0, v1, v2, v3, v4}, Lcom/shabakaty/downloader/a5;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MediaPlayer.Close"

    const-string v2, "MediaPlayer.MetaData.Title"

    const-string v3, "MediaControl.FastForward"

    const-string v4, "MediaControl.Rewind"

    .line 10
    invoke-static {v0, v1, v2, v3, v4}, Lcom/shabakaty/downloader/a5;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MediaControl.Play"

    const-string v2, "MediaControl.Pause"

    const-string v3, "TextInputControl.Send"

    const-string v4, "TextInputControl.Delete"

    .line 11
    invoke-static {v0, v1, v2, v3, v4}, Lcom/shabakaty/downloader/a5;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "TextInputControl.Enter"

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-virtual {p0, v0}, Lcom/connectsdk/service/DeviceService;->setCapabilities(Ljava/util/List;)V

    return-void
.end method
