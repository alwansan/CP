.class Lcom/connectsdk/service/CastService$15$1;
.super Ljava/lang/Object;
.source "CastService.java"

# interfaces
.implements Lcom/shabakaty/downloader/gt3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/service/CastService$15;->onConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/gt3<",
        "Lcom/shabakaty/downloader/nw$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/connectsdk/service/CastService$15;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/CastService$15;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/CastService$15$1;->this$1:Lcom/connectsdk/service/CastService$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/shabakaty/downloader/ft3;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/nw$a;

    invoke-virtual {p0, p1}, Lcom/connectsdk/service/CastService$15$1;->onResult(Lcom/shabakaty/downloader/nw$a;)V

    return-void
.end method

.method public onResult(Lcom/shabakaty/downloader/nw$a;)V
    .locals 4

    .line 2
    invoke-interface {p1}, Lcom/shabakaty/downloader/ft3;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->W0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {p1}, Lcom/shabakaty/downloader/nw$a;->l0()Lcom/shabakaty/downloader/nc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {p1}, Lcom/shabakaty/downloader/nw$a;->l0()Lcom/shabakaty/downloader/nc;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/nc;->s:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {p1}, Lcom/shabakaty/downloader/nw$a;->l0()Lcom/shabakaty/downloader/nc;

    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/shabakaty/downloader/nc;->s:Ljava/lang/String;

    const-string v1, "Backdrop"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/connectsdk/service/CastService$15$1;->this$1:Lcom/connectsdk/service/CastService$15;

    iget-object v0, v0, Lcom/connectsdk/service/CastService$15;->this$0:Lcom/connectsdk/service/CastService;

    iget-object v1, v0, Lcom/connectsdk/service/CastService;->mMediaPlayer:Lcom/shabakaty/downloader/cr3;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/connectsdk/service/CastService;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/cr3;->c(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/shabakaty/downloader/nb3;

    move-result-object p1

    new-instance v0, Lcom/connectsdk/service/CastService$15$1$1;

    invoke-direct {v0, p0}, Lcom/connectsdk/service/CastService$15$1$1;-><init>(Lcom/connectsdk/service/CastService$15$1;)V

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/nb3;->c(Lcom/shabakaty/downloader/gt3;)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/connectsdk/service/CastService$15$1;->this$1:Lcom/connectsdk/service/CastService$15;

    iget-object v0, v0, Lcom/connectsdk/service/CastService$15;->val$listener:Lcom/connectsdk/service/capability/listeners/ResponseListener;

    invoke-static {v0, p1}, Lcom/connectsdk/core/Util;->postSuccess(Lcom/connectsdk/service/capability/listeners/ResponseListener;Ljava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/connectsdk/service/CastService$15$1;->this$1:Lcom/connectsdk/service/CastService$15;

    iget-object v0, v0, Lcom/connectsdk/service/CastService$15;->val$listener:Lcom/connectsdk/service/capability/listeners/ResponseListener;

    new-instance v1, Lcom/connectsdk/service/command/ServiceCommandError;

    const/4 v2, 0x0

    const-string v3, "Failed to join application"

    invoke-direct {v1, v2, v3, p1}, Lcom/connectsdk/service/command/ServiceCommandError;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    :goto_0
    return-void
.end method
