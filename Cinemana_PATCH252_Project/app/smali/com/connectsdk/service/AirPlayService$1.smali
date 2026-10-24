.class Lcom/connectsdk/service/AirPlayService$1;
.super Ljava/lang/Object;
.source "AirPlayService.java"

# interfaces
.implements Lcom/connectsdk/service/AirPlayService$PlaybackPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/service/AirPlayService;->getPosition(Lcom/connectsdk/service/capability/MediaControl$PositionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/connectsdk/service/AirPlayService;

.field public final synthetic val$listener:Lcom/connectsdk/service/capability/MediaControl$PositionListener;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/AirPlayService;Lcom/connectsdk/service/capability/MediaControl$PositionListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/AirPlayService$1;->this$0:Lcom/connectsdk/service/AirPlayService;

    iput-object p2, p0, Lcom/connectsdk/service/AirPlayService$1;->val$listener:Lcom/connectsdk/service/capability/MediaControl$PositionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetPlaybackPositionFailed(Lcom/connectsdk/service/command/ServiceCommandError;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/connectsdk/service/AirPlayService$1;->val$listener:Lcom/connectsdk/service/capability/MediaControl$PositionListener;

    new-instance v0, Lcom/connectsdk/service/command/ServiceCommandError;

    const/4 v1, 0x0

    const-string v2, "Unable to get position"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/connectsdk/service/command/ServiceCommandError;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1, v0}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    return-void
.end method

.method public onGetPlaybackPositionSuccess(JJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/connectsdk/service/AirPlayService$1;->val$listener:Lcom/connectsdk/service/capability/MediaControl$PositionListener;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/connectsdk/core/Util;->postSuccess(Lcom/connectsdk/service/capability/listeners/ResponseListener;Ljava/lang/Object;)V

    return-void
.end method
