.class Lcom/connectsdk/service/CastService$ConnectionFailedListener;
.super Ljava/lang/Object;
.source "CastService.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/connectsdk/service/CastService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConnectionFailedListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/connectsdk/service/CastService;


# direct methods
.method private constructor <init>(Lcom/connectsdk/service/CastService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/CastService$ConnectionFailedListener;->this$0:Lcom/connectsdk/service/CastService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/connectsdk/service/CastService;Lcom/connectsdk/service/CastService$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/connectsdk/service/CastService$ConnectionFailedListener;-><init>(Lcom/connectsdk/service/CastService;)V

    return-void
.end method


# virtual methods
.method public onConnectionFailed(Lcom/shabakaty/downloader/gb0;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/connectsdk/core/Util;->T:Ljava/lang/String;

    const-string v1, "ConnectionFailedListener.onConnectionFailed "

    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_0

    move-object v2, p1

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/connectsdk/service/CastService$ConnectionFailedListener;->this$0:Lcom/connectsdk/service/CastService;

    invoke-static {v0}, Lcom/connectsdk/service/CastService;->access$500(Lcom/connectsdk/service/CastService;)V

    .line 3
    iget-object v0, p0, Lcom/connectsdk/service/CastService$ConnectionFailedListener;->this$0:Lcom/connectsdk/service/CastService;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/connectsdk/service/DeviceService;->connected:Z

    .line 4
    iput-boolean v1, v0, Lcom/connectsdk/service/CastService;->mWaitingForReconnect:Z

    const/4 v1, 0x0

    .line 5
    iput-object v1, v0, Lcom/connectsdk/service/CastService;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 6
    new-instance v0, Lcom/connectsdk/service/CastService$ConnectionFailedListener$1;

    invoke-direct {v0, p0, p1}, Lcom/connectsdk/service/CastService$ConnectionFailedListener$1;-><init>(Lcom/connectsdk/service/CastService$ConnectionFailedListener;Lcom/shabakaty/downloader/gb0;)V

    invoke-static {v0}, Lcom/connectsdk/core/Util;->runOnUI(Ljava/lang/Runnable;)V

    return-void
.end method
