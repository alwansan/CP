.class Lcom/connectsdk/service/WebOSTVService$2$4;
.super Ljava/lang/Object;
.source "WebOSTVService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/service/WebOSTVService$2;->onBeforeRegister(Lcom/connectsdk/service/DeviceService$PairingType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/connectsdk/service/WebOSTVService$2;

.field public final synthetic val$pairingType:Lcom/connectsdk/service/DeviceService$PairingType;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/WebOSTVService$2;Lcom/connectsdk/service/DeviceService$PairingType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/WebOSTVService$2$4;->this$1:Lcom/connectsdk/service/WebOSTVService$2;

    iput-object p2, p0, Lcom/connectsdk/service/WebOSTVService$2$4;->val$pairingType:Lcom/connectsdk/service/DeviceService$PairingType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/WebOSTVService$2$4;->this$1:Lcom/connectsdk/service/WebOSTVService$2;

    iget-object v0, v0, Lcom/connectsdk/service/WebOSTVService$2;->this$0:Lcom/connectsdk/service/WebOSTVService;

    iget-object v1, v0, Lcom/connectsdk/service/DeviceService;->listener:Lcom/connectsdk/service/DeviceService$DeviceServiceListener;

    if-eqz v1, :cond_0

    .line 2
    iget-object v2, p0, Lcom/connectsdk/service/WebOSTVService$2$4;->val$pairingType:Lcom/connectsdk/service/DeviceService$PairingType;

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, v3}, Lcom/connectsdk/service/DeviceService$DeviceServiceListener;->onPairingRequired(Lcom/connectsdk/service/DeviceService;Lcom/connectsdk/service/DeviceService$PairingType;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
