.class Lcom/connectsdk/service/CastService$10;
.super Ljava/lang/Object;
.source "CastService.java"

# interfaces
.implements Lcom/shabakaty/downloader/gt3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/service/CastService;->loadMedia(Lcom/google/android/gms/cast/MediaInfo;Lcom/connectsdk/service/sessions/WebAppSession;Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/gt3<",
        "Lcom/shabakaty/downloader/cr3$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/connectsdk/service/CastService;

.field public final synthetic val$listener:Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;

.field public final synthetic val$webAppSession:Lcom/connectsdk/service/sessions/WebAppSession;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/CastService;Lcom/connectsdk/service/sessions/WebAppSession;Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/CastService$10;->this$0:Lcom/connectsdk/service/CastService;

    iput-object p2, p0, Lcom/connectsdk/service/CastService$10;->val$webAppSession:Lcom/connectsdk/service/sessions/WebAppSession;

    iput-object p3, p0, Lcom/connectsdk/service/CastService$10;->val$listener:Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/shabakaty/downloader/cr3$a;)V
    .locals 5

    .line 2
    invoke-interface {p1}, Lcom/shabakaty/downloader/ft3;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->W0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/connectsdk/service/CastService$10;->val$webAppSession:Lcom/connectsdk/service/sessions/WebAppSession;

    iget-object p1, p1, Lcom/connectsdk/service/sessions/WebAppSession;->launchSession:Lcom/connectsdk/service/sessions/LaunchSession;

    sget-object v0, Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;->Media:Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;

    invoke-virtual {p1, v0}, Lcom/connectsdk/service/sessions/LaunchSession;->setSessionType(Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;)V

    .line 5
    iget-object p1, p0, Lcom/connectsdk/service/CastService$10;->this$0:Lcom/connectsdk/service/CastService;

    iget-object v0, p1, Lcom/connectsdk/service/CastService;->mMediaPlayer:Lcom/shabakaty/downloader/cr3;

    iget-object p1, p1, Lcom/connectsdk/service/CastService;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    const-wide/16 v3, 0x1

    aput-wide v3, v1, v2

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v2, Lcom/shabakaty/downloader/lu5;

    invoke-direct {v2, v0, p1, v1}, Lcom/shabakaty/downloader/lu5;-><init>(Lcom/shabakaty/downloader/cr3;Lcom/google/android/gms/common/api/GoogleApiClient;[J)V

    invoke-virtual {p1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->c(Lcom/google/android/gms/common/api/internal/b;)Lcom/google/android/gms/common/api/internal/b;

    .line 7
    iget-object p1, p0, Lcom/connectsdk/service/CastService$10;->val$listener:Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;

    new-instance v0, Lcom/connectsdk/service/capability/MediaPlayer$MediaLaunchObject;

    iget-object v1, p0, Lcom/connectsdk/service/CastService$10;->val$webAppSession:Lcom/connectsdk/service/sessions/WebAppSession;

    iget-object v1, v1, Lcom/connectsdk/service/sessions/WebAppSession;->launchSession:Lcom/connectsdk/service/sessions/LaunchSession;

    iget-object v2, p0, Lcom/connectsdk/service/CastService$10;->this$0:Lcom/connectsdk/service/CastService;

    invoke-direct {v0, v1, v2}, Lcom/connectsdk/service/capability/MediaPlayer$MediaLaunchObject;-><init>(Lcom/connectsdk/service/sessions/LaunchSession;Lcom/connectsdk/service/capability/MediaControl;)V

    invoke-static {p1, v0}, Lcom/connectsdk/core/Util;->postSuccess(Lcom/connectsdk/service/capability/listeners/ResponseListener;Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/connectsdk/service/CastService$10;->val$listener:Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;

    new-instance v1, Lcom/connectsdk/service/command/ServiceCommandError;

    .line 9
    iget v2, p1, Lcom/google/android/gms/common/api/Status;->s:I

    .line 10
    iget-object v3, p1, Lcom/google/android/gms/common/api/Status;->t:Ljava/lang/String;

    .line 11
    invoke-direct {v1, v2, v3, p1}, Lcom/connectsdk/service/command/ServiceCommandError;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onResult(Lcom/shabakaty/downloader/ft3;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/cr3$a;

    invoke-virtual {p0, p1}, Lcom/connectsdk/service/CastService$10;->onResult(Lcom/shabakaty/downloader/cr3$a;)V

    return-void
.end method
