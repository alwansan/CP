.class Lcom/connectsdk/service/AirPlayService$10$1;
.super Ljava/lang/Object;
.source "AirPlayService.java"

# interfaces
.implements Lcom/connectsdk/service/AirPlayService$PlaybackPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/service/AirPlayService$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/connectsdk/service/AirPlayService$10;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/AirPlayService$10;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/AirPlayService$10$1;->this$1:Lcom/connectsdk/service/AirPlayService$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetPlaybackPositionFailed(Lcom/connectsdk/service/command/ServiceCommandError;)V
    .locals 0

    return-void
.end method

.method public onGetPlaybackPositionSuccess(JJ)V
    .locals 1

    cmp-long v0, p3, p1

    if-ltz v0, :cond_0

    .line 1
    iget-object p1, p0, Lcom/connectsdk/service/AirPlayService$10$1;->this$1:Lcom/connectsdk/service/AirPlayService$10;

    iget-object p1, p1, Lcom/connectsdk/service/AirPlayService$10;->this$0:Lcom/connectsdk/service/AirPlayService;

    invoke-static {p1}, Lcom/connectsdk/service/AirPlayService;->access$400(Lcom/connectsdk/service/AirPlayService;)V

    :cond_0
    return-void
.end method
