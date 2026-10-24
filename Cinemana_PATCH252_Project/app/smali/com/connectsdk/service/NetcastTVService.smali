.class public Lcom/connectsdk/service/NetcastTVService;
.super Lcom/connectsdk/service/DeviceService;
.source "NetcastTVService.java"

# interfaces
.implements Lcom/connectsdk/service/capability/Launcher;
.implements Lcom/connectsdk/service/capability/MediaControl;
.implements Lcom/connectsdk/service/capability/MediaPlayer;
.implements Lcom/connectsdk/service/capability/TVControl;
.implements Lcom/connectsdk/service/capability/VolumeControl;
.implements Lcom/connectsdk/service/capability/ExternalInputControl;
.implements Lcom/connectsdk/service/capability/MouseControl;
.implements Lcom/connectsdk/service/capability/TextInputControl;
.implements Lcom/connectsdk/service/capability/PowerControl;
.implements Lcom/connectsdk/service/capability/KeyControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/connectsdk/service/NetcastTVService$NetcastTVLaunchSessionR;,
        Lcom/connectsdk/service/NetcastTVService$State;
    }
.end annotation


# static fields
.field public static final ID:Ljava/lang/String; = "Netcast TV"

.field public static final ROAP_PATH_APP_STORE:Ljava/lang/String; = "/roap/api/command/"

.field public static final SMART_SHARE:Ljava/lang/String; = "SmartShare\u2122"

.field public static final TARGET_3D_MODE:Ljava/lang/String; = "3DMode"

.field public static final TARGET_APPLIST_GET:Ljava/lang/String; = "applist_get"

.field public static final TARGET_APPNUM_GET:Ljava/lang/String; = "appnum_get"

.field public static final TARGET_CHANNEL_LIST:Ljava/lang/String; = "channel_list"

.field public static final TARGET_CURRENT_CHANNEL:Ljava/lang/String; = "cur_channel"

.field public static final TARGET_IS_3D:Ljava/lang/String; = "is_3D"

.field public static final TARGET_VOLUME_INFO:Ljava/lang/String; = "volume_info"

.field public static final UDAP_API_COMMAND:Ljava/lang/String; = "command"

.field public static final UDAP_API_EVENT:Ljava/lang/String; = "event"

.field public static final UDAP_API_PAIRING:Ljava/lang/String; = "pairing"

.field public static final UDAP_PATH_APPTOAPP_COMMAND:Ljava/lang/String; = "/udap/api/apptoapp/command/"

.field public static final UDAP_PATH_APPTOAPP_DATA:Ljava/lang/String; = "/udap/api/apptoapp/data/"

.field public static final UDAP_PATH_COMMAND:Ljava/lang/String; = "/udap/api/command"

.field public static final UDAP_PATH_DATA:Ljava/lang/String; = "/udap/api/data"

.field public static final UDAP_PATH_EVENT:Ljava/lang/String; = "/udap/api/event"

.field public static final UDAP_PATH_PAIRING:Ljava/lang/String; = "/udap/api/pairing"


# instance fields
.field public applications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/connectsdk/core/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field public dialService:Lcom/connectsdk/service/DIALService;

.field public dlnaService:Lcom/connectsdk/service/DLNAService;

.field public httpServer:Lcom/connectsdk/service/netcast/NetcastHttpServer;

.field public inputPickerSession:Lcom/connectsdk/service/sessions/LaunchSession;

.field public keyboardString:Ljava/lang/StringBuilder;

.field public mMouseDistance:Landroid/graphics/PointF;

.field public mMouseIsMoving:Ljava/lang/Boolean;

.field private final mTextChangedListener:Lcom/connectsdk/service/capability/listeners/ResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public state:Lcom/connectsdk/service/NetcastTVService$State;

.field public subscriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/connectsdk/service/command/URLServiceSubscription<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/config/ServiceDescription;Lcom/connectsdk/service/config/ServiceConfig;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/connectsdk/service/DeviceService;-><init>(Lcom/connectsdk/service/config/ServiceDescription;Lcom/connectsdk/service/config/ServiceConfig;)V

    .line 2
    sget-object p2, Lcom/connectsdk/service/NetcastTVService$State;->INITIAL:Lcom/connectsdk/service/NetcastTVService$State;

    iput-object p2, p0, Lcom/connectsdk/service/NetcastTVService;->state:Lcom/connectsdk/service/NetcastTVService$State;

    .line 3
    new-instance v0, Lcom/connectsdk/service/NetcastTVService$36;

    invoke-direct {v0, p0}, Lcom/connectsdk/service/NetcastTVService$36;-><init>(Lcom/connectsdk/service/NetcastTVService;)V

    iput-object v0, p0, Lcom/connectsdk/service/NetcastTVService;->mTextChangedListener:Lcom/connectsdk/service/capability/listeners/ResponseListener;

    .line 4
    sget-object v0, Lcom/connectsdk/service/DeviceService$PairingType;->PIN_CODE:Lcom/connectsdk/service/DeviceService$PairingType;

    iput-object v0, p0, Lcom/connectsdk/service/DeviceService;->pairingType:Lcom/connectsdk/service/DeviceService$PairingType;

    .line 5
    invoke-virtual {p1}, Lcom/connectsdk/service/config/ServiceDescription;->getPort()I

    move-result v0

    const/16 v1, 0x1f90

    if-eq v0, v1, :cond_0

    .line 6
    invoke-virtual {p1, v1}, Lcom/connectsdk/service/config/ServiceDescription;->setPort(I)V

    .line 7
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/connectsdk/service/NetcastTVService;->applications:Ljava/util/List;

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/connectsdk/service/NetcastTVService;->subscriptions:Ljava/util/List;

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/connectsdk/service/NetcastTVService;->keyboardString:Ljava/lang/StringBuilder;

    .line 10
    iput-object p2, p0, Lcom/connectsdk/service/NetcastTVService;->state:Lcom/connectsdk/service/NetcastTVService$State;

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/connectsdk/service/NetcastTVService;->inputPickerSession:Lcom/connectsdk/service/sessions/LaunchSession;

    return-void
.end method

.method public static synthetic access$000(Lcom/connectsdk/service/NetcastTVService;)Lcom/connectsdk/service/capability/listeners/ResponseListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/connectsdk/service/NetcastTVService;->mTextChangedListener:Lcom/connectsdk/service/capability/listeners/ResponseListener;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/connectsdk/service/NetcastTVService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/connectsdk/service/NetcastTVService;->hConnectSuccess()V

    return-void
.end method

.method public static synthetic access$1000(Lcom/connectsdk/service/NetcastTVService;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/connectsdk/service/NetcastTVService;->parseVolumeXmlToJSON(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/connectsdk/service/NetcastTVService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/connectsdk/service/NetcastTVService;->moveMouse()V

    return-void
.end method

.method public static synthetic access$200(Lcom/connectsdk/service/NetcastTVService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/connectsdk/service/NetcastTVService;->launchApplication(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/connectsdk/service/NetcastTVService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/connectsdk/service/NetcastTVService;->getUDAPRequestURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$400(Lcom/connectsdk/service/NetcastTVService;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/connectsdk/service/NetcastTVService;->getUDAPMessageBody(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$500(Lcom/connectsdk/service/NetcastTVService;Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/connectsdk/service/NetcastTVService;->parseAppNumberXmlToJSON(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic access$600(Lcom/connectsdk/service/NetcastTVService;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/connectsdk/service/NetcastTVService;->parseApplicationsXmlToJSON(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$700(Lcom/connectsdk/service/NetcastTVService;IILcom/connectsdk/service/capability/Launcher$AppListListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/connectsdk/service/NetcastTVService;->getApplications(IILcom/connectsdk/service/capability/Launcher$AppListListener;)V

    return-void
.end method

.method public static synthetic access$800(Lcom/connectsdk/service/NetcastTVService;ILcom/connectsdk/service/capability/Launcher$AppCountListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/connectsdk/service/NetcastTVService;->getTotalNumberOfApplications(ILcom/connectsdk/service/capability/Launcher$AppCountListener;)V

    return-void
.end method

.method public static synthetic access$900(Lcom/connectsdk/service/NetcastTVService;ILcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/connectsdk/service/NetcastTVService;->sendVirtualKeyCode(ILcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method

.method private addSubscription(Lcom/connectsdk/service/command/URLServiceSubscription;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/command/URLServiceSubscription<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/NetcastTVService;->subscriptions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object p1, p0, Lcom/connectsdk/service/NetcastTVService;->httpServer:Lcom/connectsdk/service/netcast/NetcastHttpServer;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/connectsdk/service/NetcastTVService;->subscriptions:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/connectsdk/service/netcast/NetcastHttpServer;->setSubscriptions(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private createNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "</"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, p1, v1}, Lcom/shabakaty/downloader/ni4;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static discoveryFilter()Lcom/connectsdk/discovery/DiscoveryFilter;
    .locals 3

    .line 1
    new-instance v0, Lcom/connectsdk/discovery/DiscoveryFilter;

    const-string v1, "Netcast TV"

    const-string v2, "urn:schemas-upnp-org:device:MediaRenderer:1"

    invoke-direct {v0, v1, v2}, Lcom/connectsdk/discovery/DiscoveryFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private endPairing(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "/udap/api/pairing"

    .line 1
    invoke-direct {p0, v0}, Lcom/connectsdk/service/NetcastTVService;->getUDAPRequestURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

    const-string v2, "byebye"

    .line 2
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/z4;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/connectsdk/service/DeviceService;->serviceDescription:Lcom/connectsdk/service/config/ServiceDescription;

    invoke-virtual {v2}, Lcom/connectsdk/service/config/ServiceDescription;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "port"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "pairing"

    .line 4
    invoke-direct {p0, v2, v1}, Lcom/connectsdk/service/NetcastTVService;->getUDAPMessageBody(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 5
    new-instance v2, Lcom/connectsdk/service/command/ServiceCommand;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 6
    invoke-virtual {v2}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-void
.end method

.method private getAppInfoForId(Ljava/lang/String;Lcom/connectsdk/service/capability/Launcher$AppInfoListener;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/connectsdk/service/NetcastTVService$8;

    invoke-direct {v0, p0, p2, p1}, Lcom/connectsdk/service/NetcastTVService$8;-><init>(Lcom/connectsdk/service/NetcastTVService;Lcom/connectsdk/service/capability/Launcher$AppInfoListener;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/connectsdk/service/NetcastTVService;->getAppList(Lcom/connectsdk/service/capability/Launcher$AppListListener;)V

    return-void
.end method

.method private getApplications(IILcom/connectsdk/service/capability/Launcher$AppListListener;)V
    .locals 7

    .line 1
    new-instance v0, Lcom/connectsdk/service/NetcastTVService$16;

    invoke-direct {v0, p0, p3}, Lcom/connectsdk/service/NetcastTVService$16;-><init>(Lcom/connectsdk/service/NetcastTVService;Lcom/connectsdk/service/capability/Launcher$AppListListener;)V

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v2, "/udap/api/data"

    const-string v3, "applist_get"

    const-string v5, "0"

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/connectsdk/service/NetcastTVService;->getUDAPRequestURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance p2, Lcom/connectsdk/service/command/ServiceCommand;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p1, p3, v0}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    const-string p1, "GET"

    .line 4
    invoke-virtual {p2, p1}, Lcom/connectsdk/service/command/ServiceCommand;->setHttpMethod(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p2}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-void
.end method

.method private getTotalNumberOfApplications(ILcom/connectsdk/service/capability/Launcher$AppCountListener;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/connectsdk/service/NetcastTVService$15;

    invoke-direct {v0, p0, p2}, Lcom/connectsdk/service/NetcastTVService$15;-><init>(Lcom/connectsdk/service/NetcastTVService;Lcom/connectsdk/service/capability/Launcher$AppCountListener;)V

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "/udap/api/data"

    const-string v1, "appnum_get"

    invoke-direct {p0, p2, v1, p1}, Lcom/connectsdk/service/NetcastTVService;->getUDAPRequestURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance p2, Lcom/connectsdk/service/command/ServiceCommand;

    const/4 v1, 0x0

    invoke-direct {p2, p0, p1, v1, v0}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    const-string p1, "GET"

    .line 4
    invoke-virtual {p2, p1}, Lcom/connectsdk/service/command/ServiceCommand;->setHttpMethod(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p2}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-void
.end method

.method private getUDAPMessageBody(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<?xml version=\"1.0\" encoding=\"utf-8\"?>"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<envelope>"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<api type=\""

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\">"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 7
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 8
    invoke-direct {p0, v1, p2}, Lcom/connectsdk/service/NetcastTVService;->createNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string p1, "</api>"

    const-string p2, "</envelope>"

    .line 9
    invoke-static {v0, p1, p2}, Lcom/shabakaty/downloader/ni4;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getUDAPRequestURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/connectsdk/service/NetcastTVService;->getUDAPRequestURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getUDAPRequestURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/connectsdk/service/NetcastTVService;->getUDAPRequestURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getUDAPRequestURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/connectsdk/service/NetcastTVService;->getUDAPRequestURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getUDAPRequestURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "http://"

    .line 4
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/connectsdk/service/DeviceService;->serviceDescription:Lcom/connectsdk/service/config/ServiceDescription;

    invoke-virtual {v1}, Lcom/connectsdk/service/config/ServiceDescription;->getIpAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v1, p0, Lcom/connectsdk/service/DeviceService;->serviceDescription:Lcom/connectsdk/service/config/ServiceDescription;

    invoke-virtual {v1}, Lcom/connectsdk/service/config/ServiceDescription;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_2

    const-string p1, "?target="

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    const-string p1, "&type="

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz p4, :cond_1

    const-string p1, "&index="

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz p5, :cond_2

    const-string p1, "&number="

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getVolumeStatus(Lcom/connectsdk/service/capability/VolumeControl$VolumeStatusListener;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/connectsdk/service/NetcastTVService$27;

    invoke-direct {v0, p0, p1}, Lcom/connectsdk/service/NetcastTVService$27;-><init>(Lcom/connectsdk/service/NetcastTVService;Lcom/connectsdk/service/capability/VolumeControl$VolumeStatusListener;)V

    const-string p1, "/udap/api/data"

    const-string v1, "volume_info"

    .line 2
    invoke-direct {p0, p1, v1}, Lcom/connectsdk/service/NetcastTVService;->getUDAPRequestURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

.method private hConnectSuccess()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/connectsdk/service/DeviceService;->connected:Z

    .line 2
    invoke-virtual {p0, v0}, Lcom/connectsdk/service/DeviceService;->reportConnected(Z)V

    return-void
.end method

.method private handleKeyboardInput(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    new-instance v0, Lcom/connectsdk/service/NetcastTVService$37;

    invoke-direct {v0, p0}, Lcom/connectsdk/service/NetcastTVService$37;-><init>(Lcom/connectsdk/service/NetcastTVService;)V

    const-string v1, "/udap/api/event"

    .line 2
    invoke-direct {p0, v1}, Lcom/connectsdk/service/NetcastTVService;->getUDAPRequestURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "name"

    const-string v4, "TextEdited"

    .line 4
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "state"

    .line 5
    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "value"

    .line 6
    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "event"

    .line 7
    invoke-direct {p0, p1, v2}, Lcom/connectsdk/service/NetcastTVService;->getUDAPMessageBody(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 8
    new-instance p2, Lcom/connectsdk/service/command/ServiceCommand;

    invoke-direct {p2, p0, v1, p1, v0}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 9
    invoke-virtual {p2}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-void
.end method

.method private launchApplication(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;)V
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "id"

    .line 2
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "title"

    .line 3
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 5
    :goto_0
    new-instance v0, Lcom/connectsdk/service/NetcastTVService$9;

    invoke-direct {v0, p0, p2, p1, p4}, Lcom/connectsdk/service/NetcastTVService$9;-><init>(Lcom/connectsdk/service/NetcastTVService;Ljava/lang/String;Ljava/lang/String;Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;)V

    const-string p4, "/udap/api/apptoapp/command/"

    .line 6
    invoke-direct {p0, p4}, Lcom/connectsdk/service/NetcastTVService;->getUDAPRequestURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 7
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "name"

    const-string v3, "AppExecute"

    .line 8
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "auid"

    .line 9
    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    const-string p2, "appname"

    .line 10
    invoke-virtual {v1, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p3, :cond_1

    const-string p1, "contentid"

    .line 11
    invoke-virtual {v1, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string p1, "command"

    .line 12
    invoke-direct {p0, p1, v1}, Lcom/connectsdk/service/NetcastTVService;->getUDAPMessageBody(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 13
    new-instance p2, Lcom/connectsdk/service/command/ServiceCommand;

    invoke-direct {p2, p0, p4, p1, v0}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 14
    invoke-virtual {p2}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-void
.end method

.method private moveMouse()V
    .locals 5

    const-string v0, "/udap/api/command"

    .line 1
    invoke-direct {p0, v0}, Lcom/connectsdk/service/NetcastTVService;->getUDAPRequestURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/connectsdk/service/NetcastTVService;->mMouseDistance:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    float-to-int v2, v2

    .line 3
    iget v1, v1, Landroid/graphics/PointF;->y:F

    float-to-int v1, v1

    const-string v3, "name"

    const-string v4, "HandleTouchMove"

    .line 4
    invoke-static {v3, v4}, Lcom/shabakaty/downloader/z4;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    .line 5
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "x"

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "y"

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v1, p0, Lcom/connectsdk/service/NetcastTVService;->mMouseDistance:Landroid/graphics/PointF;

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/PointF;->y:F

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 8
    new-instance v1, Lcom/connectsdk/service/NetcastTVService$33;

    invoke-direct {v1, p0, p0}, Lcom/connectsdk/service/NetcastTVService$33;-><init>(Lcom/connectsdk/service/NetcastTVService;Lcom/connectsdk/service/NetcastTVService;)V

    const-string v2, "command"

    .line 9
    invoke-direct {p0, v2, v3}, Lcom/connectsdk/service/NetcastTVService;->getUDAPMessageBody(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 10
    new-instance v3, Lcom/connectsdk/service/command/ServiceCommand;

    invoke-direct {v3, p0, v0, v2, v1}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 11
    invoke-virtual {v3}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-void
.end method

.method private parseAppNumberXmlToJSON(Ljava/lang/String;)I
    .locals 3

    .line 1
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 3
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object p1

    .line 4
    new-instance v0, Lcom/connectsdk/service/netcast/NetcastAppNumberParser;

    invoke-direct {v0}, Lcom/connectsdk/service/netcast/NetcastAppNumberParser;-><init>()V

    .line 5
    invoke-virtual {p1, v1, v0}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 6
    invoke-virtual {v0}, Lcom/connectsdk/service/netcast/NetcastAppNumberParser;->getApplicationNumber()I

    move-result p1
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 8
    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private parseApplicationsXmlToJSON(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 3

    .line 1
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 3
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object p1

    .line 4
    new-instance v0, Lcom/connectsdk/service/netcast/NetcastApplicationsParser;

    invoke-direct {v0}, Lcom/connectsdk/service/netcast/NetcastApplicationsParser;-><init>()V

    .line 5
    invoke-virtual {p1, v1, v0}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 6
    invoke-virtual {v0}, Lcom/connectsdk/service/netcast/NetcastApplicationsParser;->getApplications()Lorg/json/JSONArray;

    move-result-object p1
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 8
    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private parseVolumeXmlToJSON(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    .line 1
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 3
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object p1

    .line 4
    new-instance v0, Lcom/connectsdk/service/netcast/NetcastVolumeParser;

    invoke-direct {v0}, Lcom/connectsdk/service/netcast/NetcastVolumeParser;-><init>()V

    .line 5
    invoke-virtual {p1, v1, v0}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 6
    invoke-virtual {v0}, Lcom/connectsdk/service/netcast/NetcastVolumeParser;->getVolumeStatus()Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 8
    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private sendVirtualKeyCode(ILcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/connectsdk/service/NetcastTVService$39;

    invoke-direct {v0, p0, p1, p2}, Lcom/connectsdk/service/NetcastTVService$39;-><init>(Lcom/connectsdk/service/NetcastTVService;ILcom/connectsdk/service/capability/listeners/ResponseListener;)V

    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/connectsdk/service/NetcastTVService;->setMouseCursorVisible(ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method

.method private setMouseCursorVisible(ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "/udap/api/event"

    .line 1
    invoke-direct {p0, v0}, Lcom/connectsdk/service/NetcastTVService;->getUDAPRequestURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

    const-string v2, "CursorVisible"

    .line 2
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/z4;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz p1, :cond_0

    const-string p1, "true"

    goto :goto_0

    :cond_0
    const-string p1, "false"

    :goto_0
    const-string v2, "value"

    .line 3
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "mode"

    const-string v2, "auto"

    .line 4
    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "event"

    .line 5
    invoke-direct {p0, p1, v1}, Lcom/connectsdk/service/NetcastTVService;->getUDAPMessageBody(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 6
    new-instance v1, Lcom/connectsdk/service/command/ServiceCommand;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 7
    invoke-virtual {v1}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-void
.end method


# virtual methods
.method public back(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
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
    sget-object v0, Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;->BACK:Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;

    invoke-virtual {v0}, Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;->getCode()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/connectsdk/service/NetcastTVService;->sendVirtualKeyCode(ILcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method

.method public cancelPairing()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/connectsdk/service/NetcastTVService;->removePairingKeyOnTV()V

    .line 2
    sget-object v0, Lcom/connectsdk/service/NetcastTVService$State;->INITIAL:Lcom/connectsdk/service/NetcastTVService$State;

    iput-object v0, p0, Lcom/connectsdk/service/NetcastTVService;->state:Lcom/connectsdk/service/NetcastTVService$State;

    return-void
.end method

.method public channelDown(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
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
    sget-object v0, Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;->CHANNEL_DOWN:Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;

    invoke-virtual {v0}, Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;->getCode()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/connectsdk/service/NetcastTVService;->sendVirtualKeyCode(ILcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method

.method public channelUp(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
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
    sget-object v0, Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;->CHANNEL_UP:Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;

    invoke-virtual {v0}, Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;->getCode()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/connectsdk/service/NetcastTVService;->sendVirtualKeyCode(ILcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method

.method public click()V
    .locals 4

    .line 1
    new-instance v0, Lcom/connectsdk/service/NetcastTVService$32;

    invoke-direct {v0, p0}, Lcom/connectsdk/service/NetcastTVService$32;-><init>(Lcom/connectsdk/service/NetcastTVService;)V

    const-string v1, "/udap/api/command"

    .line 2
    invoke-direct {p0, v1}, Lcom/connectsdk/service/NetcastTVService;->getUDAPRequestURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    const-string v3, "HandleTouchClick"

    .line 3
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/z4;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "command"

    .line 4
    invoke-direct {p0, v3, v2}, Lcom/connectsdk/service/NetcastTVService;->getUDAPMessageBody(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 5
    new-instance v3, Lcom/connectsdk/service/command/ServiceCommand;

    invoke-direct {v3, p0, v1, v2, v0}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 6
    invoke-virtual {v3}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-void
.end method

.method public closeApp(Lcom/connectsdk/service/sessions/LaunchSession;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/sessions/LaunchSession;",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "/udap/api/apptoapp/command/"

    .line 1
    invoke-direct {p0, v0}, Lcom/connectsdk/service/NetcastTVService;->getUDAPRequestURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

    const-string v2, "AppTerminate"

    .line 2
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/z4;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/connectsdk/service/sessions/LaunchSession;->getAppId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "auid"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Lcom/connectsdk/service/sessions/LaunchSession;->getAppName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/connectsdk/service/sessions/LaunchSession;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/connectsdk/etc/helper/HttpMessage;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "appname"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v2, "command"

    .line 6
    invoke-direct {p0, v2, v1}, Lcom/connectsdk/service/NetcastTVService;->getUDAPMessageBody(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 7
    new-instance v2, Lcom/connectsdk/service/command/ServiceCommand;

    invoke-virtual {p1}, Lcom/connectsdk/service/sessions/LaunchSession;->getService()Lcom/connectsdk/service/DeviceService;

    move-result-object p1

    invoke-direct {v2, p1, v0, v1, p2}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 8
    invoke-virtual {v2}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-void
.end method

.method public closeInputPicker(Lcom/connectsdk/service/sessions/LaunchSession;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
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
    sget-object p1, Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;->EXIT:Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;

    invoke-virtual {p1}, Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;->getCode()I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/connectsdk/service/NetcastTVService;->sendVirtualKeyCode(ILcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method

.method public closeMedia(Lcom/connectsdk/service/sessions/LaunchSession;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 2
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
    invoke-virtual {p0}, Lcom/connectsdk/service/NetcastTVService;->getDLNAService()Lcom/connectsdk/service/DLNAService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    const-string v1, "Service is not connected"

    .line 2
    invoke-static {p1, v1, v0, p2}, Lcom/shabakaty/downloader/ww;->a(ILjava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/connectsdk/service/NetcastTVService;->getDLNAService()Lcom/connectsdk/service/DLNAService;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/connectsdk/service/DLNAService;->closeMedia(Lcom/connectsdk/service/sessions/LaunchSession;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method

.method public connect()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/NetcastTVService;->state:Lcom/connectsdk/service/NetcastTVService$State;

    sget-object v1, Lcom/connectsdk/service/NetcastTVService$State;->INITIAL:Lcom/connectsdk/service/NetcastTVService$State;

    if-eq v0, v1, :cond_0

    .line 2
    sget-object v0, Lcom/connectsdk/core/Util;->T:Ljava/lang/String;

    const-string v1, "already connecting; not trying to connect again: "

    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/connectsdk/service/NetcastTVService;->state:Lcom/connectsdk/service/NetcastTVService$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/connectsdk/service/DeviceService;->serviceConfig:Lcom/connectsdk/service/config/ServiceConfig;

    instance-of v1, v0, Lcom/connectsdk/service/config/NetcastTVServiceConfig;

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/connectsdk/service/config/ServiceConfig;->getListener()Lcom/connectsdk/service/config/ServiceConfig$ServiceConfigListener;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/connectsdk/service/config/NetcastTVServiceConfig;

    iget-object v2, p0, Lcom/connectsdk/service/DeviceService;->serviceConfig:Lcom/connectsdk/service/config/ServiceConfig;

    invoke-virtual {v2}, Lcom/connectsdk/service/config/ServiceConfig;->getServiceUUID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/connectsdk/service/config/NetcastTVServiceConfig;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/connectsdk/service/DeviceService;->serviceConfig:Lcom/connectsdk/service/config/ServiceConfig;

    .line 6
    invoke-virtual {v1, v0}, Lcom/connectsdk/service/config/ServiceConfig;->setListener(Lcom/connectsdk/service/config/ServiceConfig$ServiceConfigListener;)V

    .line 7
    :cond_1
    invoke-static {}, Lcom/connectsdk/discovery/DiscoveryManager;->getInstance()Lcom/connectsdk/discovery/DiscoveryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/connectsdk/discovery/DiscoveryManager;->getPairingLevel()Lcom/connectsdk/discovery/DiscoveryManager$PairingLevel;

    move-result-object v0

    sget-object v1, Lcom/connectsdk/discovery/DiscoveryManager$PairingLevel;->ON:Lcom/connectsdk/discovery/DiscoveryManager$PairingLevel;

    if-ne v0, v1, :cond_3

    .line 8
    iget-object v0, p0, Lcom/connectsdk/service/DeviceService;->serviceConfig:Lcom/connectsdk/service/config/ServiceConfig;

    check-cast v0, Lcom/connectsdk/service/config/NetcastTVServiceConfig;

    invoke-virtual {v0}, Lcom/connectsdk/service/config/NetcastTVServiceConfig;->getPairingKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/connectsdk/service/DeviceService;->serviceConfig:Lcom/connectsdk/service/config/ServiceConfig;

    check-cast v0, Lcom/connectsdk/service/config/NetcastTVServiceConfig;

    .line 9
    invoke-virtual {v0}, Lcom/connectsdk/service/config/NetcastTVServiceConfig;->getPairingKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/connectsdk/service/DeviceService;->serviceConfig:Lcom/connectsdk/service/config/ServiceConfig;

    check-cast v0, Lcom/connectsdk/service/config/NetcastTVServiceConfig;

    invoke-virtual {v0}, Lcom/connectsdk/service/config/NetcastTVServiceConfig;->getPairingKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/connectsdk/service/NetcastTVService;->sendPairingKey(Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p0}, Lcom/connectsdk/service/NetcastTVService;->showPairingKeyOnTV()V

    .line 12
    :goto_0
    new-instance v0, Lcom/connectsdk/service/NetcastTVService$1;

    invoke-direct {v0, p0}, Lcom/connectsdk/service/NetcastTVService$1;-><init>(Lcom/connectsdk/service/NetcastTVService;)V

    invoke-static {v0}, Lcom/connectsdk/core/Util;->runInBackground(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 13
    :cond_3
    invoke-direct {p0}, Lcom/connectsdk/service/NetcastTVService;->hConnectSuccess()V

    :goto_1
    return-void
.end method

.method public connectMouse()V
    .locals 2

    .line 1
    new-instance v0, Lcom/connectsdk/service/NetcastTVService$31;

    invoke-direct {v0, p0}, Lcom/connectsdk/service/NetcastTVService$31;-><init>(Lcom/connectsdk/service/NetcastTVService;)V

    const/4 v1, 0x1

    .line 2
    invoke-direct {p0, v1, v0}, Lcom/connectsdk/service/NetcastTVService;->setMouseCursorVisible(ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method

.method public decToHex(J)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    const-string p1, "%016x"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public decToHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/connectsdk/service/NetcastTVService;->decToHex(J)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public disconnect()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/connectsdk/service/NetcastTVService;->endPairing(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, p0, Lcom/connectsdk/service/DeviceService;->connected:Z

    .line 3
    iget-object v1, p0, Lcom/connectsdk/service/DeviceService;->mServiceReachability:Lcom/connectsdk/etc/helper/DeviceServiceReachability;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/connectsdk/etc/helper/DeviceServiceReachability;->stop()V

    .line 5
    :cond_0
    new-instance v1, Lcom/connectsdk/service/NetcastTVService$2;

    invoke-direct {v1, p0}, Lcom/connectsdk/service/NetcastTVService$2;-><init>(Lcom/connectsdk/service/NetcastTVService;)V

    invoke-static {v1}, Lcom/connectsdk/core/Util;->runOnUI(Ljava/lang/Runnable;)V

    .line 6
    iget-object v1, p0, Lcom/connectsdk/service/NetcastTVService;->httpServer:Lcom/connectsdk/service/netcast/NetcastHttpServer;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1}, Lcom/connectsdk/service/netcast/NetcastHttpServer;->stop()V

    .line 8
    iput-object v0, p0, Lcom/connectsdk/service/NetcastTVService;->httpServer:Lcom/connectsdk/service/netcast/NetcastHttpServer;

    .line 9
    :cond_1
    sget-object v0, Lcom/connectsdk/service/NetcastTVService$State;->INITIAL:Lcom/connectsdk/service/NetcastTVService$State;

    iput-object v0, p0, Lcom/connectsdk/service/NetcastTVService;->state:Lcom/connectsdk/service/NetcastTVService$State;

    return-void
.end method

.method public disconnectMouse()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/connectsdk/service/NetcastTVService;->setMouseCursorVisible(ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method

.method public displayImage(Lcom/connectsdk/core/MediaInfo;Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V
    .locals 12

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/connectsdk/core/MediaInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {p1}, Lcom/connectsdk/core/MediaInfo;->getMimeType()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual {p1}, Lcom/connectsdk/core/MediaInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-virtual {p1}, Lcom/connectsdk/core/MediaInfo;->getDescription()Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-virtual {p1}, Lcom/connectsdk/core/MediaInfo;->getImages()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lcom/connectsdk/core/MediaInfo;->getImages()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 10
    invoke-virtual {p1}, Lcom/connectsdk/core/MediaInfo;->getImages()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/connectsdk/core/ImageInfo;

    .line 11
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

    .line 12
    invoke-virtual/range {v5 .. v11}, Lcom/connectsdk/service/NetcastTVService;->displayImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V

    return-void
.end method

.method public displayImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/connectsdk/service/NetcastTVService;->getDLNAService()Lcom/connectsdk/service/DLNAService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v7, Lcom/connectsdk/service/NetcastTVService$29;

    invoke-direct {v7, p0, p6}, Lcom/connectsdk/service/NetcastTVService$29;-><init>(Lcom/connectsdk/service/NetcastTVService;Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V

    .line 3
    invoke-virtual {p0}, Lcom/connectsdk/service/NetcastTVService;->getDLNAService()Lcom/connectsdk/service/DLNAService;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/connectsdk/service/DLNAService;->displayImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p2, "DLNA Service is not ready yet"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public down(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
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
    sget-object v0, Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;->KEY_DOWN:Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;

    invoke-virtual {v0}, Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;->getCode()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/connectsdk/service/NetcastTVService;->sendVirtualKeyCode(ILcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method

.method public fastForward(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
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

.method public get3DEnabled(Lcom/connectsdk/service/capability/TVControl$State3DModeListener;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/connectsdk/service/NetcastTVService$23;

    invoke-direct {v0, p0, p1}, Lcom/connectsdk/service/NetcastTVService$23;-><init>(Lcom/connectsdk/service/NetcastTVService;Lcom/connectsdk/service/capability/TVControl$State3DModeListener;)V

    const-string p1, "/udap/api/data"

    const-string v1, "is_3D"

    .line 2
    invoke-direct {p0, p1, v1}, Lcom/connectsdk/service/NetcastTVService;->getUDAPRequestURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

.method public getAppList(Lcom/connectsdk/service/capability/Launcher$AppListListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/NetcastTVService;->applications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    new-instance v0, Lcom/connectsdk/service/NetcastTVService$17;

    invoke-direct {v0, p0, p1}, Lcom/connectsdk/service/NetcastTVService$17;-><init>(Lcom/connectsdk/service/NetcastTVService;Lcom/connectsdk/service/capability/Launcher$AppListListener;)V

    const/4 p1, 0x2

    invoke-direct {p0, p1, v0}, Lcom/connectsdk/service/NetcastTVService;->getTotalNumberOfApplications(ILcom/connectsdk/service/capability/Launcher$AppCountListener;)V

    return-void
.end method

.method public getAppState(Lcom/connectsdk/service/sessions/LaunchSession;Lcom/connectsdk/service/capability/Launcher$AppStateListener;)V
    .locals 5

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/udap/api/apptoapp/data/"

    .line 2
    invoke-direct {p0, v2}, Lcom/connectsdk/service/NetcastTVService;->getUDAPRequestURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Lcom/connectsdk/service/sessions/LaunchSession;->getAppId()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v3

    const-string p1, "/%s/status"

    invoke-static {v0, p1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "%s%s"

    .line 4
    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance v0, Lcom/connectsdk/service/NetcastTVService$18;

    invoke-direct {v0, p0, p2}, Lcom/connectsdk/service/NetcastTVService$18;-><init>(Lcom/connectsdk/service/NetcastTVService;Lcom/connectsdk/service/capability/Launcher$AppStateListener;)V

    .line 6
    new-instance p2, Lcom/connectsdk/service/command/ServiceCommand;

    const/4 v1, 0x0

    invoke-direct {p2, p0, p1, v1, v0}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    const-string p1, "GET"

    .line 7
    invoke-virtual {p2, p1}, Lcom/connectsdk/service/command/ServiceCommand;->setHttpMethod(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p2}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-void
.end method

.method public getApplication(Ljava/lang/String;Lcom/connectsdk/service/capability/Launcher$AppInfoListener;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/connectsdk/service/NetcastTVService$6;

    invoke-direct {v0, p0, p2}, Lcom/connectsdk/service/NetcastTVService$6;-><init>(Lcom/connectsdk/service/NetcastTVService;Lcom/connectsdk/service/capability/Launcher$AppInfoListener;)V

    const-string p2, "/udap/api/apptoapp/data/"

    .line 2
    invoke-static {p2, p1}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Lcom/connectsdk/service/NetcastTVService;->getUDAPRequestURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance p2, Lcom/connectsdk/service/command/ServiceCommand;

    const/4 v1, 0x0

    invoke-direct {p2, p0, p1, v1, v0}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    const-string p1, "GET"

    .line 5
    invoke-virtual {p2, p1}, Lcom/connectsdk/service/command/ServiceCommand;->setHttpMethod(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p2}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-void
.end method

.method public getChannelList(Lcom/connectsdk/service/capability/TVControl$ChannelListListener;)V
    .locals 3

    const-string v0, "/udap/api/data"

    const-string v1, "channel_list"

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/connectsdk/service/NetcastTVService;->getUDAPRequestURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/connectsdk/service/NetcastTVService$19;

    invoke-direct {v1, p0, p1}, Lcom/connectsdk/service/NetcastTVService$19;-><init>(Lcom/connectsdk/service/NetcastTVService;Lcom/connectsdk/service/capability/TVControl$ChannelListListener;)V

    .line 3
    new-instance p1, Lcom/connectsdk/service/command/ServiceCommand;

    const/4 v2, 0x0

    invoke-direct {p1, p0, v0, v2, v1}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    const-string v0, "GET"

    .line 4
    invoke-virtual {p1, v0}, Lcom/connectsdk/service/command/ServiceCommand;->setHttpMethod(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-void
.end method

.method public getCurrentChannel(Lcom/connectsdk/service/capability/TVControl$ChannelListener;)V
    .locals 3

    const-string v0, "/udap/api/data"

    const-string v1, "cur_channel"

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/connectsdk/service/NetcastTVService;->getUDAPRequestURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/connectsdk/service/NetcastTVService$21;

    invoke-direct {v1, p0, p1}, Lcom/connectsdk/service/NetcastTVService$21;-><init>(Lcom/connectsdk/service/NetcastTVService;Lcom/connectsdk/service/capability/TVControl$ChannelListener;)V

    .line 3
    new-instance p1, Lcom/connectsdk/service/command/ServiceCommand;

    const/4 v2, 0x0

    invoke-direct {p1, p0, v0, v2, v1}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 4
    invoke-virtual {p1}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-void
.end method

.method public getDIALService()Lcom/connectsdk/service/DIALService;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/NetcastTVService;->dialService:Lcom/connectsdk/service/DIALService;

    if-nez v0, :cond_2

    .line 2
    invoke-static {}, Lcom/connectsdk/discovery/DiscoveryManager;->getInstance()Lcom/connectsdk/discovery/DiscoveryManager;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/connectsdk/discovery/DiscoveryManager;->getAllDevices()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/connectsdk/service/DeviceService;->serviceDescription:Lcom/connectsdk/service/config/ServiceDescription;

    invoke-virtual {v1}, Lcom/connectsdk/service/config/ServiceDescription;->getIpAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/connectsdk/device/ConnectableDevice;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 4
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

    .line 5
    const-class v3, Lcom/connectsdk/service/DIALService;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    move-object v1, v2

    check-cast v1, Lcom/connectsdk/service/DIALService;

    .line 7
    :cond_1
    iput-object v1, p0, Lcom/connectsdk/service/NetcastTVService;->dialService:Lcom/connectsdk/service/DIALService;

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/connectsdk/service/NetcastTVService;->dialService:Lcom/connectsdk/service/DIALService;

    return-object v0
.end method

.method public getDLNAService()Lcom/connectsdk/service/DLNAService;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/NetcastTVService;->dlnaService:Lcom/connectsdk/service/DLNAService;

    if-nez v0, :cond_2

    .line 2
    invoke-static {}, Lcom/connectsdk/discovery/DiscoveryManager;->getInstance()Lcom/connectsdk/discovery/DiscoveryManager;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/connectsdk/discovery/DiscoveryManager;->getAllDevices()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/connectsdk/service/DeviceService;->serviceDescription:Lcom/connectsdk/service/config/ServiceDescription;

    invoke-virtual {v1}, Lcom/connectsdk/service/config/ServiceDescription;->getIpAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/connectsdk/device/ConnectableDevice;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 4
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

    .line 5
    const-class v3, Lcom/connectsdk/service/DLNAService;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    move-object v1, v2

    check-cast v1, Lcom/connectsdk/service/DLNAService;

    .line 7
    :cond_1
    iput-object v1, p0, Lcom/connectsdk/service/NetcastTVService;->dlnaService:Lcom/connectsdk/service/DLNAService;

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/connectsdk/service/NetcastTVService;->dlnaService:Lcom/connectsdk/service/DLNAService;

    return-object v0
.end method

.method public getDuration(Lcom/connectsdk/service/capability/MediaControl$DurationListener;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/connectsdk/service/NetcastTVService;->getDLNAService()Lcom/connectsdk/service/DLNAService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/connectsdk/service/NetcastTVService;->getDLNAService()Lcom/connectsdk/service/DLNAService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/connectsdk/service/DLNAService;->getDuration(Lcom/connectsdk/service/capability/MediaControl$DurationListener;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-static {}, Lcom/connectsdk/service/command/ServiceCommandError;->notSupported()Lcom/connectsdk/service/command/ServiceCommandError;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getExternalInput()Lcom/connectsdk/service/capability/ExternalInputControl;
    .locals 0

    return-object p0
.end method

.method public getExternalInputControlPriorityLevel()Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;
    .locals 1

    .line 1
    sget-object v0, Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;->HIGH:Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

    return-object v0
.end method

.method public getExternalInputList(Lcom/connectsdk/service/capability/ExternalInputControl$ExternalInputListListener;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/connectsdk/service/command/ServiceCommandError;->notSupported()Lcom/connectsdk/service/command/ServiceCommandError;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    return-void
.end method

.method public getHttpMessageForHandleKeyInput(I)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "name"

    const-string v2, "HandleKeyInput"

    .line 3
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "value"

    .line 4
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "command"

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/connectsdk/service/NetcastTVService;->getUDAPMessageBody(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
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
    .locals 2

    .line 1
    invoke-static {}, Lcom/connectsdk/discovery/DiscoveryManager;->getInstance()Lcom/connectsdk/discovery/DiscoveryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/connectsdk/discovery/DiscoveryManager;->getPairingLevel()Lcom/connectsdk/discovery/DiscoveryManager$PairingLevel;

    move-result-object v0

    sget-object v1, Lcom/connectsdk/discovery/DiscoveryManager$PairingLevel;->OFF:Lcom/connectsdk/discovery/DiscoveryManager$PairingLevel;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/connectsdk/service/NetcastTVService;->getDLNAService()Lcom/connectsdk/service/DLNAService;

    move-result-object v0

    return-object v0

    :cond_0
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
    invoke-virtual {p0}, Lcom/connectsdk/service/NetcastTVService;->getDLNAService()Lcom/connectsdk/service/DLNAService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/connectsdk/service/NetcastTVService;->getDLNAService()Lcom/connectsdk/service/DLNAService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/connectsdk/service/DLNAService;->getMediaInfo(Lcom/connectsdk/service/capability/MediaPlayer$MediaInfoListener;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-static {}, Lcom/connectsdk/service/command/ServiceCommandError;->notSupported()Lcom/connectsdk/service/command/ServiceCommandError;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    :cond_1
    :goto_0
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

.method public getMouseControl()Lcom/connectsdk/service/capability/MouseControl;
    .locals 0

    return-object p0
.end method

.method public getMouseControlCapabilityLevel()Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;
    .locals 1

    .line 1
    sget-object v0, Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;->HIGH:Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

    return-object v0
.end method

.method public getMute(Lcom/connectsdk/service/capability/VolumeControl$MuteListener;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/connectsdk/service/NetcastTVService$26;

    invoke-direct {v0, p0, p1}, Lcom/connectsdk/service/NetcastTVService$26;-><init>(Lcom/connectsdk/service/NetcastTVService;Lcom/connectsdk/service/capability/VolumeControl$MuteListener;)V

    invoke-direct {p0, v0}, Lcom/connectsdk/service/NetcastTVService;->getVolumeStatus(Lcom/connectsdk/service/capability/VolumeControl$VolumeStatusListener;)V

    return-void
.end method

.method public getPlayState(Lcom/connectsdk/service/capability/MediaControl$PlayStateListener;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/connectsdk/service/NetcastTVService;->getDLNAService()Lcom/connectsdk/service/DLNAService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/connectsdk/service/NetcastTVService;->getDLNAService()Lcom/connectsdk/service/DLNAService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/connectsdk/service/DLNAService;->getPlayState(Lcom/connectsdk/service/capability/MediaControl$PlayStateListener;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-static {}, Lcom/connectsdk/service/command/ServiceCommandError;->notSupported()Lcom/connectsdk/service/command/ServiceCommandError;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getPosition(Lcom/connectsdk/service/capability/MediaControl$PositionListener;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/connectsdk/service/NetcastTVService;->getDLNAService()Lcom/connectsdk/service/DLNAService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/connectsdk/service/NetcastTVService;->getDLNAService()Lcom/connectsdk/service/DLNAService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/connectsdk/service/DLNAService;->getPosition(Lcom/connectsdk/service/capability/MediaControl$PositionListener;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-static {}, Lcom/connectsdk/service/command/ServiceCommandError;->notSupported()Lcom/connectsdk/service/command/ServiceCommandError;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getPowerControl()Lcom/connectsdk/service/capability/PowerControl;
    .locals 0

    return-object p0
.end method

.method public getPowerControlCapabilityLevel()Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;
    .locals 1

    .line 1
    sget-object v0, Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;->HIGH:Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

    return-object v0
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
    invoke-virtual {p0}, Lcom/connectsdk/service/NetcastTVService;->getMediaPlayerCapabilityLevel()Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    const-class v0, Lcom/connectsdk/service/capability/MediaControl;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/connectsdk/service/NetcastTVService;->getMediaControlCapabilityLevel()Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    const-class v0, Lcom/connectsdk/service/capability/Launcher;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/connectsdk/service/NetcastTVService;->getLauncherCapabilityLevel()Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    const-class v0, Lcom/connectsdk/service/capability/TVControl;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p0}, Lcom/connectsdk/service/NetcastTVService;->getTVControlCapabilityLevel()Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

    move-result-object p1

    return-object p1

    .line 9
    :cond_3
    const-class v0, Lcom/connectsdk/service/capability/VolumeControl;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {p0}, Lcom/connectsdk/service/NetcastTVService;->getVolumeControlCapabilityLevel()Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

    move-result-object p1

    return-object p1

    .line 11
    :cond_4
    const-class v0, Lcom/connectsdk/service/capability/ExternalInputControl;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    invoke-virtual {p0}, Lcom/connectsdk/service/NetcastTVService;->getExternalInputControlPriorityLevel()Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

    move-result-object p1

    return-object p1

    .line 13
    :cond_5
    const-class v0, Lcom/connectsdk/service/capability/MouseControl;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 14
    invoke-virtual {p0}, Lcom/connectsdk/service/NetcastTVService;->getMouseControlCapabilityLevel()Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

    move-result-object p1

    return-object p1

    .line 15
    :cond_6
    const-class v0, Lcom/connectsdk/service/capability/TextInputControl;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 16
    invoke-virtual {p0}, Lcom/connectsdk/service/NetcastTVService;->getTextInputControlCapabilityLevel()Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

    move-result-object p1

    return-object p1

    .line 17
    :cond_7
    const-class v0, Lcom/connectsdk/service/capability/PowerControl;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 18
    invoke-virtual {p0}, Lcom/connectsdk/service/NetcastTVService;->getPowerControlCapabilityLevel()Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

    move-result-object p1

    return-object p1

    .line 19
    :cond_8
    const-class v0, Lcom/connectsdk/service/capability/KeyControl;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 20
    invoke-virtual {p0}, Lcom/connectsdk/service/NetcastTVService;->getKeyControlCapabilityLevel()Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

    move-result-object p1

    return-object p1

    .line 21
    :cond_9
    sget-object p1, Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;->NOT_SUPPORTED:Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

    return-object p1
.end method

.method public getProgramInfo(Lcom/connectsdk/service/capability/TVControl$ProgramInfoListener;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/connectsdk/service/command/ServiceCommandError;->notSupported()Lcom/connectsdk/service/command/ServiceCommandError;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    return-void
.end method

.method public getProgramList(Lcom/connectsdk/service/capability/TVControl$ProgramListListener;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/connectsdk/service/command/ServiceCommandError;->notSupported()Lcom/connectsdk/service/command/ServiceCommandError;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    return-void
.end method

.method public getRunningApp(Lcom/connectsdk/service/capability/Launcher$AppInfoListener;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/connectsdk/service/command/ServiceCommandError;->notSupported()Lcom/connectsdk/service/command/ServiceCommandError;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    return-void
.end method

.method public getTVControl()Lcom/connectsdk/service/capability/TVControl;
    .locals 0

    return-object p0
.end method

.method public getTVControlCapabilityLevel()Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;
    .locals 1

    .line 1
    sget-object v0, Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;->HIGH:Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

    return-object v0
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

.method public getVolume(Lcom/connectsdk/service/capability/VolumeControl$VolumeListener;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/connectsdk/service/NetcastTVService$24;

    invoke-direct {v0, p0, p1}, Lcom/connectsdk/service/NetcastTVService$24;-><init>(Lcom/connectsdk/service/NetcastTVService;Lcom/connectsdk/service/capability/VolumeControl$VolumeListener;)V

    invoke-direct {p0, v0}, Lcom/connectsdk/service/NetcastTVService;->getVolumeStatus(Lcom/connectsdk/service/capability/VolumeControl$VolumeStatusListener;)V

    return-void
.end method

.method public getVolumeControl()Lcom/connectsdk/service/capability/VolumeControl;
    .locals 0

    return-object p0
.end method

.method public getVolumeControlCapabilityLevel()Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;
    .locals 1

    .line 1
    sget-object v0, Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;->HIGH:Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

    return-object v0
.end method

.method public home(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
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
    sget-object v0, Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;->HOME:Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;

    invoke-virtual {v0}, Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;->getCode()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/connectsdk/service/NetcastTVService;->sendVirtualKeyCode(ILcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method

.method public hostByeBye()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/connectsdk/service/NetcastTVService;->disconnect()V

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
    .locals 1

    .line 1
    new-instance v0, Lcom/connectsdk/service/NetcastTVService$7;

    invoke-direct {v0, p0, p2}, Lcom/connectsdk/service/NetcastTVService$7;-><init>(Lcom/connectsdk/service/NetcastTVService;Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;)V

    invoke-direct {p0, p1, v0}, Lcom/connectsdk/service/NetcastTVService;->getAppInfoForId(Ljava/lang/String;Lcom/connectsdk/service/capability/Launcher$AppInfoListener;)V

    return-void
.end method

.method public launchAppStore(Ljava/lang/String;Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/DeviceService;->serviceDescription:Lcom/connectsdk/service/config/ServiceDescription;

    invoke-virtual {v0}, Lcom/connectsdk/service/config/ServiceDescription;->getModelNumber()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "LG Smart World"

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/connectsdk/service/NetcastTVService;->launchApp(Ljava/lang/String;Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;)V

    return-void

    :cond_0
    const-string v0, "/roap/api/command/"

    .line 3
    invoke-direct {p0, v0}, Lcom/connectsdk/service/NetcastTVService;->getUDAPRequestURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "name"

    const-string v3, "SearchCMDPlaySDPContent"

    .line 5
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "content_type"

    const-string v3, "4"

    .line 6
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "conts_exec_type"

    const-string v3, ""

    .line 7
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "conts_plex_type_flag"

    .line 8
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "conts_search_id"

    .line 9
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "conts_age"

    const-string v4, "12"

    .line 10
    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "exec_id"

    .line 11
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {p1}, Lcom/connectsdk/etc/helper/HttpMessage;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "item_id"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "app_type"

    const-string v3, "S"

    .line 13
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "command"

    .line 14
    invoke-direct {p0, v2, v1}, Lcom/connectsdk/service/NetcastTVService;->getUDAPMessageBody(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 15
    new-instance v2, Lcom/connectsdk/service/NetcastTVService$14;

    invoke-direct {v2, p0, p1, p2}, Lcom/connectsdk/service/NetcastTVService$14;-><init>(Lcom/connectsdk/service/NetcastTVService;Ljava/lang/String;Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;)V

    .line 16
    new-instance p1, Lcom/connectsdk/service/command/ServiceCommand;

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 17
    invoke-virtual {p1}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-void
.end method

.method public launchAppWithInfo(Lcom/connectsdk/core/AppInfo;Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Lcom/connectsdk/service/NetcastTVService;->launchAppWithInfo(Lcom/connectsdk/core/AppInfo;Ljava/lang/Object;Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;)V

    return-void
.end method

.method public launchAppWithInfo(Lcom/connectsdk/core/AppInfo;Ljava/lang/Object;Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;)V
    .locals 3

    .line 2
    invoke-virtual {p1}, Lcom/connectsdk/core/AppInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/connectsdk/etc/helper/HttpMessage;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/connectsdk/core/AppInfo;->getId()Ljava/lang/String;

    move-result-object p1

    .line 4
    instance-of v1, p2, Lorg/json/JSONObject;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 5
    check-cast p2, Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    move-object p2, v2

    :goto_0
    if-eqz p2, :cond_1

    :try_start_0
    const-string v1, "contentId"

    .line 6
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, p2

    goto :goto_1

    :catch_0
    move-exception p2

    .line 7
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 8
    :cond_1
    :goto_1
    invoke-direct {p0, v0, p1, v2, p3}, Lcom/connectsdk/service/NetcastTVService;->launchApplication(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;)V

    return-void
.end method

.method public launchBrowser(Ljava/lang/String;Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Lcom/connectsdk/core/Util;->T:Ljava/lang/String;

    const-string v0, "Netcast TV does not support deeplink for Browser"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    new-instance p1, Lcom/connectsdk/service/NetcastTVService$10;

    invoke-direct {p1, p0, p2}, Lcom/connectsdk/service/NetcastTVService$10;-><init>(Lcom/connectsdk/service/NetcastTVService;Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;)V

    const-string p2, "Internet"

    invoke-virtual {p0, p2, p1}, Lcom/connectsdk/service/NetcastTVService;->getApplication(Ljava/lang/String;Lcom/connectsdk/service/capability/Launcher$AppInfoListener;)V

    return-void
.end method

.method public launchHulu(Ljava/lang/String;Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/connectsdk/service/NetcastTVService$12;

    invoke-direct {v0, p0, p1, p2}, Lcom/connectsdk/service/NetcastTVService$12;-><init>(Lcom/connectsdk/service/NetcastTVService;Ljava/lang/String;Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;)V

    const-string p1, "Hulu"

    invoke-virtual {p0, p1, v0}, Lcom/connectsdk/service/NetcastTVService;->getApplication(Ljava/lang/String;Lcom/connectsdk/service/capability/Launcher$AppInfoListener;)V

    return-void
.end method

.method public launchInputPicker(Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;)V
    .locals 2

    const-string v0, "Input List"

    .line 1
    invoke-static {v0}, Lcom/connectsdk/etc/helper/HttpMessage;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/connectsdk/service/NetcastTVService$28;

    invoke-direct {v1, p0, p1}, Lcom/connectsdk/service/NetcastTVService$28;-><init>(Lcom/connectsdk/service/NetcastTVService;Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;)V

    invoke-virtual {p0, v0, v1}, Lcom/connectsdk/service/NetcastTVService;->getApplication(Ljava/lang/String;Lcom/connectsdk/service/capability/Launcher$AppInfoListener;)V

    return-void
.end method

.method public launchNetflix(Ljava/lang/String;Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/DeviceService;->serviceDescription:Lcom/connectsdk/service/config/ServiceDescription;

    invoke-virtual {v0}, Lcom/connectsdk/service/config/ServiceDescription;->getModelNumber()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Netflix"

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, v1, p2}, Lcom/connectsdk/service/NetcastTVService;->launchApp(Ljava/lang/String;Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/connectsdk/service/NetcastTVService$13;

    invoke-direct {v0, p0, p2, p1}, Lcom/connectsdk/service/NetcastTVService$13;-><init>(Lcom/connectsdk/service/NetcastTVService;Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lcom/connectsdk/service/NetcastTVService;->getApplication(Ljava/lang/String;Lcom/connectsdk/service/capability/Launcher$AppInfoListener;)V

    return-void
.end method

.method public launchYouTube(Ljava/lang/String;FLcom/connectsdk/service/capability/Launcher$AppLaunchListener;)V
    .locals 4

    .line 2
    invoke-virtual {p0}, Lcom/connectsdk/service/NetcastTVService;->getDIALService()Lcom/connectsdk/service/DIALService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/connectsdk/service/NetcastTVService;->getDIALService()Lcom/connectsdk/service/DIALService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/connectsdk/service/DIALService;->getLauncher()Lcom/connectsdk/service/capability/Launcher;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/connectsdk/service/capability/Launcher;->launchYouTube(Ljava/lang/String;FLcom/connectsdk/service/capability/Launcher$AppLaunchListener;)V

    return-void

    :cond_0
    float-to-double v0, p2

    const-wide/16 v2, 0x0

    cmpg-double p2, v0, v2

    if-gtz p2, :cond_1

    .line 4
    new-instance p2, Lcom/connectsdk/service/NetcastTVService$11;

    invoke-direct {p2, p0, p1, p3}, Lcom/connectsdk/service/NetcastTVService$11;-><init>(Lcom/connectsdk/service/NetcastTVService;Ljava/lang/String;Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;)V

    const-string p1, "YouTube"

    invoke-virtual {p0, p1, p2}, Lcom/connectsdk/service/NetcastTVService;->getApplication(Ljava/lang/String;Lcom/connectsdk/service/capability/Launcher$AppInfoListener;)V

    goto :goto_0

    .line 5
    :cond_1
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
    invoke-virtual {p0, p1, v0, p2}, Lcom/connectsdk/service/NetcastTVService;->launchYouTube(Ljava/lang/String;FLcom/connectsdk/service/capability/Launcher$AppLaunchListener;)V

    return-void
.end method

.method public left(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
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
    sget-object v0, Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;->KEY_LEFT:Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;

    invoke-virtual {v0}, Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;->getCode()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/connectsdk/service/NetcastTVService;->sendVirtualKeyCode(ILcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method

.method public move(DD)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/NetcastTVService;->mMouseDistance:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    float-to-double v1, v1

    add-double/2addr v1, p1

    double-to-float p1, v1

    iput p1, v0, Landroid/graphics/PointF;->x:F

    .line 2
    iget p1, v0, Landroid/graphics/PointF;->y:F

    float-to-double p1, p1

    add-double/2addr p1, p3

    double-to-float p1, p1

    iput p1, v0, Landroid/graphics/PointF;->y:F

    .line 3
    iget-object p1, p0, Lcom/connectsdk/service/NetcastTVService;->mMouseIsMoving:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/connectsdk/service/NetcastTVService;->mMouseIsMoving:Ljava/lang/Boolean;

    .line 5
    invoke-direct {p0}, Lcom/connectsdk/service/NetcastTVService;->moveMouse()V

    :cond_0
    return-void
.end method

.method public move(Landroid/graphics/PointF;)V
    .locals 4

    .line 6
    iget v0, p1, Landroid/graphics/PointF;->x:F

    float-to-double v0, v0

    iget p1, p1, Landroid/graphics/PointF;->y:F

    float-to-double v2, p1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/connectsdk/service/NetcastTVService;->move(DD)V

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
    sget-object v0, Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;->SKIP_FORWARD:Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;

    invoke-virtual {v0}, Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;->getCode()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/connectsdk/service/NetcastTVService;->sendVirtualKeyCode(ILcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method

.method public ok(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
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
    sget-object v0, Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;->OK:Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;

    invoke-virtual {v0}, Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;->getCode()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/connectsdk/service/NetcastTVService;->sendVirtualKeyCode(ILcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method

.method public onLoseReachability(Lcom/connectsdk/etc/helper/DeviceServiceReachability;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/connectsdk/service/DeviceService;->connected:Z

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/connectsdk/service/NetcastTVService;->disconnect()V

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
    sget-object v0, Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;->PAUSE:Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;

    invoke-virtual {v0}, Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;->getCode()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/connectsdk/service/NetcastTVService;->sendVirtualKeyCode(ILcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method

.method public play(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
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
    sget-object v0, Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;->PLAY:Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;

    invoke-virtual {v0}, Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;->getCode()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/connectsdk/service/NetcastTVService;->sendVirtualKeyCode(ILcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method

.method public playMedia(Lcom/connectsdk/core/MediaInfo;ZLcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/connectsdk/service/NetcastTVService;->getDLNAService()Lcom/connectsdk/service/DLNAService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    new-instance v0, Lcom/connectsdk/service/NetcastTVService$30;

    invoke-direct {v0, p0, p3}, Lcom/connectsdk/service/NetcastTVService$30;-><init>(Lcom/connectsdk/service/NetcastTVService;Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V

    .line 9
    invoke-virtual {p0}, Lcom/connectsdk/service/NetcastTVService;->getDLNAService()Lcom/connectsdk/service/DLNAService;

    move-result-object p3

    invoke-virtual {p3, p1, p2, v0}, Lcom/connectsdk/service/DLNAService;->playMedia(Lcom/connectsdk/core/MediaInfo;ZLcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V

    goto :goto_0

    .line 10
    :cond_0
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p2, "DLNA Service is not ready yet"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
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
    invoke-virtual {p0, p1, p6, p7}, Lcom/connectsdk/service/NetcastTVService;->playMedia(Lcom/connectsdk/core/MediaInfo;ZLcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V

    return-void
.end method

.method public powerOff(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
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
    new-instance p1, Lcom/connectsdk/service/NetcastTVService$38;

    invoke-direct {p1, p0}, Lcom/connectsdk/service/NetcastTVService$38;-><init>(Lcom/connectsdk/service/NetcastTVService;)V

    .line 2
    sget-object v0, Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;->POWER:Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;

    invoke-virtual {v0}, Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;->getCode()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/connectsdk/service/NetcastTVService;->sendVirtualKeyCode(ILcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method

.method public powerOn(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, Lcom/connectsdk/service/command/ServiceCommandError;->notSupported()Lcom/connectsdk/service/command/ServiceCommandError;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/connectsdk/service/capability/listeners/ErrorListener;->onError(Lcom/connectsdk/service/command/ServiceCommandError;)V

    :cond_0
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
    sget-object v0, Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;->SKIP_BACKWARD:Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;

    invoke-virtual {v0}, Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;->getCode()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/connectsdk/service/NetcastTVService;->sendVirtualKeyCode(ILcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method

.method public removePairingKeyOnTV()V
    .locals 4

    .line 1
    new-instance v0, Lcom/connectsdk/service/NetcastTVService$4;

    invoke-direct {v0, p0}, Lcom/connectsdk/service/NetcastTVService$4;-><init>(Lcom/connectsdk/service/NetcastTVService;)V

    const-string v1, "/udap/api/pairing"

    .line 2
    invoke-direct {p0, v1}, Lcom/connectsdk/service/NetcastTVService;->getUDAPRequestURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    const-string v3, "CancelAuthKeyReq"

    .line 3
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/z4;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "pairing"

    .line 4
    invoke-direct {p0, v3, v2}, Lcom/connectsdk/service/NetcastTVService;->getUDAPMessageBody(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 5
    new-instance v3, Lcom/connectsdk/service/command/ServiceCommand;

    invoke-direct {v3, p0, v1, v2, v0}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 6
    invoke-virtual {v3}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-void
.end method

.method public rewind(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
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

.method public right(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
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
    sget-object v0, Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;->KEY_RIGHT:Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;

    invoke-virtual {v0}, Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;->getCode()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/connectsdk/service/NetcastTVService;->sendVirtualKeyCode(ILcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method

.method public scroll(DD)V
    .locals 5

    .line 1
    new-instance p1, Lcom/connectsdk/service/NetcastTVService$34;

    invoke-direct {p1, p0}, Lcom/connectsdk/service/NetcastTVService$34;-><init>(Lcom/connectsdk/service/NetcastTVService;)V

    const-string p2, "/udap/api/command"

    .line 2
    invoke-direct {p0, p2}, Lcom/connectsdk/service/NetcastTVService;->getUDAPRequestURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "name"

    const-string v1, "HandleTouchWheel"

    .line 3
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/z4;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "value"

    const-wide/16 v2, 0x0

    cmpl-double v4, p3, v2

    if-lez v4, :cond_0

    const-string p3, "up"

    .line 4
    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p3, "down"

    .line 5
    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string p3, "command"

    .line 6
    invoke-direct {p0, p3, v0}, Lcom/connectsdk/service/NetcastTVService;->getUDAPMessageBody(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p3

    .line 7
    new-instance p4, Lcom/connectsdk/service/command/ServiceCommand;

    invoke-direct {p4, p0, p2, p3, p1}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 8
    invoke-virtual {p4}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-void
.end method

.method public scroll(Landroid/graphics/PointF;)V
    .locals 4

    .line 9
    iget v0, p1, Landroid/graphics/PointF;->x:F

    float-to-double v0, v0

    iget p1, p1, Landroid/graphics/PointF;->y:F

    float-to-double v2, p1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/connectsdk/service/NetcastTVService;->scroll(DD)V

    return-void
.end method

.method public seek(JLcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/connectsdk/service/NetcastTVService;->getDLNAService()Lcom/connectsdk/service/DLNAService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/connectsdk/service/NetcastTVService;->getDLNAService()Lcom/connectsdk/service/DLNAService;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/connectsdk/service/DLNAService;->seek(JLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 3
    invoke-static {}, Lcom/connectsdk/service/command/ServiceCommandError;->notSupported()Lcom/connectsdk/service/command/ServiceCommandError;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    :cond_1
    :goto_0
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
    new-instance v0, Lcom/connectsdk/service/NetcastTVService$40;

    invoke-direct {v0, p0, p1}, Lcom/connectsdk/service/NetcastTVService$40;-><init>(Lcom/connectsdk/service/NetcastTVService;Lcom/connectsdk/service/command/ServiceCommand;)V

    invoke-static {v0}, Lcom/connectsdk/core/Util;->runInBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendDelete()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/NetcastTVService;->keyboardString:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/connectsdk/service/NetcastTVService;->keyboardString:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/connectsdk/service/NetcastTVService;->keyboardString:Ljava/lang/StringBuilder;

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/connectsdk/service/NetcastTVService;->keyboardString:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Editing"

    invoke-direct {p0, v1, v0}, Lcom/connectsdk/service/NetcastTVService;->handleKeyboardInput(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendEnter()V
    .locals 3

    .line 1
    new-instance v0, Lcom/connectsdk/service/NetcastTVService$35;

    invoke-direct {v0, p0}, Lcom/connectsdk/service/NetcastTVService$35;-><init>(Lcom/connectsdk/service/NetcastTVService;)V

    .line 2
    iget-object v1, p0, Lcom/connectsdk/service/NetcastTVService;->keyboardString:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EditEnd"

    invoke-direct {p0, v2, v1}, Lcom/connectsdk/service/NetcastTVService;->handleKeyboardInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object v1, Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;->RED:Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;

    invoke-virtual {v1}, Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;->getCode()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/connectsdk/service/NetcastTVService;->sendVirtualKeyCode(ILcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method

.method public sendKeyCode(Lcom/connectsdk/service/capability/KeyControl$KeyCode;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 2
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
    sget-object v0, Lcom/connectsdk/service/NetcastTVService$41;->$SwitchMap$com$connectsdk$service$capability$KeyControl$KeyCode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    const-string v1, "The keycode is not available"

    .line 2
    invoke-static {p1, v1, v0, p2}, Lcom/shabakaty/downloader/ww;->a(ILjava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    goto/16 :goto_0

    .line 3
    :pswitch_0
    sget-object p1, Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;->OK:Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;

    invoke-virtual {p1}, Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;->getCode()I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/connectsdk/service/NetcastTVService;->sendVirtualKeyCode(ILcom/connectsdk/service/capability/listeners/ResponseListener;)V

    goto/16 :goto_0

    .line 4
    :pswitch_1
    sget-object p1, Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;->DASH:Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;

    invoke-virtual {p1}, Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;->getCode()I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/connectsdk/service/NetcastTVService;->sendVirtualKeyCode(ILcom/connectsdk/service/capability/listeners/ResponseListener;)V

    goto :goto_0

    .line 5
    :pswitch_2
    sget-object p1, Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;->NUMBER_9:Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;

    invoke-virtual {p1}, Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;->getCode()I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/connectsdk/service/NetcastTVService;->sendVirtualKeyCode(ILcom/connectsdk/service/capability/listeners/ResponseListener;)V

    goto :goto_0

    .line 6
    :pswitch_3
    sget-object p1, Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;->NUMBER_8:Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;

    invoke-virtual {p1}, Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;->getCode()I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/connectsdk/service/NetcastTVService;->sendVirtualKeyCode(ILcom/connectsdk/service/capability/listeners/ResponseListener;)V

    goto :goto_0

    .line 7
    :pswitch_4
    sget-object p1, Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;->NUMBER_7:Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;

    invoke-virtual {p1}, Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;->getCode()I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/connectsdk/service/NetcastTVService;->sendVirtualKeyCode(ILcom/connectsdk/service/capability/listeners/ResponseListener;)V

    goto :goto_0

    .line 8
    :pswitch_5
    sget-object p1, Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;->NUMBER_6:Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;

    invoke-virtual {p1}, Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;->getCode()I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/connectsdk/service/NetcastTVService;->sendVirtualKeyCode(ILcom/connectsdk/service/capability/listeners/ResponseListener;)V

    goto :goto_0

    .line 9
    :pswitch_6
    sget-object p1, Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;->NUMBER_5:Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;

    invoke-virtual {p1}, Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;->getCode()I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/connectsdk/service/NetcastTVService;->sendVirtualKeyCode(ILcom/connectsdk/service/capability/listeners/ResponseListener;)V

    goto :goto_0

    .line 10
    :pswitch_7
    sget-object p1, Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;->NUMBER_4:Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;

    invoke-virtual {p1}, Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;->getCode()I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/connectsdk/service/NetcastTVService;->sendVirtualKeyCode(ILcom/connectsdk/service/capability/listeners/ResponseListener;)V

    goto :goto_0

    .line 11
    :pswitch_8
    sget-object p1, Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;->NUMBER_3:Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;

    invoke-virtual {p1}, Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;->getCode()I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/connectsdk/service/NetcastTVService;->sendVirtualKeyCode(ILcom/connectsdk/service/capability/listeners/ResponseListener;)V

    goto :goto_0

    .line 12
    :pswitch_9
    sget-object p1, Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;->NUMBER_2:Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;

    invoke-virtual {p1}, Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;->getCode()I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/connectsdk/service/NetcastTVService;->sendVirtualKeyCode(ILcom/connectsdk/service/capability/listeners/ResponseListener;)V

    goto :goto_0

    .line 13
    :pswitch_a
    sget-object p1, Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;->NUMBER_1:Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;

    invoke-virtual {p1}, Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;->getCode()I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/connectsdk/service/NetcastTVService;->sendVirtualKeyCode(ILcom/connectsdk/service/capability/listeners/ResponseListener;)V

    goto :goto_0

    .line 14
    :pswitch_b
    sget-object p1, Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;->NUMBER_0:Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;

    invoke-virtual {p1}, Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;->getCode()I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/connectsdk/service/NetcastTVService;->sendVirtualKeyCode(ILcom/connectsdk/service/capability/listeners/ResponseListener;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public sendPairingKey(Ljava/lang/String;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/connectsdk/service/NetcastTVService$State;->PAIRING:Lcom/connectsdk/service/NetcastTVService$State;

    iput-object v0, p0, Lcom/connectsdk/service/NetcastTVService;->state:Lcom/connectsdk/service/NetcastTVService$State;

    .line 2
    iget-object v0, p0, Lcom/connectsdk/service/DeviceService;->serviceConfig:Lcom/connectsdk/service/config/ServiceConfig;

    instance-of v1, v0, Lcom/connectsdk/service/config/NetcastTVServiceConfig;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/connectsdk/service/config/NetcastTVServiceConfig;

    invoke-virtual {v0}, Lcom/connectsdk/service/config/ServiceConfig;->getServiceUUID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/connectsdk/service/config/NetcastTVServiceConfig;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/connectsdk/service/DeviceService;->serviceConfig:Lcom/connectsdk/service/config/ServiceConfig;

    .line 4
    :cond_0
    new-instance v0, Lcom/connectsdk/service/NetcastTVService$5;

    invoke-direct {v0, p0, p1}, Lcom/connectsdk/service/NetcastTVService$5;-><init>(Lcom/connectsdk/service/NetcastTVService;Ljava/lang/String;)V

    const-string v1, "/udap/api/pairing"

    .line 5
    invoke-direct {p0, v1}, Lcom/connectsdk/service/NetcastTVService;->getUDAPRequestURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "name"

    const-string v4, "hello"

    .line 7
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "value"

    .line 8
    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object p1, p0, Lcom/connectsdk/service/DeviceService;->serviceDescription:Lcom/connectsdk/service/config/ServiceDescription;

    invoke-virtual {p1}, Lcom/connectsdk/service/config/ServiceDescription;->getPort()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v3, "port"

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "pairing"

    .line 10
    invoke-direct {p0, p1, v2}, Lcom/connectsdk/service/NetcastTVService;->getUDAPMessageBody(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 11
    new-instance v2, Lcom/connectsdk/service/command/ServiceCommand;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 12
    invoke-virtual {v2}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-void
.end method

.method public sendText(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/connectsdk/core/Util;->T:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Add to Queue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/connectsdk/service/NetcastTVService;->keyboardString:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object p1, p0, Lcom/connectsdk/service/NetcastTVService;->keyboardString:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Editing"

    invoke-direct {p0, v0, p1}, Lcom/connectsdk/service/NetcastTVService;->handleKeyboardInput(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public set3DEnabled(ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/connectsdk/service/NetcastTVService$22;

    invoke-direct {v0, p0, p1, p2}, Lcom/connectsdk/service/NetcastTVService$22;-><init>(Lcom/connectsdk/service/NetcastTVService;ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    invoke-virtual {p0, v0}, Lcom/connectsdk/service/NetcastTVService;->get3DEnabled(Lcom/connectsdk/service/capability/TVControl$State3DModeListener;)V

    return-void
.end method

.method public setChannel(Lcom/connectsdk/core/ChannelInfo;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/core/ChannelInfo;",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/connectsdk/service/NetcastTVService$20;

    invoke-direct {v0, p0, p1, p2}, Lcom/connectsdk/service/NetcastTVService$20;-><init>(Lcom/connectsdk/service/NetcastTVService;Lcom/connectsdk/core/ChannelInfo;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    invoke-virtual {p0, v0}, Lcom/connectsdk/service/NetcastTVService;->getChannelList(Lcom/connectsdk/service/capability/TVControl$ChannelListListener;)V

    return-void
.end method

.method public setExternalInput(Lcom/connectsdk/core/ExternalInputInfo;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/core/ExternalInputInfo;",
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

.method public setMute(ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/connectsdk/service/NetcastTVService$25;

    invoke-direct {v0, p0, p1, p2}, Lcom/connectsdk/service/NetcastTVService$25;-><init>(Lcom/connectsdk/service/NetcastTVService;ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    invoke-direct {p0, v0}, Lcom/connectsdk/service/NetcastTVService;->getVolumeStatus(Lcom/connectsdk/service/capability/VolumeControl$VolumeStatusListener;)V

    return-void
.end method

.method public setServiceDescription(Lcom/connectsdk/service/config/ServiceDescription;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/connectsdk/service/DeviceService;->setServiceDescription(Lcom/connectsdk/service/config/ServiceDescription;)V

    .line 2
    invoke-virtual {p1}, Lcom/connectsdk/service/config/ServiceDescription;->getPort()I

    move-result v0

    const/16 v1, 0x1f90

    if-eq v0, v1, :cond_0

    .line 3
    invoke-virtual {p1, v1}, Lcom/connectsdk/service/config/ServiceDescription;->setPort(I)V

    :cond_0
    return-void
.end method

.method public setVolume(FLcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/connectsdk/service/NetcastTVService;->getDLNAService()Lcom/connectsdk/service/DLNAService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/connectsdk/service/NetcastTVService;->getDLNAService()Lcom/connectsdk/service/DLNAService;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/connectsdk/service/DLNAService;->setVolume(FLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/connectsdk/service/command/ServiceCommandError;->notSupported()Lcom/connectsdk/service/command/ServiceCommandError;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    :goto_0
    return-void
.end method

.method public showPairingKeyOnTV()V
    .locals 4

    .line 1
    sget-object v0, Lcom/connectsdk/service/NetcastTVService$State;->CONNECTING:Lcom/connectsdk/service/NetcastTVService$State;

    iput-object v0, p0, Lcom/connectsdk/service/NetcastTVService;->state:Lcom/connectsdk/service/NetcastTVService$State;

    .line 2
    new-instance v0, Lcom/connectsdk/service/NetcastTVService$3;

    invoke-direct {v0, p0}, Lcom/connectsdk/service/NetcastTVService$3;-><init>(Lcom/connectsdk/service/NetcastTVService;)V

    const-string v1, "/udap/api/pairing"

    .line 3
    invoke-direct {p0, v1}, Lcom/connectsdk/service/NetcastTVService;->getUDAPRequestURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    const-string v3, "showKey"

    .line 4
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/z4;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "pairing"

    .line 5
    invoke-direct {p0, v3, v2}, Lcom/connectsdk/service/NetcastTVService;->getUDAPMessageBody(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 6
    new-instance v3, Lcom/connectsdk/service/command/ServiceCommand;

    invoke-direct {v3, p0, v1, v2, v0}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 7
    invoke-virtual {v3}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-void
.end method

.method public stop(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
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
    sget-object v0, Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;->STOP:Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;

    invoke-virtual {v0}, Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;->getCode()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/connectsdk/service/NetcastTVService;->sendVirtualKeyCode(ILcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method

.method public subscribe3DEnabled(Lcom/connectsdk/service/capability/TVControl$State3DModeListener;)Lcom/connectsdk/service/command/ServiceSubscription;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/TVControl$State3DModeListener;",
            ")",
            "Lcom/connectsdk/service/command/ServiceSubscription<",
            "Lcom/connectsdk/service/capability/TVControl$State3DModeListener;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/connectsdk/service/NetcastTVService;->get3DEnabled(Lcom/connectsdk/service/capability/TVControl$State3DModeListener;)V

    .line 2
    new-instance v0, Lcom/connectsdk/service/command/URLServiceSubscription;

    const-string v1, "3DMode"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v2}, Lcom/connectsdk/service/command/URLServiceSubscription;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Lorg/json/JSONObject;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    const-string v1, "GET"

    .line 3
    invoke-virtual {v0, v1}, Lcom/connectsdk/service/command/ServiceCommand;->setHttpMethod(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p1}, Lcom/connectsdk/service/command/URLServiceSubscription;->addListener(Lcom/connectsdk/service/capability/listeners/ResponseListener;)Lcom/connectsdk/service/capability/listeners/ResponseListener;

    .line 5
    invoke-direct {p0, v0}, Lcom/connectsdk/service/NetcastTVService;->addSubscription(Lcom/connectsdk/service/command/URLServiceSubscription;)V

    return-object v0
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

.method public subscribeCurrentChannel(Lcom/connectsdk/service/capability/TVControl$ChannelListener;)Lcom/connectsdk/service/command/ServiceSubscription;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/TVControl$ChannelListener;",
            ")",
            "Lcom/connectsdk/service/command/ServiceSubscription<",
            "Lcom/connectsdk/service/capability/TVControl$ChannelListener;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/connectsdk/service/NetcastTVService;->getCurrentChannel(Lcom/connectsdk/service/capability/TVControl$ChannelListener;)V

    .line 2
    new-instance v0, Lcom/connectsdk/service/command/URLServiceSubscription;

    const-string v1, "ChannelChanged"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v2}, Lcom/connectsdk/service/command/URLServiceSubscription;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Lorg/json/JSONObject;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    const-string v1, "GET"

    .line 3
    invoke-virtual {v0, v1}, Lcom/connectsdk/service/command/ServiceCommand;->setHttpMethod(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p1}, Lcom/connectsdk/service/command/URLServiceSubscription;->addListener(Lcom/connectsdk/service/capability/listeners/ResponseListener;)Lcom/connectsdk/service/capability/listeners/ResponseListener;

    .line 5
    invoke-direct {p0, v0}, Lcom/connectsdk/service/NetcastTVService;->addSubscription(Lcom/connectsdk/service/command/URLServiceSubscription;)V

    return-object v0
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
    invoke-virtual {p0}, Lcom/connectsdk/service/NetcastTVService;->getDLNAService()Lcom/connectsdk/service/DLNAService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/connectsdk/service/NetcastTVService;->getDLNAService()Lcom/connectsdk/service/DLNAService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/connectsdk/service/DLNAService;->subscribeMediaInfo(Lcom/connectsdk/service/capability/MediaPlayer$MediaInfoListener;)Lcom/connectsdk/service/command/ServiceSubscription;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-static {}, Lcom/connectsdk/service/command/ServiceCommandError;->notSupported()Lcom/connectsdk/service/command/ServiceCommandError;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public subscribeMute(Lcom/connectsdk/service/capability/VolumeControl$MuteListener;)Lcom/connectsdk/service/command/ServiceSubscription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/VolumeControl$MuteListener;",
            ")",
            "Lcom/connectsdk/service/command/ServiceSubscription<",
            "Lcom/connectsdk/service/capability/VolumeControl$MuteListener;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/connectsdk/service/NetcastTVService;->getDLNAService()Lcom/connectsdk/service/DLNAService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/connectsdk/service/NetcastTVService;->getDLNAService()Lcom/connectsdk/service/DLNAService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/connectsdk/service/DLNAService;->subscribeMute(Lcom/connectsdk/service/capability/VolumeControl$MuteListener;)Lcom/connectsdk/service/command/ServiceSubscription;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-static {}, Lcom/connectsdk/service/command/ServiceCommandError;->notSupported()Lcom/connectsdk/service/command/ServiceCommandError;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

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
    invoke-virtual {p0}, Lcom/connectsdk/service/NetcastTVService;->getDLNAService()Lcom/connectsdk/service/DLNAService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/connectsdk/service/NetcastTVService;->getDLNAService()Lcom/connectsdk/service/DLNAService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/connectsdk/service/DLNAService;->subscribePlayState(Lcom/connectsdk/service/capability/MediaControl$PlayStateListener;)Lcom/connectsdk/service/command/ServiceSubscription;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-static {}, Lcom/connectsdk/service/command/ServiceCommandError;->notSupported()Lcom/connectsdk/service/command/ServiceCommandError;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public subscribeProgramInfo(Lcom/connectsdk/service/capability/TVControl$ProgramInfoListener;)Lcom/connectsdk/service/command/ServiceSubscription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/TVControl$ProgramInfoListener;",
            ")",
            "Lcom/connectsdk/service/command/ServiceSubscription<",
            "Lcom/connectsdk/service/capability/TVControl$ProgramInfoListener;",
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

.method public subscribeProgramList(Lcom/connectsdk/service/capability/TVControl$ProgramListListener;)Lcom/connectsdk/service/command/ServiceSubscription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/TVControl$ProgramListListener;",
            ")",
            "Lcom/connectsdk/service/command/ServiceSubscription<",
            "Lcom/connectsdk/service/capability/TVControl$ProgramListListener;",
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
    .locals 3
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
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/connectsdk/service/NetcastTVService;->keyboardString:Ljava/lang/StringBuilder;

    .line 2
    new-instance v0, Lcom/connectsdk/service/command/URLServiceSubscription;

    const-string v1, "KeyboardVisible"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v2}, Lcom/connectsdk/service/command/URLServiceSubscription;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Lorg/json/JSONObject;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/connectsdk/service/command/URLServiceSubscription;->addListener(Lcom/connectsdk/service/capability/listeners/ResponseListener;)Lcom/connectsdk/service/capability/listeners/ResponseListener;

    .line 4
    invoke-direct {p0, v0}, Lcom/connectsdk/service/NetcastTVService;->addSubscription(Lcom/connectsdk/service/command/URLServiceSubscription;)V

    return-object v0
.end method

.method public subscribeVolume(Lcom/connectsdk/service/capability/VolumeControl$VolumeListener;)Lcom/connectsdk/service/command/ServiceSubscription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/VolumeControl$VolumeListener;",
            ")",
            "Lcom/connectsdk/service/command/ServiceSubscription<",
            "Lcom/connectsdk/service/capability/VolumeControl$VolumeListener;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/connectsdk/service/NetcastTVService;->getDLNAService()Lcom/connectsdk/service/DLNAService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/connectsdk/service/NetcastTVService;->getDLNAService()Lcom/connectsdk/service/DLNAService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/connectsdk/service/DLNAService;->subscribeVolume(Lcom/connectsdk/service/capability/VolumeControl$VolumeListener;)Lcom/connectsdk/service/command/ServiceSubscription;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-static {}, Lcom/connectsdk/service/command/ServiceCommandError;->notSupported()Lcom/connectsdk/service/command/ServiceCommandError;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public unsubscribe(Lcom/connectsdk/service/command/URLServiceSubscription;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/command/URLServiceSubscription<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/NetcastTVService;->subscriptions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2
    iget-object p1, p0, Lcom/connectsdk/service/NetcastTVService;->httpServer:Lcom/connectsdk/service/netcast/NetcastHttpServer;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/connectsdk/service/NetcastTVService;->subscriptions:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/connectsdk/service/netcast/NetcastHttpServer;->setSubscriptions(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public up(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
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
    sget-object v0, Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;->KEY_UP:Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;

    invoke-virtual {v0}, Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;->getCode()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/connectsdk/service/NetcastTVService;->sendVirtualKeyCode(ILcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method

.method public updateCapabilities()V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lcom/connectsdk/discovery/DiscoveryManager;->getInstance()Lcom/connectsdk/discovery/DiscoveryManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/connectsdk/discovery/DiscoveryManager;->getPairingLevel()Lcom/connectsdk/discovery/DiscoveryManager$PairingLevel;

    move-result-object v1

    sget-object v2, Lcom/connectsdk/discovery/DiscoveryManager$PairingLevel;->ON:Lcom/connectsdk/discovery/DiscoveryManager$PairingLevel;

    const-string v3, "Launcher.YouTube.Params"

    const-string v4, "Launcher.YouTube"

    const-string v5, "MediaControl.Stop"

    const-string v6, "MediaControl.Pause"

    const-string v7, "MediaControl.Play"

    if-ne v1, v2, :cond_0

    .line 3
    sget-object v1, Lcom/connectsdk/service/capability/TextInputControl;->Capabilities:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 4
    sget-object v1, Lcom/connectsdk/service/capability/MouseControl;->Capabilities:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 5
    sget-object v1, Lcom/connectsdk/service/capability/KeyControl;->Capabilities:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 6
    sget-object v1, Lcom/connectsdk/service/capability/MediaPlayer;->Capabilities:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    const-string v1, "PowerControl.Off"

    .line 7
    invoke-static {v0, v1, v7, v6, v5}, Lcom/shabakaty/downloader/a5;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MediaControl.Duration"

    const-string v2, "MediaControl.Position"

    const-string v5, "MediaControl.Seek"

    const-string v6, "Launcher.App"

    .line 8
    invoke-static {v0, v1, v2, v5, v6}, Lcom/shabakaty/downloader/a5;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Launcher.App.Close"

    const-string v2, "Launcher.App.List"

    const-string v5, "Launcher.Browser"

    const-string v6, "Launcher.Hulu"

    .line 9
    invoke-static {v0, v1, v2, v5, v6}, Lcom/shabakaty/downloader/a5;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Launcher.Netflix"

    const-string v2, "Launcher.Netflix.Params"

    .line 10
    invoke-static {v0, v1, v2, v4, v3}, Lcom/shabakaty/downloader/a5;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Launcher.AppStore"

    const-string v2, "TVControl.Channel.Up"

    const-string v3, "TVControl.Channel.Down"

    const-string v4, "TVControl.Channel.Get"

    .line 11
    invoke-static {v0, v1, v2, v3, v4}, Lcom/shabakaty/downloader/a5;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "TVControl.Channel.List"

    const-string v2, "TVControl.Channel.Subscribe"

    const-string v3, "TVControl.3D.Get"

    const-string v4, "TVControl.3D.Set"

    .line 12
    invoke-static {v0, v1, v2, v3, v4}, Lcom/shabakaty/downloader/a5;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "TVControl.3D.Subscribe"

    const-string v2, "ExternalInputControl.Picker.Launch"

    const-string v3, "ExternalInputControl.Picker.Close"

    const-string v4, "VolumeControl.Get"

    .line 13
    invoke-static {v0, v1, v2, v3, v4}, Lcom/shabakaty/downloader/a5;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "VolumeControl.UpDown"

    .line 14
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "VolumeControl.Mute.Get"

    .line 15
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "VolumeControl.Mute.Set"

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v1, p0, Lcom/connectsdk/service/DeviceService;->serviceDescription:Lcom/connectsdk/service/config/ServiceDescription;

    invoke-virtual {v1}, Lcom/connectsdk/service/config/ServiceDescription;->getModelNumber()Ljava/lang/String;

    move-result-object v1

    const-string v2, "4.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Launcher.AppStore.Params"

    .line 18
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19
    :cond_0
    sget-object v1, Lcom/connectsdk/service/capability/MediaPlayer;->Capabilities:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 20
    invoke-static {v0, v7, v6, v5, v4}, Lcom/shabakaty/downloader/a5;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    const-string v1, "MediaPlayer.Subtitle.SRT"

    .line 22
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    invoke-virtual {p0, v0}, Lcom/connectsdk/service/DeviceService;->setCapabilities(Ljava/util/List;)V

    return-void
.end method

.method public volumeDown(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
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
    sget-object v0, Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;->VOLUME_DOWN:Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;

    invoke-virtual {v0}, Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;->getCode()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/connectsdk/service/NetcastTVService;->sendVirtualKeyCode(ILcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method

.method public volumeUp(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
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
    sget-object v0, Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;->VOLUME_UP:Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;

    invoke-virtual {v0}, Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;->getCode()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/connectsdk/service/NetcastTVService;->sendVirtualKeyCode(ILcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method
