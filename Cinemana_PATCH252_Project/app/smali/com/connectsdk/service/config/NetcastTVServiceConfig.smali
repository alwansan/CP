.class public Lcom/connectsdk/service/config/NetcastTVServiceConfig;
.super Lcom/connectsdk/service/config/ServiceConfig;
.source "NetcastTVServiceConfig.java"


# static fields
.field public static final KEY_PAIRING:Ljava/lang/String; = "pairingKey"


# instance fields
.field public pairingKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/connectsdk/service/config/ServiceConfig;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/connectsdk/service/config/ServiceConfig;-><init>(Ljava/lang/String;)V

    .line 3
    iput-object p2, p0, Lcom/connectsdk/service/config/NetcastTVServiceConfig;->pairingKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .line 4
    invoke-direct {p0, p1}, Lcom/connectsdk/service/config/ServiceConfig;-><init>(Lorg/json/JSONObject;)V

    const-string v0, "pairingKey"

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/connectsdk/service/config/NetcastTVServiceConfig;->pairingKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPairingKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/config/NetcastTVServiceConfig;->pairingKey:Ljava/lang/String;

    return-object v0
.end method

.method public setPairingKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/config/NetcastTVServiceConfig;->pairingKey:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/connectsdk/service/config/ServiceConfig;->notifyUpdate()V

    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/connectsdk/service/config/ServiceConfig;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    :try_start_0
    const-string v1, "pairingKey"

    .line 2
    iget-object v2, p0, Lcom/connectsdk/service/config/NetcastTVServiceConfig;->pairingKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 3
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method
