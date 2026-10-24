.class public final Lcom/shabakaty/cinemana/helpers/casting/a;
.super Ljava/lang/Object;
.source "DLNAControllerService.kt"

# interfaces
.implements Lcom/connectsdk/service/capability/MediaControl$PlayStateListener;


# instance fields
.field public final synthetic a:Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/cinemana/helpers/casting/a;->a:Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/connectsdk/service/command/ServiceCommandError;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {}, Lcom/shabakaty/downloader/hc1;->a()Lcom/shabakaty/downloader/hc1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/hc1;->b(Ljava/lang/Throwable;)V

    .line 2
    :goto_0
    invoke-static {}, Lcom/shabakaty/downloader/j51;->b()Lcom/shabakaty/downloader/j51;

    move-result-object p1

    new-instance v0, Lcom/shabakaty/downloader/tu0;

    sget-object v1, Lcom/shabakaty/downloader/tu0;->e:Ljava/lang/Integer;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/tu0;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/j51;->f(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/connectsdk/service/capability/MediaControl$PlayStateStatus;

    if-nez p1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/cinemana/helpers/casting/a;->a:Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "<set-?>"

    .line 4
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iput-object p1, v0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->y:Lcom/connectsdk/service/capability/MediaControl$PlayStateStatus;

    .line 6
    sget-object v1, Lcom/connectsdk/service/capability/MediaControl$PlayStateStatus;->Unknown:Lcom/connectsdk/service/capability/MediaControl$PlayStateStatus;

    if-eq p1, v1, :cond_3

    .line 7
    sget-object v1, Lcom/connectsdk/service/capability/MediaControl$PlayStateStatus;->Idle:Lcom/connectsdk/service/capability/MediaControl$PlayStateStatus;

    if-ne p1, v1, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    sget-object v1, Lcom/connectsdk/service/capability/MediaControl$PlayStateStatus;->Finished:Lcom/connectsdk/service/capability/MediaControl$PlayStateStatus;

    if-ne p1, v1, :cond_4

    .line 9
    iget-object p1, v0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->C:Landroid/app/NotificationManager;

    if-nez p1, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {p1}, Landroid/app/NotificationManager;->cancelAll()V

    goto :goto_1

    .line 11
    :cond_3
    :goto_0
    invoke-static {}, Lcom/shabakaty/downloader/j51;->b()Lcom/shabakaty/downloader/j51;

    move-result-object p1

    new-instance v0, Lcom/shabakaty/downloader/tu0;

    sget-object v1, Lcom/shabakaty/downloader/tu0;->e:Ljava/lang/Integer;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/tu0;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/j51;->f(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-void
.end method
