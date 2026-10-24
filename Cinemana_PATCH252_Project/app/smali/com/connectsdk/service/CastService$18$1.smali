.class Lcom/connectsdk/service/CastService$18$1;
.super Ljava/lang/Object;
.source "CastService.java"

# interfaces
.implements Lcom/shabakaty/downloader/gt3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/service/CastService$18;->onConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/gt3<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/connectsdk/service/CastService$18;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/CastService$18;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/CastService$18$1;->this$1:Lcom/connectsdk/service/CastService$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/google/android/gms/common/api/Status;)V
    .locals 4

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->W0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/connectsdk/service/CastService$18$1;->this$1:Lcom/connectsdk/service/CastService$18;

    iget-object p1, p1, Lcom/connectsdk/service/CastService$18;->val$listener:Lcom/connectsdk/service/capability/listeners/ResponseListener;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/connectsdk/core/Util;->postSuccess(Lcom/connectsdk/service/capability/listeners/ResponseListener;Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/connectsdk/service/CastService$18$1;->this$1:Lcom/connectsdk/service/CastService$18;

    iget-object v0, v0, Lcom/connectsdk/service/CastService$18;->val$listener:Lcom/connectsdk/service/capability/listeners/ResponseListener;

    new-instance v1, Lcom/connectsdk/service/command/ServiceCommandError;

    .line 5
    iget v2, p1, Lcom/google/android/gms/common/api/Status;->s:I

    .line 6
    iget-object v3, p1, Lcom/google/android/gms/common/api/Status;->t:Ljava/lang/String;

    .line 7
    invoke-direct {v1, v2, v3, p1}, Lcom/connectsdk/service/command/ServiceCommandError;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onResult(Lcom/shabakaty/downloader/ft3;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/connectsdk/service/CastService$18$1;->onResult(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
