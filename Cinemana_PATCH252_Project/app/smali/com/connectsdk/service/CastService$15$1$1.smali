.class Lcom/connectsdk/service/CastService$15$1$1;
.super Ljava/lang/Object;
.source "CastService.java"

# interfaces
.implements Lcom/shabakaty/downloader/gt3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/service/CastService$15$1;->onResult(Lcom/shabakaty/downloader/nw$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/gt3<",
        "Lcom/shabakaty/downloader/cr3$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$2:Lcom/connectsdk/service/CastService$15$1;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/CastService$15$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/CastService$15$1$1;->this$2:Lcom/connectsdk/service/CastService$15$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/shabakaty/downloader/cr3$a;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/connectsdk/service/CastService$15$1$1;->this$2:Lcom/connectsdk/service/CastService$15$1;

    iget-object v0, v0, Lcom/connectsdk/service/CastService$15$1;->this$1:Lcom/connectsdk/service/CastService$15;

    iget-object v0, v0, Lcom/connectsdk/service/CastService$15;->val$listener:Lcom/connectsdk/service/capability/listeners/ResponseListener;

    invoke-static {v0, p1}, Lcom/connectsdk/core/Util;->postSuccess(Lcom/connectsdk/service/capability/listeners/ResponseListener;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onResult(Lcom/shabakaty/downloader/ft3;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/cr3$a;

    invoke-virtual {p0, p1}, Lcom/connectsdk/service/CastService$15$1$1;->onResult(Lcom/shabakaty/downloader/cr3$a;)V

    return-void
.end method
