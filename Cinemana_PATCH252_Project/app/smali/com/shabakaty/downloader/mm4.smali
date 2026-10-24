.class public Lcom/shabakaty/downloader/mm4;
.super Ljava/lang/Object;
.source "TextureViewImplementation.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field public final synthetic r:Landroidx/camera/view/e;


# direct methods
.method public constructor <init>(Landroidx/camera/view/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/mm4;->r:Landroidx/camera/view/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    const-string v0, "SurfaceTexture available. Size: "

    const-string v1, "x"

    .line 1
    invoke-static {v0, p2, v1, p3}, Lcom/shabakaty/downloader/xr;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "TextureViewImpl"

    const/4 v0, 0x0

    .line 2
    invoke-static {p3, p2, v0}, Lcom/shabakaty/downloader/vk2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    iget-object p2, p0, Lcom/shabakaty/downloader/mm4;->r:Landroidx/camera/view/e;

    iput-object p1, p2, Landroidx/camera/view/e;->e:Landroid/graphics/SurfaceTexture;

    .line 4
    iget-object p1, p2, Landroidx/camera/view/e;->f:Lcom/shabakaty/downloader/pi2;

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p2, Landroidx/camera/view/e;->g:Lcom/shabakaty/downloader/mi4;

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Surface invalidated "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/shabakaty/downloader/mm4;->r:Landroidx/camera/view/e;

    iget-object p2, p2, Landroidx/camera/view/e;->g:Lcom/shabakaty/downloader/mi4;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {p3, p1, v0}, Lcom/shabakaty/downloader/vk2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    iget-object p1, p0, Lcom/shabakaty/downloader/mm4;->r:Landroidx/camera/view/e;

    iget-object p1, p1, Landroidx/camera/view/e;->g:Lcom/shabakaty/downloader/mi4;

    .line 10
    iget-object p1, p1, Lcom/shabakaty/downloader/mi4;->h:Lcom/shabakaty/downloader/hp0;

    .line 11
    invoke-virtual {p1}, Lcom/shabakaty/downloader/hp0;->a()V

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p2}, Landroidx/camera/view/e;->h()V

    :goto_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/mm4;->r:Landroidx/camera/view/e;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/camera/view/e;->e:Landroid/graphics/SurfaceTexture;

    .line 2
    iget-object v2, v0, Landroidx/camera/view/e;->f:Lcom/shabakaty/downloader/pi2;

    if-eqz v2, :cond_0

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/mm4$a;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/downloader/mm4$a;-><init>(Lcom/shabakaty/downloader/mm4;Landroid/graphics/SurfaceTexture;)V

    iget-object v0, v0, Landroidx/camera/view/e;->d:Landroid/view/TextureView;

    .line 4
    invoke-virtual {v0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/ld0;->d(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 5
    new-instance v3, Lcom/shabakaty/downloader/ko1$d;

    invoke-direct {v3, v2, v1}, Lcom/shabakaty/downloader/ko1$d;-><init>(Ljava/util/concurrent/Future;Lcom/shabakaty/downloader/ho1;)V

    invoke-interface {v2, v3, v0}, Lcom/shabakaty/downloader/pi2;->f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/mm4;->r:Landroidx/camera/view/e;

    iput-object p1, v0, Landroidx/camera/view/e;->i:Landroid/graphics/SurfaceTexture;

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string p1, "TextureViewImpl"

    const-string v0, "SurfaceTexture about to be destroyed"

    .line 7
    invoke-static {p1, v0, v1}, Lcom/shabakaty/downloader/vk2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    const-string p1, "SurfaceTexture size changed: "

    const-string v0, "x"

    .line 1
    invoke-static {p1, p2, v0, p3}, Lcom/shabakaty/downloader/xr;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string p3, "TextureViewImpl"

    .line 2
    invoke-static {p3, p1, p2}, Lcom/shabakaty/downloader/vk2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/mm4;->r:Landroidx/camera/view/e;

    iget-object p1, p1, Landroidx/camera/view/e;->j:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/ar$a;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/ar$a;->a(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
