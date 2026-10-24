.class Lcom/connectsdk/service/CastService$CastListener$2;
.super Ljava/lang/Object;
.source "CastService.java"

# interfaces
.implements Lcom/connectsdk/service/CastService$ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/service/CastService$CastListener;->onVolumeChanged()V
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
    iput-object p1, p0, Lcom/connectsdk/service/CastService$CastListener$2;->this$1:Lcom/connectsdk/service/CastService$CastListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/connectsdk/service/CastService$CastListener$2;->this$1:Lcom/connectsdk/service/CastService$CastListener;

    iget-object v0, v0, Lcom/connectsdk/service/CastService$CastListener;->this$0:Lcom/connectsdk/service/CastService;

    iget-object v1, v0, Lcom/connectsdk/service/CastService;->mCastClient:Lcom/connectsdk/service/CastService$CastClient;

    iget-object v2, v0, Lcom/connectsdk/service/CastService;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v1, v2}, Lcom/connectsdk/service/CastService$CastClient;->getVolume(Lcom/google/android/gms/common/api/GoogleApiClient;)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lcom/connectsdk/service/CastService;->currentVolumeLevel:F

    .line 2
    iget-object v0, p0, Lcom/connectsdk/service/CastService$CastListener$2;->this$1:Lcom/connectsdk/service/CastService$CastListener;

    iget-object v0, v0, Lcom/connectsdk/service/CastService$CastListener;->this$0:Lcom/connectsdk/service/CastService;

    iget-object v1, v0, Lcom/connectsdk/service/CastService;->mCastClient:Lcom/connectsdk/service/CastService$CastClient;

    iget-object v2, v0, Lcom/connectsdk/service/CastService;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v1, v2}, Lcom/connectsdk/service/CastService$CastClient;->isMute(Lcom/google/android/gms/common/api/GoogleApiClient;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/connectsdk/service/CastService;->currentMuteStatus:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/connectsdk/service/CastService$CastListener$2;->this$1:Lcom/connectsdk/service/CastService$CastListener;

    iget-object v0, v0, Lcom/connectsdk/service/CastService$CastListener;->this$0:Lcom/connectsdk/service/CastService;

    iget-object v0, v0, Lcom/connectsdk/service/CastService;->subscriptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/connectsdk/service/CastService$CastListener$2;->this$1:Lcom/connectsdk/service/CastService$CastListener;

    iget-object v0, v0, Lcom/connectsdk/service/CastService$CastListener;->this$0:Lcom/connectsdk/service/CastService;

    iget-object v0, v0, Lcom/connectsdk/service/CastService;->subscriptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/connectsdk/service/command/URLServiceSubscription;

    .line 6
    invoke-virtual {v1}, Lcom/connectsdk/service/command/ServiceCommand;->getTarget()Ljava/lang/String;

    move-result-object v2

    const-string v3, "volume"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 7
    :goto_1
    invoke-virtual {v1}, Lcom/connectsdk/service/command/URLServiceSubscription;->getListeners()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_0

    .line 8
    invoke-virtual {v1}, Lcom/connectsdk/service/command/URLServiceSubscription;->getListeners()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/connectsdk/service/capability/listeners/ResponseListener;

    .line 9
    iget-object v4, p0, Lcom/connectsdk/service/CastService$CastListener$2;->this$1:Lcom/connectsdk/service/CastService$CastListener;

    iget-object v4, v4, Lcom/connectsdk/service/CastService$CastListener;->this$0:Lcom/connectsdk/service/CastService;

    iget v4, v4, Lcom/connectsdk/service/CastService;->currentVolumeLevel:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/connectsdk/core/Util;->postSuccess(Lcom/connectsdk/service/capability/listeners/ResponseListener;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v1}, Lcom/connectsdk/service/command/ServiceCommand;->getTarget()Ljava/lang/String;

    move-result-object v2

    const-string v4, "mute"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 11
    :goto_2
    invoke-virtual {v1}, Lcom/connectsdk/service/command/URLServiceSubscription;->getListeners()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_0

    .line 12
    invoke-virtual {v1}, Lcom/connectsdk/service/command/URLServiceSubscription;->getListeners()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/connectsdk/service/capability/listeners/ResponseListener;

    .line 13
    iget-object v4, p0, Lcom/connectsdk/service/CastService$CastListener$2;->this$1:Lcom/connectsdk/service/CastService$CastListener;

    iget-object v4, v4, Lcom/connectsdk/service/CastService$CastListener;->this$0:Lcom/connectsdk/service/CastService;

    iget-boolean v4, v4, Lcom/connectsdk/service/CastService;->currentMuteStatus:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/connectsdk/core/Util;->postSuccess(Lcom/connectsdk/service/capability/listeners/ResponseListener;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method
