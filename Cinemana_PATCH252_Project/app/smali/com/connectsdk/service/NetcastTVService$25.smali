.class Lcom/connectsdk/service/NetcastTVService$25;
.super Ljava/lang/Object;
.source "NetcastTVService.java"

# interfaces
.implements Lcom/connectsdk/service/capability/VolumeControl$VolumeStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/service/NetcastTVService;->setMute(ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/connectsdk/service/NetcastTVService;

.field public final synthetic val$isMute:Z

.field public final synthetic val$listener:Lcom/connectsdk/service/capability/listeners/ResponseListener;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/NetcastTVService;ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/NetcastTVService$25;->this$0:Lcom/connectsdk/service/NetcastTVService;

    iput-boolean p2, p0, Lcom/connectsdk/service/NetcastTVService$25;->val$isMute:Z

    iput-object p3, p0, Lcom/connectsdk/service/NetcastTVService$25;->val$listener:Lcom/connectsdk/service/capability/listeners/ResponseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/connectsdk/service/command/ServiceCommandError;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/NetcastTVService$25;->val$listener:Lcom/connectsdk/service/capability/listeners/ResponseListener;

    invoke-static {v0, p1}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    return-void
.end method

.method public onSuccess(Lcom/connectsdk/service/capability/VolumeControl$VolumeStatus;)V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/connectsdk/service/NetcastTVService$25;->val$isMute:Z

    iget-boolean p1, p1, Lcom/connectsdk/service/capability/VolumeControl$VolumeStatus;->isMute:Z

    if-eq v0, p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/connectsdk/service/NetcastTVService$25;->this$0:Lcom/connectsdk/service/NetcastTVService;

    sget-object v0, Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;->MUTE:Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;

    invoke-virtual {v0}, Lcom/connectsdk/service/netcast/NetcastVirtualKeycodes;->getCode()I

    move-result v0

    iget-object v1, p0, Lcom/connectsdk/service/NetcastTVService$25;->val$listener:Lcom/connectsdk/service/capability/listeners/ResponseListener;

    invoke-static {p1, v0, v1}, Lcom/connectsdk/service/NetcastTVService;->access$900(Lcom/connectsdk/service/NetcastTVService;ILcom/connectsdk/service/capability/listeners/ResponseListener;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/connectsdk/service/capability/VolumeControl$VolumeStatus;

    invoke-virtual {p0, p1}, Lcom/connectsdk/service/NetcastTVService$25;->onSuccess(Lcom/connectsdk/service/capability/VolumeControl$VolumeStatus;)V

    return-void
.end method
