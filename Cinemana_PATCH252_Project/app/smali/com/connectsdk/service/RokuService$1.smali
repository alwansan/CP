.class Lcom/connectsdk/service/RokuService$1;
.super Ljava/lang/Object;
.source "RokuService.java"

# interfaces
.implements Lcom/connectsdk/service/capability/listeners/ResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/service/RokuService;->launchAppWithInfo(Lcom/connectsdk/core/AppInfo;Ljava/lang/Object;Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;)V
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
.field public final synthetic this$0:Lcom/connectsdk/service/RokuService;

.field public final synthetic val$appInfo:Lcom/connectsdk/core/AppInfo;

.field public final synthetic val$listener:Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/RokuService;Lcom/connectsdk/core/AppInfo;Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/RokuService$1;->this$0:Lcom/connectsdk/service/RokuService;

    iput-object p2, p0, Lcom/connectsdk/service/RokuService$1;->val$appInfo:Lcom/connectsdk/core/AppInfo;

    iput-object p3, p0, Lcom/connectsdk/service/RokuService$1;->val$listener:Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/connectsdk/service/command/ServiceCommandError;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/RokuService$1;->val$listener:Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;

    invoke-static {v0, p1}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/connectsdk/service/RokuService$RokuLaunchSession;

    iget-object v0, p0, Lcom/connectsdk/service/RokuService$1;->this$0:Lcom/connectsdk/service/RokuService;

    invoke-direct {p1, v0}, Lcom/connectsdk/service/RokuService$RokuLaunchSession;-><init>(Lcom/connectsdk/service/RokuService;)V

    .line 2
    iget-object v0, p0, Lcom/connectsdk/service/RokuService$1;->this$0:Lcom/connectsdk/service/RokuService;

    invoke-virtual {p1, v0}, Lcom/connectsdk/service/sessions/LaunchSession;->setService(Lcom/connectsdk/service/DeviceService;)V

    .line 3
    iget-object v0, p0, Lcom/connectsdk/service/RokuService$1;->val$appInfo:Lcom/connectsdk/core/AppInfo;

    invoke-virtual {v0}, Lcom/connectsdk/core/AppInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/connectsdk/service/sessions/LaunchSession;->setAppId(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/connectsdk/service/RokuService$1;->val$appInfo:Lcom/connectsdk/core/AppInfo;

    invoke-virtual {v0}, Lcom/connectsdk/core/AppInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/connectsdk/service/sessions/LaunchSession;->setAppName(Ljava/lang/String;)V

    .line 5
    sget-object v0, Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;->App:Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;

    invoke-virtual {p1, v0}, Lcom/connectsdk/service/sessions/LaunchSession;->setSessionType(Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;)V

    .line 6
    iget-object v0, p0, Lcom/connectsdk/service/RokuService$1;->val$listener:Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;

    invoke-static {v0, p1}, Lcom/connectsdk/core/Util;->postSuccess(Lcom/connectsdk/service/capability/listeners/ResponseListener;Ljava/lang/Object;)V

    return-void
.end method
