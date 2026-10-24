.class Lcom/connectsdk/service/DIALService$1;
.super Ljava/lang/Object;
.source "DIALService.java"

# interfaces
.implements Lcom/connectsdk/service/capability/listeners/ResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/service/DIALService;->launchAppWithInfo(Lcom/connectsdk/core/AppInfo;Ljava/lang/Object;Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;)V
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
.field public final synthetic this$0:Lcom/connectsdk/service/DIALService;

.field public final synthetic val$appInfo:Lcom/connectsdk/core/AppInfo;

.field public final synthetic val$listener:Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/DIALService;Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;Lcom/connectsdk/core/AppInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/DIALService$1;->this$0:Lcom/connectsdk/service/DIALService;

    iput-object p2, p0, Lcom/connectsdk/service/DIALService$1;->val$listener:Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;

    iput-object p3, p0, Lcom/connectsdk/service/DIALService$1;->val$appInfo:Lcom/connectsdk/core/AppInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/connectsdk/service/command/ServiceCommandError;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/connectsdk/service/DIALService$1;->val$listener:Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;

    new-instance v0, Lcom/connectsdk/service/command/ServiceCommandError;

    const/4 v1, 0x0

    const-string v2, "Problem Launching app"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/connectsdk/service/command/ServiceCommandError;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1, v0}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/DIALService$1;->val$appInfo:Lcom/connectsdk/core/AppInfo;

    invoke-virtual {v0}, Lcom/connectsdk/core/AppInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/connectsdk/service/sessions/LaunchSession;->launchSessionForAppId(Ljava/lang/String;)Lcom/connectsdk/service/sessions/LaunchSession;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/connectsdk/service/DIALService$1;->val$appInfo:Lcom/connectsdk/core/AppInfo;

    invoke-virtual {v1}, Lcom/connectsdk/core/AppInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/connectsdk/service/sessions/LaunchSession;->setAppName(Ljava/lang/String;)V

    .line 3
    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/connectsdk/service/sessions/LaunchSession;->setSessionId(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/connectsdk/service/DIALService$1;->this$0:Lcom/connectsdk/service/DIALService;

    invoke-virtual {v0, p1}, Lcom/connectsdk/service/sessions/LaunchSession;->setService(Lcom/connectsdk/service/DeviceService;)V

    .line 5
    sget-object p1, Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;->App:Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;

    invoke-virtual {v0, p1}, Lcom/connectsdk/service/sessions/LaunchSession;->setSessionType(Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;)V

    .line 6
    iget-object p1, p0, Lcom/connectsdk/service/DIALService$1;->val$listener:Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;

    invoke-static {p1, v0}, Lcom/connectsdk/core/Util;->postSuccess(Lcom/connectsdk/service/capability/listeners/ResponseListener;Ljava/lang/Object;)V

    return-void
.end method
