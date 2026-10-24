.class Lcom/connectsdk/service/CastService$21;
.super Ljava/lang/Object;
.source "CastService.java"

# interfaces
.implements Lcom/connectsdk/service/CastService$ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/service/CastService;->setVolume(FLcom/connectsdk/service/capability/listeners/ResponseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/connectsdk/service/CastService;

.field public final synthetic val$listener:Lcom/connectsdk/service/capability/listeners/ResponseListener;

.field public final synthetic val$volume:F


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/CastService;FLcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/CastService$21;->this$0:Lcom/connectsdk/service/CastService;

    iput p2, p0, Lcom/connectsdk/service/CastService$21;->val$volume:F

    iput-object p3, p0, Lcom/connectsdk/service/CastService$21;->val$listener:Lcom/connectsdk/service/capability/listeners/ResponseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/connectsdk/service/CastService$21;->this$0:Lcom/connectsdk/service/CastService;

    iget-object v2, v1, Lcom/connectsdk/service/CastService;->mCastClient:Lcom/connectsdk/service/CastService$CastClient;

    iget-object v1, v1, Lcom/connectsdk/service/CastService;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget v3, p0, Lcom/connectsdk/service/CastService$21;->val$volume:F

    invoke-virtual {v2, v1, v3}, Lcom/connectsdk/service/CastService$CastClient;->setVolume(Lcom/google/android/gms/common/api/GoogleApiClient;F)V

    .line 2
    iget-object v1, p0, Lcom/connectsdk/service/CastService$21;->val$listener:Lcom/connectsdk/service/capability/listeners/ResponseListener;

    invoke-static {v1, v0}, Lcom/connectsdk/core/Util;->postSuccess(Lcom/connectsdk/service/capability/listeners/ResponseListener;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    iget-object v1, p0, Lcom/connectsdk/service/CastService$21;->val$listener:Lcom/connectsdk/service/capability/listeners/ResponseListener;

    const/4 v2, 0x0

    const-string v3, "setting volume level failed"

    invoke-static {v2, v3, v0, v1}, Lcom/shabakaty/downloader/ww;->a(ILjava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    :goto_0
    return-void
.end method
