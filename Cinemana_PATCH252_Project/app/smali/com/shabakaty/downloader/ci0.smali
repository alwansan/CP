.class public final Lcom/shabakaty/downloader/ci0;
.super Ljava/lang/Object;
.source "DLNAControlsActivity.kt"

# interfaces
.implements Lcom/connectsdk/service/capability/MediaControl$PlayStateListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/connectsdk/service/command/ServiceCommandError;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/connectsdk/service/capability/MediaControl$PlayStateStatus;

    .line 2
    sget-object v0, Lcom/connectsdk/service/capability/MediaControl$PlayStateStatus;->Playing:Lcom/connectsdk/service/capability/MediaControl$PlayStateStatus;

    if-ne p1, v0, :cond_0

    .line 3
    invoke-static {}, Lcom/shabakaty/downloader/j51;->b()Lcom/shabakaty/downloader/j51;

    move-result-object p1

    new-instance v0, Lcom/shabakaty/downloader/tu0;

    sget-object v1, Lcom/shabakaty/downloader/tu0;->d:Ljava/lang/Integer;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/tu0;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/j51;->f(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/shabakaty/downloader/j51;->b()Lcom/shabakaty/downloader/j51;

    move-result-object p1

    new-instance v0, Lcom/shabakaty/downloader/tu0;

    sget-object v1, Lcom/shabakaty/downloader/tu0;->c:Ljava/lang/Integer;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/tu0;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/j51;->f(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
