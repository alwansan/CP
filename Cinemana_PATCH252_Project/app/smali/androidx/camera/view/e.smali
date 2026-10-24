.class public final Landroidx/camera/view/e;
.super Landroidx/camera/view/c;
.source "TextureViewImplementation.java"


# instance fields
.field public d:Landroid/view/TextureView;

.field public e:Landroid/graphics/SurfaceTexture;

.field public f:Lcom/shabakaty/downloader/pi2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/pi2<",
            "Lcom/shabakaty/downloader/mi4$f;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lcom/shabakaty/downloader/mi4;

.field public h:Z

.field public i:Landroid/graphics/SurfaceTexture;

.field public j:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/shabakaty/downloader/ar$a<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field public k:Landroidx/camera/view/c$a;


# direct methods
.method public constructor <init>(Landroid/widget/FrameLayout;Landroidx/camera/view/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/camera/view/c;-><init>(Landroid/widget/FrameLayout;Landroidx/camera/view/b;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Landroidx/camera/view/e;->h:Z

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Landroidx/camera/view/e;->j:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/view/e;->d:Landroid/view/TextureView;

    return-object v0
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/view/e;->d:Landroid/view/TextureView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/camera/view/e;->d:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/camera/view/e;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/camera/view/e;->i:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/camera/view/e;->d:Landroid/view/TextureView;

    .line 2
    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Landroidx/camera/view/e;->i:Landroid/graphics/SurfaceTexture;

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/camera/view/e;->d:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Landroidx/camera/view/e;->i:Landroid/graphics/SurfaceTexture;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/camera/view/e;->h:Z

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/camera/view/e;->h:Z

    return-void
.end method

.method public e(Lcom/shabakaty/downloader/mi4;Landroidx/camera/view/c$a;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/shabakaty/downloader/mi4;->a:Landroid/util/Size;

    .line 2
    iput-object v0, p0, Landroidx/camera/view/c;->a:Landroid/util/Size;

    .line 3
    iput-object p2, p0, Landroidx/camera/view/e;->k:Landroidx/camera/view/c$a;

    .line 4
    iget-object p2, p0, Landroidx/camera/view/c;->b:Landroid/widget/FrameLayout;

    .line 5
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p2, p0, Landroidx/camera/view/c;->a:Landroid/util/Size;

    .line 7
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance p2, Landroid/view/TextureView;

    iget-object v0, p0, Landroidx/camera/view/c;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroidx/camera/view/e;->d:Landroid/view/TextureView;

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
    invoke-virtual {p2, v0}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    iget-object p2, p0, Landroidx/camera/view/e;->d:Landroid/view/TextureView;

    new-instance v0, Lcom/shabakaty/downloader/mm4;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/mm4;-><init>(Landroidx/camera/view/e;)V

    invoke-virtual {p2, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 13
    iget-object p2, p0, Landroidx/camera/view/c;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 14
    iget-object p2, p0, Landroidx/camera/view/c;->b:Landroid/widget/FrameLayout;

    iget-object v0, p0, Landroidx/camera/view/e;->d:Landroid/view/TextureView;

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 15
    iget-object p2, p0, Landroidx/camera/view/e;->g:Lcom/shabakaty/downloader/mi4;

    if-eqz p2, :cond_0

    .line 16
    iget-object p2, p2, Lcom/shabakaty/downloader/mi4;->e:Lcom/shabakaty/downloader/ar$a;

    new-instance v0, Lcom/shabakaty/downloader/hp0$b;

    const-string v1, "Surface request will not complete."

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/hp0$b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/ar$a;->c(Ljava/lang/Throwable;)Z

    .line 17
    :cond_0
    iput-object p1, p0, Landroidx/camera/view/e;->g:Lcom/shabakaty/downloader/mi4;

    .line 18
    iget-object p2, p0, Landroidx/camera/view/e;->d:Landroid/view/TextureView;

    .line 19
    invoke-virtual {p2}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/shabakaty/downloader/ld0;->d(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object p2

    new-instance v0, Lcom/shabakaty/downloader/or;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/or;-><init>(Landroidx/camera/view/e;Lcom/shabakaty/downloader/mi4;)V

    .line 20
    iget-object p1, p1, Lcom/shabakaty/downloader/mi4;->g:Lcom/shabakaty/downloader/ar$a;

    .line 21
    iget-object p1, p1, Lcom/shabakaty/downloader/ar$a;->c:Lcom/shabakaty/downloader/ns3;

    if-eqz p1, :cond_1

    .line 22
    invoke-virtual {p1, v0, p2}, Lcom/shabakaty/downloader/w0;->f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 23
    :cond_1
    invoke-virtual {p0}, Landroidx/camera/view/e;->h()V

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

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/cu;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/cu;-><init>(Landroidx/camera/view/e;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/ar;->a(Lcom/shabakaty/downloader/ar$c;)Lcom/shabakaty/downloader/pi2;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/camera/view/c;->a:Landroid/util/Size;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/camera/view/e;->e:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_1

    iget-object v2, p0, Landroidx/camera/view/e;->g:Lcom/shabakaty/downloader/mi4;

    if-nez v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v2, p0, Landroidx/camera/view/c;->a:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 3
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Landroidx/camera/view/e;->e:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 4
    iget-object v1, p0, Landroidx/camera/view/e;->g:Lcom/shabakaty/downloader/mi4;

    .line 5
    new-instance v2, Lcom/shabakaty/downloader/rv;

    invoke-direct {v2, p0, v0}, Lcom/shabakaty/downloader/rv;-><init>(Landroidx/camera/view/e;Landroid/view/Surface;)V

    invoke-static {v2}, Lcom/shabakaty/downloader/ar;->a(Lcom/shabakaty/downloader/ar$c;)Lcom/shabakaty/downloader/pi2;

    move-result-object v2

    .line 6
    iput-object v2, p0, Landroidx/camera/view/e;->f:Lcom/shabakaty/downloader/pi2;

    .line 7
    new-instance v3, Lcom/shabakaty/downloader/hy1;

    invoke-direct {v3, p0, v0, v2, v1}, Lcom/shabakaty/downloader/hy1;-><init>(Landroidx/camera/view/e;Landroid/view/Surface;Lcom/shabakaty/downloader/pi2;Lcom/shabakaty/downloader/mi4;)V

    iget-object v0, p0, Landroidx/camera/view/e;->d:Landroid/view/TextureView;

    .line 8
    invoke-virtual {v0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/ld0;->d(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 9
    check-cast v2, Lcom/shabakaty/downloader/ar$d;

    .line 10
    iget-object v1, v2, Lcom/shabakaty/downloader/ar$d;->s:Lcom/shabakaty/downloader/w0;

    invoke-virtual {v1, v3, v0}, Lcom/shabakaty/downloader/w0;->f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 11
    invoke-virtual {p0}, Landroidx/camera/view/c;->f()V

    :cond_1
    :goto_0
    return-void
.end method
