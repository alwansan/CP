.class public Lcom/shabakaty/downloader/mm4$a;
.super Ljava/lang/Object;
.source "TextureViewImplementation.java"

# interfaces
.implements Lcom/shabakaty/downloader/ho1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/mm4;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/ho1<",
        "Lcom/shabakaty/downloader/mi4$f;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroid/graphics/SurfaceTexture;

.field public final synthetic b:Lcom/shabakaty/downloader/mm4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/mm4;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/mm4$a;->b:Lcom/shabakaty/downloader/mm4;

    iput-object p2, p0, Lcom/shabakaty/downloader/mm4$a;->a:Landroid/graphics/SurfaceTexture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SurfaceReleaseFuture did not complete nicely."

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/mi4$f;

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/mi4$f;->a()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "Unexpected result from SurfaceRequest. Surface was provided twice."

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/fl3;->i(ZLjava/lang/String;)V

    const/4 p1, 0x0

    const-string v0, "TextureViewImpl"

    const-string v1, "SurfaceTexture about to manually be destroyed"

    .line 3
    invoke-static {v0, v1, p1}, Lcom/shabakaty/downloader/vk2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/mm4$a;->a:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/mm4$a;->b:Lcom/shabakaty/downloader/mm4;

    iget-object v0, v0, Lcom/shabakaty/downloader/mm4;->r:Landroidx/camera/view/e;

    iget-object v1, v0, Landroidx/camera/view/e;->i:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_1

    .line 6
    iput-object p1, v0, Landroidx/camera/view/e;->i:Landroid/graphics/SurfaceTexture;

    :cond_1
    return-void
.end method
