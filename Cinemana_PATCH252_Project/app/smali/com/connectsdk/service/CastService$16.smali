.class Lcom/connectsdk/service/CastService$16;
.super Ljava/lang/Object;
.source "CastService.java"

# interfaces
.implements Lcom/connectsdk/service/CastService$LaunchWebAppListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/service/CastService;->joinWebApp(Lcom/connectsdk/service/sessions/LaunchSession;Lcom/connectsdk/service/sessions/WebAppSession$LaunchListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/connectsdk/service/CastService;

.field public final synthetic val$listener:Lcom/connectsdk/service/sessions/WebAppSession$LaunchListener;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/CastService;Lcom/connectsdk/service/sessions/WebAppSession$LaunchListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/CastService$16;->this$0:Lcom/connectsdk/service/CastService;

    iput-object p2, p0, Lcom/connectsdk/service/CastService$16;->val$listener:Lcom/connectsdk/service/sessions/WebAppSession$LaunchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/connectsdk/service/command/ServiceCommandError;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/CastService$16;->val$listener:Lcom/connectsdk/service/sessions/WebAppSession$LaunchListener;

    invoke-static {v0, p1}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    return-void
.end method

.method public onSuccess(Lcom/connectsdk/service/sessions/WebAppSession;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/connectsdk/service/CastService$16$1;

    invoke-direct {v0, p0, p1}, Lcom/connectsdk/service/CastService$16$1;-><init>(Lcom/connectsdk/service/CastService$16;Lcom/connectsdk/service/sessions/WebAppSession;)V

    invoke-virtual {p1, v0}, Lcom/connectsdk/service/sessions/WebAppSession;->connect(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method
