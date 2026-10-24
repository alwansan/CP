.class Lcom/connectsdk/service/CastService$16$1;
.super Ljava/lang/Object;
.source "CastService.java"

# interfaces
.implements Lcom/connectsdk/service/capability/listeners/ResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/service/CastService$16;->onSuccess(Lcom/connectsdk/service/sessions/WebAppSession;)V
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
.field public final synthetic this$1:Lcom/connectsdk/service/CastService$16;

.field public final synthetic val$webAppSession:Lcom/connectsdk/service/sessions/WebAppSession;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/CastService$16;Lcom/connectsdk/service/sessions/WebAppSession;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/CastService$16$1;->this$1:Lcom/connectsdk/service/CastService$16;

    iput-object p2, p0, Lcom/connectsdk/service/CastService$16$1;->val$webAppSession:Lcom/connectsdk/service/sessions/WebAppSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/connectsdk/service/command/ServiceCommandError;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/CastService$16$1;->this$1:Lcom/connectsdk/service/CastService$16;

    iget-object v0, v0, Lcom/connectsdk/service/CastService$16;->val$listener:Lcom/connectsdk/service/sessions/WebAppSession$LaunchListener;

    invoke-static {v0, p1}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/connectsdk/service/CastService$16$1;->this$1:Lcom/connectsdk/service/CastService$16;

    iget-object p1, p1, Lcom/connectsdk/service/CastService$16;->this$0:Lcom/connectsdk/service/CastService;

    new-instance v0, Lcom/connectsdk/service/CastService$16$1$1;

    invoke-direct {v0, p0}, Lcom/connectsdk/service/CastService$16$1$1;-><init>(Lcom/connectsdk/service/CastService$16$1;)V

    invoke-virtual {p1, v0}, Lcom/connectsdk/service/CastService;->requestStatus(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method
