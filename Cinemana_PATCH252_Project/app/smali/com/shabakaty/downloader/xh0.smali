.class public final Lcom/shabakaty/downloader/xh0;
.super Ljava/lang/Object;
.source "DLNAControllerService.kt"

# interfaces
.implements Lcom/connectsdk/service/capability/MediaControl$PlayStateListener;


# instance fields
.field public final synthetic a:Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/xh0;->a:Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/connectsdk/service/command/ServiceCommandError;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {}, Lcom/shabakaty/downloader/hc1;->a()Lcom/shabakaty/downloader/hc1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/hc1;->b(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/connectsdk/service/capability/MediaControl$PlayStateStatus;

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/xh0;->a:Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "<set-?>"

    .line 4
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iput-object p1, v0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->y:Lcom/connectsdk/service/capability/MediaControl$PlayStateStatus;

    :goto_0
    return-void
.end method
