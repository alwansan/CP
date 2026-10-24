.class public final synthetic Lcom/shabakaty/downloader/qx3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/rx3;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/rx3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/qx3;->r:Lcom/shabakaty/downloader/rx3;

    return-void
.end method


# virtual methods
.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    iget-object p1, p0, Lcom/shabakaty/downloader/qx3;->r:Lcom/shabakaty/downloader/rx3;

    .line 1
    iget-object p1, p1, Lcom/shabakaty/downloader/rx3;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
