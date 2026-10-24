.class public Lcom/connectsdk/service/WebOSTVService;
.super Lcom/connectsdk/service/DeviceService;
.source "WebOSTVService.java"

# interfaces
.implements Lcom/connectsdk/service/capability/Launcher;
.implements Lcom/connectsdk/service/capability/MediaControl;
.implements Lcom/connectsdk/service/capability/MediaPlayer;
.implements Lcom/connectsdk/service/capability/VolumeControl;
.implements Lcom/connectsdk/service/capability/TVControl;
.implements Lcom/connectsdk/service/capability/ToastControl;
.implements Lcom/connectsdk/service/capability/ExternalInputControl;
.implements Lcom/connectsdk/service/capability/MouseControl;
.implements Lcom/connectsdk/service/capability/TextInputControl;
.implements Lcom/connectsdk/service/capability/PowerControl;
.implements Lcom/connectsdk/service/capability/KeyControl;
.implements Lcom/connectsdk/service/capability/WebAppLauncher;
.implements Lcom/connectsdk/service/capability/PlaylistControl;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/connectsdk/service/WebOSTVService$SystemInfoListener;,
        Lcom/connectsdk/service/WebOSTVService$ServiceInfoListener;,
        Lcom/connectsdk/service/WebOSTVService$LaunchPointsListener;,
        Lcom/connectsdk/service/WebOSTVService$ACRAuthTokenListener;,
        Lcom/connectsdk/service/WebOSTVService$SecureAccessTestListener;,
        Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission;
    }
.end annotation


# static fields
.field public static APP_STATE:Ljava/lang/String; = null

.field public static APP_STATUS:Ljava/lang/String; = null

.field public static CHANNEL:Ljava/lang/String; = null

.field public static CHANNEL_LIST:Ljava/lang/String; = null

.field public static final CLOSE_APP_URI:Ljava/lang/String; = "ssap://system.launcher/close"

.field public static final CLOSE_MEDIA_URI:Ljava/lang/String; = "ssap://media.viewer/close"

.field public static final CLOSE_WEBAPP_URI:Ljava/lang/String; = "ssap://webapp/closeWebApp"

.field public static FOREGROUND_APP:Ljava/lang/String; = null

.field public static final ID:Ljava/lang/String; = "webOS TV"

.field private static final MEDIA_PLAYER_ID:Ljava/lang/String; = "MediaPlayer"

.field public static MUTE:Ljava/lang/String;

.field public static PROGRAM:Ljava/lang/String;

.field public static VOLUME:Ljava/lang/String;

.field public static VOLUME_STATUS:Ljava/lang/String;

.field public static final kWebOSTVServiceOpenPermissions:[Ljava/lang/String;

.field public static final kWebOSTVServicePersonalActivityPermissions:[Ljava/lang/String;

.field public static final kWebOSTVServiceProtectedPermissions:[Ljava/lang/String;


# instance fields
.field public keyboardInput:Lcom/connectsdk/service/webos/WebOSTVKeyboardInput;

.field public mAppToAppIdMappings:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSocketListener:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$WebOSTVServiceSocketClientListener;

.field public mWebAppSessions:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/connectsdk/service/sessions/WebOSWebAppSession;",
            ">;"
        }
    .end annotation
.end field

.field public mouseSocket:Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection;

.field public permissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public socket:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    const-string v0, "LAUNCH"

    const-string v1, "LAUNCH_WEBAPP"

    const-string v2, "APP_TO_APP"

    const-string v3, "CONTROL_AUDIO"

    const-string v4, "CONTROL_INPUT_MEDIA_PLAYBACK"

    .line 1
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/connectsdk/service/WebOSTVService;->kWebOSTVServiceOpenPermissions:[Ljava/lang/String;

    const-string v1, "CONTROL_POWER"

    const-string v2, "READ_INSTALLED_APPS"

    const-string v3, "CONTROL_DISPLAY"

    const-string v4, "CONTROL_INPUT_JOYSTICK"

    const-string v5, "CONTROL_INPUT_MEDIA_RECORDING"

    const-string v6, "CONTROL_INPUT_TV"

    const-string v7, "READ_INPUT_DEVICE_LIST"

    const-string v8, "READ_NETWORK_STATE"

    const-string v9, "READ_TV_CHANNEL_LIST"

    const-string v10, "WRITE_NOTIFICATION_TOAST"

    .line 2
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/connectsdk/service/WebOSTVService;->kWebOSTVServiceProtectedPermissions:[Ljava/lang/String;

    const-string v0, "CONTROL_INPUT_TEXT"

    const-string v1, "CONTROL_MOUSE_AND_KEYBOARD"

    const-string v2, "READ_CURRENT_CHANNEL"

    const-string v3, "READ_RUNNING_APPS"

    .line 3
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/connectsdk/service/WebOSTVService;->kWebOSTVServicePersonalActivityPermissions:[Ljava/lang/String;

    const-string v0, "ssap://com.webos.applicationManager/getForegroundAppInfo"

    .line 4
    sput-object v0, Lcom/connectsdk/service/WebOSTVService;->FOREGROUND_APP:Ljava/lang/String;

    const-string v0, "ssap://com.webos.service.appstatus/getAppStatus"

    .line 5
    sput-object v0, Lcom/connectsdk/service/WebOSTVService;->APP_STATUS:Ljava/lang/String;

    const-string v0, "ssap://system.launcher/getAppState"

    .line 6
    sput-object v0, Lcom/connectsdk/service/WebOSTVService;->APP_STATE:Ljava/lang/String;

    const-string v0, "ssap://audio/getVolume"

    .line 7
    sput-object v0, Lcom/connectsdk/service/WebOSTVService;->VOLUME:Ljava/lang/String;

    const-string v0, "ssap://audio/getMute"

    .line 8
    sput-object v0, Lcom/connectsdk/service/WebOSTVService;->MUTE:Ljava/lang/String;

    const-string v0, "ssap://audio/getStatus"

    .line 9
    sput-object v0, Lcom/connectsdk/service/WebOSTVService;->VOLUME_STATUS:Ljava/lang/String;

    const-string v0, "ssap://tv/getChannelList"

    .line 10
    sput-object v0, Lcom/connectsdk/service/WebOSTVService;->CHANNEL_LIST:Ljava/lang/String;

    const-string v0, "ssap://tv/getCurrentChannel"

    .line 11
    sput-object v0, Lcom/connectsdk/service/WebOSTVService;->CHANNEL:Ljava/lang/String;

    const-string v0, "ssap://tv/getChannelProgramInfo"

    .line 12
    sput-object v0, Lcom/connectsdk/service/WebOSTVService;->PROGRAM:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/connectsdk/service/config/ServiceDescription;Lcom/connectsdk/service/config/ServiceConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/connectsdk/service/DeviceService;-><init>(Lcom/connectsdk/service/config/ServiceDescription;Lcom/connectsdk/service/config/ServiceConfig;)V

    .line 2
    new-instance p2, Lcom/connectsdk/service/WebOSTVService$2;

    invoke-direct {p2, p0}, Lcom/connectsdk/service/WebOSTVService$2;-><init>(Lcom/connectsdk/service/WebOSTVService;)V

    iput-object p2, p0, Lcom/connectsdk/service/WebOSTVService;->mSocketListener:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$WebOSTVServiceSocketClientListener;

    .line 3
    invoke-virtual {p0, p1}, Lcom/connectsdk/service/WebOSTVService;->setServiceDescription(Lcom/connectsdk/service/config/ServiceDescription;)V

    .line 4
    sget-object p1, Lcom/connectsdk/service/DeviceService$PairingType;->FIRST_SCREEN:Lcom/connectsdk/service/DeviceService$PairingType;

    iput-object p1, p0, Lcom/connectsdk/service/DeviceService;->pairingType:Lcom/connectsdk/service/DeviceService$PairingType;

    .line 5
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/connectsdk/service/WebOSTVService;->mAppToAppIdMappings:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/connectsdk/service/WebOSTVService;->mWebAppSessions:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static synthetic access$000(Lcom/connectsdk/service/WebOSTVService;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/connectsdk/service/WebOSTVService;->getJsonValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lcom/connectsdk/service/WebOSTVService;Lorg/json/JSONObject;)Lcom/connectsdk/core/ChannelInfo;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/connectsdk/service/WebOSTVService;->parseRawChannelData(Lorg/json/JSONObject;)Lcom/connectsdk/core/ChannelInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lcom/connectsdk/service/WebOSTVService;Lorg/json/JSONObject;)Lcom/connectsdk/core/ProgramInfo;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/connectsdk/service/WebOSTVService;->parseRawProgramInfo(Lorg/json/JSONObject;)Lcom/connectsdk/core/ProgramInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Lcom/connectsdk/service/WebOSTVService;Lorg/json/JSONArray;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/connectsdk/service/WebOSTVService;->externalnputInfoFromJSONArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$400(Lcom/connectsdk/service/WebOSTVService;Lcom/connectsdk/service/sessions/LaunchSession;)Lcom/connectsdk/service/sessions/WebOSWebAppSession;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/connectsdk/service/WebOSTVService;->webAppSessionForLaunchSession(Lcom/connectsdk/service/sessions/LaunchSession;)Lcom/connectsdk/service/sessions/WebOSWebAppSession;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$500(Lcom/connectsdk/service/WebOSTVService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/connectsdk/service/WebOSTVService;->notifyPairingRequired()V

    return-void
.end method

.method private connectMouse(Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection$WebOSTVMouseSocketListener;)V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/connectsdk/service/WebOSTVService;->mouseSocket:Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection;

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v6, Lcom/connectsdk/service/WebOSTVService$30;

    invoke-direct {v6, p0, p1}, Lcom/connectsdk/service/WebOSTVService$30;-><init>(Lcom/connectsdk/service/WebOSTVService;Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection$WebOSTVMouseSocketListener;)V

    .line 4
    new-instance p1, Lcom/connectsdk/service/command/ServiceCommand;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v3, "ssap://com.webos.service.networkinput/getPointerInputSocket"

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Lorg/json/JSONObject;ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 5
    invoke-virtual {p1}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-void
.end method

.method private createPlayMediaJsonRequestForSsap(Lcom/connectsdk/core/MediaInfo;ZLjava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    .line 1
    new-instance v0, Lcom/connectsdk/service/WebOSTVService$20;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/connectsdk/service/WebOSTVService$20;-><init>(Lcom/connectsdk/service/WebOSTVService;Lcom/connectsdk/core/MediaInfo;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static discoveryFilter()Lcom/connectsdk/discovery/DiscoveryFilter;
    .locals 3

    .line 1
    new-instance v0, Lcom/connectsdk/discovery/DiscoveryFilter;

    const-string v1, "webOS TV"

    const-string v2, "urn:lge-com:service:webos-second-screen:1"

    invoke-direct {v0, v1, v2}, Lcom/connectsdk/discovery/DiscoveryFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private displayMedia(Lorg/json/JSONObject;Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V
    .locals 6

    .line 1
    new-instance v5, Lcom/connectsdk/service/WebOSTVService$14;

    invoke-direct {v5, p0, p2}, Lcom/connectsdk/service/WebOSTVService$14;-><init>(Lcom/connectsdk/service/WebOSTVService;Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V

    .line 2
    new-instance p2, Lcom/connectsdk/service/command/ServiceCommand;

    const-string v2, "ssap://media.viewer/open"

    const/4 v4, 0x1

    move-object v0, p2

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Lorg/json/JSONObject;ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 3
    invoke-virtual {p2}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-void
.end method

.method private externalnputInfoFromJSONArray(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/connectsdk/core/ExternalInputInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    const-string v3, "id"

    .line 4
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "label"

    .line 5
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "connected"

    .line 6
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "icon"

    .line 7
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 8
    new-instance v7, Lcom/connectsdk/core/ExternalInputInfo;

    invoke-direct {v7}, Lcom/connectsdk/core/ExternalInputInfo;-><init>()V

    .line 9
    invoke-virtual {v7, v2}, Lcom/connectsdk/core/ExternalInputInfo;->setRawData(Lorg/json/JSONObject;)V

    .line 10
    invoke-virtual {v7, v3}, Lcom/connectsdk/core/ExternalInputInfo;->setId(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v7, v4}, Lcom/connectsdk/core/ExternalInputInfo;->setName(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v7, v5}, Lcom/connectsdk/core/ExternalInputInfo;->setConnected(Z)V

    .line 13
    invoke-virtual {v7, v6}, Lcom/connectsdk/core/ExternalInputInfo;->setIconURL(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 15
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private get3DEnabled(ZLcom/connectsdk/service/capability/TVControl$State3DModeListener;)Lcom/connectsdk/service/command/ServiceCommand;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/connectsdk/service/capability/TVControl$State3DModeListener;",
            ")",
            "Lcom/connectsdk/service/command/ServiceCommand<",
            "Lcom/connectsdk/service/capability/TVControl$State3DModeListener;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v5, Lcom/connectsdk/service/WebOSTVService$25;

    invoke-direct {v5, p0, p2}, Lcom/connectsdk/service/WebOSTVService$25;-><init>(Lcom/connectsdk/service/WebOSTVService;Lcom/connectsdk/service/capability/TVControl$State3DModeListener;)V

    const-string v2, "ssap://com.webos.service.tv.display/get3DStatus"

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Lcom/connectsdk/service/command/URLServiceSubscription;

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/connectsdk/service/command/URLServiceSubscription;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Lorg/json/JSONObject;ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Lcom/connectsdk/service/command/ServiceCommand;

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Lorg/json/JSONObject;ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 4
    :goto_0
    invoke-virtual {p1}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-object p1
.end method

.method private getAppState(ZLcom/connectsdk/service/sessions/LaunchSession;Lcom/connectsdk/service/capability/Launcher$AppStateListener;)Lcom/connectsdk/service/command/ServiceCommand;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/connectsdk/service/sessions/LaunchSession;",
            "Lcom/connectsdk/service/capability/Launcher$AppStateListener;",
            ")",
            "Lcom/connectsdk/service/command/ServiceCommand<",
            "Lcom/connectsdk/service/capability/Launcher$AppStateListener;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "id"

    .line 2
    invoke-virtual {p2}, Lcom/connectsdk/service/sessions/LaunchSession;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sessionId"

    .line 3
    invoke-virtual {p2}, Lcom/connectsdk/service/sessions/LaunchSession;->getSessionId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 4
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 5
    :goto_0
    new-instance v5, Lcom/connectsdk/service/WebOSTVService$10;

    invoke-direct {v5, p0, p3}, Lcom/connectsdk/service/WebOSTVService$10;-><init>(Lcom/connectsdk/service/WebOSTVService;Lcom/connectsdk/service/capability/Launcher$AppStateListener;)V

    if-eqz p1, :cond_0

    .line 6
    new-instance p1, Lcom/connectsdk/service/command/URLServiceSubscription;

    sget-object v2, Lcom/connectsdk/service/WebOSTVService;->APP_STATE:Ljava/lang/String;

    const/4 v4, 0x1

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/connectsdk/service/command/URLServiceSubscription;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Lorg/json/JSONObject;ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    goto :goto_1

    .line 7
    :cond_0
    new-instance p1, Lcom/connectsdk/service/command/ServiceCommand;

    sget-object v2, Lcom/connectsdk/service/WebOSTVService;->APP_STATE:Ljava/lang/String;

    const/4 v4, 0x1

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Lorg/json/JSONObject;ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 8
    :goto_1
    invoke-virtual {p1}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-object p1
.end method

.method private getChannelCurrentProgramInfo(ZLcom/connectsdk/service/capability/TVControl$ProgramInfoListener;)Lcom/connectsdk/service/command/ServiceCommand;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/connectsdk/service/capability/TVControl$ProgramInfoListener;",
            ")",
            "Lcom/connectsdk/service/command/ServiceCommand<",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v5, Lcom/connectsdk/service/WebOSTVService$23;

    invoke-direct {v5, p0, p2}, Lcom/connectsdk/service/WebOSTVService$23;-><init>(Lcom/connectsdk/service/WebOSTVService;Lcom/connectsdk/service/capability/TVControl$ProgramInfoListener;)V

    const-string v2, "ssap://tv/getChannelCurrentProgramInfo"

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Lcom/connectsdk/service/command/URLServiceSubscription;

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/connectsdk/service/command/URLServiceSubscription;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Lorg/json/JSONObject;ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Lcom/connectsdk/service/command/ServiceCommand;

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Lorg/json/JSONObject;ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 4
    :goto_0
    invoke-virtual {p1}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-object p1
.end method

.method private getChannelList(ZLcom/connectsdk/service/capability/TVControl$ChannelListListener;)Lcom/connectsdk/service/command/ServiceCommand;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/connectsdk/service/capability/TVControl$ChannelListListener;",
            ")",
            "Lcom/connectsdk/service/command/ServiceCommand<",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v5, Lcom/connectsdk/service/WebOSTVService$22;

    invoke-direct {v5, p0, p2}, Lcom/connectsdk/service/WebOSTVService$22;-><init>(Lcom/connectsdk/service/WebOSTVService;Lcom/connectsdk/service/capability/TVControl$ChannelListListener;)V

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Lcom/connectsdk/service/command/URLServiceSubscription;

    sget-object v2, Lcom/connectsdk/service/WebOSTVService;->CHANNEL_LIST:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/connectsdk/service/command/URLServiceSubscription;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Lorg/json/JSONObject;ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Lcom/connectsdk/service/command/ServiceCommand;

    sget-object v2, Lcom/connectsdk/service/WebOSTVService;->CHANNEL_LIST:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Lorg/json/JSONObject;ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 4
    :goto_0
    invoke-virtual {p1}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-object p1
.end method

.method private getCurrentChannel(ZLcom/connectsdk/service/capability/TVControl$ChannelListener;)Lcom/connectsdk/service/command/ServiceCommand;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/connectsdk/service/capability/TVControl$ChannelListener;",
            ")",
            "Lcom/connectsdk/service/command/ServiceCommand<",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v5, Lcom/connectsdk/service/WebOSTVService$21;

    invoke-direct {v5, p0, p2}, Lcom/connectsdk/service/WebOSTVService$21;-><init>(Lcom/connectsdk/service/WebOSTVService;Lcom/connectsdk/service/capability/TVControl$ChannelListener;)V

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Lcom/connectsdk/service/command/URLServiceSubscription;

    sget-object v2, Lcom/connectsdk/service/WebOSTVService;->CHANNEL:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/connectsdk/service/command/URLServiceSubscription;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Lorg/json/JSONObject;ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Lcom/connectsdk/service/command/ServiceCommand;

    sget-object v2, Lcom/connectsdk/service/WebOSTVService;->CHANNEL:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Lorg/json/JSONObject;ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 4
    :goto_0
    invoke-virtual {p1}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-object p1
.end method

.method private getDLNAService()Lcom/connectsdk/service/DeviceService;
    .locals 3

    .line 1
    invoke-static {}, Lcom/connectsdk/discovery/DiscoveryManager;->getInstance()Lcom/connectsdk/discovery/DiscoveryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/connectsdk/discovery/DiscoveryManager;->getAllDevices()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/connectsdk/service/DeviceService;->serviceDescription:Lcom/connectsdk/service/config/ServiceDescription;

    invoke-virtual {v2}, Lcom/connectsdk/service/config/ServiceDescription;->getIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/connectsdk/device/ConnectableDevice;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    const-string v1, "DLNA"

    .line 4
    invoke-virtual {v0, v1}, Lcom/connectsdk/device/ConnectableDevice;->getServiceByName(Ljava/lang/String;)Lcom/connectsdk/service/DeviceService;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method private getJsonValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method private getMuteStatus(ZLcom/connectsdk/service/capability/VolumeControl$MuteListener;)Lcom/connectsdk/service/command/ServiceCommand;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/connectsdk/service/capability/VolumeControl$MuteListener;",
            ")",
            "Lcom/connectsdk/service/command/ServiceCommand<",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v5, Lcom/connectsdk/service/WebOSTVService$12;

    invoke-direct {v5, p0, p2}, Lcom/connectsdk/service/WebOSTVService$12;-><init>(Lcom/connectsdk/service/WebOSTVService;Lcom/connectsdk/service/capability/VolumeControl$MuteListener;)V

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Lcom/connectsdk/service/command/URLServiceSubscription;

    sget-object v2, Lcom/connectsdk/service/WebOSTVService;->MUTE:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/connectsdk/service/command/URLServiceSubscription;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Lorg/json/JSONObject;ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Lcom/connectsdk/service/command/ServiceCommand;

    sget-object v2, Lcom/connectsdk/service/WebOSTVService;->MUTE:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Lorg/json/JSONObject;ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 4
    :goto_0
    invoke-virtual {p1}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-object p1
.end method

.method private getProgramList(ZLcom/connectsdk/service/capability/TVControl$ProgramListListener;)Lcom/connectsdk/service/command/ServiceCommand;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/connectsdk/service/capability/TVControl$ProgramListListener;",
            ")",
            "Lcom/connectsdk/service/command/ServiceCommand<",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v5, Lcom/connectsdk/service/WebOSTVService$24;

    invoke-direct {v5, p0, p2}, Lcom/connectsdk/service/WebOSTVService$24;-><init>(Lcom/connectsdk/service/WebOSTVService;Lcom/connectsdk/service/capability/TVControl$ProgramListListener;)V

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Lcom/connectsdk/service/command/URLServiceSubscription;

    sget-object v2, Lcom/connectsdk/service/WebOSTVService;->PROGRAM:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/connectsdk/service/command/URLServiceSubscription;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Lorg/json/JSONObject;ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Lcom/connectsdk/service/command/ServiceCommand;

    sget-object v2, Lcom/connectsdk/service/WebOSTVService;->PROGRAM:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Lorg/json/JSONObject;ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 4
    :goto_0
    invoke-virtual {p1}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-object p1
.end method

.method private getRunningApp(ZLcom/connectsdk/service/capability/Launcher$AppInfoListener;)Lcom/connectsdk/service/command/ServiceCommand;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/connectsdk/service/capability/Launcher$AppInfoListener;",
            ")",
            "Lcom/connectsdk/service/command/ServiceCommand<",
            "Lcom/connectsdk/service/capability/Launcher$AppInfoListener;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v5, Lcom/connectsdk/service/WebOSTVService$9;

    invoke-direct {v5, p0, p2}, Lcom/connectsdk/service/WebOSTVService$9;-><init>(Lcom/connectsdk/service/WebOSTVService;Lcom/connectsdk/service/capability/Launcher$AppInfoListener;)V

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Lcom/connectsdk/service/command/URLServiceSubscription;

    sget-object v2, Lcom/connectsdk/service/WebOSTVService;->FOREGROUND_APP:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/connectsdk/service/command/URLServiceSubscription;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Lorg/json/JSONObject;ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Lcom/connectsdk/service/command/ServiceCommand;

    sget-object v2, Lcom/connectsdk/service/WebOSTVService;->FOREGROUND_APP:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Lorg/json/JSONObject;ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 4
    :goto_0
    invoke-virtual {p1}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-object p1
.end method

.method private getVolume(ZLcom/connectsdk/service/capability/VolumeControl$VolumeListener;)Lcom/connectsdk/service/command/ServiceCommand;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/connectsdk/service/capability/VolumeControl$VolumeListener;",
            ")",
            "Lcom/connectsdk/service/command/ServiceCommand<",
            "Lcom/connectsdk/service/capability/VolumeControl$VolumeListener;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v5, Lcom/connectsdk/service/WebOSTVService$11;

    invoke-direct {v5, p0, p2}, Lcom/connectsdk/service/WebOSTVService$11;-><init>(Lcom/connectsdk/service/WebOSTVService;Lcom/connectsdk/service/capability/VolumeControl$VolumeListener;)V

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Lcom/connectsdk/service/command/URLServiceSubscription;

    sget-object v2, Lcom/connectsdk/service/WebOSTVService;->VOLUME:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/connectsdk/service/command/URLServiceSubscription;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Lorg/json/JSONObject;ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Lcom/connectsdk/service/command/ServiceCommand;

    sget-object v2, Lcom/connectsdk/service/WebOSTVService;->VOLUME:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Lorg/json/JSONObject;ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 4
    :goto_0
    invoke-virtual {p1}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-object p1
.end method

.method private getVolumeStatus(ZLcom/connectsdk/service/capability/VolumeControl$VolumeStatusListener;)Lcom/connectsdk/service/command/ServiceCommand;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/connectsdk/service/capability/VolumeControl$VolumeStatusListener;",
            ")",
            "Lcom/connectsdk/service/command/ServiceCommand<",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v5, Lcom/connectsdk/service/WebOSTVService$13;

    invoke-direct {v5, p0, p2}, Lcom/connectsdk/service/WebOSTVService$13;-><init>(Lcom/connectsdk/service/WebOSTVService;Lcom/connectsdk/service/capability/VolumeControl$VolumeStatusListener;)V

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Lcom/connectsdk/service/command/URLServiceSubscription;

    sget-object v2, Lcom/connectsdk/service/WebOSTVService;->VOLUME_STATUS:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/connectsdk/service/command/URLServiceSubscription;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Lorg/json/JSONObject;ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Lcom/connectsdk/service/command/ServiceCommand;

    sget-object v2, Lcom/connectsdk/service/WebOSTVService;->VOLUME_STATUS:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Lorg/json/JSONObject;ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 4
    :goto_0
    invoke-virtual {p1}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-object p1
.end method

.method private isWebAppPinned(ZLjava/lang/String;Lcom/connectsdk/service/sessions/WebAppSession$WebAppPinStatusListener;)Lcom/connectsdk/service/command/ServiceCommand;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lcom/connectsdk/service/sessions/WebAppSession$WebAppPinStatusListener;",
            ")",
            "Lcom/connectsdk/service/command/ServiceCommand<",
            "Lcom/connectsdk/service/sessions/WebAppSession$WebAppPinStatusListener;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const-string v3, "ssap://webapp/isWebAppPinned"

    .line 2
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "webAppId"

    .line 3
    invoke-virtual {v4, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 4
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 5
    :goto_0
    new-instance v6, Lcom/connectsdk/service/WebOSTVService$42;

    invoke-direct {v6, p0, p3}, Lcom/connectsdk/service/WebOSTVService$42;-><init>(Lcom/connectsdk/service/WebOSTVService;Lcom/connectsdk/service/sessions/WebAppSession$WebAppPinStatusListener;)V

    if-eqz p1, :cond_1

    .line 6
    new-instance p1, Lcom/connectsdk/service/command/URLServiceSubscription;

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/connectsdk/service/command/URLServiceSubscription;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Lorg/json/JSONObject;ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    goto :goto_1

    .line 7
    :cond_1
    new-instance p1, Lcom/connectsdk/service/command/ServiceCommand;

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Lorg/json/JSONObject;ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 8
    :goto_1
    invoke-virtual {p1}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-object p1

    :cond_2
    :goto_2
    const/4 p1, 0x0

    if-eqz p3, :cond_3

    .line 9
    new-instance p2, Lcom/connectsdk/service/command/ServiceCommandError;

    const/4 v0, -0x1

    const-string v1, "You must provide a valid web app id"

    invoke-direct {p2, v0, v1, p1}, Lcom/connectsdk/service/command/ServiceCommandError;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p3, p2}, Lcom/connectsdk/service/capability/listeners/ErrorListener;->onError(Lcom/connectsdk/service/command/ServiceCommandError;)V

    :cond_3
    return-object p1
.end method

.method private notifyPairingRequired()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/DeviceService;->listener:Lcom/connectsdk/service/DeviceService$DeviceServiceListener;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/connectsdk/service/DeviceService;->pairingType:Lcom/connectsdk/service/DeviceService$PairingType;

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/connectsdk/service/DeviceService$DeviceServiceListener;->onPairingRequired(Lcom/connectsdk/service/DeviceService;Lcom/connectsdk/service/DeviceService$PairingType;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private parseMajorNumber(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "-"

    .line 1
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 2
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method private parseMinorNumber(Ljava/lang/String;)I
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "-"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 2
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private parseRawChannelData(Lorg/json/JSONObject;)Lcom/connectsdk/core/ChannelInfo;
    .locals 7

    const-string v0, "minorNumber"

    const-string v1, "majorNumber"

    const-string v2, "channelId"

    const-string v3, "channelName"

    .line 1
    new-instance v4, Lcom/connectsdk/core/ChannelInfo;

    invoke-direct {v4}, Lcom/connectsdk/core/ChannelInfo;-><init>()V

    .line 2
    invoke-virtual {v4, p1}, Lcom/connectsdk/core/ChannelInfo;->setRawData(Lorg/json/JSONObject;)V

    .line 3
    :try_start_0
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    .line 4
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v3, v6

    .line 5
    :goto_0
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 6
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    :cond_1
    const-string v2, "channelNumber"

    .line 7
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 9
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    .line 10
    :cond_2
    invoke-direct {p0, v2}, Lcom/connectsdk/service/WebOSTVService;->parseMajorNumber(Ljava/lang/String;)I

    move-result v1

    .line 11
    :goto_1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 12
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_2

    .line 13
    :cond_3
    invoke-direct {p0, v2}, Lcom/connectsdk/service/WebOSTVService;->parseMinorNumber(Ljava/lang/String;)I

    move-result p1

    .line 14
    :goto_2
    invoke-virtual {v4, v3}, Lcom/connectsdk/core/ChannelInfo;->setName(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v4, v6}, Lcom/connectsdk/core/ChannelInfo;->setId(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v4, v2}, Lcom/connectsdk/core/ChannelInfo;->setNumber(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v4, v1}, Lcom/connectsdk/core/ChannelInfo;->setMajorNumber(I)V

    .line 18
    invoke-virtual {v4, p1}, Lcom/connectsdk/core/ChannelInfo;->setMinorNumber(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_3
    return-object v4
.end method

.method private parseRawProgramInfo(Lorg/json/JSONObject;)Lcom/connectsdk/core/ProgramInfo;
    .locals 3

    .line 1
    new-instance v0, Lcom/connectsdk/core/ProgramInfo;

    invoke-direct {v0}, Lcom/connectsdk/core/ProgramInfo;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/connectsdk/core/ProgramInfo;->setRawData(Ljava/lang/Object;)V

    const-string v1, "programId"

    .line 3
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "programName"

    .line 4
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-direct {p0, p1}, Lcom/connectsdk/service/WebOSTVService;->parseRawChannelData(Lorg/json/JSONObject;)Lcom/connectsdk/core/ChannelInfo;

    move-result-object p1

    .line 6
    invoke-virtual {v0, v1}, Lcom/connectsdk/core/ProgramInfo;->setId(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, v2}, Lcom/connectsdk/core/ProgramInfo;->setName(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p1}, Lcom/connectsdk/core/ProgramInfo;->setChannelInfo(Lcom/connectsdk/core/ChannelInfo;)V

    return-object v0
.end method

.method private playMediaByNativeApp(Lcom/connectsdk/core/MediaInfo;ZLcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/connectsdk/service/WebOSTVService;->getDLNAService()Lcom/connectsdk/service/DeviceService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    const-class v1, Lcom/connectsdk/service/capability/MediaPlayer;

    invoke-virtual {v0, v1}, Lcom/connectsdk/service/DeviceService;->getAPI(Ljava/lang/Class;)Lcom/connectsdk/service/capability/CapabilityMethods;

    move-result-object v0

    check-cast v0, Lcom/connectsdk/service/capability/MediaPlayer;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1, p2, p3}, Lcom/connectsdk/service/capability/MediaPlayer;->playMedia(Lcom/connectsdk/core/MediaInfo;ZLcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1}, Lcom/connectsdk/core/MediaInfo;->getImages()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    .line 6
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/connectsdk/core/ImageInfo;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1}, Lcom/connectsdk/core/ImageInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 8
    :cond_1
    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/connectsdk/service/WebOSTVService;->createPlayMediaJsonRequestForSsap(Lcom/connectsdk/core/MediaInfo;ZLjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 9
    invoke-direct {p0, p1, p3}, Lcom/connectsdk/service/WebOSTVService;->displayMedia(Lorg/json/JSONObject;Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    new-instance p2, Lcom/connectsdk/service/command/ServiceCommandError;

    const/4 v0, -0x1

    invoke-virtual {p1}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1, p1}, Lcom/connectsdk/service/command/ServiceCommandError;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    invoke-static {p3, p2}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    .line 11
    sget-object p2, Lcom/connectsdk/core/Util;->T:Ljava/lang/String;

    const-string p3, "Create JSON request for ssap://media.viewer/open failure"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private playMediaByWebApp(Lcom/connectsdk/core/MediaInfo;ZLcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V
    .locals 8

    .line 1
    new-instance v2, Lcom/connectsdk/service/WebOSTVService$18;

    invoke-direct {v2, p0, p3, p1, p2}, Lcom/connectsdk/service/WebOSTVService$18;-><init>(Lcom/connectsdk/service/WebOSTVService;Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;Lcom/connectsdk/core/MediaInfo;Z)V

    .line 2
    invoke-virtual {p0}, Lcom/connectsdk/service/WebOSTVService;->getWebAppLauncher()Lcom/connectsdk/service/capability/WebAppLauncher;

    move-result-object v6

    new-instance v7, Lcom/connectsdk/service/WebOSTVService$19;

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/connectsdk/service/WebOSTVService$19;-><init>(Lcom/connectsdk/service/WebOSTVService;Lcom/connectsdk/service/sessions/WebAppSession$LaunchListener;Lcom/connectsdk/core/MediaInfo;ZLcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V

    const-string p1, "MediaPlayer"

    invoke-interface {v6, p1, v7}, Lcom/connectsdk/service/capability/WebAppLauncher;->joinWebApp(Ljava/lang/String;Lcom/connectsdk/service/sessions/WebAppSession$LaunchListener;)V

    return-void
.end method

.method private sendMessage(Ljava/lang/Object;Lcom/connectsdk/service/sessions/LaunchSession;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/connectsdk/service/sessions/LaunchSession;",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_6

    .line 1
    invoke-virtual {p2}, Lcom/connectsdk/service/sessions/LaunchSession;->getAppId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "Cannot ic_send a null message"

    .line 2
    invoke-static {v0, p1, v1, p3}, Lcom/shabakaty/downloader/ww;->a(ILjava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/connectsdk/service/WebOSTVService;->socket:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;

    if-nez v0, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/connectsdk/service/WebOSTVService;->connect()V

    .line 5
    :cond_2
    invoke-virtual {p2}, Lcom/connectsdk/service/sessions/LaunchSession;->getAppId()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p2}, Lcom/connectsdk/service/sessions/LaunchSession;->getSessionType()Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;

    move-result-object p2

    sget-object v2, Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;->WebApp:Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;

    if-ne p2, v2, :cond_3

    .line 7
    iget-object p2, p0, Lcom/connectsdk/service/WebOSTVService;->mAppToAppIdMappings:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    :cond_3
    if-eqz v0, :cond_5

    .line 8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_4

    goto :goto_1

    .line 9
    :cond_4
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string p2, "type"

    const-string v1, "p2p"

    .line 10
    invoke-virtual {v5, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "to"

    .line 11
    invoke-virtual {v5, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "payload"

    .line 12
    invoke-virtual {v5, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 14
    :goto_0
    new-instance p1, Lcom/connectsdk/service/command/ServiceCommand;

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p0

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Lorg/json/JSONObject;ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 15
    invoke-virtual {p0, p1}, Lcom/connectsdk/service/WebOSTVService;->sendCommand(Lcom/connectsdk/service/command/ServiceCommand;)V

    return-void

    :cond_5
    :goto_1
    const/4 p1, -0x1

    const-string p2, "You must provide a valid LaunchSession to ic_send messages to"

    .line 16
    invoke-static {p1, p2, v1, p3}, Lcom/shabakaty/downloader/ww;->a(ILjava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void

    :cond_6
    :goto_2
    const-string p1, "Must provide a valid LaunchSession object"

    .line 17
    invoke-static {v0, p1, v1, p3}, Lcom/shabakaty/downloader/ww;->a(ILjava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method

.method private sendSpecialKey(Ljava/lang/String;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
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
    iget-object v0, p0, Lcom/connectsdk/service/WebOSTVService;->mouseSocket:Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection;->button(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 3
    invoke-static {p2, p1}, Lcom/connectsdk/core/Util;->postSuccess(Lcom/connectsdk/service/capability/listeners/ResponseListener;Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/connectsdk/service/WebOSTVService$35;

    invoke-direct {v0, p0, p1, p2}, Lcom/connectsdk/service/WebOSTVService$35;-><init>(Lcom/connectsdk/service/WebOSTVService;Ljava/lang/String;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    invoke-direct {p0, v0}, Lcom/connectsdk/service/WebOSTVService;->connectMouse(Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection$WebOSTVMouseSocketListener;)V

    :goto_0
    return-void
.end method

.method private sendToast(Lorg/json/JSONObject;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "iconData"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {}, Lcom/connectsdk/discovery/DiscoveryManager;->getInstance()Lcom/connectsdk/discovery/DiscoveryManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/connectsdk/discovery/DiscoveryManager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 3
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 5
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 6
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 7
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 8
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x2

    .line 9
    invoke-static {v1, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    .line 10
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 11
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "iconExtension"

    const-string v1, "png"

    .line 12
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 14
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 15
    :cond_0
    :goto_0
    new-instance v0, Lcom/connectsdk/service/command/ServiceCommand;

    const/4 v5, 0x1

    const-string v3, "palm://system.notifications/createToast"

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Lorg/json/JSONObject;ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 16
    invoke-virtual {v0}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-void
.end method

.method private webAppSessionForLaunchSession(Lcom/connectsdk/service/sessions/LaunchSession;)Lcom/connectsdk/service/sessions/WebOSWebAppSession;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/WebOSTVService;->mWebAppSessions:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/connectsdk/service/WebOSTVService;->mWebAppSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/connectsdk/service/sessions/LaunchSession;->getService()Lcom/connectsdk/service/DeviceService;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p1, p0}, Lcom/connectsdk/service/sessions/LaunchSession;->setService(Lcom/connectsdk/service/DeviceService;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/connectsdk/service/WebOSTVService;->mWebAppSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/connectsdk/service/sessions/LaunchSession;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;

    if-nez v0, :cond_2

    .line 6
    new-instance v0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;

    invoke-direct {v0, p1, p0}, Lcom/connectsdk/service/sessions/WebOSWebAppSession;-><init>(Lcom/connectsdk/service/sessions/LaunchSession;Lcom/connectsdk/service/DeviceService;)V

    .line 7
    iget-object v1, p0, Lcom/connectsdk/service/WebOSTVService;->mWebAppSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/connectsdk/service/sessions/LaunchSession;->getAppId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
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

    const-string v0, "BACK"

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/connectsdk/service/WebOSTVService;->sendSpecialKey(Ljava/lang/String;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method

.method public cancelPairing()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/WebOSTVService;->socket:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->disconnect()V

    :cond_0
    return-void
.end method

.method public channelDown()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/connectsdk/service/WebOSTVService;->channelDown(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method

.method public channelDown(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2
    new-instance v6, Lcom/connectsdk/service/command/ServiceCommand;

    const-string v2, "ssap://tv/channelDown"

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, v6

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Lorg/json/JSONObject;ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 3
    invoke-virtual {v6}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-void
.end method

.method public channelUp()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/connectsdk/service/WebOSTVService;->channelUp(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method

.method public channelUp(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2
    new-instance v6, Lcom/connectsdk/service/command/ServiceCommand;

    const-string v2, "ssap://tv/channelUp"

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, v6

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Lorg/json/JSONObject;ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 3
    invoke-virtual {v6}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-void
.end method

.method public click()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/WebOSTVService;->mouseSocket:Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection;->click()V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/connectsdk/service/WebOSTVService$31;

    invoke-direct {v0, p0}, Lcom/connectsdk/service/WebOSTVService$31;-><init>(Lcom/connectsdk/service/WebOSTVService;)V

    invoke-direct {p0, v0}, Lcom/connectsdk/service/WebOSTVService;->connectMouse(Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection$WebOSTVMouseSocketListener;)V

    :goto_0
    return-void
.end method

.method public closeApp(Lcom/connectsdk/service/sessions/LaunchSession;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 8
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
    invoke-virtual {p1}, Lcom/connectsdk/service/sessions/LaunchSession;->getAppId()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/connectsdk/service/sessions/LaunchSession;->getSessionId()Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "id"

    .line 4
    invoke-virtual {v5, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sessionId"

    .line 5
    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 7
    :goto_0
    new-instance v0, Lcom/connectsdk/service/command/ServiceCommand;

    invoke-virtual {p1}, Lcom/connectsdk/service/sessions/LaunchSession;->getService()Lcom/connectsdk/service/DeviceService;

    move-result-object v3

    const/4 v6, 0x1

    const-string v4, "ssap://system.launcher/close"

    move-object v2, v0

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Lorg/json/JSONObject;ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 8
    invoke-virtual {v0}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

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
    invoke-virtual {p0, p1, p2}, Lcom/connectsdk/service/WebOSTVService;->closeApp(Lcom/connectsdk/service/sessions/LaunchSession;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method

.method public closeMedia(Lcom/connectsdk/service/sessions/LaunchSession;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 7
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
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/connectsdk/service/sessions/LaunchSession;->getAppId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/connectsdk/service/sessions/LaunchSession;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "id"

    .line 3
    invoke-virtual {p1}, Lcom/connectsdk/service/sessions/LaunchSession;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/connectsdk/service/sessions/LaunchSession;->getSessionId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/connectsdk/service/sessions/LaunchSession;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "sessionId"

    .line 5
    invoke-virtual {p1}, Lcom/connectsdk/service/sessions/LaunchSession;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 7
    :cond_1
    :goto_0
    new-instance v6, Lcom/connectsdk/service/command/ServiceCommand;

    invoke-virtual {p1}, Lcom/connectsdk/service/sessions/LaunchSession;->getService()Lcom/connectsdk/service/DeviceService;

    move-result-object v1

    const/4 v4, 0x1

    const-string v2, "ssap://media.viewer/close"

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Lorg/json/JSONObject;ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 8
    invoke-virtual {v6}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-void
.end method

.method public closeWebApp(Lcom/connectsdk/service/sessions/LaunchSession;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/sessions/LaunchSession;",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 1
    invoke-virtual {p1}, Lcom/connectsdk/service/sessions/LaunchSession;->getAppId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/connectsdk/service/sessions/LaunchSession;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/connectsdk/service/WebOSTVService;->mWebAppSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/connectsdk/service/sessions/LaunchSession;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->disconnectFromWebApp()V

    .line 4
    :cond_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 5
    :try_start_0
    invoke-virtual {p1}, Lcom/connectsdk/service/sessions/LaunchSession;->getAppId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "webAppId"

    invoke-virtual {p1}, Lcom/connectsdk/service/sessions/LaunchSession;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    :cond_2
    invoke-virtual {p1}, Lcom/connectsdk/service/sessions/LaunchSession;->getSessionId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "sessionId"

    invoke-virtual {p1}, Lcom/connectsdk/service/sessions/LaunchSession;->getSessionId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 8
    :cond_3
    :goto_0
    new-instance p1, Lcom/connectsdk/service/command/ServiceCommand;

    const/4 v5, 0x1

    const-string v3, "ssap://webapp/closeWebApp"

    move-object v1, p1

    move-object v2, p0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Lorg/json/JSONObject;ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 9
    invoke-virtual {p1}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-void

    :cond_4
    :goto_1
    const/4 p1, 0x0

    const/4 v0, 0x0

    const-string v1, "Must provide a valid launch session"

    .line 10
    invoke-static {p1, v1, v0, p2}, Lcom/shabakaty/downloader/ww;->a(ILjava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method

.method public connect()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/WebOSTVService;->socket:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;

    invoke-static {p0}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->getURI(Lcom/connectsdk/service/WebOSTVService;)Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;-><init>(Lcom/connectsdk/service/WebOSTVService;Ljava/net/URI;)V

    iput-object v0, p0, Lcom/connectsdk/service/WebOSTVService;->socket:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;

    .line 3
    iget-object v1, p0, Lcom/connectsdk/service/WebOSTVService;->mSocketListener:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$WebOSTVServiceSocketClientListener;

    invoke-virtual {v0, v1}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->setListener(Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$WebOSTVServiceSocketClientListener;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/connectsdk/service/WebOSTVService;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/connectsdk/service/WebOSTVService;->socket:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;

    invoke-virtual {v0}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->connect()V

    :cond_1
    return-void
.end method

.method public connectMouse()V
    .locals 1

    .line 1
    new-instance v0, Lcom/connectsdk/service/WebOSTVService$29;

    invoke-direct {v0, p0}, Lcom/connectsdk/service/WebOSTVService$29;-><init>(Lcom/connectsdk/service/WebOSTVService;)V

    invoke-direct {p0, v0}, Lcom/connectsdk/service/WebOSTVService;->connectMouse(Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection$WebOSTVMouseSocketListener;)V

    return-void
.end method

.method public connectToApp(Ljava/lang/String;Lcom/connectsdk/service/sessions/WebAppSession$LaunchListener;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/connectsdk/service/sessions/LaunchSession;->launchSessionForAppId(Ljava/lang/String;)Lcom/connectsdk/service/sessions/LaunchSession;

    move-result-object p1

    .line 2
    sget-object v0, Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;->App:Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;

    invoke-virtual {p1, v0}, Lcom/connectsdk/service/sessions/LaunchSession;->setSessionType(Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;)V

    .line 3
    invoke-virtual {p1, p0}, Lcom/connectsdk/service/sessions/LaunchSession;->setService(Lcom/connectsdk/service/DeviceService;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/connectsdk/service/WebOSTVService;->webAppSessionForLaunchSession(Lcom/connectsdk/service/sessions/LaunchSession;)Lcom/connectsdk/service/sessions/WebOSWebAppSession;

    move-result-object p1

    .line 5
    new-instance v0, Lcom/connectsdk/service/WebOSTVService$43;

    invoke-direct {v0, p0, p2, p1}, Lcom/connectsdk/service/WebOSTVService$43;-><init>(Lcom/connectsdk/service/WebOSTVService;Lcom/connectsdk/service/sessions/WebAppSession$LaunchListener;Lcom/connectsdk/service/sessions/WebOSWebAppSession;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/connectsdk/service/WebOSTVService;->connectToWebApp(Lcom/connectsdk/service/sessions/WebOSWebAppSession;ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method

.method public connectToWebApp(Lcom/connectsdk/service/sessions/WebOSWebAppSession;ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/sessions/WebOSWebAppSession;",
            "Z",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object v7, p0

    move-object/from16 v8, p1

    move-object/from16 v4, p3

    .line 1
    iget-object v0, v7, Lcom/connectsdk/service/WebOSTVService;->mWebAppSessions:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, v7, Lcom/connectsdk/service/WebOSTVService;->mWebAppSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    :cond_0
    iget-object v0, v7, Lcom/connectsdk/service/WebOSTVService;->mAppToAppIdMappings:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, v7, Lcom/connectsdk/service/WebOSTVService;->mAppToAppIdMappings:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_1
    const/4 v0, 0x0

    if-eqz v8, :cond_6

    .line 5
    iget-object v1, v8, Lcom/connectsdk/service/sessions/WebAppSession;->launchSession:Lcom/connectsdk/service/sessions/LaunchSession;

    if-nez v1, :cond_2

    goto :goto_3

    .line 6
    :cond_2
    invoke-virtual {v1}, Lcom/connectsdk/service/sessions/LaunchSession;->getAppId()Ljava/lang/String;

    move-result-object v6

    .line 7
    iget-object v1, v8, Lcom/connectsdk/service/sessions/WebAppSession;->launchSession:Lcom/connectsdk/service/sessions/LaunchSession;

    invoke-virtual {v1}, Lcom/connectsdk/service/sessions/LaunchSession;->getSessionType()Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;

    move-result-object v1

    sget-object v2, Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;->WebApp:Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;

    if-ne v1, v2, :cond_3

    const-string v1, "webAppId"

    goto :goto_0

    :cond_3
    const-string v1, "appId"

    :goto_0
    if-eqz v6, :cond_5

    .line 8
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    goto :goto_2

    .line 9
    :cond_4
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 10
    :try_start_0
    invoke-virtual {v12, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 11
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 12
    :goto_1
    new-instance v14, Lcom/connectsdk/service/WebOSTVService$39;

    move-object v1, v14

    move-object v2, p0

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/connectsdk/service/WebOSTVService$39;-><init>(Lcom/connectsdk/service/WebOSTVService;ZLcom/connectsdk/service/capability/listeners/ResponseListener;Lcom/connectsdk/service/sessions/WebOSWebAppSession;Ljava/lang/String;)V

    .line 13
    new-instance v0, Lcom/connectsdk/service/command/URLServiceSubscription;

    iget-object v10, v8, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->socket:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;

    const/4 v13, 0x1

    const-string v11, "ssap://webapp/connectToApp"

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Lcom/connectsdk/service/command/URLServiceSubscription;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Lorg/json/JSONObject;ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    iput-object v0, v8, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->appToAppSubscription:Lcom/connectsdk/service/command/URLServiceSubscription;

    .line 14
    invoke-virtual {v0}, Lcom/connectsdk/service/command/URLServiceSubscription;->subscribe()V

    return-void

    :cond_5
    :goto_2
    const/4 v1, -0x1

    const-string v2, "You must provide a valid web app session"

    .line 15
    invoke-static {v1, v2, v0, v4}, Lcom/shabakaty/downloader/ww;->a(ILjava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void

    :cond_6
    :goto_3
    const/4 v1, 0x0

    const-string v2, "You must provide a valid LaunchSession object"

    .line 16
    invoke-static {v1, v2, v0, v4}, Lcom/shabakaty/downloader/ww;->a(ILjava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method

.method public disconnect()V
    .locals 3

    .line 1
    sget-object v0, Lcom/connectsdk/core/Util;->T:Ljava/lang/String;

    const-string v1, "attempting to disconnect to "

    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/connectsdk/service/DeviceService;->serviceDescription:Lcom/connectsdk/service/config/ServiceDescription;

    invoke-virtual {v2}, Lcom/connectsdk/service/config/ServiceDescription;->getIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Lcom/connectsdk/service/WebOSTVService$1;

    invoke-direct {v0, p0}, Lcom/connectsdk/service/WebOSTVService$1;-><init>(Lcom/connectsdk/service/WebOSTVService;)V

    invoke-static {v0}, Lcom/connectsdk/core/Util;->runOnUI(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lcom/connectsdk/service/WebOSTVService;->socket:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->setListener(Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$WebOSTVServiceSocketClientListener;)V

    .line 5
    iget-object v0, p0, Lcom/connectsdk/service/WebOSTVService;->socket:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;

    invoke-virtual {v0}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->disconnect()V

    .line 6
    iput-object v1, p0, Lcom/connectsdk/service/WebOSTVService;->socket:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/connectsdk/service/WebOSTVService;->mAppToAppIdMappings:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/connectsdk/service/WebOSTVService;->mWebAppSessions:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/connectsdk/service/sessions/WebOSWebAppSession;

    .line 13
    invoke-virtual {v1}, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->disconnectFromWebApp()V

    goto :goto_0

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/connectsdk/service/WebOSTVService;->mWebAppSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :cond_3
    return-void
.end method

.method public disconnectMouse()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/WebOSTVService;->mouseSocket:Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection;->disconnect()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/connectsdk/service/WebOSTVService;->mouseSocket:Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection;

    return-void
.end method

.method public displayImage(Lcom/connectsdk/core/MediaInfo;Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V
    .locals 12

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 11
    invoke-virtual {p1}, Lcom/connectsdk/core/MediaInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-virtual {p1}, Lcom/connectsdk/core/MediaInfo;->getMimeType()Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-virtual {p1}, Lcom/connectsdk/core/MediaInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 14
    invoke-virtual {p1}, Lcom/connectsdk/core/MediaInfo;->getDescription()Ljava/lang/String;

    move-result-object v4

    .line 15
    invoke-virtual {p1}, Lcom/connectsdk/core/MediaInfo;->getImages()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lcom/connectsdk/core/MediaInfo;->getImages()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 16
    invoke-virtual {p1}, Lcom/connectsdk/core/MediaInfo;->getImages()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/connectsdk/core/ImageInfo;

    .line 17
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

    .line 18
    invoke-virtual/range {v5 .. v11}, Lcom/connectsdk/service/WebOSTVService;->displayImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V

    return-void
.end method

.method public displayImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V
    .locals 13

    move-object v10, p0

    move-object/from16 v9, p6

    .line 1
    iget-object v0, v10, Lcom/connectsdk/service/DeviceService;->serviceDescription:Lcom/connectsdk/service/config/ServiceDescription;

    invoke-virtual {v0}, Lcom/connectsdk/service/config/ServiceDescription;->getVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4.0.0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/connectsdk/service/WebOSTVService;->getDLNAService()Lcom/connectsdk/service/DeviceService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    const-class v1, Lcom/connectsdk/service/capability/MediaPlayer;

    invoke-virtual {v0, v1}, Lcom/connectsdk/service/DeviceService;->getAPI(Ljava/lang/Class;)Lcom/connectsdk/service/capability/CapabilityMethods;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/connectsdk/service/capability/MediaPlayer;

    if-eqz v1, :cond_0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    .line 4
    invoke-interface/range {v1 .. v7}, Lcom/connectsdk/service/capability/MediaPlayer;->displayImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V

    return-void

    :cond_0
    const/4 v8, 0x0

    .line 5
    :try_start_0
    new-instance v0, Lcom/connectsdk/service/WebOSTVService$15;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v6, p2

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/connectsdk/service/WebOSTVService$15;-><init>(Lcom/connectsdk/service/WebOSTVService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 7
    new-instance v1, Lcom/connectsdk/service/command/ServiceCommandError;

    const/4 v2, -0x1

    invoke-virtual {v0}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/connectsdk/service/command/ServiceCommandError;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    invoke-static {v9, v1}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    :goto_0
    if-eqz v8, :cond_2

    .line 8
    invoke-direct {p0, v8, v9}, Lcom/connectsdk/service/WebOSTVService;->displayMedia(Lorg/json/JSONObject;Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V

    goto :goto_1

    .line 9
    :cond_1
    new-instance v0, Lcom/connectsdk/service/WebOSTVService$16;

    move-object v1, v0

    move-object v2, p0

    move-object/from16 v3, p6

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/connectsdk/service/WebOSTVService$16;-><init>(Lcom/connectsdk/service/WebOSTVService;Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/connectsdk/service/WebOSTVService;->getWebAppLauncher()Lcom/connectsdk/service/capability/WebAppLauncher;

    move-result-object v11

    new-instance v12, Lcom/connectsdk/service/WebOSTVService$17;

    move-object v1, v12

    move-object v3, v0

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/connectsdk/service/WebOSTVService$17;-><init>(Lcom/connectsdk/service/WebOSTVService;Lcom/connectsdk/service/sessions/WebAppSession$LaunchListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V

    const-string v0, "MediaPlayer"

    invoke-interface {v11, v0, v12}, Lcom/connectsdk/service/capability/WebAppLauncher;->joinWebApp(Ljava/lang/String;Lcom/connectsdk/service/sessions/WebAppSession$LaunchListener;)V

    :cond_2
    :goto_1
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

    const-string v0, "DOWN"

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/connectsdk/service/WebOSTVService;->sendSpecialKey(Ljava/lang/String;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method

.method public fastForward(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/connectsdk/service/command/ServiceCommand;

    const-string v2, "ssap://media.controls/fastForward"

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, v6

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Lorg/json/JSONObject;ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 2
    invoke-virtual {v6}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-void
.end method

.method public get3DEnabled(Lcom/connectsdk/service/capability/TVControl$State3DModeListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0, p1}, Lcom/connectsdk/service/WebOSTVService;->get3DEnabled(ZLcom/connectsdk/service/capability/TVControl$State3DModeListener;)Lcom/connectsdk/service/command/ServiceCommand;

    return-void
.end method

.method public getACRAuthToken(Lcom/connectsdk/service/WebOSTVService$ACRAuthTokenListener;)V
    .locals 6

    .line 1
    new-instance v5, Lcom/connectsdk/service/WebOSTVService$48;

    invoke-direct {v5, p0, p1}, Lcom/connectsdk/service/WebOSTVService$48;-><init>(Lcom/connectsdk/service/WebOSTVService;Lcom/connectsdk/service/WebOSTVService$ACRAuthTokenListener;)V

    .line 2
    new-instance p1, Lcom/connectsdk/service/command/ServiceCommand;

    const-string v2, "ssap://tv/getACRAuthToken"

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Lorg/json/JSONObject;ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 3
    invoke-virtual {p1}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-void
.end method

.method public getAppList(Lcom/connectsdk/service/capability/Launcher$AppListListener;)V
    .locals 6

    .line 1
    new-instance v5, Lcom/connectsdk/service/WebOSTVService$8;

    invoke-direct {v5, p0, p1}, Lcom/connectsdk/service/WebOSTVService$8;-><init>(Lcom/connectsdk/service/WebOSTVService;Lcom/connectsdk/service/capability/Launcher$AppListListener;)V

    .line 2
    new-instance p1, Lcom/connectsdk/service/command/ServiceCommand;

    const-string v2, "ssap://com.webos.applicationManager/listApps"

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Lorg/json/JSONObject;ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 3
    invoke-virtual {p1}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-void
.end method

.method public getAppState(Lcom/connectsdk/service/sessions/LaunchSession;Lcom/connectsdk/service/capability/Launcher$AppStateListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, v0, p1, p2}, Lcom/connectsdk/service/WebOSTVService;->getAppState(ZLcom/connectsdk/service/sessions/LaunchSession;Lcom/connectsdk/service/capability/Launcher$AppStateListener;)Lcom/connectsdk/service/command/ServiceCommand;

    return-void
.end method

.method public getChannelCurrentProgramInfo(Lcom/connectsdk/service/capability/TVControl$ProgramInfoListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0, p1}, Lcom/connectsdk/service/WebOSTVService;->getChannelCurrentProgramInfo(ZLcom/connectsdk/service/capability/TVControl$ProgramInfoListener;)Lcom/connectsdk/service/command/ServiceCommand;

    return-void
.end method

.method public getChannelList(Lcom/connectsdk/service/capability/TVControl$ChannelListListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0, p1}, Lcom/connectsdk/service/WebOSTVService;->getChannelList(ZLcom/connectsdk/service/capability/TVControl$ChannelListListener;)Lcom/connectsdk/service/command/ServiceCommand;

    return-void
.end method

.method public getCurrentChannel(Lcom/connectsdk/service/capability/TVControl$ChannelListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0, p1}, Lcom/connectsdk/service/WebOSTVService;->getCurrentChannel(ZLcom/connectsdk/service/capability/TVControl$ChannelListener;)Lcom/connectsdk/service/command/ServiceCommand;

    return-void
.end method

.method public getDuration(Lcom/connectsdk/service/capability/MediaControl$DurationListener;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/connectsdk/service/command/ServiceCommandError;->notSupported()Lcom/connectsdk/service/command/ServiceCommandError;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

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
    .locals 6

    .line 1
    new-instance v5, Lcom/connectsdk/service/WebOSTVService$28;

    invoke-direct {v5, p0, p1}, Lcom/connectsdk/service/WebOSTVService$28;-><init>(Lcom/connectsdk/service/WebOSTVService;Lcom/connectsdk/service/capability/ExternalInputControl$ExternalInputListListener;)V

    .line 2
    new-instance p1, Lcom/connectsdk/service/command/ServiceCommand;

    const-string v2, "ssap://tv/getExternalInputList"

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Lorg/json/JSONObject;ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 3
    invoke-virtual {p1}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

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

.method public getLaunchPoints(Lcom/connectsdk/service/WebOSTVService$LaunchPointsListener;)V
    .locals 6

    .line 1
    new-instance v5, Lcom/connectsdk/service/WebOSTVService$49;

    invoke-direct {v5, p0, p1}, Lcom/connectsdk/service/WebOSTVService$49;-><init>(Lcom/connectsdk/service/WebOSTVService;Lcom/connectsdk/service/WebOSTVService$LaunchPointsListener;)V

    .line 2
    new-instance p1, Lcom/connectsdk/service/command/ServiceCommand;

    const-string v2, "ssap://com.webos.applicationManager/listLaunchPoints"

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Lorg/json/JSONObject;ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 3
    invoke-virtual {p1}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-void
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

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/connectsdk/service/WebOSTVService;->getMuteStatus(ZLcom/connectsdk/service/capability/VolumeControl$MuteListener;)Lcom/connectsdk/service/command/ServiceCommand;

    return-void
.end method

.method public getPermissions()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/WebOSTVService;->permissions:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    sget-object v1, Lcom/connectsdk/service/WebOSTVService;->kWebOSTVServiceOpenPermissions:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 4
    invoke-static {}, Lcom/connectsdk/discovery/DiscoveryManager;->getInstance()Lcom/connectsdk/discovery/DiscoveryManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/connectsdk/discovery/DiscoveryManager;->getPairingLevel()Lcom/connectsdk/discovery/DiscoveryManager$PairingLevel;

    move-result-object v1

    sget-object v2, Lcom/connectsdk/discovery/DiscoveryManager$PairingLevel;->ON:Lcom/connectsdk/discovery/DiscoveryManager$PairingLevel;

    if-ne v1, v2, :cond_1

    .line 5
    sget-object v1, Lcom/connectsdk/service/WebOSTVService;->kWebOSTVServiceProtectedPermissions:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 6
    sget-object v1, Lcom/connectsdk/service/WebOSTVService;->kWebOSTVServicePersonalActivityPermissions:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 7
    :cond_1
    iput-object v0, p0, Lcom/connectsdk/service/WebOSTVService;->permissions:Ljava/util/List;

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
    .locals 1

    .line 1
    invoke-static {}, Lcom/connectsdk/service/command/ServiceCommandError;->notSupported()Lcom/connectsdk/service/command/ServiceCommandError;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

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
    invoke-virtual {p0}, Lcom/connectsdk/service/WebOSTVService;->getMediaPlayerCapabilityLevel()Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    const-class v0, Lcom/connectsdk/service/capability/MediaControl;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/connectsdk/service/WebOSTVService;->getMediaControlCapabilityLevel()Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    const-class v0, Lcom/connectsdk/service/capability/Launcher;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/connectsdk/service/WebOSTVService;->getLauncherCapabilityLevel()Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    const-class v0, Lcom/connectsdk/service/capability/TVControl;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p0}, Lcom/connectsdk/service/WebOSTVService;->getTVControlCapabilityLevel()Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

    move-result-object p1

    return-object p1

    .line 9
    :cond_3
    const-class v0, Lcom/connectsdk/service/capability/VolumeControl;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {p0}, Lcom/connectsdk/service/WebOSTVService;->getVolumeControlCapabilityLevel()Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

    move-result-object p1

    return-object p1

    .line 11
    :cond_4
    const-class v0, Lcom/connectsdk/service/capability/ExternalInputControl;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    invoke-virtual {p0}, Lcom/connectsdk/service/WebOSTVService;->getExternalInputControlPriorityLevel()Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

    move-result-object p1

    return-object p1

    .line 13
    :cond_5
    const-class v0, Lcom/connectsdk/service/capability/MouseControl;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 14
    invoke-virtual {p0}, Lcom/connectsdk/service/WebOSTVService;->getMouseControlCapabilityLevel()Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

    move-result-object p1

    return-object p1

    .line 15
    :cond_6
    const-class v0, Lcom/connectsdk/service/capability/TextInputControl;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 16
    invoke-virtual {p0}, Lcom/connectsdk/service/WebOSTVService;->getTextInputControlCapabilityLevel()Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

    move-result-object p1

    return-object p1

    .line 17
    :cond_7
    const-class v0, Lcom/connectsdk/service/capability/PowerControl;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 18
    invoke-virtual {p0}, Lcom/connectsdk/service/WebOSTVService;->getPowerControlCapabilityLevel()Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

    move-result-object p1

    return-object p1

    .line 19
    :cond_8
    const-class v0, Lcom/connectsdk/service/capability/KeyControl;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 20
    invoke-virtual {p0}, Lcom/connectsdk/service/WebOSTVService;->getKeyControlCapabilityLevel()Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

    move-result-object p1

    return-object p1

    .line 21
    :cond_9
    const-class v0, Lcom/connectsdk/service/capability/ToastControl;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 22
    invoke-virtual {p0}, Lcom/connectsdk/service/WebOSTVService;->getToastControlCapabilityLevel()Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

    move-result-object p1

    return-object p1

    .line 23
    :cond_a
    const-class v0, Lcom/connectsdk/service/capability/WebAppLauncher;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 24
    invoke-virtual {p0}, Lcom/connectsdk/service/WebOSTVService;->getWebAppLauncherCapabilityLevel()Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

    move-result-object p1

    return-object p1

    .line 25
    :cond_b
    const-class v0, Lcom/connectsdk/service/capability/PlaylistControl;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 26
    invoke-virtual {p0}, Lcom/connectsdk/service/WebOSTVService;->getPlaylistControlCapabilityLevel()Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

    move-result-object p1

    return-object p1

    .line 27
    :cond_c
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

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0, p1}, Lcom/connectsdk/service/WebOSTVService;->getProgramList(ZLcom/connectsdk/service/capability/TVControl$ProgramListListener;)Lcom/connectsdk/service/command/ServiceCommand;

    return-void
.end method

.method public getRunningApp(Lcom/connectsdk/service/capability/Launcher$AppInfoListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0, p1}, Lcom/connectsdk/service/WebOSTVService;->getRunningApp(ZLcom/connectsdk/service/capability/Launcher$AppInfoListener;)Lcom/connectsdk/service/command/ServiceCommand;

    return-void
.end method

.method public getServiceInfo(Lcom/connectsdk/service/WebOSTVService$ServiceInfoListener;)V
    .locals 7

    .line 1
    new-instance v6, Lcom/connectsdk/service/command/ServiceCommand;

    new-instance v5, Lcom/connectsdk/service/WebOSTVService$45;

    invoke-direct {v5, p0, p1}, Lcom/connectsdk/service/WebOSTVService$45;-><init>(Lcom/connectsdk/service/WebOSTVService;Lcom/connectsdk/service/WebOSTVService$ServiceInfoListener;)V

    const-string v2, "ssap://api/getServiceList"

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Lorg/json/JSONObject;ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 2
    invoke-virtual {v6}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-void
.end method

.method public getSystemInfo(Lcom/connectsdk/service/WebOSTVService$SystemInfoListener;)V
    .locals 7

    .line 1
    new-instance v6, Lcom/connectsdk/service/command/ServiceCommand;

    new-instance v5, Lcom/connectsdk/service/WebOSTVService$46;

    invoke-direct {v5, p0, p1}, Lcom/connectsdk/service/WebOSTVService$46;-><init>(Lcom/connectsdk/service/WebOSTVService;Lcom/connectsdk/service/WebOSTVService$SystemInfoListener;)V

    const-string v2, "ssap://system/getSystemInfo"

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Lorg/json/JSONObject;ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 2
    invoke-virtual {v6}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

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

.method public getToastControl()Lcom/connectsdk/service/capability/ToastControl;
    .locals 0

    return-object p0
.end method

.method public getToastControlCapabilityLevel()Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;
    .locals 1

    .line 1
    sget-object v0, Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;->HIGH:Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

    return-object v0
.end method

.method public getVolume(Lcom/connectsdk/service/capability/VolumeControl$VolumeListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0, p1}, Lcom/connectsdk/service/WebOSTVService;->getVolume(ZLcom/connectsdk/service/capability/VolumeControl$VolumeListener;)Lcom/connectsdk/service/command/ServiceCommand;

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

.method public getVolumeStatus(Lcom/connectsdk/service/capability/VolumeControl$VolumeStatusListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0, p1}, Lcom/connectsdk/service/WebOSTVService;->getVolumeStatus(ZLcom/connectsdk/service/capability/VolumeControl$VolumeStatusListener;)Lcom/connectsdk/service/command/ServiceCommand;

    return-void
.end method

.method public getWebAppIdMappings()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/WebOSTVService;->mAppToAppIdMappings:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public getWebAppLauncher()Lcom/connectsdk/service/capability/WebAppLauncher;
    .locals 0

    return-object p0
.end method

.method public getWebAppLauncherCapabilityLevel()Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;
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

    const-string v0, "HOME"

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/connectsdk/service/WebOSTVService;->sendSpecialKey(Ljava/lang/String;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method

.method public isConnectable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isConnected()Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/connectsdk/discovery/DiscoveryManager;->getInstance()Lcom/connectsdk/discovery/DiscoveryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/connectsdk/discovery/DiscoveryManager;->getPairingLevel()Lcom/connectsdk/discovery/DiscoveryManager$PairingLevel;

    move-result-object v0

    sget-object v1, Lcom/connectsdk/discovery/DiscoveryManager$PairingLevel;->ON:Lcom/connectsdk/discovery/DiscoveryManager$PairingLevel;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/connectsdk/service/WebOSTVService;->socket:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/connectsdk/service/DeviceService;->serviceConfig:Lcom/connectsdk/service/config/ServiceConfig;

    check-cast v0, Lcom/connectsdk/service/config/WebOSTVServiceConfig;

    invoke-virtual {v0}, Lcom/connectsdk/service/config/WebOSTVServiceConfig;->getClientKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/connectsdk/service/WebOSTVService;->socket:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public isWebAppPinned(Ljava/lang/String;Lcom/connectsdk/service/sessions/WebAppSession$WebAppPinStatusListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, v0, p1, p2}, Lcom/connectsdk/service/WebOSTVService;->isWebAppPinned(ZLjava/lang/String;Lcom/connectsdk/service/sessions/WebAppSession$WebAppPinStatusListener;)Lcom/connectsdk/service/command/ServiceCommand;

    return-void
.end method

.method public joinApp(Ljava/lang/String;Lcom/connectsdk/service/sessions/WebAppSession$LaunchListener;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/connectsdk/service/sessions/LaunchSession;->launchSessionForAppId(Ljava/lang/String;)Lcom/connectsdk/service/sessions/LaunchSession;

    move-result-object p1

    .line 2
    sget-object v0, Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;->App:Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;

    invoke-virtual {p1, v0}, Lcom/connectsdk/service/sessions/LaunchSession;->setSessionType(Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;)V

    .line 3
    invoke-virtual {p1, p0}, Lcom/connectsdk/service/sessions/LaunchSession;->setService(Lcom/connectsdk/service/DeviceService;)V

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/connectsdk/service/WebOSTVService;->joinWebApp(Lcom/connectsdk/service/sessions/LaunchSession;Lcom/connectsdk/service/sessions/WebAppSession$LaunchListener;)V

    return-void
.end method

.method public joinWebApp(Lcom/connectsdk/service/sessions/LaunchSession;Lcom/connectsdk/service/sessions/WebAppSession$LaunchListener;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/connectsdk/service/WebOSTVService;->webAppSessionForLaunchSession(Lcom/connectsdk/service/sessions/LaunchSession;)Lcom/connectsdk/service/sessions/WebOSWebAppSession;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/connectsdk/service/WebOSTVService$44;

    invoke-direct {v0, p0, p2, p1}, Lcom/connectsdk/service/WebOSTVService$44;-><init>(Lcom/connectsdk/service/WebOSTVService;Lcom/connectsdk/service/sessions/WebAppSession$LaunchListener;Lcom/connectsdk/service/sessions/WebOSWebAppSession;)V

    invoke-virtual {p1, v0}, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->join(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method

.method public joinWebApp(Ljava/lang/String;Lcom/connectsdk/service/sessions/WebAppSession$LaunchListener;)V
    .locals 1

    .line 3
    invoke-static {p1}, Lcom/connectsdk/service/sessions/LaunchSession;->launchSessionForAppId(Ljava/lang/String;)Lcom/connectsdk/service/sessions/LaunchSession;

    move-result-object p1

    .line 4
    sget-object v0, Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;->WebApp:Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;

    invoke-virtual {p1, v0}, Lcom/connectsdk/service/sessions/LaunchSession;->setSessionType(Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;)V

    .line 5
    invoke-virtual {p1, p0}, Lcom/connectsdk/service/sessions/LaunchSession;->setService(Lcom/connectsdk/service/DeviceService;)V

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/connectsdk/service/WebOSTVService;->joinWebApp(Lcom/connectsdk/service/sessions/LaunchSession;Lcom/connectsdk/service/sessions/WebAppSession$LaunchListener;)V

    return-void
.end method

.method public jumpToTrack(JLcom/connectsdk/service/capability/listeners/ResponseListener;)V
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

.method public launchApp(Ljava/lang/String;Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/connectsdk/core/AppInfo;

    invoke-direct {v0}, Lcom/connectsdk/core/AppInfo;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/connectsdk/core/AppInfo;->setId(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, v0, p2}, Lcom/connectsdk/service/WebOSTVService;->launchAppWithInfo(Lcom/connectsdk/core/AppInfo;Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;)V

    return-void
.end method

.method public launchAppStore(Ljava/lang/String;Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/connectsdk/core/AppInfo;

    const-string v1, "com.webos.app.discovery"

    invoke-direct {v0, v1}, Lcom/connectsdk/core/AppInfo;-><init>(Ljava/lang/String;)V

    const-string v1, "LG Store"

    .line 2
    invoke-virtual {v0, v1}, Lcom/connectsdk/core/AppInfo;->setName(Ljava/lang/String;)V

    .line 3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "category/GAME_APPS/%s"

    .line 5
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    const-string v2, "query"

    .line 6
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 8
    :cond_0
    :goto_0
    invoke-virtual {p0, v0, v1, p2}, Lcom/connectsdk/service/WebOSTVService;->launchAppWithInfo(Lcom/connectsdk/core/AppInfo;Ljava/lang/Object;Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;)V

    return-void
.end method

.method public launchAppWithInfo(Lcom/connectsdk/core/AppInfo;Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Lcom/connectsdk/service/WebOSTVService;->launchAppWithInfo(Lcom/connectsdk/core/AppInfo;Ljava/lang/Object;Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;)V

    return-void
.end method

.method public launchAppWithInfo(Lcom/connectsdk/core/AppInfo;Ljava/lang/Object;Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;)V
    .locals 6

    .line 2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/connectsdk/core/AppInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "contentId"

    if-eqz p2, :cond_0

    .line 4
    :try_start_0
    move-object v1, p2

    check-cast v1, Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    const/4 v1, 0x0

    :goto_0
    :try_start_1
    const-string v2, "id"

    .line 6
    invoke-virtual {v3, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    if-eqz p2, :cond_2

    const-string v0, "params"

    .line 8
    invoke-virtual {v3, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    .line 9
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 10
    :cond_2
    :goto_1
    new-instance v5, Lcom/connectsdk/service/WebOSTVService$3;

    invoke-direct {v5, p0, p1, p3}, Lcom/connectsdk/service/WebOSTVService$3;-><init>(Lcom/connectsdk/service/WebOSTVService;Ljava/lang/String;Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;)V

    .line 11
    new-instance p1, Lcom/connectsdk/service/command/ServiceCommand;

    const/4 v4, 0x1

    const-string v2, "ssap://system.launcher/launch"

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Lorg/json/JSONObject;ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 12
    invoke-virtual {p1}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-void
.end method

.method public launchBrowser(Ljava/lang/String;Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;)V
    .locals 6

    .line 1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 2
    new-instance v5, Lcom/connectsdk/service/WebOSTVService$4;

    invoke-direct {v5, p0, p2}, Lcom/connectsdk/service/WebOSTVService$4;-><init>(Lcom/connectsdk/service/WebOSTVService;Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;)V

    :try_start_0
    const-string p2, "target"

    .line 3
    invoke-virtual {v3, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 5
    :goto_0
    new-instance p1, Lcom/connectsdk/service/command/ServiceCommand;

    const/4 v4, 0x1

    const-string v2, "ssap://system.launcher/open"

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Lorg/json/JSONObject;ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 6
    invoke-virtual {p1}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-void
.end method

.method public launchHulu(Ljava/lang/String;Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;)V
    .locals 2

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "contentId"

    .line 2
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 4
    :goto_0
    new-instance p1, Lcom/connectsdk/service/WebOSTVService$6;

    invoke-direct {p1, p0}, Lcom/connectsdk/service/WebOSTVService$6;-><init>(Lcom/connectsdk/service/WebOSTVService;)V

    .line 5
    invoke-virtual {p0, p1, v0, p2}, Lcom/connectsdk/service/WebOSTVService;->launchAppWithInfo(Lcom/connectsdk/core/AppInfo;Ljava/lang/Object;Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;)V

    return-void
.end method

.method public launchInputPicker(Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/connectsdk/service/WebOSTVService$26;

    invoke-direct {v0, p0}, Lcom/connectsdk/service/WebOSTVService$26;-><init>(Lcom/connectsdk/service/WebOSTVService;)V

    .line 2
    new-instance v1, Lcom/connectsdk/service/WebOSTVService$27;

    invoke-direct {v1, p0, p1, v0}, Lcom/connectsdk/service/WebOSTVService$27;-><init>(Lcom/connectsdk/service/WebOSTVService;Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;Lcom/connectsdk/core/AppInfo;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/connectsdk/service/WebOSTVService;->launchAppWithInfo(Lcom/connectsdk/core/AppInfo;Ljava/lang/Object;Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;)V

    return-void
.end method

.method public launchNetflix(Ljava/lang/String;Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;)V
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "m=http%3A%2F%2Fapi.netflix.com%2Fcatalog%2Ftitles%2Fmovies%2F"

    const-string v2, "&source_type=4"

    .line 2
    invoke-static {v1, p1, v2}, Lcom/shabakaty/downloader/jp2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    const-string v1, "contentId"

    .line 3
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 5
    :goto_0
    new-instance p1, Lcom/connectsdk/service/WebOSTVService$7;

    invoke-direct {p1, p0}, Lcom/connectsdk/service/WebOSTVService$7;-><init>(Lcom/connectsdk/service/WebOSTVService;)V

    .line 6
    invoke-virtual {p0, p1, v0, p2}, Lcom/connectsdk/service/WebOSTVService;->launchAppWithInfo(Lcom/connectsdk/core/AppInfo;Ljava/lang/Object;Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;)V

    return-void
.end method

.method public launchWebApp(Ljava/lang/String;Lcom/connectsdk/service/sessions/WebAppSession$LaunchListener;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/connectsdk/service/WebOSTVService;->launchWebApp(Ljava/lang/String;Lorg/json/JSONObject;ZLcom/connectsdk/service/sessions/WebAppSession$LaunchListener;)V

    return-void
.end method

.method public launchWebApp(Ljava/lang/String;Lorg/json/JSONObject;Lcom/connectsdk/service/sessions/WebAppSession$LaunchListener;)V
    .locals 7

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/connectsdk/service/WebOSTVService;->mWebAppSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;

    .line 5
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "webAppId"

    .line 6
    invoke-virtual {v4, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p2, :cond_1

    const-string v1, "urlParams"

    .line 7
    invoke-virtual {v4, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 8
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 9
    :cond_1
    :goto_0
    new-instance v6, Lcom/connectsdk/service/WebOSTVService$37;

    invoke-direct {v6, p0, v0, p1, p3}, Lcom/connectsdk/service/WebOSTVService$37;-><init>(Lcom/connectsdk/service/WebOSTVService;Lcom/connectsdk/service/sessions/WebOSWebAppSession;Ljava/lang/String;Lcom/connectsdk/service/sessions/WebAppSession$LaunchListener;)V

    .line 10
    new-instance p1, Lcom/connectsdk/service/command/ServiceCommand;

    const/4 v5, 0x1

    const-string v3, "ssap://webapp/launchWebApp"

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Lorg/json/JSONObject;ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 11
    invoke-virtual {p1}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-void

    .line 12
    :cond_2
    :goto_1
    new-instance p1, Lcom/connectsdk/service/command/ServiceCommandError;

    const/4 p2, -0x1

    const/4 v0, 0x0

    const-string v1, "You need to provide a valid webAppId."

    invoke-direct {p1, p2, v1, v0}, Lcom/connectsdk/service/command/ServiceCommandError;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    invoke-static {p3, p1}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    return-void
.end method

.method public launchWebApp(Ljava/lang/String;Lorg/json/JSONObject;ZLcom/connectsdk/service/sessions/WebAppSession$LaunchListener;)V
    .locals 1

    if-nez p1, :cond_0

    .line 13
    new-instance p1, Lcom/connectsdk/service/command/ServiceCommandError;

    const/4 p2, 0x0

    const/4 p3, 0x0

    const-string v0, "Must pass a web App id"

    invoke-direct {p1, p2, v0, p3}, Lcom/connectsdk/service/command/ServiceCommandError;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    invoke-static {p4, p1}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 14
    invoke-virtual {p0, p1, p2, p4}, Lcom/connectsdk/service/WebOSTVService;->launchWebApp(Ljava/lang/String;Lorg/json/JSONObject;Lcom/connectsdk/service/sessions/WebAppSession$LaunchListener;)V

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {p0}, Lcom/connectsdk/service/WebOSTVService;->getLauncher()Lcom/connectsdk/service/capability/Launcher;

    move-result-object p3

    new-instance v0, Lcom/connectsdk/service/WebOSTVService$38;

    invoke-direct {v0, p0, p4, p1, p2}, Lcom/connectsdk/service/WebOSTVService$38;-><init>(Lcom/connectsdk/service/WebOSTVService;Lcom/connectsdk/service/sessions/WebAppSession$LaunchListener;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-interface {p3, v0}, Lcom/connectsdk/service/capability/Launcher;->getRunningApp(Lcom/connectsdk/service/capability/Launcher$AppInfoListener;)V

    :goto_0
    return-void
.end method

.method public launchWebApp(Ljava/lang/String;ZLcom/connectsdk/service/sessions/WebAppSession$LaunchListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/connectsdk/service/WebOSTVService;->launchWebApp(Ljava/lang/String;Lorg/json/JSONObject;ZLcom/connectsdk/service/sessions/WebAppSession$LaunchListener;)V

    return-void
.end method

.method public launchYouTube(Ljava/lang/String;FLcom/connectsdk/service/capability/Launcher$AppLaunchListener;)V
    .locals 7

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    float-to-double v1, p2

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    cmpg-double v6, v1, v3

    if-gez v6, :cond_0

    .line 4
    new-instance p1, Lcom/connectsdk/service/command/ServiceCommandError;

    const/4 p2, 0x0

    const-string v0, "Start time may not be negative"

    invoke-direct {p1, v5, v0, p2}, Lcom/connectsdk/service/command/ServiceCommandError;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    invoke-static {p3, p1}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    return-void

    :cond_0
    :try_start_0
    const-string v1, "contentId"

    const-string v2, "%s&pairingCode=%s&t=%.1f"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    const/4 p1, 0x1

    .line 5
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p1

    const/4 p1, 0x2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v3, p1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 7
    :cond_1
    :goto_0
    new-instance p1, Lcom/connectsdk/service/WebOSTVService$5;

    invoke-direct {p1, p0}, Lcom/connectsdk/service/WebOSTVService$5;-><init>(Lcom/connectsdk/service/WebOSTVService;)V

    .line 8
    invoke-virtual {p0, p1, v0, p3}, Lcom/connectsdk/service/WebOSTVService;->launchAppWithInfo(Lcom/connectsdk/core/AppInfo;Ljava/lang/Object;Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;)V

    return-void
.end method

.method public launchYouTube(Ljava/lang/String;Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Lcom/connectsdk/service/WebOSTVService;->launchYouTube(Ljava/lang/String;FLcom/connectsdk/service/capability/Launcher$AppLaunchListener;)V

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

    const-string v0, "LEFT"

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/connectsdk/service/WebOSTVService;->sendSpecialKey(Ljava/lang/String;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method

.method public move(DD)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/WebOSTVService;->mouseSocket:Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection;->move(DD)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/connectsdk/service/WebOSTVService$32;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/connectsdk/service/WebOSTVService$32;-><init>(Lcom/connectsdk/service/WebOSTVService;DD)V

    invoke-direct {p0, v0}, Lcom/connectsdk/service/WebOSTVService;->connectMouse(Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection$WebOSTVMouseSocketListener;)V

    :goto_0
    return-void
.end method

.method public move(Landroid/graphics/PointF;)V
    .locals 4

    .line 4
    iget v0, p1, Landroid/graphics/PointF;->x:F

    float-to-double v0, v0

    iget p1, p1, Landroid/graphics/PointF;->y:F

    float-to-double v2, p1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/connectsdk/service/WebOSTVService;->move(DD)V

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
    iget-object v0, p0, Lcom/connectsdk/service/WebOSTVService;->mouseSocket:Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection;->click()V

    const/4 v0, 0x0

    .line 3
    invoke-static {p1, v0}, Lcom/connectsdk/core/Util;->postSuccess(Lcom/connectsdk/service/capability/listeners/ResponseListener;Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/connectsdk/service/WebOSTVService$36;

    invoke-direct {v0, p0, p1}, Lcom/connectsdk/service/WebOSTVService$36;-><init>(Lcom/connectsdk/service/WebOSTVService;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    invoke-direct {p0, v0}, Lcom/connectsdk/service/WebOSTVService;->connectMouse(Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection$WebOSTVMouseSocketListener;)V

    :goto_0
    return-void
.end method

.method public pause(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/connectsdk/service/command/ServiceCommand;

    const-string v2, "ssap://media.controls/pause"

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, v6

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Lorg/json/JSONObject;ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 2
    invoke-virtual {v6}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-void
.end method

.method public pinWebApp(Ljava/lang/String;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 7
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

    goto :goto_1

    .line 2
    :cond_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "webAppId"

    .line 3
    invoke-virtual {v4, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 5
    :goto_0
    new-instance v6, Lcom/connectsdk/service/WebOSTVService$40;

    invoke-direct {v6, p0, p2}, Lcom/connectsdk/service/WebOSTVService$40;-><init>(Lcom/connectsdk/service/WebOSTVService;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 6
    new-instance p1, Lcom/connectsdk/service/command/URLServiceSubscription;

    const/4 v5, 0x1

    const-string v3, "ssap://webapp/pinWebApp"

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/connectsdk/service/command/URLServiceSubscription;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Lorg/json/JSONObject;ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 7
    invoke-virtual {p1}, Lcom/connectsdk/service/command/URLServiceSubscription;->send()V

    return-void

    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    .line 8
    new-instance p1, Lcom/connectsdk/service/command/ServiceCommandError;

    const/4 v0, -0x1

    const/4 v1, 0x0

    const-string v2, "You must provide a valid web app id"

    invoke-direct {p1, v0, v2, v1}, Lcom/connectsdk/service/command/ServiceCommandError;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p2, p1}, Lcom/connectsdk/service/capability/listeners/ErrorListener;->onError(Lcom/connectsdk/service/command/ServiceCommandError;)V

    :cond_2
    return-void
.end method

.method public play(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/connectsdk/service/command/ServiceCommand;

    const-string v2, "ssap://media.controls/play"

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, v6

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Lorg/json/JSONObject;ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 2
    invoke-virtual {v6}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-void
.end method

.method public playMedia(Lcom/connectsdk/core/MediaInfo;ZLcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/connectsdk/service/DeviceService;->serviceDescription:Lcom/connectsdk/service/config/ServiceDescription;

    invoke-virtual {v0}, Lcom/connectsdk/service/config/ServiceDescription;->getVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4.0.0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-direct {p0, p1, p2, p3}, Lcom/connectsdk/service/WebOSTVService;->playMediaByNativeApp(Lcom/connectsdk/core/MediaInfo;ZLcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/connectsdk/service/WebOSTVService;->playMediaByWebApp(Lcom/connectsdk/core/MediaInfo;ZLcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V

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
    invoke-virtual {p0, p1, p6, p7}, Lcom/connectsdk/service/WebOSTVService;->playMedia(Lcom/connectsdk/core/MediaInfo;ZLcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V

    return-void
.end method

.method public powerOff(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v5, Lcom/connectsdk/service/WebOSTVService$34;

    invoke-direct {v5, p0}, Lcom/connectsdk/service/WebOSTVService$34;-><init>(Lcom/connectsdk/service/WebOSTVService;)V

    .line 2
    new-instance p1, Lcom/connectsdk/service/command/ServiceCommand;

    const-string v2, "ssap://system/turnOff"

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Lorg/json/JSONObject;ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 3
    invoke-virtual {p1}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

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

    .line 1
    invoke-static {}, Lcom/connectsdk/service/command/ServiceCommandError;->notSupported()Lcom/connectsdk/service/command/ServiceCommandError;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

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
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/connectsdk/service/command/ServiceCommand;

    const-string v2, "ssap://media.controls/rewind"

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, v6

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Lorg/json/JSONObject;ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 2
    invoke-virtual {v6}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

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

    const-string v0, "RIGHT"

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/connectsdk/service/WebOSTVService;->sendSpecialKey(Ljava/lang/String;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method

.method public scroll(DD)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/WebOSTVService;->mouseSocket:Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection;->scroll(DD)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/connectsdk/service/WebOSTVService$33;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/connectsdk/service/WebOSTVService$33;-><init>(Lcom/connectsdk/service/WebOSTVService;DD)V

    invoke-direct {p0, v0}, Lcom/connectsdk/service/WebOSTVService;->connectMouse(Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection$WebOSTVMouseSocketListener;)V

    :goto_0
    return-void
.end method

.method public scroll(Landroid/graphics/PointF;)V
    .locals 4

    .line 4
    iget v0, p1, Landroid/graphics/PointF;->x:F

    float-to-double v0, v0

    iget p1, p1, Landroid/graphics/PointF;->y:F

    float-to-double v2, p1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/connectsdk/service/WebOSTVService;->scroll(DD)V

    return-void
.end method

.method public secureAccessTest(Lcom/connectsdk/service/WebOSTVService$SecureAccessTestListener;)V
    .locals 6

    .line 1
    new-instance v5, Lcom/connectsdk/service/WebOSTVService$47;

    invoke-direct {v5, p0, p1}, Lcom/connectsdk/service/WebOSTVService$47;-><init>(Lcom/connectsdk/service/WebOSTVService;Lcom/connectsdk/service/WebOSTVService$SecureAccessTestListener;)V

    .line 2
    new-instance p1, Lcom/connectsdk/service/command/ServiceCommand;

    const-string v2, "ssap://com.webos.service.secondscreen.gateway/test/secure"

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Lorg/json/JSONObject;ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 3
    invoke-virtual {p1}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

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
    iget-object v0, p0, Lcom/connectsdk/service/WebOSTVService;->socket:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->sendCommand(Lcom/connectsdk/service/command/ServiceCommand;)V

    :cond_0
    return-void
.end method

.method public sendDelete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/WebOSTVService;->keyboardInput:Lcom/connectsdk/service/webos/WebOSTVKeyboardInput;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/connectsdk/service/webos/WebOSTVKeyboardInput;->sendDel()V

    :cond_0
    return-void
.end method

.method public sendEnter()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/WebOSTVService;->keyboardInput:Lcom/connectsdk/service/webos/WebOSTVKeyboardInput;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/connectsdk/service/webos/WebOSTVKeyboardInput;->sendEnter()V

    :cond_0
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
    sget-object v0, Lcom/connectsdk/service/WebOSTVService$50;->$SwitchMap$com$connectsdk$service$capability$KeyControl$KeyCode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p1, "ENTER"

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/connectsdk/service/WebOSTVService;->sendSpecialKey(Ljava/lang/String;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    goto :goto_0

    :pswitch_1
    const-string p1, "DASH"

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/connectsdk/service/WebOSTVService;->sendSpecialKey(Ljava/lang/String;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    goto :goto_1

    .line 4
    :pswitch_2
    invoke-virtual {p1}, Lcom/connectsdk/service/capability/KeyControl$KeyCode;->getCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/connectsdk/service/WebOSTVService;->sendSpecialKey(Ljava/lang/String;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    goto :goto_1

    :goto_0
    const/4 p1, 0x0

    const/4 v0, 0x0

    const-string v1, "The keycode is not available"

    .line 5
    invoke-static {p1, v1, v0, p2}, Lcom/shabakaty/downloader/ww;->a(ILjava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public sendMessage(Ljava/lang/String;Lcom/connectsdk/service/sessions/LaunchSession;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/connectsdk/service/sessions/LaunchSession;",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 18
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/connectsdk/service/WebOSTVService;->sendMessage(Ljava/lang/Object;Lcom/connectsdk/service/sessions/LaunchSession;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 p2, 0x0

    const-string v0, "Cannot ic_send a null message"

    .line 20
    invoke-static {p1, v0, p2, p3}, Lcom/shabakaty/downloader/ww;->a(ILjava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    :goto_0
    return-void
.end method

.method public sendMessage(Lorg/json/JSONObject;Lcom/connectsdk/service/sessions/LaunchSession;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/connectsdk/service/sessions/LaunchSession;",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 21
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/connectsdk/service/WebOSTVService;->sendMessage(Ljava/lang/Object;Lcom/connectsdk/service/sessions/LaunchSession;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 p2, 0x0

    const-string v0, "Cannot ic_send a null message"

    .line 23
    invoke-static {p1, v0, p2, p3}, Lcom/shabakaty/downloader/ww;->a(ILjava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    :goto_0
    return-void
.end method

.method public sendPairingKey(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/WebOSTVService;->socket:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->sendPairingKey(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public sendText(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/WebOSTVService;->keyboardInput:Lcom/connectsdk/service/webos/WebOSTVKeyboardInput;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/connectsdk/service/webos/WebOSTVKeyboardInput;->addToQueue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public set3DEnabled(ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string p1, "ssap://com.webos.service.tv.display/set3DOn"

    goto :goto_0

    :cond_0
    const-string p1, "ssap://com.webos.service.tv.display/set3DOff"

    :goto_0
    move-object v2, p1

    .line 1
    new-instance p1, Lcom/connectsdk/service/command/ServiceCommand;

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p1

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Lorg/json/JSONObject;ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 2
    invoke-virtual {p1}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-void
.end method

.method public setChannel(Lcom/connectsdk/core/ChannelInfo;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/core/ChannelInfo;",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "channelInfo must not be null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :try_start_0
    invoke-virtual {p1}, Lcom/connectsdk/core/ChannelInfo;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "channelId"

    .line 4
    invoke-virtual {p1}, Lcom/connectsdk/core/ChannelInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/connectsdk/core/ChannelInfo;->getNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "channelNumber"

    .line 6
    invoke-virtual {p1}, Lcom/connectsdk/core/ChannelInfo;->getNumber()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 8
    :cond_1
    :goto_0
    new-instance p1, Lcom/connectsdk/service/command/ServiceCommand;

    const/4 v5, 0x1

    const-string v3, "ssap://tv/openChannel"

    move-object v1, p1

    move-object v2, p0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Lorg/json/JSONObject;ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 9
    invoke-virtual {p1}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-void
.end method

.method public setChannelById(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/connectsdk/service/WebOSTVService;->setChannelById(Ljava/lang/String;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method

.method public setChannelById(Ljava/lang/String;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "channelId"

    .line 3
    invoke-virtual {v3, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 5
    :goto_0
    new-instance p1, Lcom/connectsdk/service/command/ServiceCommand;

    const/4 v4, 0x1

    const-string v2, "ssap://tv/openChannel"

    move-object v0, p1

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Lorg/json/JSONObject;ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 6
    invoke-virtual {p1}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-void
.end method

.method public setExternalInput(Lcom/connectsdk/core/ExternalInputInfo;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 6
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
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/connectsdk/core/ExternalInputInfo;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "inputId"

    .line 3
    invoke-virtual {p1}, Lcom/connectsdk/core/ExternalInputInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Lcom/connectsdk/core/Util;->T:Ljava/lang/String;

    const-string v0, "ExternalInputInfo has no id"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 6
    :goto_0
    new-instance p1, Lcom/connectsdk/service/command/ServiceCommand;

    const/4 v4, 0x1

    const-string v2, "ssap://tv/switchInput"

    move-object v0, p1

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Lorg/json/JSONObject;ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 7
    invoke-virtual {p1}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-void
.end method

.method public setMute(ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "mute"

    .line 2
    invoke-virtual {v3, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 4
    :goto_0
    new-instance p1, Lcom/connectsdk/service/command/ServiceCommand;

    const/4 v4, 0x1

    const-string v2, "ssap://audio/setMute"

    move-object v0, p1

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Lorg/json/JSONObject;ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 5
    invoke-virtual {p1}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-void
.end method

.method public setPairingType(Lcom/connectsdk/service/DeviceService$PairingType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/DeviceService;->pairingType:Lcom/connectsdk/service/DeviceService$PairingType;

    return-void
.end method

.method public setPermissions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/WebOSTVService;->permissions:Ljava/util/List;

    .line 2
    iget-object p1, p0, Lcom/connectsdk/service/DeviceService;->serviceConfig:Lcom/connectsdk/service/config/ServiceConfig;

    check-cast p1, Lcom/connectsdk/service/config/WebOSTVServiceConfig;

    .line 3
    invoke-virtual {p1}, Lcom/connectsdk/service/config/WebOSTVServiceConfig;->getClientKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Lcom/connectsdk/service/config/WebOSTVServiceConfig;->setClientKey(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/connectsdk/service/WebOSTVService;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    sget-object p1, Lcom/connectsdk/core/Util;->T:Ljava/lang/String;

    const-string v0, "Permissions changed -- you will need to re-pair to the TV."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-virtual {p0}, Lcom/connectsdk/service/WebOSTVService;->disconnect()V

    :cond_0
    return-void
.end method

.method public setPlayMode(Lcom/connectsdk/service/capability/PlaylistControl$PlayMode;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/PlaylistControl$PlayMode;",
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

.method public setServiceDescription(Lcom/connectsdk/service/config/ServiceDescription;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/connectsdk/service/DeviceService;->setServiceDescription(Lcom/connectsdk/service/config/ServiceDescription;)V

    .line 2
    iget-object v0, p0, Lcom/connectsdk/service/DeviceService;->serviceDescription:Lcom/connectsdk/service/config/ServiceDescription;

    invoke-virtual {v0}, Lcom/connectsdk/service/config/ServiceDescription;->getVersion()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/connectsdk/service/DeviceService;->serviceDescription:Lcom/connectsdk/service/config/ServiceDescription;

    invoke-virtual {v0}, Lcom/connectsdk/service/config/ServiceDescription;->getResponseHeaders()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/connectsdk/service/config/ServiceDescription;->getResponseHeaders()Ljava/util/Map;

    move-result-object p1

    const-string v0, "Server"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v1, " "

    .line 4
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v0

    const-string v0, "/"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 6
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object p1, p1, v0

    .line 7
    iget-object v0, p0, Lcom/connectsdk/service/DeviceService;->serviceDescription:Lcom/connectsdk/service/config/ServiceDescription;

    invoke-virtual {v0, p1}, Lcom/connectsdk/service/config/ServiceDescription;->setVersion(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/connectsdk/service/WebOSTVService;->updateCapabilities()V

    :cond_0
    return-void
.end method

.method public setVolume(FLcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p1, p1, v0

    .line 3
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    :try_start_0
    const-string v0, "volume"

    .line 4
    invoke-virtual {v3, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 6
    :goto_0
    new-instance p1, Lcom/connectsdk/service/command/ServiceCommand;

    const/4 v4, 0x1

    const-string v2, "ssap://audio/setVolume"

    move-object v0, p1

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Lorg/json/JSONObject;ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 7
    invoke-virtual {p1}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-void
.end method

.method public setVolume(I)V
    .locals 1

    int-to-float p1, p1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/connectsdk/service/WebOSTVService;->setVolume(FLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method

.method public showClickableToastForApp(Ljava/lang/String;Lcom/connectsdk/core/AppInfo;Lorg/json/JSONObject;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/connectsdk/core/AppInfo;",
            "Lorg/json/JSONObject;",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/connectsdk/service/WebOSTVService;->showClickableToastForApp(Ljava/lang/String;Lcom/connectsdk/core/AppInfo;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method

.method public showClickableToastForApp(Ljava/lang/String;Lcom/connectsdk/core/AppInfo;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/connectsdk/core/AppInfo;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "message"

    .line 3
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p4, :cond_0

    const-string p1, "iconData"

    .line 4
    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "iconExtension"

    .line 5
    invoke-virtual {v0, p1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    if-eqz p2, :cond_2

    .line 6
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string p4, "appId"

    .line 7
    invoke-virtual {p2}, Lcom/connectsdk/core/AppInfo;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p3, :cond_1

    const-string p2, "params"

    .line 8
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string p2, "onClick"

    .line 9
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 11
    :cond_2
    :goto_0
    invoke-direct {p0, v0, p6}, Lcom/connectsdk/service/WebOSTVService;->sendToast(Lorg/json/JSONObject;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method

.method public showClickableToastForURL(Ljava/lang/String;Ljava/lang/String;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/connectsdk/service/WebOSTVService;->showClickableToastForURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method

.method public showClickableToastForURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "message"

    .line 3
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p3, :cond_0

    const-string p1, "iconData"

    .line 4
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "iconExtension"

    .line 5
    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    if-eqz p2, :cond_1

    .line 6
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string p3, "target"

    .line 7
    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "onClick"

    .line 8
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 10
    :cond_1
    :goto_0
    invoke-direct {p0, v0, p5}, Lcom/connectsdk/service/WebOSTVService;->sendToast(Lorg/json/JSONObject;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method

.method public showToast(Ljava/lang/String;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
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

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/connectsdk/service/WebOSTVService;->showToast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method

.method public showToast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "message"

    .line 3
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    const-string p1, "iconData"

    .line 4
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "iconExtension"

    .line 5
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 7
    :cond_0
    :goto_0
    invoke-direct {p0, v0, p4}, Lcom/connectsdk/service/WebOSTVService;->sendToast(Lorg/json/JSONObject;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method

.method public stop(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/connectsdk/service/command/ServiceCommand;

    const-string v2, "ssap://media.controls/stop"

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, v6

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Lorg/json/JSONObject;ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 2
    invoke-virtual {v6}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-void
.end method

.method public subscribe3DEnabled(Lcom/connectsdk/service/capability/TVControl$State3DModeListener;)Lcom/connectsdk/service/command/ServiceSubscription;
    .locals 1
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

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/connectsdk/service/WebOSTVService;->get3DEnabled(ZLcom/connectsdk/service/capability/TVControl$State3DModeListener;)Lcom/connectsdk/service/command/ServiceCommand;

    move-result-object p1

    check-cast p1, Lcom/connectsdk/service/command/ServiceSubscription;

    return-object p1
.end method

.method public subscribeAppState(Lcom/connectsdk/service/sessions/LaunchSession;Lcom/connectsdk/service/capability/Launcher$AppStateListener;)Lcom/connectsdk/service/command/ServiceSubscription;
    .locals 1
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

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0, p1, p2}, Lcom/connectsdk/service/WebOSTVService;->getAppState(ZLcom/connectsdk/service/sessions/LaunchSession;Lcom/connectsdk/service/capability/Launcher$AppStateListener;)Lcom/connectsdk/service/command/ServiceCommand;

    move-result-object p1

    check-cast p1, Lcom/connectsdk/service/command/URLServiceSubscription;

    return-object p1
.end method

.method public subscribeChannelCurrentProgramInfo(Lcom/connectsdk/service/capability/TVControl$ProgramInfoListener;)Lcom/connectsdk/service/command/ServiceSubscription;
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

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/connectsdk/service/WebOSTVService;->getChannelCurrentProgramInfo(ZLcom/connectsdk/service/capability/TVControl$ProgramInfoListener;)Lcom/connectsdk/service/command/ServiceCommand;

    move-result-object p1

    check-cast p1, Lcom/connectsdk/service/command/ServiceSubscription;

    return-object p1
.end method

.method public subscribeChannelList(Lcom/connectsdk/service/capability/TVControl$ChannelListListener;)Lcom/connectsdk/service/command/ServiceSubscription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/TVControl$ChannelListListener;",
            ")",
            "Lcom/connectsdk/service/command/ServiceSubscription<",
            "Lcom/connectsdk/service/capability/TVControl$ChannelListListener;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/connectsdk/service/WebOSTVService;->getChannelList(ZLcom/connectsdk/service/capability/TVControl$ChannelListListener;)Lcom/connectsdk/service/command/ServiceCommand;

    move-result-object p1

    check-cast p1, Lcom/connectsdk/service/command/ServiceSubscription;

    return-object p1
.end method

.method public subscribeCurrentChannel(Lcom/connectsdk/service/capability/TVControl$ChannelListener;)Lcom/connectsdk/service/command/ServiceSubscription;
    .locals 1
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

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/connectsdk/service/WebOSTVService;->getCurrentChannel(ZLcom/connectsdk/service/capability/TVControl$ChannelListener;)Lcom/connectsdk/service/command/ServiceCommand;

    move-result-object p1

    check-cast p1, Lcom/connectsdk/service/command/ServiceSubscription;

    return-object p1
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

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0, p1, p2}, Lcom/connectsdk/service/WebOSTVService;->isWebAppPinned(ZLjava/lang/String;Lcom/connectsdk/service/sessions/WebAppSession$WebAppPinStatusListener;)Lcom/connectsdk/service/command/ServiceCommand;

    move-result-object p1

    check-cast p1, Lcom/connectsdk/service/command/URLServiceSubscription;

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

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/connectsdk/service/WebOSTVService;->getMuteStatus(ZLcom/connectsdk/service/capability/VolumeControl$MuteListener;)Lcom/connectsdk/service/command/ServiceCommand;

    move-result-object p1

    check-cast p1, Lcom/connectsdk/service/command/ServiceSubscription;

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

    .line 2
    new-instance p1, Lcom/connectsdk/service/command/NotSupportedServiceSubscription;

    invoke-direct {p1}, Lcom/connectsdk/service/command/NotSupportedServiceSubscription;-><init>()V

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

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/connectsdk/service/WebOSTVService;->getProgramList(ZLcom/connectsdk/service/capability/TVControl$ProgramListListener;)Lcom/connectsdk/service/command/ServiceCommand;

    move-result-object p1

    check-cast p1, Lcom/connectsdk/service/command/ServiceSubscription;

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

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/connectsdk/service/WebOSTVService;->getRunningApp(ZLcom/connectsdk/service/capability/Launcher$AppInfoListener;)Lcom/connectsdk/service/command/ServiceCommand;

    move-result-object p1

    check-cast p1, Lcom/connectsdk/service/command/URLServiceSubscription;

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
    new-instance v0, Lcom/connectsdk/service/webos/WebOSTVKeyboardInput;

    invoke-direct {v0, p0}, Lcom/connectsdk/service/webos/WebOSTVKeyboardInput;-><init>(Lcom/connectsdk/service/WebOSTVService;)V

    iput-object v0, p0, Lcom/connectsdk/service/WebOSTVService;->keyboardInput:Lcom/connectsdk/service/webos/WebOSTVKeyboardInput;

    .line 2
    invoke-virtual {v0, p1}, Lcom/connectsdk/service/webos/WebOSTVKeyboardInput;->connect(Lcom/connectsdk/service/capability/TextInputControl$TextInputStatusListener;)Lcom/connectsdk/service/command/URLServiceSubscription;

    move-result-object p1

    return-object p1
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

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/connectsdk/service/WebOSTVService;->getVolume(ZLcom/connectsdk/service/capability/VolumeControl$VolumeListener;)Lcom/connectsdk/service/command/ServiceCommand;

    move-result-object p1

    check-cast p1, Lcom/connectsdk/service/command/ServiceSubscription;

    return-object p1
.end method

.method public subscribeVolumeStatus(Lcom/connectsdk/service/capability/VolumeControl$VolumeStatusListener;)Lcom/connectsdk/service/command/ServiceSubscription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/VolumeControl$VolumeStatusListener;",
            ")",
            "Lcom/connectsdk/service/command/ServiceSubscription<",
            "Lcom/connectsdk/service/capability/VolumeControl$VolumeStatusListener;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/connectsdk/service/WebOSTVService;->getVolumeStatus(ZLcom/connectsdk/service/capability/VolumeControl$VolumeStatusListener;)Lcom/connectsdk/service/command/ServiceCommand;

    move-result-object p1

    check-cast p1, Lcom/connectsdk/service/command/ServiceSubscription;

    return-object p1
.end method

.method public unPinWebApp(Ljava/lang/String;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 7
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

    goto :goto_1

    .line 2
    :cond_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "webAppId"

    .line 3
    invoke-virtual {v4, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 5
    :goto_0
    new-instance v6, Lcom/connectsdk/service/WebOSTVService$41;

    invoke-direct {v6, p0, p2}, Lcom/connectsdk/service/WebOSTVService$41;-><init>(Lcom/connectsdk/service/WebOSTVService;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 6
    new-instance p1, Lcom/connectsdk/service/command/URLServiceSubscription;

    const/4 v5, 0x1

    const-string v3, "ssap://webapp/removePinnedWebApp"

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/connectsdk/service/command/URLServiceSubscription;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Lorg/json/JSONObject;ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 7
    invoke-virtual {p1}, Lcom/connectsdk/service/command/URLServiceSubscription;->send()V

    return-void

    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    .line 8
    new-instance p1, Lcom/connectsdk/service/command/ServiceCommandError;

    const/4 v0, -0x1

    const/4 v1, 0x0

    const-string v2, "You must provide a valid web app id"

    invoke-direct {p1, v0, v2, v1}, Lcom/connectsdk/service/command/ServiceCommandError;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p2, p1}, Lcom/connectsdk/service/capability/listeners/ErrorListener;->onError(Lcom/connectsdk/service/command/ServiceCommandError;)V

    :cond_2
    return-void
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
    iget-object v0, p0, Lcom/connectsdk/service/WebOSTVService;->socket:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->unsubscribe(Lcom/connectsdk/service/command/URLServiceSubscription;)V

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

    const-string v0, "UP"

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/connectsdk/service/WebOSTVService;->sendSpecialKey(Ljava/lang/String;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method

.method public updateCapabilities()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v1, Lcom/connectsdk/service/capability/VolumeControl;->Capabilities:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 3
    sget-object v1, Lcom/connectsdk/service/capability/MediaPlayer;->Capabilities:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 4
    invoke-static {}, Lcom/connectsdk/discovery/DiscoveryManager;->getInstance()Lcom/connectsdk/discovery/DiscoveryManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/connectsdk/discovery/DiscoveryManager;->getPairingLevel()Lcom/connectsdk/discovery/DiscoveryManager$PairingLevel;

    move-result-object v2

    sget-object v3, Lcom/connectsdk/discovery/DiscoveryManager$PairingLevel;->ON:Lcom/connectsdk/discovery/DiscoveryManager$PairingLevel;

    if-ne v2, v3, :cond_0

    .line 5
    sget-object v2, Lcom/connectsdk/service/capability/TextInputControl;->Capabilities:[Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 6
    sget-object v2, Lcom/connectsdk/service/capability/MouseControl;->Capabilities:[Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 7
    sget-object v2, Lcom/connectsdk/service/capability/KeyControl;->Capabilities:[Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 8
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 9
    sget-object v1, Lcom/connectsdk/service/capability/Launcher;->Capabilities:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 10
    sget-object v1, Lcom/connectsdk/service/capability/TVControl;->Capabilities:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 11
    sget-object v1, Lcom/connectsdk/service/capability/ExternalInputControl;->Capabilities:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 12
    sget-object v1, Lcom/connectsdk/service/capability/ToastControl;->Capabilities:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    const-string v1, "PowerControl.Off"

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v1, "Launcher.App"

    const-string v2, "Launcher.App.Params"

    const-string v3, "Launcher.App.Close"

    const-string v4, "Launcher.Browser"

    .line 14
    invoke-static {v0, v1, v2, v3, v4}, Lcom/shabakaty/downloader/a5;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Launcher.Browser.Params"

    const-string v2, "Launcher.Hulu"

    const-string v3, "Launcher.Netflix"

    const-string v4, "Launcher.Netflix.Params"

    .line 15
    invoke-static {v0, v1, v2, v3, v4}, Lcom/shabakaty/downloader/a5;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Launcher.YouTube"

    const-string v2, "Launcher.YouTube.Params"

    const-string v3, "Launcher.AppStore"

    const-string v4, "Launcher.AppStore.Params"

    .line 16
    invoke-static {v0, v1, v2, v3, v4}, Lcom/shabakaty/downloader/a5;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Launcher.AppState"

    .line 17
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Launcher.AppState.Subscribe"

    .line 18
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    :goto_0
    iget-object v1, p0, Lcom/connectsdk/service/DeviceService;->serviceDescription:Lcom/connectsdk/service/config/ServiceDescription;

    if-eqz v1, :cond_3

    .line 20
    invoke-virtual {v1}, Lcom/connectsdk/service/config/ServiceDescription;->getVersion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/connectsdk/service/DeviceService;->serviceDescription:Lcom/connectsdk/service/config/ServiceDescription;

    .line 21
    invoke-virtual {v1}, Lcom/connectsdk/service/config/ServiceDescription;->getVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "4.0.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/connectsdk/service/DeviceService;->serviceDescription:Lcom/connectsdk/service/config/ServiceDescription;

    .line 22
    invoke-virtual {v1}, Lcom/connectsdk/service/config/ServiceDescription;->getVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "4.0.1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v1, "WebAppLauncher.Launch"

    const-string v2, "WebAppLauncher.Launch.Params"

    const-string v3, "MediaControl.Play"

    const-string v4, "MediaControl.Pause"

    .line 23
    invoke-static {v0, v1, v2, v3, v4}, Lcom/shabakaty/downloader/a5;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MediaControl.Stop"

    const-string v2, "MediaControl.Seek"

    const-string v3, "MediaControl.Position"

    const-string v4, "MediaControl.Duration"

    .line 24
    invoke-static {v0, v1, v2, v3, v4}, Lcom/shabakaty/downloader/a5;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MediaControl.PlayState"

    .line 25
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "WebAppLauncher.Close"

    .line 26
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    invoke-direct {p0}, Lcom/connectsdk/service/WebOSTVService;->getDLNAService()Lcom/connectsdk/service/DeviceService;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, "MediaPlayer.Subtitle.SRT"

    .line 28
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 29
    :cond_2
    sget-object v1, Lcom/connectsdk/service/capability/WebAppLauncher;->Capabilities:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 30
    sget-object v1, Lcom/connectsdk/service/capability/MediaControl;->Capabilities:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    const-string v1, "MediaPlayer.Subtitle.WebVTT"

    const-string v2, "PlaylistControl.JumpToTrack"

    const-string v3, "PlaylistControl.Next"

    const-string v4, "PlaylistControl.Previous"

    .line 31
    invoke-static {v0, v1, v2, v3, v4}, Lcom/shabakaty/downloader/a5;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MediaPlayer.Loop"

    .line 32
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_3
    :goto_1
    invoke-virtual {p0, v0}, Lcom/connectsdk/service/DeviceService;->setCapabilities(Ljava/util/List;)V

    return-void
.end method

.method public volumeDown()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/connectsdk/service/WebOSTVService;->volumeDown(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method

.method public volumeDown(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2
    new-instance v6, Lcom/connectsdk/service/command/ServiceCommand;

    const-string v2, "ssap://audio/volumeDown"

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, v6

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Lorg/json/JSONObject;ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 3
    invoke-virtual {v6}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-void
.end method

.method public volumeUp()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/connectsdk/service/WebOSTVService;->volumeUp(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method

.method public volumeUp(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2
    new-instance v6, Lcom/connectsdk/service/command/ServiceCommand;

    const-string v2, "ssap://audio/volumeUp"

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, v6

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Lorg/json/JSONObject;ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 3
    invoke-virtual {v6}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-void
.end method
