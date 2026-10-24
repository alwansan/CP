.class Lcom/connectsdk/service/CastService$ApplicationConnectionResultCallback;
.super Ljava/lang/Object;
.source "CastService.java"

# interfaces
.implements Lcom/shabakaty/downloader/gt3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/connectsdk/service/CastService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ApplicationConnectionResultCallback"
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
.field public listener:Lcom/connectsdk/service/CastService$LaunchWebAppListener;

.field public final synthetic this$0:Lcom/connectsdk/service/CastService;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/CastService;Lcom/connectsdk/service/CastService$LaunchWebAppListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/CastService$ApplicationConnectionResultCallback;->this$0:Lcom/connectsdk/service/CastService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/connectsdk/service/CastService$ApplicationConnectionResultCallback;->listener:Lcom/connectsdk/service/CastService$LaunchWebAppListener;

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/shabakaty/downloader/ft3;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/nw$a;

    invoke-virtual {p0, p1}, Lcom/connectsdk/service/CastService$ApplicationConnectionResultCallback;->onResult(Lcom/shabakaty/downloader/nw$a;)V

    return-void
.end method

.method public onResult(Lcom/shabakaty/downloader/nw$a;)V
    .locals 4

    .line 2
    invoke-interface {p1}, Lcom/shabakaty/downloader/ft3;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->W0()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {p1}, Lcom/shabakaty/downloader/nw$a;->l0()Lcom/shabakaty/downloader/nc;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/connectsdk/service/CastService$ApplicationConnectionResultCallback;->this$0:Lcom/connectsdk/service/CastService;

    .line 6
    iget-object v2, v0, Lcom/shabakaty/downloader/nc;->r:Ljava/lang/String;

    .line 7
    iput-object v2, v1, Lcom/connectsdk/service/CastService;->currentAppId:Ljava/lang/String;

    .line 8
    invoke-static {v2}, Lcom/connectsdk/service/sessions/LaunchSession;->launchSessionForAppId(Ljava/lang/String;)Lcom/connectsdk/service/sessions/LaunchSession;

    move-result-object v1

    .line 9
    iget-object v2, v0, Lcom/shabakaty/downloader/nc;->s:Ljava/lang/String;

    .line 10
    invoke-virtual {v1, v2}, Lcom/connectsdk/service/sessions/LaunchSession;->setAppName(Ljava/lang/String;)V

    .line 11
    invoke-interface {p1}, Lcom/shabakaty/downloader/nw$a;->P0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/connectsdk/service/sessions/LaunchSession;->setSessionId(Ljava/lang/String;)V

    .line 12
    sget-object p1, Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;->WebApp:Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;

    invoke-virtual {v1, p1}, Lcom/connectsdk/service/sessions/LaunchSession;->setSessionType(Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;)V

    .line 13
    iget-object p1, p0, Lcom/connectsdk/service/CastService$ApplicationConnectionResultCallback;->this$0:Lcom/connectsdk/service/CastService;

    invoke-virtual {v1, p1}, Lcom/connectsdk/service/sessions/LaunchSession;->setService(Lcom/connectsdk/service/DeviceService;)V

    .line 14
    new-instance p1, Lcom/connectsdk/service/sessions/CastWebAppSession;

    iget-object v2, p0, Lcom/connectsdk/service/CastService$ApplicationConnectionResultCallback;->this$0:Lcom/connectsdk/service/CastService;

    invoke-direct {p1, v1, v2}, Lcom/connectsdk/service/sessions/CastWebAppSession;-><init>(Lcom/connectsdk/service/sessions/LaunchSession;Lcom/connectsdk/service/DeviceService;)V

    .line 15
    invoke-virtual {p1, v0}, Lcom/connectsdk/service/sessions/CastWebAppSession;->setMetadata(Lcom/shabakaty/downloader/nc;)V

    .line 16
    iget-object v1, p0, Lcom/connectsdk/service/CastService$ApplicationConnectionResultCallback;->this$0:Lcom/connectsdk/service/CastService;

    iget-object v1, v1, Lcom/connectsdk/service/CastService;->sessions:Ljava/util/Map;

    .line 17
    iget-object v0, v0, Lcom/shabakaty/downloader/nc;->r:Ljava/lang/String;

    .line 18
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v0, p0, Lcom/connectsdk/service/CastService$ApplicationConnectionResultCallback;->listener:Lcom/connectsdk/service/CastService$LaunchWebAppListener;

    if-eqz v0, :cond_0

    .line 20
    invoke-interface {v0, p1}, Lcom/connectsdk/service/CastService$LaunchWebAppListener;->onSuccess(Lcom/connectsdk/service/sessions/WebAppSession;)V

    .line 21
    :cond_0
    iget-object p1, p0, Lcom/connectsdk/service/CastService$ApplicationConnectionResultCallback;->this$0:Lcom/connectsdk/service/CastService;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/connectsdk/service/CastService;->launchingAppId:Ljava/lang/String;

    goto :goto_0

    .line 22
    :cond_1
    iget-object p1, p0, Lcom/connectsdk/service/CastService$ApplicationConnectionResultCallback;->listener:Lcom/connectsdk/service/CastService$LaunchWebAppListener;

    if-eqz p1, :cond_2

    .line 23
    new-instance v1, Lcom/connectsdk/service/command/ServiceCommandError;

    .line 24
    iget v2, v0, Lcom/google/android/gms/common/api/Status;->s:I

    .line 25
    iget-object v3, v0, Lcom/google/android/gms/common/api/Status;->t:Ljava/lang/String;

    .line 26
    invoke-direct {v1, v2, v3, v0}, Lcom/connectsdk/service/command/ServiceCommandError;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Lcom/connectsdk/service/CastService$LaunchWebAppListener;->onFailure(Lcom/connectsdk/service/command/ServiceCommandError;)V

    :cond_2
    :goto_0
    return-void
.end method
