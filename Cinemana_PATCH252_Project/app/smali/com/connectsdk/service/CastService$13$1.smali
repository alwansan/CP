.class Lcom/connectsdk/service/CastService$13$1;
.super Ljava/lang/Object;
.source "CastService.java"

# interfaces
.implements Lcom/shabakaty/downloader/gt3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/service/CastService$13;->onConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/gt3<",
        "Lcom/shabakaty/downloader/nw$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/connectsdk/service/CastService$13;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/CastService$13;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/CastService$13$1;->this$1:Lcom/connectsdk/service/CastService$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/shabakaty/downloader/ft3;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/nw$a;

    invoke-virtual {p0, p1}, Lcom/connectsdk/service/CastService$13$1;->onResult(Lcom/shabakaty/downloader/nw$a;)V

    return-void
.end method

.method public onResult(Lcom/shabakaty/downloader/nw$a;)V
    .locals 4

    .line 2
    invoke-interface {p1}, Lcom/shabakaty/downloader/ft3;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->W0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/shabakaty/downloader/nw$a;->l0()Lcom/shabakaty/downloader/nc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {p1}, Lcom/shabakaty/downloader/nw$a;->l0()Lcom/shabakaty/downloader/nc;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/nc;->s:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {p1}, Lcom/shabakaty/downloader/nw$a;->l0()Lcom/shabakaty/downloader/nc;

    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/shabakaty/downloader/nc;->r:Ljava/lang/String;

    .line 8
    iget-object v1, p0, Lcom/connectsdk/service/CastService$13$1;->this$1:Lcom/connectsdk/service/CastService$13;

    iget-object v1, v1, Lcom/connectsdk/service/CastService$13;->val$webAppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    invoke-interface {p1}, Lcom/shabakaty/downloader/nw$a;->l0()Lcom/shabakaty/downloader/nc;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/connectsdk/service/CastService$13$1;->this$1:Lcom/connectsdk/service/CastService$13;

    iget-object v1, v1, Lcom/connectsdk/service/CastService$13;->this$0:Lcom/connectsdk/service/CastService;

    .line 11
    iget-object v2, v0, Lcom/shabakaty/downloader/nc;->r:Ljava/lang/String;

    .line 12
    iput-object v2, v1, Lcom/connectsdk/service/CastService;->currentAppId:Ljava/lang/String;

    .line 13
    invoke-static {v2}, Lcom/connectsdk/service/sessions/LaunchSession;->launchSessionForAppId(Ljava/lang/String;)Lcom/connectsdk/service/sessions/LaunchSession;

    move-result-object v1

    .line 14
    iget-object v2, v0, Lcom/shabakaty/downloader/nc;->s:Ljava/lang/String;

    .line 15
    invoke-virtual {v1, v2}, Lcom/connectsdk/service/sessions/LaunchSession;->setAppName(Ljava/lang/String;)V

    .line 16
    invoke-interface {p1}, Lcom/shabakaty/downloader/nw$a;->P0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/connectsdk/service/sessions/LaunchSession;->setSessionId(Ljava/lang/String;)V

    .line 17
    sget-object p1, Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;->WebApp:Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;

    invoke-virtual {v1, p1}, Lcom/connectsdk/service/sessions/LaunchSession;->setSessionType(Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;)V

    .line 18
    iget-object p1, p0, Lcom/connectsdk/service/CastService$13$1;->this$1:Lcom/connectsdk/service/CastService$13;

    iget-object p1, p1, Lcom/connectsdk/service/CastService$13;->this$0:Lcom/connectsdk/service/CastService;

    invoke-virtual {v1, p1}, Lcom/connectsdk/service/sessions/LaunchSession;->setService(Lcom/connectsdk/service/DeviceService;)V

    .line 19
    new-instance p1, Lcom/connectsdk/service/sessions/CastWebAppSession;

    iget-object v2, p0, Lcom/connectsdk/service/CastService$13$1;->this$1:Lcom/connectsdk/service/CastService$13;

    iget-object v2, v2, Lcom/connectsdk/service/CastService$13;->this$0:Lcom/connectsdk/service/CastService;

    invoke-direct {p1, v1, v2}, Lcom/connectsdk/service/sessions/CastWebAppSession;-><init>(Lcom/connectsdk/service/sessions/LaunchSession;Lcom/connectsdk/service/DeviceService;)V

    .line 20
    invoke-virtual {p1, v0}, Lcom/connectsdk/service/sessions/CastWebAppSession;->setMetadata(Lcom/shabakaty/downloader/nc;)V

    .line 21
    iget-object v1, p0, Lcom/connectsdk/service/CastService$13$1;->this$1:Lcom/connectsdk/service/CastService$13;

    iget-object v1, v1, Lcom/connectsdk/service/CastService$13;->this$0:Lcom/connectsdk/service/CastService;

    iget-object v1, v1, Lcom/connectsdk/service/CastService;->sessions:Ljava/util/Map;

    .line 22
    iget-object v0, v0, Lcom/shabakaty/downloader/nc;->r:Ljava/lang/String;

    .line 23
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v0, p0, Lcom/connectsdk/service/CastService$13$1;->this$1:Lcom/connectsdk/service/CastService$13;

    iget-object v0, v0, Lcom/connectsdk/service/CastService$13;->val$listener:Lcom/connectsdk/service/sessions/WebAppSession$LaunchListener;

    invoke-static {v0, p1}, Lcom/connectsdk/core/Util;->postSuccess(Lcom/connectsdk/service/capability/listeners/ResponseListener;Ljava/lang/Object;)V

    goto :goto_0

    .line 25
    :cond_0
    new-instance p1, Lcom/shabakaty/downloader/if2;

    invoke-direct {p1}, Lcom/shabakaty/downloader/if2;-><init>()V

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p1, Lcom/shabakaty/downloader/if2;->r:Z

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/connectsdk/service/CastService$13$1;->this$1:Lcom/connectsdk/service/CastService$13;

    iget-object v1, v0, Lcom/connectsdk/service/CastService$13;->this$0:Lcom/connectsdk/service/CastService;

    iget-object v2, v1, Lcom/connectsdk/service/CastService;->mCastClient:Lcom/connectsdk/service/CastService$CastClient;

    iget-object v1, v1, Lcom/connectsdk/service/CastService;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v0, v0, Lcom/connectsdk/service/CastService$13;->val$webAppId:Ljava/lang/String;

    invoke-virtual {v2, v1, v0, p1}, Lcom/connectsdk/service/CastService$CastClient;->launchApplication(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/shabakaty/downloader/if2;)Lcom/shabakaty/downloader/nb3;

    move-result-object p1

    new-instance v0, Lcom/connectsdk/service/CastService$ApplicationConnectionResultCallback;

    iget-object v1, p0, Lcom/connectsdk/service/CastService$13$1;->this$1:Lcom/connectsdk/service/CastService$13;

    iget-object v2, v1, Lcom/connectsdk/service/CastService$13;->this$0:Lcom/connectsdk/service/CastService;

    iget-object v1, v1, Lcom/connectsdk/service/CastService$13;->val$launchWebAppListener:Lcom/connectsdk/service/CastService$LaunchWebAppListener;

    invoke-direct {v0, v2, v1}, Lcom/connectsdk/service/CastService$ApplicationConnectionResultCallback;-><init>(Lcom/connectsdk/service/CastService;Lcom/connectsdk/service/CastService$LaunchWebAppListener;)V

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/nb3;->c(Lcom/shabakaty/downloader/gt3;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 28
    :catch_0
    iget-object p1, p0, Lcom/connectsdk/service/CastService$13$1;->this$1:Lcom/connectsdk/service/CastService$13;

    iget-object p1, p1, Lcom/connectsdk/service/CastService$13;->val$listener:Lcom/connectsdk/service/sessions/WebAppSession$LaunchListener;

    new-instance v0, Lcom/connectsdk/service/command/ServiceCommandError;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "Unable to launch"

    invoke-direct {v0, v1, v3, v2}, Lcom/connectsdk/service/command/ServiceCommandError;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1, v0}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    :goto_0
    return-void
.end method
