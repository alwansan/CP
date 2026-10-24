.class Lcom/connectsdk/service/WebOSTVService$39;
.super Ljava/lang/Object;
.source "WebOSTVService.java"

# interfaces
.implements Lcom/connectsdk/service/capability/listeners/ResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/service/WebOSTVService;->connectToWebApp(Lcom/connectsdk/service/sessions/WebOSWebAppSession;ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V
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

.field public final synthetic val$appId:Ljava/lang/String;

.field public final synthetic val$connectionListener:Lcom/connectsdk/service/capability/listeners/ResponseListener;

.field public final synthetic val$joinOnly:Z

.field public final synthetic val$webAppSession:Lcom/connectsdk/service/sessions/WebOSWebAppSession;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/WebOSTVService;ZLcom/connectsdk/service/capability/listeners/ResponseListener;Lcom/connectsdk/service/sessions/WebOSWebAppSession;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/WebOSTVService$39;->this$0:Lcom/connectsdk/service/WebOSTVService;

    iput-boolean p2, p0, Lcom/connectsdk/service/WebOSTVService$39;->val$joinOnly:Z

    iput-object p3, p0, Lcom/connectsdk/service/WebOSTVService$39;->val$connectionListener:Lcom/connectsdk/service/capability/listeners/ResponseListener;

    iput-object p4, p0, Lcom/connectsdk/service/WebOSTVService$39;->val$webAppSession:Lcom/connectsdk/service/sessions/WebOSWebAppSession;

    iput-object p5, p0, Lcom/connectsdk/service/WebOSTVService$39;->val$appId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/connectsdk/service/command/ServiceCommandError;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/WebOSTVService$39;->val$webAppSession:Lcom/connectsdk/service/sessions/WebOSWebAppSession;

    invoke-virtual {v0}, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->disconnectFromWebApp()V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/connectsdk/service/command/ServiceCommandError;->getPayload()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/connectsdk/service/command/ServiceCommandError;->getPayload()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "app channel closed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/connectsdk/service/WebOSTVService$39;->val$webAppSession:Lcom/connectsdk/service/sessions/WebOSWebAppSession;

    invoke-virtual {p1}, Lcom/connectsdk/service/sessions/WebAppSession;->getWebAppSessionListener()Lcom/connectsdk/service/sessions/WebAppSessionListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 5
    new-instance p1, Lcom/connectsdk/service/WebOSTVService$39$2;

    invoke-direct {p1, p0}, Lcom/connectsdk/service/WebOSTVService$39$2;-><init>(Lcom/connectsdk/service/WebOSTVService$39;)V

    invoke-static {p1}, Lcom/connectsdk/core/Util;->runOnUI(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/connectsdk/service/WebOSTVService$39;->val$connectionListener:Lcom/connectsdk/service/capability/listeners/ResponseListener;

    invoke-static {v0, p1}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 3

    .line 1
    move-object v0, p1

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "state"

    .line 2
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CONNECTED"

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    iget-boolean p1, p0, Lcom/connectsdk/service/WebOSTVService$39;->val$joinOnly:Z

    if-eqz p1, :cond_0

    const-string p1, "WAITING_FOR_APP"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/connectsdk/service/WebOSTVService$39;->val$connectionListener:Lcom/connectsdk/service/capability/listeners/ResponseListener;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "Web app is not currently running"

    invoke-static {v0, v2, v1, p1}, Lcom/shabakaty/downloader/ww;->a(ILjava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    :cond_0
    return-void

    :cond_1
    const-string v1, "appId"

    .line 6
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    .line 8
    iget-object v1, p0, Lcom/connectsdk/service/WebOSTVService$39;->val$webAppSession:Lcom/connectsdk/service/sessions/WebOSWebAppSession;

    iget-object v1, v1, Lcom/connectsdk/service/sessions/WebAppSession;->launchSession:Lcom/connectsdk/service/sessions/LaunchSession;

    invoke-virtual {v1}, Lcom/connectsdk/service/sessions/LaunchSession;->getSessionType()Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;

    move-result-object v1

    sget-object v2, Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;->WebApp:Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;

    if-ne v1, v2, :cond_2

    .line 9
    iget-object v1, p0, Lcom/connectsdk/service/WebOSTVService$39;->this$0:Lcom/connectsdk/service/WebOSTVService;

    iget-object v1, v1, Lcom/connectsdk/service/WebOSTVService;->mAppToAppIdMappings:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lcom/connectsdk/service/WebOSTVService$39;->val$appId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_2
    iget-object v1, p0, Lcom/connectsdk/service/WebOSTVService$39;->val$webAppSession:Lcom/connectsdk/service/sessions/WebOSWebAppSession;

    invoke-virtual {v1, v0}, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->setFullAppId(Ljava/lang/String;)V

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/connectsdk/service/WebOSTVService$39;->val$connectionListener:Lcom/connectsdk/service/capability/listeners/ResponseListener;

    if-eqz v0, :cond_4

    .line 12
    new-instance v0, Lcom/connectsdk/service/WebOSTVService$39$1;

    invoke-direct {v0, p0, p1}, Lcom/connectsdk/service/WebOSTVService$39$1;-><init>(Lcom/connectsdk/service/WebOSTVService$39;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/connectsdk/core/Util;->runOnUI(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method
