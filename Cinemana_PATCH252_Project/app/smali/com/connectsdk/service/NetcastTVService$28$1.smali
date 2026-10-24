.class Lcom/connectsdk/service/NetcastTVService$28$1;
.super Ljava/lang/Object;
.source "NetcastTVService.java"

# interfaces
.implements Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/service/NetcastTVService$28;->onSuccess(Lcom/connectsdk/core/AppInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/connectsdk/service/NetcastTVService$28;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/NetcastTVService$28;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/NetcastTVService$28$1;->this$1:Lcom/connectsdk/service/NetcastTVService$28;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/connectsdk/service/command/ServiceCommandError;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/NetcastTVService$28$1;->this$1:Lcom/connectsdk/service/NetcastTVService$28;

    iget-object v0, v0, Lcom/connectsdk/service/NetcastTVService$28;->val$listener:Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;

    invoke-static {v0, p1}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    return-void
.end method

.method public onSuccess(Lcom/connectsdk/service/sessions/LaunchSession;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/connectsdk/service/NetcastTVService$28$1;->this$1:Lcom/connectsdk/service/NetcastTVService$28;

    iget-object v1, v0, Lcom/connectsdk/service/NetcastTVService$28;->this$0:Lcom/connectsdk/service/NetcastTVService;

    iget-object v2, v1, Lcom/connectsdk/service/NetcastTVService;->inputPickerSession:Lcom/connectsdk/service/sessions/LaunchSession;

    if-nez v2, :cond_0

    .line 3
    iput-object p1, v1, Lcom/connectsdk/service/NetcastTVService;->inputPickerSession:Lcom/connectsdk/service/sessions/LaunchSession;

    .line 4
    :cond_0
    iget-object v0, v0, Lcom/connectsdk/service/NetcastTVService$28;->val$listener:Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;

    invoke-static {v0, p1}, Lcom/connectsdk/core/Util;->postSuccess(Lcom/connectsdk/service/capability/listeners/ResponseListener;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/connectsdk/service/sessions/LaunchSession;

    invoke-virtual {p0, p1}, Lcom/connectsdk/service/NetcastTVService$28$1;->onSuccess(Lcom/connectsdk/service/sessions/LaunchSession;)V

    return-void
.end method
