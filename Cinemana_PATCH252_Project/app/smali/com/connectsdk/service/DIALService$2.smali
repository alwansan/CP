.class Lcom/connectsdk/service/DIALService$2;
.super Ljava/lang/Object;
.source "DIALService.java"

# interfaces
.implements Lcom/connectsdk/service/capability/Launcher$AppStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/service/DIALService;->closeApp(Lcom/connectsdk/service/sessions/LaunchSession;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/connectsdk/service/DIALService;

.field public final synthetic val$launchSession:Lcom/connectsdk/service/sessions/LaunchSession;

.field public final synthetic val$listener:Lcom/connectsdk/service/capability/listeners/ResponseListener;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/DIALService;Lcom/connectsdk/service/sessions/LaunchSession;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/DIALService$2;->this$0:Lcom/connectsdk/service/DIALService;

    iput-object p2, p0, Lcom/connectsdk/service/DIALService$2;->val$launchSession:Lcom/connectsdk/service/sessions/LaunchSession;

    iput-object p3, p0, Lcom/connectsdk/service/DIALService$2;->val$listener:Lcom/connectsdk/service/capability/listeners/ResponseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/connectsdk/service/command/ServiceCommandError;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/DIALService$2;->val$listener:Lcom/connectsdk/service/capability/listeners/ResponseListener;

    invoke-static {v0, p1}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    return-void
.end method

.method public onSuccess(Lcom/connectsdk/service/capability/Launcher$AppState;)V
    .locals 4

    .line 2
    iget-object p1, p0, Lcom/connectsdk/service/DIALService$2;->this$0:Lcom/connectsdk/service/DIALService;

    iget-object v0, p0, Lcom/connectsdk/service/DIALService$2;->val$launchSession:Lcom/connectsdk/service/sessions/LaunchSession;

    invoke-virtual {v0}, Lcom/connectsdk/service/sessions/LaunchSession;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/connectsdk/service/DIALService;->access$000(Lcom/connectsdk/service/DIALService;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iget-object p1, p0, Lcom/connectsdk/service/DIALService$2;->val$launchSession:Lcom/connectsdk/service/sessions/LaunchSession;

    invoke-virtual {p1}, Lcom/connectsdk/service/sessions/LaunchSession;->getSessionId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/connectsdk/service/DIALService$2;->val$launchSession:Lcom/connectsdk/service/sessions/LaunchSession;

    .line 4
    invoke-virtual {p1}, Lcom/connectsdk/service/sessions/LaunchSession;->getSessionId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/connectsdk/service/DIALService$2;->val$launchSession:Lcom/connectsdk/service/sessions/LaunchSession;

    invoke-virtual {p1}, Lcom/connectsdk/service/sessions/LaunchSession;->getSessionId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "run"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/connectsdk/service/DIALService$2;->val$launchSession:Lcom/connectsdk/service/sessions/LaunchSession;

    .line 6
    invoke-virtual {p1}, Lcom/connectsdk/service/sessions/LaunchSession;->getSessionId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "run/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/connectsdk/service/DIALService$2;->this$0:Lcom/connectsdk/service/DIALService;

    iget-object v0, p0, Lcom/connectsdk/service/DIALService$2;->val$launchSession:Lcom/connectsdk/service/sessions/LaunchSession;

    invoke-virtual {v0}, Lcom/connectsdk/service/sessions/LaunchSession;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/connectsdk/service/DIALService;->access$000(Lcom/connectsdk/service/DIALService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 8
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/connectsdk/service/DIALService$2;->this$0:Lcom/connectsdk/service/DIALService;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/connectsdk/service/DIALService$2;->val$launchSession:Lcom/connectsdk/service/sessions/LaunchSession;

    invoke-virtual {v1}, Lcom/connectsdk/service/sessions/LaunchSession;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/run"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/connectsdk/service/DIALService;->access$000(Lcom/connectsdk/service/DIALService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 9
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/connectsdk/service/DIALService$2;->val$launchSession:Lcom/connectsdk/service/sessions/LaunchSession;

    invoke-virtual {p1}, Lcom/connectsdk/service/sessions/LaunchSession;->getSessionId()Ljava/lang/String;

    move-result-object p1

    .line 10
    :goto_2
    new-instance v0, Lcom/connectsdk/service/command/ServiceCommand;

    iget-object v1, p0, Lcom/connectsdk/service/DIALService$2;->val$launchSession:Lcom/connectsdk/service/sessions/LaunchSession;

    .line 11
    invoke-virtual {v1}, Lcom/connectsdk/service/sessions/LaunchSession;->getService()Lcom/connectsdk/service/DeviceService;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/connectsdk/service/DIALService$2;->val$listener:Lcom/connectsdk/service/capability/listeners/ResponseListener;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    const-string p1, "DELETE"

    .line 12
    invoke-virtual {v0, p1}, Lcom/connectsdk/service/command/ServiceCommand;->setHttpMethod(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/connectsdk/service/capability/Launcher$AppState;

    invoke-virtual {p0, p1}, Lcom/connectsdk/service/DIALService$2;->onSuccess(Lcom/connectsdk/service/capability/Launcher$AppState;)V

    return-void
.end method
