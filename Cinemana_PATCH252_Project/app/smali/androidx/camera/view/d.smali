.class public final Landroidx/camera/view/d;
.super Landroidx/camera/view/c;
.source "SurfaceViewImplementation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/view/d$a;
    }
.end annotation


# instance fields
.field public d:Landroid/view/SurfaceView;

.field public final e:Landroidx/camera/view/d$a;

.field public f:Landroidx/camera/view/c$a;


# direct methods
.method public constructor <init>(Landroid/widget/FrameLayout;Landroidx/camera/view/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/camera/view/c;-><init>(Landroid/widget/FrameLayout;Landroidx/camera/view/b;)V

    .line 2
    new-instance p1, Landroidx/camera/view/d$a;

    invoke-direct {p1, p0}, Landroidx/camera/view/d$a;-><init>(Landroidx/camera/view/d;)V

    iput-object p1, p0, Landroidx/camera/view/d;->e:Landroidx/camera/view/d$a;

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/view/d;->d:Landroid/view/SurfaceView;

    return-object v0
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/view/d;->d:Landroid/view/SurfaceView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/camera/view/d;->d:Landroid/view/SurfaceView;

    .line 2
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/camera/view/d;->d:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    iget-object v1, p0, Landroidx/camera/view/d;->d:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4
    iget-object v1, p0, Landroidx/camera/view/d;->d:Landroid/view/SurfaceView;

    sget-object v2, Lcom/shabakaty/downloader/pi4;->a:Lcom/shabakaty/downloader/pi4;

    .line 5
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 6
    invoke-static {v1, v0, v2, v3}, Landroid/view/PixelCopy;->request(Landroid/view/SurfaceView;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e(Lcom/shabakaty/downloader/mi4;Landroidx/camera/view/c$a;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/shabakaty/downloader/mi4;->a:Landroid/util/Size;

    .line 2
    iput-object v0, p0, Landroidx/camera/view/c;->a:Landroid/util/Size;

    .line 3
    iput-object p2, p0, Landroidx/camera/view/d;->f:Landroidx/camera/view/c$a;

    .line 4
    iget-object p2, p0, Landroidx/camera/view/c;->b:Landroid/widget/FrameLayout;

    .line 5
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p2, p0, Landroidx/camera/view/c;->a:Landroid/util/Size;

    .line 7
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance p2, Landroid/view/SurfaceView;

    iget-object v0, p0, Landroidx/camera/view/c;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroidx/camera/view/d;->d:Landroid/view/SurfaceView;

    .line 9
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Landroidx/camera/view/c;->a:Landroid/util/Size;

    .line 10
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Landroidx/camera/view/c;->a:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 11
    invoke-virtual {p2, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    iget-object p2, p0, Landroidx/camera/view/c;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 13
    iget-object p2, p0, Landroidx/camera/view/c;->b:Landroid/widget/FrameLayout;

    iget-object v0, p0, Landroidx/camera/view/d;->d:Landroid/view/SurfaceView;

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 14
    iget-object p2, p0, Landroidx/camera/view/d;->d:Landroid/view/SurfaceView;

    invoke-virtual {p2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p2

    iget-object v0, p0, Landroidx/camera/view/d;->e:Landroidx/camera/view/d$a;

    invoke-interface {p2, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 15
    iget-object p2, p0, Landroidx/camera/view/d;->d:Landroid/view/SurfaceView;

    .line 16
    invoke-virtual {p2}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/shabakaty/downloader/ld0;->d(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object p2

    new-instance v0, Lcom/shabakaty/downloader/rr;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/rr;-><init>(Landroidx/camera/view/d;)V

    .line 17
    iget-object v1, p1, Lcom/shabakaty/downloader/mi4;->g:Lcom/shabakaty/downloader/ar$a;

    .line 18
    iget-object v1, v1, Lcom/shabakaty/downloader/ar$a;->c:Lcom/shabakaty/downloader/ns3;

    if-eqz v1, :cond_0

    .line 19
    invoke-virtual {v1, v0, p2}, Lcom/shabakaty/downloader/w0;->f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 20
    :cond_0
    iget-object p2, p0, Landroidx/camera/view/d;->d:Landroid/view/SurfaceView;

    new-instance v0, Lcom/shabakaty/downloader/or;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/or;-><init>(Landroidx/camera/view/d;Lcom/shabakaty/downloader/mi4;)V

    invoke-virtual {p2, v0}, Landroid/view/SurfaceView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public g()Lcom/shabakaty/downloader/pi2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/pi2<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/ko1;->c(Ljava/lang/Object;)Lcom/shabakaty/downloader/pi2;

    move-result-object v0

    return-object v0
.end method
