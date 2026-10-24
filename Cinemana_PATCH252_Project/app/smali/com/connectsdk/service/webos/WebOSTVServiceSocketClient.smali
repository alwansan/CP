.class public Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;
.super Lcom/shabakaty/downloader/w55;
.source "WebOSTVServiceSocketClient.java"

# interfaces
.implements Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$WebOSTVServiceSocketClientListener;,
        Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$State;
    }
.end annotation


# static fields
.field public static final PORT:I = 0xbb9

.field public static final Public_Key:Ljava/lang/String; = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA2At7fSUHuMw6bm/z3Q+X4oY9KpDa1s06\nmht9vNmSkZE5xMo9asOtZAWLLbJLxifY6qz6LWKgNw4Pyk6HVTLFdj4jrV//gNGQvYtCp3HRriqg\n2YoceBNG59+SW3xNzuhUqy5/nerQPfNQiz9z9RqtGj/YWItlJcKrNOBecNmHc7Xmu+3yPN6kD1G2\n6uU8wPBqzMdqFpPcubedIOmh4nNa2sNkfvMkbR4Pk/YupsDpic56dMxX0Twvg6SiaKGjv8NO9Lcv\nhLt2dR2XXi/z2F6uVjP5oYPvlSAK9GHVo96khpafKGPvIwPSSGtlHI4is/yT7WEeLuQs5FD/vAs9\neqQNkQIDAQAB\n"

.field public static final WEBOS_PAIRING_COMBINED:Ljava/lang/String; = "COMBINED"

.field public static final WEBOS_PAIRING_PIN:Ljava/lang/String; = "PIN"

.field public static final WEBOS_PAIRING_PROMPT:Ljava/lang/String; = "PROMPT"

.field public static verification_status:Z


# instance fields
.field public commandQueue:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/connectsdk/service/command/ServiceCommand<",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public customTrustManager:Lcom/connectsdk/service/webos/WebOSTVTrustManager;

.field public mConnectSucceeded:Z

.field public mConnected:Ljava/lang/Boolean;

.field public mListener:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$WebOSTVServiceSocketClientListener;

.field public mService:Lcom/connectsdk/service/WebOSTVService;

.field public manifest:Lorg/json/JSONObject;

.field public nextRequestId:I

.field public requests:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/connectsdk/service/command/ServiceCommand<",
            "+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public state:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$State;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/WebOSTVService;Ljava/net/URI;)V
    .locals 1

    .line 1
    invoke-direct {p0, p2}, Lcom/shabakaty/downloader/w55;-><init>(Ljava/net/URI;)V

    const/4 p2, 0x1

    .line 2
    iput p2, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->nextRequestId:I

    .line 3
    sget-object p2, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$State;->INITIAL:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$State;

    iput-object p2, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->state:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$State;

    .line 4
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->commandQueue:Ljava/util/LinkedHashSet;

    .line 5
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->requests:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->mConnectSucceeded:Z

    .line 7
    iput-object p1, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->mService:Lcom/connectsdk/service/WebOSTVService;

    .line 8
    iput-object p2, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->state:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$State;

    .line 9
    invoke-direct {p0}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->setDefaultManifest()V

    return-void
.end method

.method public static synthetic access$000(Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;Ljava/lang/String;)Lcom/connectsdk/service/DeviceService$PairingType;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->getPairingTypeFromString(Ljava/lang/String;)Lcom/connectsdk/service/DeviceService$PairingType;

    move-result-object p0

    return-object p0
.end method

.method private convertStringListToJSONArray(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private exportCertificateToPEM(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/security/cert/CertificateEncodingException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private getPairingTypeFromString(Ljava/lang/String;)Lcom/connectsdk/service/DeviceService$PairingType;
    .locals 1

    const-string v0, "PROMPT"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lcom/connectsdk/service/DeviceService$PairingType;->FIRST_SCREEN:Lcom/connectsdk/service/DeviceService$PairingType;

    return-object p1

    :cond_0
    const-string v0, "PIN"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object p1, Lcom/connectsdk/service/DeviceService$PairingType;->PIN_CODE:Lcom/connectsdk/service/DeviceService$PairingType;

    return-object p1

    :cond_1
    const-string v0, "COMBINED"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    sget-object p1, Lcom/connectsdk/service/DeviceService$PairingType;->MIXED:Lcom/connectsdk/service/DeviceService$PairingType;

    return-object p1

    .line 7
    :cond_2
    sget-object p1, Lcom/connectsdk/service/DeviceService$PairingType;->NONE:Lcom/connectsdk/service/DeviceService$PairingType;

    return-object p1
.end method

.method private getPairingTypeString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->mService:Lcom/connectsdk/service/WebOSTVService;

    invoke-virtual {v0}, Lcom/connectsdk/service/DeviceService;->getPairingType()Lcom/connectsdk/service/DeviceService$PairingType;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    sget-object v1, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$4;->$SwitchMap$com$connectsdk$service$DeviceService$PairingType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "COMBINED"

    return-object v0

    :cond_1
    const-string v0, "PIN"

    return-object v0

    :cond_2
    const-string v0, "PROMPT"

    return-object v0

    :cond_3
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getURI(Lcom/connectsdk/service/WebOSTVService;)Ljava/net/URI;
    .locals 1

    const-string v0, "wss://"

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/connectsdk/service/DeviceService;->getServiceDescription()Lcom/connectsdk/service/config/ServiceDescription;

    move-result-object p0

    invoke-virtual {p0}, Lcom/connectsdk/service/config/ServiceDescription;->getIpAddress()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0xbb9

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/net/URISyntaxException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private handleConnectionLost(ZLjava/lang/Exception;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    goto :goto_1

    .line 1
    :cond_1
    :goto_0
    new-instance p1, Lcom/connectsdk/service/command/ServiceCommandError;

    const-string v2, "conneciton error"

    invoke-direct {p1, v1, v2, p2}, Lcom/connectsdk/service/command/ServiceCommandError;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .line 2
    :goto_1
    iget-object p2, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->mListener:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$WebOSTVServiceSocketClientListener;

    if-eqz p2, :cond_2

    .line 3
    invoke-interface {p2, p1}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$WebOSTVServiceSocketClientListener;->onCloseWithError(Lcom/connectsdk/service/command/ServiceCommandError;)V

    :cond_2
    const/4 p1, 0x0

    .line 4
    :goto_2
    iget-object p2, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->requests:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_4

    .line 5
    iget-object p2, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->requests:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/connectsdk/service/command/ServiceCommand;

    if-eqz p2, :cond_3

    .line 6
    invoke-virtual {p2}, Lcom/connectsdk/service/command/ServiceCommand;->getResponseListener()Lcom/connectsdk/service/capability/listeners/ResponseListener;

    move-result-object p2

    const-string v2, "connection lost"

    invoke-static {v1, v2, v0, p2}, Lcom/shabakaty/downloader/ww;->a(ILjava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 7
    :cond_4
    invoke-virtual {p0}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->clearRequests()V

    return-void
.end method

.method private helloTV()V
    .locals 14

    .line 1
    invoke-static {}, Lcom/connectsdk/discovery/DiscoveryManager;->getInstance()Lcom/connectsdk/discovery/DiscoveryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/connectsdk/discovery/DiscoveryManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 4
    sget-object v3, Lcom/connectsdk/discovery/DiscoveryManager;->CONNECT_SDK_VERSION:Ljava/lang/String;

    .line 5
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 6
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "window"

    .line 7
    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 8
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 9
    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v7

    .line 10
    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v6

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    .line 11
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x0

    aput-object v7, v8, v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v8, v7

    const-string v6, "%dx%d"

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 12
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v7, 0x0

    :goto_0
    if-eqz v7, :cond_0

    .line 13
    invoke-virtual {v1, v7}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_1

    :cond_0
    const-string v1, "(unknown)"

    :goto_1
    check-cast v1, Ljava/lang/String;

    .line 14
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 15
    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v0

    .line 16
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v8, "sdkVersion"

    .line 17
    invoke-virtual {v7, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "deviceModel"

    .line 18
    invoke-virtual {v7, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "OSVersion"

    .line 19
    invoke-virtual {v7, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "resolution"

    .line 20
    invoke-virtual {v7, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "appId"

    .line 21
    invoke-virtual {v7, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "appName"

    .line 22
    invoke-virtual {v7, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "appRegion"

    .line 23
    invoke-virtual {v7, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 24
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 25
    :goto_2
    iget v0, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->nextRequestId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->nextRequestId:I

    .line 26
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    :try_start_2
    const-string v1, "id"

    .line 27
    invoke-virtual {v11, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "type"

    const-string v1, "hello"

    .line 28
    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "payload"

    .line 29
    invoke-virtual {v11, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 30
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 31
    :goto_3
    new-instance v0, Lcom/connectsdk/service/command/ServiceCommand;

    const/4 v10, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object v8, v0

    move-object v9, p0

    invoke-direct/range {v8 .. v13}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Lorg/json/JSONObject;ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 32
    invoke-virtual {p0, v0}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->sendCommandImmediately(Lcom/connectsdk/service/command/ServiceCommand;)V

    return-void
.end method

.method public static isInteger(Ljava/lang/String;)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private loadCertificateFromPEM(Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .locals 3

    :try_start_0
    const-string v0, "X.509"

    .line 1
    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/io/ByteArrayInputStream;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 3
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/security/cert/CertificateException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private setDefaultManifest()V
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->manifest:Lorg/json/JSONObject;

    .line 2
    iget-object v0, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->mService:Lcom/connectsdk/service/WebOSTVService;

    invoke-virtual {v0}, Lcom/connectsdk/service/WebOSTVService;->getPermissions()Ljava/util/List;

    move-result-object v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->manifest:Lorg/json/JSONObject;

    const-string v2, "manifestVersion"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4
    iget-object v1, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->manifest:Lorg/json/JSONObject;

    const-string v2, "permissions"

    invoke-direct {p0, v0}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->convertStringListToJSONArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private setSSLContext(Ljavax/net/ssl/SSLContext;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/w55;->setSocket(Ljava/net/Socket;)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/r1;->setConnectionLostTimeout(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public clearRequests()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->requests:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    :cond_0
    return-void
.end method

.method public connect()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->state:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$State;

    sget-object v1, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$State;->INITIAL:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$State;

    if-eq v0, v1, :cond_0

    .line 3
    sget-object v0, Lcom/connectsdk/core/Util;->T:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "already connecting; not trying to connect again: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->state:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_0
    sget-object v0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$State;->CONNECTING:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$State;

    iput-object v0, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->state:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$State;

    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {p0}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->setupSSL()V

    .line 8
    invoke-super {p0}, Lcom/shabakaty/downloader/w55;->connect()V

    return-void

    :catchall_0
    move-exception v0

    .line 9
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public disconnect()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->disconnectWithError(Lcom/connectsdk/service/command/ServiceCommandError;)V

    return-void
.end method

.method public disconnectWithError(Lcom/connectsdk/service/command/ServiceCommandError;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/w55;->close()V

    .line 2
    sget-object v0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$State;->INITIAL:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$State;

    iput-object v0, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->state:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$State;

    .line 3
    iget-object v0, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->mListener:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$WebOSTVServiceSocketClientListener;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$WebOSTVServiceSocketClientListener;->onCloseWithError(Lcom/connectsdk/service/command/ServiceCommandError;)V

    :cond_0
    return-void
.end method

.method public getListener()Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$WebOSTVServiceSocketClientListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->mListener:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$WebOSTVServiceSocketClientListener;

    return-object v0
.end method

.method public getServerCertificate()Ljava/security/cert/X509Certificate;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->mService:Lcom/connectsdk/service/WebOSTVService;

    invoke-virtual {v0}, Lcom/connectsdk/service/DeviceService;->getServiceConfig()Lcom/connectsdk/service/config/ServiceConfig;

    move-result-object v0

    instance-of v0, v0, Lcom/connectsdk/service/config/WebOSTVServiceConfig;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->mService:Lcom/connectsdk/service/WebOSTVService;

    new-instance v1, Lcom/connectsdk/service/config/WebOSTVServiceConfig;

    invoke-virtual {v0}, Lcom/connectsdk/service/DeviceService;->getServiceConfig()Lcom/connectsdk/service/config/ServiceConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/connectsdk/service/config/ServiceConfig;->getServiceUUID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/connectsdk/service/config/WebOSTVServiceConfig;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/connectsdk/service/DeviceService;->setServiceConfig(Lcom/connectsdk/service/config/ServiceConfig;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->mService:Lcom/connectsdk/service/WebOSTVService;

    invoke-virtual {v0}, Lcom/connectsdk/service/DeviceService;->getServiceConfig()Lcom/connectsdk/service/config/ServiceConfig;

    move-result-object v0

    check-cast v0, Lcom/connectsdk/service/config/WebOSTVServiceConfig;

    invoke-virtual {v0}, Lcom/connectsdk/service/config/WebOSTVServiceConfig;->getServerCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getServerCertificateInString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->mService:Lcom/connectsdk/service/WebOSTVService;

    invoke-virtual {v0}, Lcom/connectsdk/service/DeviceService;->getServiceConfig()Lcom/connectsdk/service/config/ServiceConfig;

    move-result-object v0

    instance-of v0, v0, Lcom/connectsdk/service/config/WebOSTVServiceConfig;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->mService:Lcom/connectsdk/service/WebOSTVService;

    new-instance v1, Lcom/connectsdk/service/config/WebOSTVServiceConfig;

    invoke-virtual {v0}, Lcom/connectsdk/service/DeviceService;->getServiceConfig()Lcom/connectsdk/service/config/ServiceConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/connectsdk/service/config/ServiceConfig;->getServiceUUID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/connectsdk/service/config/WebOSTVServiceConfig;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/connectsdk/service/DeviceService;->setServiceConfig(Lcom/connectsdk/service/config/ServiceConfig;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->mService:Lcom/connectsdk/service/WebOSTVService;

    invoke-virtual {v0}, Lcom/connectsdk/service/DeviceService;->getServiceConfig()Lcom/connectsdk/service/config/ServiceConfig;

    move-result-object v0

    check-cast v0, Lcom/connectsdk/service/config/WebOSTVServiceConfig;

    invoke-virtual {v0}, Lcom/connectsdk/service/config/WebOSTVServiceConfig;->getServerCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->exportCertificateToPEM(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$State;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->state:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$State;

    return-object v0
.end method

.method public handleConnectError(Ljava/lang/Exception;)V
    .locals 4

    .line 1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "connect error: "

    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->mListener:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$WebOSTVServiceSocketClientListener;

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Lcom/connectsdk/service/command/ServiceCommandError;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "connection error"

    invoke-direct {v0, v1, v3, v2}, Lcom/connectsdk/service/command/ServiceCommandError;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$WebOSTVServiceSocketClientListener;->onFailWithError(Lcom/connectsdk/service/command/ServiceCommandError;)V

    :cond_0
    return-void
.end method

.method public handleConnected()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->helloTV()V

    return-void
.end method

.method public handleMessage(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->handleMessage(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public handleMessage(Lorg/json/JSONObject;)V
    .locals 10

    .line 4
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 5
    iget-object v1, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->mListener:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$WebOSTVServiceSocketClientListener;

    if-eqz v1, :cond_0

    .line 6
    invoke-interface {v1, p1}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$WebOSTVServiceSocketClientListener;->onReceiveMessage(Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v0, "type"

    .line 8
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "payload"

    .line 9
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "id"

    .line 10
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 11
    invoke-static {v3}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->isInteger(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 12
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 13
    :try_start_0
    iget-object v6, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->requests:Landroid/util/SparseArray;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/connectsdk/service/command/ServiceCommand;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v6, v5

    goto :goto_0

    :cond_2
    move-object v4, v5

    move-object v6, v4

    .line 14
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_3

    return-void

    :cond_3
    const-string v7, "response"

    .line 15
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, -0x1

    if-eqz v7, :cond_7

    if-eqz v6, :cond_6

    if-eqz v1, :cond_4

    .line 16
    invoke-virtual {v6}, Lcom/connectsdk/service/command/ServiceCommand;->getResponseListener()Lcom/connectsdk/service/capability/listeners/ResponseListener;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/connectsdk/core/Util;->postSuccess(Lcom/connectsdk/service/capability/listeners/ResponseListener;Ljava/lang/Object;)V

    goto :goto_1

    .line 17
    :cond_4
    invoke-virtual {v6}, Lcom/connectsdk/service/command/ServiceCommand;->getResponseListener()Lcom/connectsdk/service/capability/listeners/ResponseListener;

    move-result-object p1

    const-string v0, "JSON parse error"

    invoke-static {v8, v0, v5, p1}, Lcom/shabakaty/downloader/ww;->a(ILjava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 18
    :goto_1
    instance-of p1, v6, Lcom/connectsdk/service/command/URLServiceSubscription;

    if-nez p1, :cond_10

    .line 19
    instance-of p1, v1, Lorg/json/JSONObject;

    if-eqz p1, :cond_5

    check-cast v1, Lorg/json/JSONObject;

    const-string p1, "pairingType"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_10

    .line 20
    :cond_5
    iget-object p1, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->requests:Landroid/util/SparseArray;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->remove(I)V

    goto/16 :goto_4

    .line 21
    :cond_6
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "no matching request id: "

    const-string v2, ", payload: "

    invoke-static {v0, v3, v2}, Lcom/shabakaty/downloader/t3;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_7
    const-string v3, "registered"

    .line 22
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v7, 0x0

    if-eqz v3, :cond_a

    .line 23
    iget-object p1, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->mService:Lcom/connectsdk/service/WebOSTVService;

    invoke-virtual {p1}, Lcom/connectsdk/service/DeviceService;->getServiceConfig()Lcom/connectsdk/service/config/ServiceConfig;

    move-result-object p1

    instance-of p1, p1, Lcom/connectsdk/service/config/WebOSTVServiceConfig;

    if-nez p1, :cond_8

    .line 24
    iget-object p1, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->mService:Lcom/connectsdk/service/WebOSTVService;

    new-instance v0, Lcom/connectsdk/service/config/WebOSTVServiceConfig;

    invoke-virtual {p1}, Lcom/connectsdk/service/DeviceService;->getServiceConfig()Lcom/connectsdk/service/config/ServiceConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/connectsdk/service/config/ServiceConfig;->getServiceUUID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/connectsdk/service/config/WebOSTVServiceConfig;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/connectsdk/service/DeviceService;->setServiceConfig(Lcom/connectsdk/service/config/ServiceConfig;)V

    .line 25
    :cond_8
    instance-of p1, v1, Lorg/json/JSONObject;

    if-eqz p1, :cond_10

    .line 26
    check-cast v1, Lorg/json/JSONObject;

    const-string p1, "client-key"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 27
    iget-object v0, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->mService:Lcom/connectsdk/service/WebOSTVService;

    invoke-virtual {v0}, Lcom/connectsdk/service/DeviceService;->getServiceConfig()Lcom/connectsdk/service/config/ServiceConfig;

    move-result-object v0

    check-cast v0, Lcom/connectsdk/service/config/WebOSTVServiceConfig;

    invoke-virtual {v0, p1}, Lcom/connectsdk/service/config/WebOSTVServiceConfig;->setClientKey(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->sendVerification()V

    .line 29
    sget-boolean p1, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->verification_status:Z

    if-eqz p1, :cond_9

    .line 30
    iget-object p1, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->mService:Lcom/connectsdk/service/WebOSTVService;

    invoke-virtual {p1}, Lcom/connectsdk/service/DeviceService;->getServiceConfig()Lcom/connectsdk/service/config/ServiceConfig;

    move-result-object p1

    check-cast p1, Lcom/connectsdk/service/config/WebOSTVServiceConfig;

    iget-object v0, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->customTrustManager:Lcom/connectsdk/service/webos/WebOSTVTrustManager;

    invoke-virtual {v0}, Lcom/connectsdk/service/webos/WebOSTVTrustManager;->getLastCheckedCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/connectsdk/service/config/WebOSTVServiceConfig;->setServerCertificate(Ljava/security/cert/X509Certificate;)V

    .line 31
    invoke-virtual {p0}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->handleRegistered()V

    if-eqz v4, :cond_10

    .line 32
    iget-object p1, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->requests:Landroid/util/SparseArray;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->remove(I)V

    goto/16 :goto_4

    .line 33
    :cond_9
    sget-object p1, Lcom/connectsdk/core/Util;->T:Ljava/lang/String;

    const-string v0, "Certification Verification Failed"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object p1, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->mListener:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$WebOSTVServiceSocketClientListener;

    new-instance v0, Lcom/connectsdk/service/command/ServiceCommandError;

    const-string v1, "Certificate Registration failed"

    invoke-direct {v0, v7, v1, v5}, Lcom/connectsdk/service/command/ServiceCommandError;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$WebOSTVServiceSocketClientListener;->onRegistrationFailed(Lcom/connectsdk/service/command/ServiceCommandError;)V

    goto/16 :goto_4

    :cond_a
    const-string v3, "error"

    .line 35
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 36
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_b

    return-void

    :cond_b
    :try_start_1
    const-string v3, " "

    const/4 v9, 0x2

    .line 38
    invoke-virtual {v0, v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 39
    aget-object v3, v0, v7

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v3, 0x1

    .line 40
    aget-object v5, v0, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    if-eqz v1, :cond_c

    .line 42
    sget-object v0, Lcom/connectsdk/core/Util;->T:Ljava/lang/String;

    const-string v3, "Error Payload: "

    invoke-static {v3}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_c
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 44
    sget-object p1, Lcom/connectsdk/core/Util;->T:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error Desc: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_10

    .line 45
    invoke-virtual {v6}, Lcom/connectsdk/service/command/ServiceCommand;->getResponseListener()Lcom/connectsdk/service/capability/listeners/ResponseListener;

    move-result-object p1

    invoke-static {v8, v5, v1, p1}, Lcom/shabakaty/downloader/ww;->a(ILjava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 46
    instance-of p1, v6, Lcom/connectsdk/service/command/URLServiceSubscription;

    if-nez p1, :cond_10

    .line 47
    iget-object p1, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->requests:Landroid/util/SparseArray;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->remove(I)V

    goto/16 :goto_4

    :cond_d
    const-string p1, "hello"

    .line 48
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 49
    check-cast v1, Lorg/json/JSONObject;

    .line 50
    iget-object p1, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->mService:Lcom/connectsdk/service/WebOSTVService;

    invoke-virtual {p1}, Lcom/connectsdk/service/DeviceService;->getServiceConfig()Lcom/connectsdk/service/config/ServiceConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/connectsdk/service/config/ServiceConfig;->getServiceUUID()Ljava/lang/String;

    move-result-object p1

    const-string v0, "deviceUUID"

    if-eqz p1, :cond_e

    .line 51
    iget-object p1, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->mService:Lcom/connectsdk/service/WebOSTVService;

    invoke-virtual {p1}, Lcom/connectsdk/service/DeviceService;->getServiceConfig()Lcom/connectsdk/service/config/ServiceConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/connectsdk/service/config/ServiceConfig;->getServiceUUID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    .line 52
    iget-object p1, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->mService:Lcom/connectsdk/service/WebOSTVService;

    invoke-virtual {p1}, Lcom/connectsdk/service/DeviceService;->getServiceConfig()Lcom/connectsdk/service/config/ServiceConfig;

    move-result-object p1

    check-cast p1, Lcom/connectsdk/service/config/WebOSTVServiceConfig;

    invoke-virtual {p1, v5}, Lcom/connectsdk/service/config/WebOSTVServiceConfig;->setClientKey(Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->mService:Lcom/connectsdk/service/WebOSTVService;

    invoke-virtual {p1}, Lcom/connectsdk/service/DeviceService;->getServiceConfig()Lcom/connectsdk/service/config/ServiceConfig;

    move-result-object p1

    check-cast p1, Lcom/connectsdk/service/config/WebOSTVServiceConfig;

    invoke-virtual {p1, v5}, Lcom/connectsdk/service/config/WebOSTVServiceConfig;->setServerCertificate(Ljava/lang/String;)V

    .line 54
    iget-object p1, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->mService:Lcom/connectsdk/service/WebOSTVService;

    invoke-virtual {p1}, Lcom/connectsdk/service/DeviceService;->getServiceConfig()Lcom/connectsdk/service/config/ServiceConfig;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/connectsdk/service/config/ServiceConfig;->setServiceUUID(Ljava/lang/String;)V

    .line 55
    iget-object p1, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->mService:Lcom/connectsdk/service/WebOSTVService;

    invoke-virtual {p1}, Lcom/connectsdk/service/DeviceService;->getServiceDescription()Lcom/connectsdk/service/config/ServiceDescription;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/connectsdk/service/config/ServiceDescription;->setIpAddress(Ljava/lang/String;)V

    .line 56
    iget-object p1, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->mService:Lcom/connectsdk/service/WebOSTVService;

    invoke-virtual {p1}, Lcom/connectsdk/service/DeviceService;->getServiceDescription()Lcom/connectsdk/service/config/ServiceDescription;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/connectsdk/service/config/ServiceDescription;->setUUID(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->disconnect()V

    goto :goto_3

    .line 58
    :cond_e
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 59
    iget-object v0, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->mService:Lcom/connectsdk/service/WebOSTVService;

    invoke-virtual {v0}, Lcom/connectsdk/service/DeviceService;->getServiceConfig()Lcom/connectsdk/service/config/ServiceConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/connectsdk/service/config/ServiceConfig;->setServiceUUID(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->mService:Lcom/connectsdk/service/WebOSTVService;

    invoke-virtual {v0}, Lcom/connectsdk/service/DeviceService;->getServiceDescription()Lcom/connectsdk/service/config/ServiceDescription;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/connectsdk/service/config/ServiceDescription;->setUUID(Ljava/lang/String;)V

    .line 61
    :cond_f
    :goto_3
    sget-object p1, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$State;->REGISTERING:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$State;

    iput-object p1, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->state:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$State;

    .line 62
    invoke-virtual {p0}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->sendRegister()V

    :cond_10
    :goto_4
    return-void
.end method

.method public handleRegistered()V
    .locals 5

    .line 1
    sget-object v0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$State;->REGISTERED:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$State;

    iput-object v0, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->state:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$State;

    .line 2
    iget-object v0, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->commandQueue:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->commandQueue:Ljava/util/LinkedHashSet;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 4
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/connectsdk/service/command/ServiceCommand;

    .line 5
    sget-object v2, Lcom/connectsdk/core/Util;->T:Ljava/lang/String;

    const-string v3, "executing queued command for "

    invoke-static {v3}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/connectsdk/service/command/ServiceCommand;->getTarget()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-virtual {p0, v1}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->sendCommandImmediately(Lcom/connectsdk/service/command/ServiceCommand;)V

    .line 7
    iget-object v2, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->commandQueue:Ljava/util/LinkedHashSet;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->mListener:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$WebOSTVServiceSocketClientListener;

    if-eqz v0, :cond_1

    .line 9
    invoke-interface {v0}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$WebOSTVServiceSocketClientListener;->onConnect()V

    :cond_1
    return-void
.end method

.method public isConnected()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/w55;->getReadyState()Lcom/shabakaty/downloader/u55$a;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/u55$a;->t:Lcom/shabakaty/downloader/u55$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onClose(ILjava/lang/String;Z)V
    .locals 2

    .line 1
    sget-object p3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClose: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->handleConnectionLost(ZLjava/lang/Exception;)V

    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->mConnectSucceeded:Z

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->handleConnectError(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0, p1}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->handleConnectionLost(ZLjava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public onMessage(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/connectsdk/core/Util;->T:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "webOS Socket [IN] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0, p1}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->handleMessage(Ljava/lang/String;)V

    return-void
.end method

.method public onOpen(Lcom/shabakaty/downloader/e14;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->mConnectSucceeded:Z

    .line 2
    invoke-virtual {p0}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->handleConnected()V

    return-void
.end method

.method public sendCommand(Lcom/connectsdk/service/command/ServiceCommand;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/command/ServiceCommand<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/connectsdk/service/command/ServiceCommand;->getRequestId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget v0, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->nextRequestId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->nextRequestId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/connectsdk/service/command/ServiceCommand;->setRequestId(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/connectsdk/service/command/ServiceCommand;->getRequestId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->requests:Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->state:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$State;

    sget-object v1, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$State;->REGISTERED:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$State;

    if-ne v0, v1, :cond_1

    .line 7
    invoke-virtual {p0, p1}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->sendCommandImmediately(Lcom/connectsdk/service/command/ServiceCommand;)V

    goto :goto_2

    .line 8
    :cond_1
    sget-object v1, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$State;->CONNECTING:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$State;

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$State;->DISCONNECTING:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$State;

    if-ne v0, v1, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    sget-object v0, Lcom/connectsdk/core/Util;->T:Ljava/lang/String;

    const-string v1, "queuing command and restarting socket for "

    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/connectsdk/service/command/ServiceCommand;->getTarget()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object v0, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->commandQueue:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {p0}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->connect()V

    goto :goto_2

    .line 12
    :cond_3
    :goto_1
    sget-object v0, Lcom/connectsdk/core/Util;->T:Ljava/lang/String;

    const-string v1, "queuing command for "

    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/connectsdk/service/command/ServiceCommand;->getTarget()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget-object v0, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->commandQueue:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :goto_2
    return-void
.end method

.method public sendCommandImmediately(Lcom/connectsdk/service/command/ServiceCommand;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/command/ServiceCommand<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "type"

    .line 1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/connectsdk/service/command/ServiceCommand;->getPayload()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 3
    :try_start_0
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v3, ""

    :goto_0
    const-string v4, "p2p"

    .line 4
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    .line 6
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 8
    :try_start_1
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    nop

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, v1, p1}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->sendMessage(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    goto :goto_2

    :cond_1
    const-string v4, "hello"

    .line 10
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 11
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/w55;->send(Ljava/lang/String;)V

    goto :goto_2

    .line 12
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Lcom/connectsdk/service/command/ServiceCommand;->getHttpMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "id"

    .line 13
    invoke-virtual {p1}, Lcom/connectsdk/service/command/ServiceCommand;->getRequestId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "uri"

    .line 14
    invoke-virtual {p1}, Lcom/connectsdk/service/command/ServiceCommand;->getTarget()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 15
    :catch_2
    invoke-virtual {p0, v1, v2}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->sendMessage(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    :goto_2
    return-void
.end method

.method public sendMessage(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 2

    if-eqz p2, :cond_0

    :try_start_0
    const-string v0, "payload"

    .line 1
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    new-instance p2, Ljava/lang/Error;

    invoke-direct {p2, p1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 3
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->isConnected()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    sget-object p2, Lcom/connectsdk/core/Util;->T:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "webOS Socket [OUT] : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/w55;->send(Ljava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_1
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p2, "connection lost"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->handleConnectionLost(ZLjava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method public sendPairingKey(Ljava/lang/String;)V
    .locals 7

    .line 1
    new-instance v0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$3;

    invoke-direct {v0, p0}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$3;-><init>(Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;)V

    const-string v1, "ssap://pairing/setPin"

    .line 2
    iget v2, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->nextRequestId:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->nextRequestId:I

    .line 3
    new-instance v3, Lcom/connectsdk/service/command/ServiceCommand;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4, v4, v0}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 4
    invoke-virtual {v3, v2}, Lcom/connectsdk/service/command/ServiceCommand;->setRequestId(I)V

    .line 5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v5, "type"

    const-string v6, "request"

    .line 7
    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "id"

    .line 8
    invoke-virtual {v0, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "uri"

    .line 9
    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "pin"

    .line 10
    invoke-virtual {v4, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 12
    :goto_0
    iget-object p1, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->requests:Landroid/util/SparseArray;

    invoke-virtual {p1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 13
    invoke-virtual {p0, v0, v4}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->sendMessage(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-void
.end method

.method public sendRegister()V
    .locals 7

    .line 1
    new-instance v0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$2;

    invoke-direct {v0, p0}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$2;-><init>(Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;)V

    .line 2
    iget v1, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->nextRequestId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->nextRequestId:I

    .line 3
    new-instance v2, Lcom/connectsdk/service/command/ServiceCommand;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v3, v0}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 4
    invoke-virtual {v2, v1}, Lcom/connectsdk/service/command/ServiceCommand;->setRequestId(I)V

    .line 5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v4, "type"

    const-string v5, "register"

    .line 7
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "id"

    .line 8
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 9
    iget-object v4, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->mService:Lcom/connectsdk/service/WebOSTVService;

    invoke-virtual {v4}, Lcom/connectsdk/service/DeviceService;->getServiceConfig()Lcom/connectsdk/service/config/ServiceConfig;

    move-result-object v4

    instance-of v4, v4, Lcom/connectsdk/service/config/WebOSTVServiceConfig;

    if-nez v4, :cond_0

    .line 10
    iget-object v4, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->mService:Lcom/connectsdk/service/WebOSTVService;

    new-instance v5, Lcom/connectsdk/service/config/WebOSTVServiceConfig;

    invoke-virtual {v4}, Lcom/connectsdk/service/DeviceService;->getServiceConfig()Lcom/connectsdk/service/config/ServiceConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/connectsdk/service/config/ServiceConfig;->getServiceUUID()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/connectsdk/service/config/WebOSTVServiceConfig;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/connectsdk/service/DeviceService;->setServiceConfig(Lcom/connectsdk/service/config/ServiceConfig;)V

    .line 11
    :cond_0
    iget-object v4, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->mService:Lcom/connectsdk/service/WebOSTVService;

    invoke-virtual {v4}, Lcom/connectsdk/service/DeviceService;->getServiceConfig()Lcom/connectsdk/service/config/ServiceConfig;

    move-result-object v4

    check-cast v4, Lcom/connectsdk/service/config/WebOSTVServiceConfig;

    invoke-virtual {v4}, Lcom/connectsdk/service/config/WebOSTVServiceConfig;->getClientKey()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v4, "client-key"

    .line 12
    iget-object v5, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->mService:Lcom/connectsdk/service/WebOSTVService;

    invoke-virtual {v5}, Lcom/connectsdk/service/DeviceService;->getServiceConfig()Lcom/connectsdk/service/config/ServiceConfig;

    move-result-object v5

    check-cast v5, Lcom/connectsdk/service/config/WebOSTVServiceConfig;

    invoke-virtual {v5}, Lcom/connectsdk/service/config/WebOSTVServiceConfig;->getClientKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    :cond_1
    invoke-direct {p0}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->getPairingTypeString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v5, "pairingType"

    .line 14
    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    :cond_2
    iget-object v4, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->manifest:Lorg/json/JSONObject;

    if-eqz v4, :cond_3

    const-string v5, "manifest"

    .line 16
    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 17
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .line 18
    :cond_3
    :goto_0
    iget-object v4, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->requests:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 19
    invoke-virtual {p0, v0, v3}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->sendMessage(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-void
.end method

.method public sendVerification()V
    .locals 10

    const-string v0, "validity"

    .line 1
    new-instance v1, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$1;

    invoke-direct {v1, p0}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$1;-><init>(Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;)V

    .line 2
    iget v2, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->nextRequestId:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->nextRequestId:I

    .line 3
    new-instance v3, Lcom/connectsdk/service/command/ServiceCommand;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4, v4, v1}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 4
    invoke-virtual {v3, v2}, Lcom/connectsdk/service/command/ServiceCommand;->setRequestId(I)V

    .line 5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 6
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v5, "type"

    const-string v6, "verification"

    .line 7
    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "id"

    .line 8
    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 9
    iget-object v5, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->customTrustManager:Lcom/connectsdk/service/webos/WebOSTVTrustManager;

    invoke-virtual {v5}, Lcom/connectsdk/service/webos/WebOSTVTrustManager;->getLastCheckedCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v5

    .line 10
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    .line 11
    invoke-interface {v6}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_6

    const/4 v8, 0x1

    .line 12
    :try_start_1
    invoke-virtual {v5, v6}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    .line 13
    sput-boolean v8, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->verification_status:Z
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_6

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 14
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    goto :goto_4

    .line 15
    :catch_3
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA2At7fSUHuMw6bm/z3Q+X4oY9KpDa1s06\nmht9vNmSkZE5xMo9asOtZAWLLbJLxifY6qz6LWKgNw4Pyk6HVTLFdj4jrV//gNGQvYtCp3HRriqg\n2YoceBNG59+SW3xNzuhUqy5/nerQPfNQiz9z9RqtGj/YWItlJcKrNOBecNmHc7Xmu+3yPN6kD1G2\n6uU8wPBqzMdqFpPcubedIOmh4nNa2sNkfvMkbR4Pk/YupsDpic56dMxX0Twvg6SiaKGjv8NO9Lcv\nhLt2dR2XXi/z2F6uVjP5oYPvlSAK9GHVo96khpafKGPvIwPSSGtlHI4is/yT7WEeLuQs5FD/vAs9\neqQNkQIDAQAB"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_6

    const-string v7, "public-key"

    const/4 v9, -0x1

    if-eqz v6, :cond_0

    .line 16
    :try_start_3
    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v6, 0x1

    goto :goto_1

    .line 17
    :cond_0
    invoke-virtual {v4, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_6

    const/4 v6, -0x1

    .line 18
    :goto_1
    :try_start_4
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->checkValidity()V

    .line 19
    invoke-virtual {v4, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_6

    const/4 v9, 0x1

    goto :goto_3

    :catch_4
    move-exception v5

    goto :goto_2

    :catch_5
    move-exception v5

    .line 20
    :goto_2
    :try_start_5
    invoke-virtual {v4, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 21
    invoke-virtual {v5}, Ljava/security/cert/CertificateException;->printStackTrace()V

    :goto_3
    if-ne v6, v8, :cond_1

    if-ne v9, v8, :cond_1

    .line 22
    sput-boolean v8, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->verification_status:Z

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->requests:Landroid/util/SparseArray;

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 24
    invoke-virtual {p0, v1, v4}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->sendMessage(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_4

    :catch_6
    move-exception v0

    .line 25
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_4
    return-void
.end method

.method public setListener(Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$WebOSTVServiceSocketClientListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->mListener:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$WebOSTVServiceSocketClientListener;

    return-void
.end method

.method public setServerCertificate(Ljava/lang/String;)V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->mService:Lcom/connectsdk/service/WebOSTVService;

    invoke-virtual {v0}, Lcom/connectsdk/service/DeviceService;->getServiceConfig()Lcom/connectsdk/service/config/ServiceConfig;

    move-result-object v0

    instance-of v0, v0, Lcom/connectsdk/service/config/WebOSTVServiceConfig;

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->mService:Lcom/connectsdk/service/WebOSTVService;

    new-instance v1, Lcom/connectsdk/service/config/WebOSTVServiceConfig;

    invoke-virtual {v0}, Lcom/connectsdk/service/DeviceService;->getServiceConfig()Lcom/connectsdk/service/config/ServiceConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/connectsdk/service/config/ServiceConfig;->getServiceUUID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/connectsdk/service/config/WebOSTVServiceConfig;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/connectsdk/service/DeviceService;->setServiceConfig(Lcom/connectsdk/service/config/ServiceConfig;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->mService:Lcom/connectsdk/service/WebOSTVService;

    invoke-virtual {v0}, Lcom/connectsdk/service/DeviceService;->getServiceConfig()Lcom/connectsdk/service/config/ServiceConfig;

    move-result-object v0

    check-cast v0, Lcom/connectsdk/service/config/WebOSTVServiceConfig;

    invoke-direct {p0, p1}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->loadCertificateFromPEM(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/connectsdk/service/config/WebOSTVServiceConfig;->setServerCertificate(Ljava/security/cert/X509Certificate;)V

    return-void
.end method

.method public setServerCertificate(Ljava/security/cert/X509Certificate;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->mService:Lcom/connectsdk/service/WebOSTVService;

    invoke-virtual {v0}, Lcom/connectsdk/service/DeviceService;->getServiceConfig()Lcom/connectsdk/service/config/ServiceConfig;

    move-result-object v0

    instance-of v0, v0, Lcom/connectsdk/service/config/WebOSTVServiceConfig;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->mService:Lcom/connectsdk/service/WebOSTVService;

    new-instance v1, Lcom/connectsdk/service/config/WebOSTVServiceConfig;

    invoke-virtual {v0}, Lcom/connectsdk/service/DeviceService;->getServiceConfig()Lcom/connectsdk/service/config/ServiceConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/connectsdk/service/config/ServiceConfig;->getServiceUUID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/connectsdk/service/config/WebOSTVServiceConfig;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/connectsdk/service/DeviceService;->setServiceConfig(Lcom/connectsdk/service/config/ServiceConfig;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->mService:Lcom/connectsdk/service/WebOSTVService;

    invoke-virtual {v0}, Lcom/connectsdk/service/DeviceService;->getServiceConfig()Lcom/connectsdk/service/config/ServiceConfig;

    move-result-object v0

    check-cast v0, Lcom/connectsdk/service/config/WebOSTVServiceConfig;

    invoke-virtual {v0, p1}, Lcom/connectsdk/service/config/WebOSTVServiceConfig;->setServerCertificate(Ljava/security/cert/X509Certificate;)V

    return-void
.end method

.method public setupSSL()V
    .locals 4

    :try_start_0
    const-string v0, "TLS"

    .line 1
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/connectsdk/service/webos/WebOSTVTrustManager;

    invoke-direct {v1}, Lcom/connectsdk/service/webos/WebOSTVTrustManager;-><init>()V

    iput-object v1, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->customTrustManager:Lcom/connectsdk/service/webos/WebOSTVTrustManager;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/connectsdk/service/webos/WebOSTVTrustManager;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1, v2, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 4
    invoke-direct {p0, v0}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->setSSLContext(Ljavax/net/ssl/SSLContext;)V

    .line 5
    iget-object v0, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->mService:Lcom/connectsdk/service/WebOSTVService;

    invoke-virtual {v0}, Lcom/connectsdk/service/DeviceService;->getServiceConfig()Lcom/connectsdk/service/config/ServiceConfig;

    move-result-object v0

    instance-of v0, v0, Lcom/connectsdk/service/config/WebOSTVServiceConfig;

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->mService:Lcom/connectsdk/service/WebOSTVService;

    new-instance v1, Lcom/connectsdk/service/config/WebOSTVServiceConfig;

    invoke-virtual {v0}, Lcom/connectsdk/service/DeviceService;->getServiceConfig()Lcom/connectsdk/service/config/ServiceConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/connectsdk/service/config/ServiceConfig;->getServiceUUID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/connectsdk/service/config/WebOSTVServiceConfig;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/connectsdk/service/DeviceService;->setServiceConfig(Lcom/connectsdk/service/config/ServiceConfig;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->customTrustManager:Lcom/connectsdk/service/webos/WebOSTVTrustManager;

    iget-object v1, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->mService:Lcom/connectsdk/service/WebOSTVService;

    invoke-virtual {v1}, Lcom/connectsdk/service/DeviceService;->getServiceConfig()Lcom/connectsdk/service/config/ServiceConfig;

    move-result-object v1

    check-cast v1, Lcom/connectsdk/service/config/WebOSTVServiceConfig;

    invoke-virtual {v1}, Lcom/connectsdk/service/config/WebOSTVServiceConfig;->getServerCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/connectsdk/service/webos/WebOSTVTrustManager;->setExpectedCertificate(Ljava/security/cert/X509Certificate;)V
    :try_end_0
    .catch Ljava/security/KeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public unsubscribe(Lcom/connectsdk/service/command/ServiceSubscription;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/command/ServiceSubscription<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public unsubscribe(Lcom/connectsdk/service/command/URLServiceSubscription;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/command/URLServiceSubscription<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/connectsdk/service/command/ServiceCommand;->getRequestId()I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->requests:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "type"

    const-string v2, "unsubscribe"

    .line 4
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "id"

    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 6
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->sendMessage(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 8
    iget-object v0, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->requests:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    return-void
.end method
