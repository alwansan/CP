.class Lcom/connectsdk/service/CastService$1;
.super Ljava/lang/Object;
.source "CastService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/service/CastService;->disconnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/connectsdk/service/CastService;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/CastService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/CastService$1;->this$0:Lcom/connectsdk/service/CastService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/CastService$1;->this$0:Lcom/connectsdk/service/CastService;

    invoke-virtual {v0}, Lcom/connectsdk/service/DeviceService;->getListener()Lcom/connectsdk/service/DeviceService$DeviceServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/connectsdk/service/CastService$1;->this$0:Lcom/connectsdk/service/CastService;

    invoke-virtual {v0}, Lcom/connectsdk/service/DeviceService;->getListener()Lcom/connectsdk/service/DeviceService$DeviceServiceListener;

    move-result-object v0

    iget-object v1, p0, Lcom/connectsdk/service/CastService$1;->this$0:Lcom/connectsdk/service/CastService;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/connectsdk/service/DeviceService$DeviceServiceListener;->onDisconnect(Lcom/connectsdk/service/DeviceService;Ljava/lang/Error;)V

    :cond_0
    return-void
.end method
