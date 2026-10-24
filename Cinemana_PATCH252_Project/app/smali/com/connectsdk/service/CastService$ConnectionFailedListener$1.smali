.class Lcom/connectsdk/service/CastService$ConnectionFailedListener$1;
.super Ljava/lang/Object;
.source "CastService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/service/CastService$ConnectionFailedListener;->onConnectionFailed(Lcom/shabakaty/downloader/gb0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/connectsdk/service/CastService$ConnectionFailedListener;

.field public final synthetic val$result:Lcom/shabakaty/downloader/gb0;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/CastService$ConnectionFailedListener;Lcom/shabakaty/downloader/gb0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/CastService$ConnectionFailedListener$1;->this$1:Lcom/connectsdk/service/CastService$ConnectionFailedListener;

    iput-object p2, p0, Lcom/connectsdk/service/CastService$ConnectionFailedListener$1;->val$result:Lcom/shabakaty/downloader/gb0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/CastService$ConnectionFailedListener$1;->this$1:Lcom/connectsdk/service/CastService$ConnectionFailedListener;

    iget-object v0, v0, Lcom/connectsdk/service/CastService$ConnectionFailedListener;->this$0:Lcom/connectsdk/service/CastService;

    iget-object v0, v0, Lcom/connectsdk/service/DeviceService;->listener:Lcom/connectsdk/service/DeviceService$DeviceServiceListener;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/connectsdk/service/command/ServiceCommandError;

    iget-object v1, p0, Lcom/connectsdk/service/CastService$ConnectionFailedListener$1;->val$result:Lcom/shabakaty/downloader/gb0;

    .line 3
    iget v2, v1, Lcom/shabakaty/downloader/gb0;->s:I

    const-string v3, "Failed to connect to Google Cast device"

    .line 4
    invoke-direct {v0, v2, v3, v1}, Lcom/connectsdk/service/command/ServiceCommandError;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .line 5
    iget-object v1, p0, Lcom/connectsdk/service/CastService$ConnectionFailedListener$1;->this$1:Lcom/connectsdk/service/CastService$ConnectionFailedListener;

    iget-object v1, v1, Lcom/connectsdk/service/CastService$ConnectionFailedListener;->this$0:Lcom/connectsdk/service/CastService;

    iget-object v2, v1, Lcom/connectsdk/service/DeviceService;->listener:Lcom/connectsdk/service/DeviceService$DeviceServiceListener;

    invoke-interface {v2, v1, v0}, Lcom/connectsdk/service/DeviceService$DeviceServiceListener;->onConnectionFailure(Lcom/connectsdk/service/DeviceService;Ljava/lang/Error;)V

    :cond_0
    return-void
.end method
