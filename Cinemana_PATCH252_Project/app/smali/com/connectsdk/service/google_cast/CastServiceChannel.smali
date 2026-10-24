.class public Lcom/connectsdk/service/google_cast/CastServiceChannel;
.super Ljava/lang/Object;
.source "CastServiceChannel.java"

# interfaces
.implements Lcom/shabakaty/downloader/nw$e;


# instance fields
.field public final session:Lcom/connectsdk/service/sessions/CastWebAppSession;

.field public final webAppId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/connectsdk/service/sessions/CastWebAppSession;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/connectsdk/service/google_cast/CastServiceChannel;->webAppId:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/connectsdk/service/google_cast/CastServiceChannel;->session:Lcom/connectsdk/service/sessions/CastWebAppSession;

    return-void
.end method


# virtual methods
.method public getNamespace()Ljava/lang/String;
    .locals 1

    const-string v0, "urn:x-cast:com.connectsdk"

    return-object v0
.end method

.method public onMessageReceived(Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/connectsdk/service/google_cast/CastServiceChannel;->session:Lcom/connectsdk/service/sessions/CastWebAppSession;

    invoke-virtual {p1}, Lcom/connectsdk/service/sessions/WebAppSession;->getWebAppSessionListener()Lcom/connectsdk/service/sessions/WebAppSessionListener;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    .line 2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 4
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 5
    :goto_0
    new-instance v0, Lcom/connectsdk/service/google_cast/CastServiceChannel$1;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/connectsdk/service/google_cast/CastServiceChannel$1;-><init>(Lcom/connectsdk/service/google_cast/CastServiceChannel;Lorg/json/JSONObject;Lcom/connectsdk/service/sessions/WebAppSessionListener;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/connectsdk/core/Util;->runOnUI(Ljava/lang/Runnable;)V

    return-void
.end method
