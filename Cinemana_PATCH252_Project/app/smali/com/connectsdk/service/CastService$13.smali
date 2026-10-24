.class Lcom/connectsdk/service/CastService$13;
.super Ljava/lang/Object;
.source "CastService.java"

# interfaces
.implements Lcom/connectsdk/service/CastService$ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/service/CastService;->launchWebApp(Ljava/lang/String;ZLcom/connectsdk/service/sessions/WebAppSession$LaunchListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/connectsdk/service/CastService;

.field public final synthetic val$launchWebAppListener:Lcom/connectsdk/service/CastService$LaunchWebAppListener;

.field public final synthetic val$listener:Lcom/connectsdk/service/sessions/WebAppSession$LaunchListener;

.field public final synthetic val$relaunchIfRunning:Z

.field public final synthetic val$webAppId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/CastService;ZLjava/lang/String;Lcom/connectsdk/service/sessions/WebAppSession$LaunchListener;Lcom/connectsdk/service/CastService$LaunchWebAppListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/CastService$13;->this$0:Lcom/connectsdk/service/CastService;

    iput-boolean p2, p0, Lcom/connectsdk/service/CastService$13;->val$relaunchIfRunning:Z

    iput-object p3, p0, Lcom/connectsdk/service/CastService$13;->val$webAppId:Ljava/lang/String;

    iput-object p4, p0, Lcom/connectsdk/service/CastService$13;->val$listener:Lcom/connectsdk/service/sessions/WebAppSession$LaunchListener;

    iput-object p5, p0, Lcom/connectsdk/service/CastService$13;->val$launchWebAppListener:Lcom/connectsdk/service/CastService$LaunchWebAppListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 5

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/connectsdk/service/CastService$13;->val$relaunchIfRunning:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/connectsdk/service/CastService$13;->this$0:Lcom/connectsdk/service/CastService;

    iget-object v1, v0, Lcom/connectsdk/service/CastService;->mCastClient:Lcom/connectsdk/service/CastService$CastClient;

    iget-object v0, v0, Lcom/connectsdk/service/CastService;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v1, v0}, Lcom/connectsdk/service/CastService$CastClient;->joinApplication(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/shabakaty/downloader/nb3;

    move-result-object v0

    new-instance v1, Lcom/connectsdk/service/CastService$13$1;

    invoke-direct {v1, p0}, Lcom/connectsdk/service/CastService$13$1;-><init>(Lcom/connectsdk/service/CastService$13;)V

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/nb3;->c(Lcom/shabakaty/downloader/gt3;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/if2;

    invoke-direct {v0}, Lcom/shabakaty/downloader/if2;-><init>()V

    .line 4
    iget-boolean v1, p0, Lcom/connectsdk/service/CastService$13;->val$relaunchIfRunning:Z

    .line 5
    iput-boolean v1, v0, Lcom/shabakaty/downloader/if2;->r:Z

    .line 6
    iget-object v1, p0, Lcom/connectsdk/service/CastService$13;->this$0:Lcom/connectsdk/service/CastService;

    iget-object v2, v1, Lcom/connectsdk/service/CastService;->mCastClient:Lcom/connectsdk/service/CastService$CastClient;

    iget-object v1, v1, Lcom/connectsdk/service/CastService;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v3, p0, Lcom/connectsdk/service/CastService$13;->val$webAppId:Ljava/lang/String;

    invoke-virtual {v2, v1, v3, v0}, Lcom/connectsdk/service/CastService$CastClient;->launchApplication(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/shabakaty/downloader/if2;)Lcom/shabakaty/downloader/nb3;

    move-result-object v0

    new-instance v1, Lcom/connectsdk/service/CastService$ApplicationConnectionResultCallback;

    iget-object v2, p0, Lcom/connectsdk/service/CastService$13;->this$0:Lcom/connectsdk/service/CastService;

    iget-object v3, p0, Lcom/connectsdk/service/CastService$13;->val$launchWebAppListener:Lcom/connectsdk/service/CastService$LaunchWebAppListener;

    invoke-direct {v1, v2, v3}, Lcom/connectsdk/service/CastService$ApplicationConnectionResultCallback;-><init>(Lcom/connectsdk/service/CastService;Lcom/connectsdk/service/CastService$LaunchWebAppListener;)V

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/nb3;->c(Lcom/shabakaty/downloader/gt3;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7
    :catch_0
    iget-object v0, p0, Lcom/connectsdk/service/CastService$13;->val$listener:Lcom/connectsdk/service/sessions/WebAppSession$LaunchListener;

    new-instance v1, Lcom/connectsdk/service/command/ServiceCommandError;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "Unable to launch"

    invoke-direct {v1, v2, v4, v3}, Lcom/connectsdk/service/command/ServiceCommandError;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    :goto_0
    return-void
.end method
