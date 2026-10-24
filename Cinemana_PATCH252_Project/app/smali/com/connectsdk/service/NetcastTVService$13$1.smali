.class Lcom/connectsdk/service/NetcastTVService$13$1;
.super Ljava/lang/Object;
.source "NetcastTVService.java"

# interfaces
.implements Lcom/connectsdk/service/capability/listeners/ResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/service/NetcastTVService$13;->onSuccess(Lcom/connectsdk/core/AppInfo;)V
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
.field public final synthetic this$1:Lcom/connectsdk/service/NetcastTVService$13;

.field public final synthetic val$appInfo:Lcom/connectsdk/core/AppInfo;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/NetcastTVService$13;Lcom/connectsdk/core/AppInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/NetcastTVService$13$1;->this$1:Lcom/connectsdk/service/NetcastTVService$13;

    iput-object p2, p0, Lcom/connectsdk/service/NetcastTVService$13$1;->val$appInfo:Lcom/connectsdk/core/AppInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/connectsdk/service/command/ServiceCommandError;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/NetcastTVService$13$1;->this$1:Lcom/connectsdk/service/NetcastTVService$13;

    iget-object v0, v0, Lcom/connectsdk/service/NetcastTVService$13;->val$listener:Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;

    invoke-static {v0, p1}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/connectsdk/service/NetcastTVService$13$1;->val$appInfo:Lcom/connectsdk/core/AppInfo;

    invoke-virtual {p1}, Lcom/connectsdk/core/AppInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/connectsdk/service/sessions/LaunchSession;->launchSessionForAppId(Ljava/lang/String;)Lcom/connectsdk/service/sessions/LaunchSession;

    move-result-object p1

    const-string v0, "Netflix"

    .line 2
    invoke-virtual {p1, v0}, Lcom/connectsdk/service/sessions/LaunchSession;->setAppName(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/connectsdk/service/NetcastTVService$13$1;->this$1:Lcom/connectsdk/service/NetcastTVService$13;

    iget-object v0, v0, Lcom/connectsdk/service/NetcastTVService$13;->this$0:Lcom/connectsdk/service/NetcastTVService;

    invoke-virtual {p1, v0}, Lcom/connectsdk/service/sessions/LaunchSession;->setService(Lcom/connectsdk/service/DeviceService;)V

    .line 4
    sget-object v0, Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;->App:Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;

    invoke-virtual {p1, v0}, Lcom/connectsdk/service/sessions/LaunchSession;->setSessionType(Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;)V

    .line 5
    iget-object v0, p0, Lcom/connectsdk/service/NetcastTVService$13$1;->this$1:Lcom/connectsdk/service/NetcastTVService$13;

    iget-object v0, v0, Lcom/connectsdk/service/NetcastTVService$13;->val$listener:Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;

    invoke-static {v0, p1}, Lcom/connectsdk/core/Util;->postSuccess(Lcom/connectsdk/service/capability/listeners/ResponseListener;Ljava/lang/Object;)V

    return-void
.end method
