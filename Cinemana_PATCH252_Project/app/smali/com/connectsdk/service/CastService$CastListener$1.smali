.class Lcom/connectsdk/service/CastService$CastListener$1;
.super Ljava/lang/Object;
.source "CastService.java"

# interfaces
.implements Lcom/connectsdk/service/CastService$ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/service/CastService$CastListener;->onApplicationStatusChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/connectsdk/service/CastService$CastListener;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/CastService$CastListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/CastService$CastListener$1;->this$1:Lcom/connectsdk/service/CastService$CastListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/CastService$CastListener$1;->this$1:Lcom/connectsdk/service/CastService$CastListener;

    iget-object v0, v0, Lcom/connectsdk/service/CastService$CastListener;->this$0:Lcom/connectsdk/service/CastService;

    iget-object v1, v0, Lcom/connectsdk/service/CastService;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v1, :cond_0

    .line 2
    :try_start_0
    iget-object v0, v0, Lcom/connectsdk/service/CastService;->mCastClient:Lcom/connectsdk/service/CastService$CastClient;

    invoke-virtual {v0, v1}, Lcom/connectsdk/service/CastService$CastClient;->getApplicationMetadata(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/shabakaty/downloader/nc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/connectsdk/service/CastService$CastListener$1;->this$1:Lcom/connectsdk/service/CastService$CastListener;

    iget-object v1, v1, Lcom/connectsdk/service/CastService$CastListener;->this$0:Lcom/connectsdk/service/CastService;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/nc;->r:Ljava/lang/String;

    .line 5
    iput-object v0, v1, Lcom/connectsdk/service/CastService;->currentAppId:Ljava/lang/String;
    :try_end_0
    .catch Lcom/connectsdk/service/CastService$CastClientException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    sget-object v1, Lcom/connectsdk/core/Util;->T:Ljava/lang/String;

    const-string v2, "Error in onApplicationStatusChanged"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
