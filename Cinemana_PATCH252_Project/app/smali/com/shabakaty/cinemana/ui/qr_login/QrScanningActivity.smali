.class public final Lcom/shabakaty/cinemana/ui/qr_login/QrScanningActivity;
.super Lcom/shabakaty/downloader/r9;
.source "QrScanningActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/shabakaty/cinemana/ui/qr_login/QrScanningActivity;",
        "Lcom/shabakaty/downloader/r9;",
        "<init>",
        "()V",
        "app_productionBetaRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final synthetic u:I


# instance fields
.field public r:Lcom/shabakaty/downloader/pi2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/pi2<",
            "Landroidx/camera/lifecycle/b;",
            ">;"
        }
    .end annotation
.end field

.field public s:Lcom/shabakaty/downloader/tk1;

.field public t:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/r9;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/ji1;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0021

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a00be

    .line 4
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/ol3;->c(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/camera/view/PreviewView;

    if-eqz v3, :cond_8

    const v0, 0x7f0a032b

    .line 5
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/ol3;->c(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/cinemana/utils/ViewFinderOverlay;

    if-eqz v4, :cond_8

    .line 6
    new-instance v0, Lcom/shabakaty/downloader/tk1;

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1, v3, v4}, Lcom/shabakaty/downloader/tk1;-><init>(Landroid/widget/FrameLayout;Landroidx/camera/view/PreviewView;Lcom/shabakaty/cinemana/utils/ViewFinderOverlay;)V

    .line 7
    iput-object v0, p0, Lcom/shabakaty/cinemana/ui/qr_login/QrScanningActivity;->s:Lcom/shabakaty/downloader/tk1;

    .line 8
    iget-object p1, v0, Lcom/shabakaty/downloader/tk1;->s:Ljava/lang/Object;

    check-cast p1, Landroid/widget/FrameLayout;

    .line 9
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/r9;->setContentView(Landroid/view/View;)V

    .line 10
    sget-object p1, Landroidx/camera/lifecycle/b;->c:Landroidx/camera/lifecycle/b;

    .line 11
    sget-object p1, Lcom/shabakaty/downloader/tu;->m:Ljava/lang/Object;

    .line 12
    sget-object v3, Lcom/shabakaty/downloader/tu;->m:Ljava/lang/Object;

    monitor-enter v3

    .line 13
    :try_start_0
    sget-object p1, Lcom/shabakaty/downloader/tu;->o:Lcom/shabakaty/downloader/uu$b;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    invoke-static {}, Lcom/shabakaty/downloader/tu;->c()Lcom/shabakaty/downloader/pi2;

    move-result-object v4

    .line 15
    invoke-interface {v4}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_1

    .line 16
    :try_start_1
    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 17
    :catch_0
    :try_start_2
    invoke-static {}, Lcom/shabakaty/downloader/tu;->f()Lcom/shabakaty/downloader/pi2;

    move-object v4, v1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 18
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected thread interrupt. Should not be possible since future is already complete."

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    :goto_1
    if-nez v4, :cond_5

    if-nez p1, :cond_4

    .line 19
    invoke-static {p0}, Lcom/shabakaty/downloader/tu;->b(Landroid/content/Context;)Lcom/shabakaty/downloader/uu$b;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 20
    sget-object v4, Lcom/shabakaty/downloader/tu;->o:Lcom/shabakaty/downloader/uu$b;

    if-nez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    const-string v5, "CameraX has already been configured. To use a different configuration, shutdown() must be called."

    invoke-static {v4, v5}, Lcom/shabakaty/downloader/fl3;->i(ZLjava/lang/String;)V

    .line 21
    sput-object p1, Lcom/shabakaty/downloader/tu;->o:Lcom/shabakaty/downloader/uu$b;

    .line 22
    invoke-interface {p1}, Lcom/shabakaty/downloader/uu$b;->getCameraXConfig()Lcom/shabakaty/downloader/uu;

    move-result-object p1

    sget-object v4, Lcom/shabakaty/downloader/uu;->x:Lcom/shabakaty/downloader/o90$a;

    invoke-interface {p1, v4, v1}, Lcom/shabakaty/downloader/jn3;->a(Lcom/shabakaty/downloader/o90$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_4

    .line 23
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 24
    sput p1, Lcom/shabakaty/downloader/vk2;->a:I

    goto :goto_3

    .line 25
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "CameraX is not configured properly. The most likely cause is you did not include a default implementation in your build such as \'camera-camera2\'."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_4
    :goto_3
    invoke-static {p0}, Lcom/shabakaty/downloader/tu;->d(Landroid/content/Context;)V

    .line 27
    invoke-static {}, Lcom/shabakaty/downloader/tu;->c()Lcom/shabakaty/downloader/pi2;

    move-result-object v4

    .line 28
    :cond_5
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29
    sget-object p1, Lcom/shabakaty/downloader/bg3;->b:Lcom/shabakaty/downloader/bg3;

    .line 30
    invoke-static {}, Lcom/shabakaty/downloader/jl3;->a()Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 31
    new-instance v5, Lcom/shabakaty/downloader/jo1;

    invoke-direct {v5, p1}, Lcom/shabakaty/downloader/jo1;-><init>(Lcom/shabakaty/downloader/rn1;)V

    .line 32
    new-instance p1, Lcom/shabakaty/downloader/ky;

    invoke-direct {p1, v5, v4}, Lcom/shabakaty/downloader/ky;-><init>(Lcom/shabakaty/downloader/od;Lcom/shabakaty/downloader/pi2;)V

    .line 33
    invoke-interface {v4, p1, v3}, Lcom/shabakaty/downloader/pi2;->f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 34
    iput-object p1, p0, Lcom/shabakaty/cinemana/ui/qr_login/QrScanningActivity;->r:Lcom/shabakaty/downloader/pi2;

    .line 35
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    const-string v3, "newSingleThreadExecutor()"

    invoke-static {p1, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/shabakaty/cinemana/ui/qr_login/QrScanningActivity;->t:Ljava/util/concurrent/ExecutorService;

    .line 36
    iget-object p1, p0, Lcom/shabakaty/cinemana/ui/qr_login/QrScanningActivity;->r:Lcom/shabakaty/downloader/pi2;

    if-eqz p1, :cond_7

    new-instance v3, Lcom/shabakaty/downloader/gk3;

    invoke-direct {v3, p0, v2}, Lcom/shabakaty/downloader/gk3;-><init>(Lcom/shabakaty/cinemana/ui/qr_login/QrScanningActivity;I)V

    .line 37
    invoke-static {p0}, Lcom/shabakaty/downloader/ld0;->d(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 38
    invoke-interface {p1, v3, v2}, Lcom/shabakaty/downloader/pi2;->f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 39
    iget-object p1, p0, Lcom/shabakaty/cinemana/ui/qr_login/QrScanningActivity;->s:Lcom/shabakaty/downloader/tk1;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lcom/shabakaty/downloader/tk1;->u:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/cinemana/utils/ViewFinderOverlay;

    new-instance v1, Lcom/shabakaty/downloader/gk3;

    invoke-direct {v1, p0, v0}, Lcom/shabakaty/downloader/gk3;-><init>(Lcom/shabakaty/cinemana/ui/qr_login/QrScanningActivity;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_6
    const-string p1, "binding"

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v1

    :cond_7
    const-string p1, "cameraProviderFuture"

    .line 40
    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception p1

    .line 41
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    .line 42
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 43
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/shabakaty/downloader/r9;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/cinemana/ui/qr_login/QrScanningActivity;->t:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void

    :cond_0
    const-string v0, "cameraExecutor"

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
