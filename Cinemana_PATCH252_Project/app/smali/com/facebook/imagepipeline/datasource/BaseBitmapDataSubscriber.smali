.class public abstract Lcom/facebook/imagepipeline/datasource/BaseBitmapDataSubscriber;
.super Lcom/facebook/datasource/BaseDataSubscriber;
.source "BaseBitmapDataSubscriber.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/datasource/BaseDataSubscriber<",
        "Lcom/facebook/common/references/CloseableReference<",
        "Lcom/facebook/imagepipeline/image/CloseableImage;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/facebook/datasource/BaseDataSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public f(Lcom/facebook/datasource/DataSource;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/DataSource<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/facebook/datasource/DataSource;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1}, Lcom/facebook/datasource/DataSource;->g()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/common/references/CloseableReference;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->f()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/facebook/imagepipeline/image/CloseableBitmap;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/image/CloseableBitmap;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/image/CloseableBitmap;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 5
    :cond_1
    :try_start_0
    move-object v1, p0

    check-cast v1, Lcom/shabakaty/downloader/vh0;

    .line 6
    iget-object v2, v1, Lcom/shabakaty/downloader/vh0;->a:Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;

    invoke-virtual {v2}, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->e()Landroid/widget/RemoteViews;

    move-result-object v2

    const v3, 0x7f0a0313

    invoke-virtual {v2, v3, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 7
    iget-object v0, v1, Lcom/shabakaty/downloader/vh0;->a:Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;

    invoke-virtual {v0}, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->d()Lcom/shabakaty/downloader/m03;

    move-result-object v0

    iget-object v2, v1, Lcom/shabakaty/downloader/vh0;->a:Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;

    invoke-virtual {v2}, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->e()Landroid/widget/RemoteViews;

    move-result-object v2

    .line 8
    iget-object v0, v0, Lcom/shabakaty/downloader/m03;->B:Landroid/app/Notification;

    iput-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 9
    iget-object v0, v1, Lcom/shabakaty/downloader/vh0;->a:Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;

    .line 10
    iget-object v1, v0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->C:Landroid/app/NotificationManager;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v2, 0x3db

    .line 11
    invoke-virtual {v0}, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->d()Lcom/shabakaty/downloader/m03;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/m03;->c()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :goto_0
    sget-object v0, Lcom/facebook/common/references/CloseableReference;->v:Ljava/lang/Class;

    if-eqz p1, :cond_3

    .line 13
    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->close()V

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    .line 14
    sget-object v1, Lcom/facebook/common/references/CloseableReference;->v:Ljava/lang/Class;

    if-eqz p1, :cond_4

    .line 15
    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->close()V

    .line 16
    :cond_4
    throw v0
.end method
