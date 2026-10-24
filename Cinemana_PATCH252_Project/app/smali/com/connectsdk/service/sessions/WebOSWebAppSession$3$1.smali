.class Lcom/connectsdk/service/sessions/WebOSWebAppSession$3$1;
.super Ljava/lang/Object;
.source "WebOSWebAppSession.java"

# interfaces
.implements Lcom/connectsdk/service/capability/listeners/ResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/service/sessions/WebOSWebAppSession$3;->onSuccess(Lcom/connectsdk/service/command/ServiceCommand;)V
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
.field public final synthetic this$1:Lcom/connectsdk/service/sessions/WebOSWebAppSession$3;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/sessions/WebOSWebAppSession$3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$3$1;->this$1:Lcom/connectsdk/service/sessions/WebOSWebAppSession$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/connectsdk/service/command/ServiceCommandError;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$3$1;->this$1:Lcom/connectsdk/service/sessions/WebOSWebAppSession$3;

    iget-object v0, v0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$3;->this$0:Lcom/connectsdk/service/sessions/WebOSWebAppSession;

    invoke-virtual {v0}, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->disconnectFromWebApp()V

    .line 2
    iget-object v0, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$3$1;->this$1:Lcom/connectsdk/service/sessions/WebOSWebAppSession$3;

    iget-object v0, v0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$3;->val$connectionListener:Lcom/connectsdk/service/capability/listeners/ResponseListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/connectsdk/service/capability/listeners/ErrorListener;->onError(Lcom/connectsdk/service/command/ServiceCommandError;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$3$1;->this$1:Lcom/connectsdk/service/sessions/WebOSWebAppSession$3;

    iget-object v0, v0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$3;->this$0:Lcom/connectsdk/service/sessions/WebOSWebAppSession;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->access$002(Lcom/connectsdk/service/sessions/WebOSWebAppSession;Z)Z

    .line 2
    iget-object v0, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$3$1;->this$1:Lcom/connectsdk/service/sessions/WebOSWebAppSession$3;

    iget-object v0, v0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$3;->val$connectionListener:Lcom/connectsdk/service/capability/listeners/ResponseListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/connectsdk/service/capability/listeners/ResponseListener;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
