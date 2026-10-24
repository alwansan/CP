.class Lcom/connectsdk/service/sessions/WebOSWebAppSession$3;
.super Ljava/lang/Object;
.source "WebOSWebAppSession.java"

# interfaces
.implements Lcom/connectsdk/service/capability/listeners/ResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/service/sessions/WebOSWebAppSession;->connect(Ljava/lang/Boolean;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
        "Lcom/connectsdk/service/command/ServiceCommand<",
        "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
        "Ljava/lang/Object;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/connectsdk/service/sessions/WebOSWebAppSession;

.field public final synthetic val$connectionListener:Lcom/connectsdk/service/capability/listeners/ResponseListener;

.field public final synthetic val$joinOnly:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/sessions/WebOSWebAppSession;Lcom/connectsdk/service/capability/listeners/ResponseListener;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$3;->this$0:Lcom/connectsdk/service/sessions/WebOSWebAppSession;

    iput-object p2, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$3;->val$connectionListener:Lcom/connectsdk/service/capability/listeners/ResponseListener;

    iput-object p3, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$3;->val$joinOnly:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/connectsdk/service/command/ServiceCommandError;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$3;->this$0:Lcom/connectsdk/service/sessions/WebOSWebAppSession;

    iget-object v1, v0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->socket:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->disconnectFromWebApp()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$3;->val$connectionListener:Lcom/connectsdk/service/capability/listeners/ResponseListener;

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    .line 4
    new-instance p1, Lcom/connectsdk/service/command/ServiceCommandError;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "Unknown error connecting to web app"

    invoke-direct {p1, v0, v2, v1}, Lcom/connectsdk/service/command/ServiceCommandError;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$3;->val$connectionListener:Lcom/connectsdk/service/capability/listeners/ResponseListener;

    invoke-interface {v0, p1}, Lcom/connectsdk/service/capability/listeners/ErrorListener;->onError(Lcom/connectsdk/service/command/ServiceCommandError;)V

    :cond_2
    return-void
.end method

.method public onSuccess(Lcom/connectsdk/service/command/ServiceCommand;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/command/ServiceCommand<",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 2
    new-instance p1, Lcom/connectsdk/service/sessions/WebOSWebAppSession$3$1;

    invoke-direct {p1, p0}, Lcom/connectsdk/service/sessions/WebOSWebAppSession$3$1;-><init>(Lcom/connectsdk/service/sessions/WebOSWebAppSession$3;)V

    .line 3
    iget-object v0, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$3;->this$0:Lcom/connectsdk/service/sessions/WebOSWebAppSession;

    iget-object v1, v0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->service:Lcom/connectsdk/service/WebOSTVService;

    iget-object v2, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$3;->val$joinOnly:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v0, v2, p1}, Lcom/connectsdk/service/WebOSTVService;->connectToWebApp(Lcom/connectsdk/service/sessions/WebOSWebAppSession;ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/connectsdk/service/command/ServiceCommand;

    invoke-virtual {p0, p1}, Lcom/connectsdk/service/sessions/WebOSWebAppSession$3;->onSuccess(Lcom/connectsdk/service/command/ServiceCommand;)V

    return-void
.end method
