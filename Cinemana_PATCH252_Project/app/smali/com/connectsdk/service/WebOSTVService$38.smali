.class Lcom/connectsdk/service/WebOSTVService$38;
.super Ljava/lang/Object;
.source "WebOSTVService.java"

# interfaces
.implements Lcom/connectsdk/service/capability/Launcher$AppInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/service/WebOSTVService;->launchWebApp(Ljava/lang/String;Lorg/json/JSONObject;ZLcom/connectsdk/service/sessions/WebAppSession$LaunchListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/connectsdk/service/WebOSTVService;

.field public final synthetic val$listener:Lcom/connectsdk/service/sessions/WebAppSession$LaunchListener;

.field public final synthetic val$params:Lorg/json/JSONObject;

.field public final synthetic val$webAppId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/WebOSTVService;Lcom/connectsdk/service/sessions/WebAppSession$LaunchListener;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/WebOSTVService$38;->this$0:Lcom/connectsdk/service/WebOSTVService;

    iput-object p2, p0, Lcom/connectsdk/service/WebOSTVService$38;->val$listener:Lcom/connectsdk/service/sessions/WebAppSession$LaunchListener;

    iput-object p3, p0, Lcom/connectsdk/service/WebOSTVService$38;->val$webAppId:Ljava/lang/String;

    iput-object p4, p0, Lcom/connectsdk/service/WebOSTVService$38;->val$params:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/connectsdk/service/command/ServiceCommandError;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/WebOSTVService$38;->val$listener:Lcom/connectsdk/service/sessions/WebAppSession$LaunchListener;

    invoke-static {v0, p1}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    return-void
.end method

.method public onSuccess(Lcom/connectsdk/core/AppInfo;)V
    .locals 3

    .line 2
    invoke-virtual {p1}, Lcom/connectsdk/core/AppInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/connectsdk/service/WebOSTVService$38;->val$webAppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/connectsdk/service/WebOSTVService$38;->val$webAppId:Ljava/lang/String;

    invoke-static {v0}, Lcom/connectsdk/service/sessions/LaunchSession;->launchSessionForAppId(Ljava/lang/String;)Lcom/connectsdk/service/sessions/LaunchSession;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;->WebApp:Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;

    invoke-virtual {v0, v1}, Lcom/connectsdk/service/sessions/LaunchSession;->setSessionType(Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;)V

    .line 5
    iget-object v1, p0, Lcom/connectsdk/service/WebOSTVService$38;->this$0:Lcom/connectsdk/service/WebOSTVService;

    invoke-virtual {v0, v1}, Lcom/connectsdk/service/sessions/LaunchSession;->setService(Lcom/connectsdk/service/DeviceService;)V

    .line 6
    invoke-virtual {p1}, Lcom/connectsdk/core/AppInfo;->getRawData()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/connectsdk/service/sessions/LaunchSession;->setRawData(Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lcom/connectsdk/service/WebOSTVService$38;->this$0:Lcom/connectsdk/service/WebOSTVService;

    invoke-static {p1, v0}, Lcom/connectsdk/service/WebOSTVService;->access$400(Lcom/connectsdk/service/WebOSTVService;Lcom/connectsdk/service/sessions/LaunchSession;)Lcom/connectsdk/service/sessions/WebOSWebAppSession;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lcom/connectsdk/service/WebOSTVService$38;->val$listener:Lcom/connectsdk/service/sessions/WebAppSession$LaunchListener;

    invoke-static {v0, p1}, Lcom/connectsdk/core/Util;->postSuccess(Lcom/connectsdk/service/capability/listeners/ResponseListener;Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/connectsdk/service/WebOSTVService$38;->this$0:Lcom/connectsdk/service/WebOSTVService;

    iget-object v0, p0, Lcom/connectsdk/service/WebOSTVService$38;->val$webAppId:Ljava/lang/String;

    iget-object v1, p0, Lcom/connectsdk/service/WebOSTVService$38;->val$params:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/connectsdk/service/WebOSTVService$38;->val$listener:Lcom/connectsdk/service/sessions/WebAppSession$LaunchListener;

    invoke-virtual {p1, v0, v1, v2}, Lcom/connectsdk/service/WebOSTVService;->launchWebApp(Ljava/lang/String;Lorg/json/JSONObject;Lcom/connectsdk/service/sessions/WebAppSession$LaunchListener;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/connectsdk/core/AppInfo;

    invoke-virtual {p0, p1}, Lcom/connectsdk/service/WebOSTVService$38;->onSuccess(Lcom/connectsdk/core/AppInfo;)V

    return-void
.end method
