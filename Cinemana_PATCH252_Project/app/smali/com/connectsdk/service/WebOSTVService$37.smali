.class Lcom/connectsdk/service/WebOSTVService$37;
.super Ljava/lang/Object;
.source "WebOSTVService.java"

# interfaces
.implements Lcom/connectsdk/service/capability/listeners/ResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/service/WebOSTVService;->launchWebApp(Ljava/lang/String;Lorg/json/JSONObject;Lcom/connectsdk/service/sessions/WebAppSession$LaunchListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/connectsdk/service/WebOSTVService;

.field public final synthetic val$_webAppSession:Lcom/connectsdk/service/sessions/WebOSWebAppSession;

.field public final synthetic val$listener:Lcom/connectsdk/service/sessions/WebAppSession$LaunchListener;

.field public final synthetic val$webAppId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/WebOSTVService;Lcom/connectsdk/service/sessions/WebOSWebAppSession;Ljava/lang/String;Lcom/connectsdk/service/sessions/WebAppSession$LaunchListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/WebOSTVService$37;->this$0:Lcom/connectsdk/service/WebOSTVService;

    iput-object p2, p0, Lcom/connectsdk/service/WebOSTVService$37;->val$_webAppSession:Lcom/connectsdk/service/sessions/WebOSWebAppSession;

    iput-object p3, p0, Lcom/connectsdk/service/WebOSTVService$37;->val$webAppId:Ljava/lang/String;

    iput-object p4, p0, Lcom/connectsdk/service/WebOSTVService$37;->val$listener:Lcom/connectsdk/service/sessions/WebAppSession$LaunchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/connectsdk/service/command/ServiceCommandError;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/WebOSTVService$37;->val$listener:Lcom/connectsdk/service/sessions/WebAppSession$LaunchListener;

    invoke-static {v0, p1}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Lorg/json/JSONObject;

    .line 2
    iget-object v0, p0, Lcom/connectsdk/service/WebOSTVService$37;->val$_webAppSession:Lcom/connectsdk/service/sessions/WebOSWebAppSession;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, v0, Lcom/connectsdk/service/sessions/WebAppSession;->launchSession:Lcom/connectsdk/service/sessions/LaunchSession;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/connectsdk/service/WebOSTVService$37;->val$webAppId:Ljava/lang/String;

    invoke-static {v0}, Lcom/connectsdk/service/sessions/LaunchSession;->launchSessionForAppId(Ljava/lang/String;)Lcom/connectsdk/service/sessions/LaunchSession;

    move-result-object v1

    .line 5
    new-instance v0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;

    iget-object v2, p0, Lcom/connectsdk/service/WebOSTVService$37;->this$0:Lcom/connectsdk/service/WebOSTVService;

    invoke-direct {v0, v1, v2}, Lcom/connectsdk/service/sessions/WebOSWebAppSession;-><init>(Lcom/connectsdk/service/sessions/LaunchSession;Lcom/connectsdk/service/DeviceService;)V

    .line 6
    iget-object v2, p0, Lcom/connectsdk/service/WebOSTVService$37;->this$0:Lcom/connectsdk/service/WebOSTVService;

    iget-object v2, v2, Lcom/connectsdk/service/WebOSTVService;->mWebAppSessions:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, p0, Lcom/connectsdk/service/WebOSTVService$37;->val$webAppId:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :goto_0
    iget-object v2, p0, Lcom/connectsdk/service/WebOSTVService$37;->this$0:Lcom/connectsdk/service/WebOSTVService;

    invoke-virtual {v1, v2}, Lcom/connectsdk/service/sessions/LaunchSession;->setService(Lcom/connectsdk/service/DeviceService;)V

    const-string v2, "sessionId"

    .line 8
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/connectsdk/service/sessions/LaunchSession;->setSessionId(Ljava/lang/String;)V

    .line 9
    sget-object v2, Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;->WebApp:Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;

    invoke-virtual {v1, v2}, Lcom/connectsdk/service/sessions/LaunchSession;->setSessionType(Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;)V

    .line 10
    invoke-virtual {v1, p1}, Lcom/connectsdk/service/sessions/LaunchSession;->setRawData(Ljava/lang/Object;)V

    .line 11
    iget-object p1, p0, Lcom/connectsdk/service/WebOSTVService$37;->val$listener:Lcom/connectsdk/service/sessions/WebAppSession$LaunchListener;

    invoke-static {p1, v0}, Lcom/connectsdk/core/Util;->postSuccess(Lcom/connectsdk/service/capability/listeners/ResponseListener;Ljava/lang/Object;)V

    return-void
.end method
