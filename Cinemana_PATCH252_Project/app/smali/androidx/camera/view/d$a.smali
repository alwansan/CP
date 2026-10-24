.class public Landroidx/camera/view/d$a;
.super Ljava/lang/Object;
.source "SurfaceViewImplementation.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/view/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public r:Landroid/util/Size;

.field public s:Lcom/shabakaty/downloader/mi4;

.field public t:Landroid/util/Size;

.field public u:Z

.field public final synthetic v:Landroidx/camera/view/d;


# direct methods
.method public constructor <init>(Landroidx/camera/view/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/camera/view/d$a;->v:Landroidx/camera/view/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Landroidx/camera/view/d$a;->u:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/camera/view/d$a;->s:Lcom/shabakaty/downloader/mi4;

    if-eqz v0, :cond_0

    const-string v0, "Request canceled: "

    .line 2
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/camera/view/d$a;->s:Lcom/shabakaty/downloader/mi4;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "SurfaceViewImpl"

    .line 3
    invoke-static {v2, v0, v1}, Lcom/shabakaty/downloader/vk2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    iget-object v0, p0, Landroidx/camera/view/d$a;->s:Lcom/shabakaty/downloader/mi4;

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/mi4;->e:Lcom/shabakaty/downloader/ar$a;

    new-instance v1, Lcom/shabakaty/downloader/hp0$b;

    const-string v2, "Surface request will not complete."

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/hp0$b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ar$a;->c(Ljava/lang/Throwable;)Z

    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/camera/view/d$a;->v:Landroidx/camera/view/d;

    iget-object v0, v0, Landroidx/camera/view/d;->d:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Landroidx/camera/view/d$a;->u:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/camera/view/d$a;->s:Lcom/shabakaty/downloader/mi4;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/camera/view/d$a;->r:Landroid/util/Size;

    if-eqz v1, :cond_0

    iget-object v4, p0, Landroidx/camera/view/d$a;->t:Landroid/util/Size;

    .line 3
    invoke-virtual {v1, v4}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const/4 v1, 0x0

    const-string v3, "SurfaceViewImpl"

    const-string v4, "Surface set on Preview."

    .line 4
    invoke-static {v3, v4, v1}, Lcom/shabakaty/downloader/vk2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    iget-object v1, p0, Landroidx/camera/view/d$a;->s:Lcom/shabakaty/downloader/mi4;

    iget-object v3, p0, Landroidx/camera/view/d$a;->v:Landroidx/camera/view/d;

    iget-object v3, v3, Landroidx/camera/view/d;->d:Landroid/view/SurfaceView;

    .line 6
    invoke-virtual {v3}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/shabakaty/downloader/ld0;->d(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Lcom/shabakaty/downloader/qi4;

    invoke-direct {v4, p0}, Lcom/shabakaty/downloader/qi4;-><init>(Landroidx/camera/view/d$a;)V

    .line 7
    invoke-virtual {v1, v0, v3, v4}, Lcom/shabakaty/downloader/mi4;->a(Landroid/view/Surface;Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/yc0;)V

    .line 8
    iput-boolean v2, p0, Landroidx/camera/view/d$a;->u:Z

    .line 9
    iget-object v0, p0, Landroidx/camera/view/d$a;->v:Landroidx/camera/view/d;

    .line 10
    invoke-virtual {v0}, Landroidx/camera/view/c;->f()V

    return v2

    :cond_1
    return v3
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    const-string p1, "Surface changed. Size: "

    const-string p2, "x"

    .line 1
    invoke-static {p1, p3, p2, p4}, Lcom/shabakaty/downloader/xr;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "SurfaceViewImpl"

    .line 2
    invoke-static {v0, p1, p2}, Lcom/shabakaty/downloader/vk2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, p3, p4}, Landroid/util/Size;-><init>(II)V

    iput-object p1, p0, Landroidx/camera/view/d$a;->t:Landroid/util/Size;

    .line 4
    invoke-virtual {p0}, Landroidx/camera/view/d$a;->b()Z

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    const/4 p1, 0x0

    const-string v0, "SurfaceViewImpl"

    const-string v1, "Surface created."

    .line 1
    invoke-static {v0, v1, p1}, Lcom/shabakaty/downloader/vk2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3

    const-string p1, "SurfaceViewImpl"

    const-string v0, "Surface destroyed."

    const/4 v1, 0x0

    .line 1
    invoke-static {p1, v0, v1}, Lcom/shabakaty/downloader/vk2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    iget-boolean v0, p0, Landroidx/camera/view/d$a;->u:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/camera/view/d$a;->s:Lcom/shabakaty/downloader/mi4;

    if-eqz v0, :cond_1

    const-string v0, "Surface invalidated "

    .line 4
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroidx/camera/view/d$a;->s:Lcom/shabakaty/downloader/mi4;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {p1, v0, v1}, Lcom/shabakaty/downloader/vk2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    iget-object p1, p0, Landroidx/camera/view/d$a;->s:Lcom/shabakaty/downloader/mi4;

    .line 7
    iget-object p1, p1, Lcom/shabakaty/downloader/mi4;->h:Lcom/shabakaty/downloader/hp0;

    .line 8
    invoke-virtual {p1}, Lcom/shabakaty/downloader/hp0;->a()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroidx/camera/view/d$a;->a()V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Landroidx/camera/view/d$a;->u:Z

    .line 11
    iput-object v1, p0, Landroidx/camera/view/d$a;->s:Lcom/shabakaty/downloader/mi4;

    .line 12
    iput-object v1, p0, Landroidx/camera/view/d$a;->t:Landroid/util/Size;

    .line 13
    iput-object v1, p0, Landroidx/camera/view/d$a;->r:Landroid/util/Size;

    return-void
.end method
