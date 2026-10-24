.class public final synthetic Lcom/shabakaty/downloader/c7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/d7;

.field public final synthetic b:Ljava/util/concurrent/Executor;

.field public final synthetic c:Lcom/shabakaty/downloader/gz1$a;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/d7;Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/gz1$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/c7;->a:Lcom/shabakaty/downloader/d7;

    iput-object p2, p0, Lcom/shabakaty/downloader/c7;->b:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/shabakaty/downloader/c7;->c:Lcom/shabakaty/downloader/gz1$a;

    return-void
.end method


# virtual methods
.method public final onImageAvailable(Landroid/media/ImageReader;)V
    .locals 3

    iget-object p1, p0, Lcom/shabakaty/downloader/c7;->a:Lcom/shabakaty/downloader/d7;

    iget-object v0, p0, Lcom/shabakaty/downloader/c7;->b:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/shabakaty/downloader/c7;->c:Lcom/shabakaty/downloader/gz1$a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    new-instance v2, Lcom/shabakaty/downloader/or;

    invoke-direct {v2, p1, v1}, Lcom/shabakaty/downloader/or;-><init>(Lcom/shabakaty/downloader/d7;Lcom/shabakaty/downloader/gz1$a;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
