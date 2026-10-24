.class Lcom/connectsdk/service/CastService$ConnectionCallbacks$1;
.super Ljava/lang/Object;
.source "CastService.java"

# interfaces
.implements Lcom/shabakaty/downloader/gt3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/service/CastService$ConnectionCallbacks;->onConnected(Landroid/os/Bundle;)V
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
.field public final synthetic this$1:Lcom/connectsdk/service/CastService$ConnectionCallbacks;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/CastService$ConnectionCallbacks;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/CastService$ConnectionCallbacks$1;->this$1:Lcom/connectsdk/service/CastService$ConnectionCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/shabakaty/downloader/ft3;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/nw$a;

    invoke-virtual {p0, p1}, Lcom/connectsdk/service/CastService$ConnectionCallbacks$1;->onResult(Lcom/shabakaty/downloader/nw$a;)V

    return-void
.end method

.method public onResult(Lcom/shabakaty/downloader/nw$a;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/connectsdk/service/CastService$ConnectionCallbacks$1;->this$1:Lcom/connectsdk/service/CastService$ConnectionCallbacks;

    invoke-static {v0, p1}, Lcom/connectsdk/service/CastService$ConnectionCallbacks;->access$700(Lcom/connectsdk/service/CastService$ConnectionCallbacks;Lcom/shabakaty/downloader/nw$a;)V

    return-void
.end method
