.class Lcom/connectsdk/service/CastService$19;
.super Ljava/lang/Object;
.source "CastService.java"

# interfaces
.implements Lcom/connectsdk/service/capability/VolumeControl$VolumeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/service/CastService;->volumeUp(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/connectsdk/service/CastService;

.field public final synthetic val$listener:Lcom/connectsdk/service/capability/listeners/ResponseListener;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/CastService;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/CastService$19;->this$0:Lcom/connectsdk/service/CastService;

    iput-object p2, p0, Lcom/connectsdk/service/CastService$19;->val$listener:Lcom/connectsdk/service/capability/listeners/ResponseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/connectsdk/service/command/ServiceCommandError;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/CastService$19;->val$listener:Lcom/connectsdk/service/capability/listeners/ResponseListener;

    invoke-static {v0, p1}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Float;)V
    .locals 7

    .line 2
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    const/4 v2, 0x0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v0, v3

    if-ltz v5, :cond_0

    .line 3
    iget-object p1, p0, Lcom/connectsdk/service/CastService$19;->val$listener:Lcom/connectsdk/service/capability/listeners/ResponseListener;

    invoke-static {p1, v2}, Lcom/connectsdk/core/Util;->postSuccess(Lcom/connectsdk/service/capability/listeners/ResponseListener;Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v0, p1

    const-wide v5, 0x3f847ae147ae147bL    # 0.01

    add-double/2addr v0, v5

    double-to-float p1, v0

    float-to-double v0, p1

    cmpl-double v5, v0, v3

    if-lez v5, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/connectsdk/service/CastService$19;->this$0:Lcom/connectsdk/service/CastService;

    iget-object v1, p0, Lcom/connectsdk/service/CastService$19;->val$listener:Lcom/connectsdk/service/capability/listeners/ResponseListener;

    invoke-virtual {v0, p1, v1}, Lcom/connectsdk/service/CastService;->setVolume(FLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 6
    iget-object p1, p0, Lcom/connectsdk/service/CastService$19;->val$listener:Lcom/connectsdk/service/capability/listeners/ResponseListener;

    invoke-static {p1, v2}, Lcom/connectsdk/core/Util;->postSuccess(Lcom/connectsdk/service/capability/listeners/ResponseListener;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lcom/connectsdk/service/CastService$19;->onSuccess(Ljava/lang/Float;)V

    return-void
.end method
