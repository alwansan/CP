.class Lcom/connectsdk/service/DeviceService$1;
.super Ljava/lang/Object;
.source "DeviceService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/service/DeviceService;->reportConnected(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/connectsdk/service/DeviceService;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/DeviceService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/DeviceService$1;->this$0:Lcom/connectsdk/service/DeviceService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/DeviceService$1;->this$0:Lcom/connectsdk/service/DeviceService;

    iget-object v1, v0, Lcom/connectsdk/service/DeviceService;->listener:Lcom/connectsdk/service/DeviceService$DeviceServiceListener;

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v1, v0}, Lcom/connectsdk/service/DeviceService$DeviceServiceListener;->onConnectionSuccess(Lcom/connectsdk/service/DeviceService;)V

    :cond_0
    return-void
.end method
